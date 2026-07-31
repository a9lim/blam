#!/usr/bin/env python3
"""Port of Tromp's AIT .lam -> .blc compiler (Lambda.lhs parser + AIT.lhs optimize/encode).
Purpose: reproduce `./blc blc foo.lam` without GHC, validated against checked-in goldens."""
import sys, functools
sys.setrecursionlimit(1000000)

# ---------- DB terms as tuples ----------
# ('V', i) | ('L', body) | ('A', f, a)

def encode(t):
    out = []
    def go(t):
        k = t[0]
        if k == 'V':
            i = t[1]
            if i < 0: raise ValueError("negative de Bruijn index")
            out.append('1' * (i + 1)); out.append('0')
        elif k == 'L':
            out.append('00'); go(t[1])
        else:
            out.append('01'); go(t[1]); go(t[2])
    go(t)
    return ''.join(out)

@functools.lru_cache(maxsize=None)
def size(t):
    k = t[0]
    if k == 'V': return 2 + t[1]
    if k == 'L': return 2 + size(t[1])
    return 2 + size(t[1]) + size(t[2])

@functools.lru_cache(maxsize=None)
def occurs(n, t):
    k = t[0]
    if k == 'V': return t[1] == n
    if k == 'L': return occurs(n + 1, t[1])
    return occurs(n, t[1]) or occurs(n, t[2])

# AIT.lhs subst: subst o x term
def subst(o, x, t):
    # NB: in Lambda/AIT.lhs `adjust` sits in the where-clause of the *current*
    # recursive call, so it shifts by the current binder depth o, not the initial one.
    def adjust(n, e, o):
        if e[0] == 'V': return ('V', e[1] + o) if e[1] >= n else e
        if e[0] == 'L': return ('L', adjust(n + 1, e[1], o))
        return ('A', adjust(n, e[1], o), adjust(n, e[2], o))
    def go(o, t):
        k = t[0]
        if k == 'V':
            i = t[1]
            if i == o: return adjust(0, x, o)
            if i > o:  return ('V', i - 1)
            return t
        if k == 'L': return ('L', go(o + 1, t[1]))
        return ('A', go(o, t[1]), go(o, t[2]))
    return go(o, t)

# ---------- optimize (AIT.lhs) ----------
def make_optimize(width, slack):
    memo = {}
    def opt(n, t):
        key = (n, t)
        r = memo.get(key)
        if r is not None: return r
        k = t[0]
        if k == 'V':
            res = [(t, 2 + t[1])]
        elif k == 'L':
            res = []
            for (b, _) in opt(n, t[1]):
                if b[0] == 'A' and b[2] == ('V', 0) and not occurs(0, b[1]):
                    x = subst(0, None, b[1])          # eta
                else:
                    x = ('L', b)
                res.append((x, size(x)))
        else:
            funs = opt(n, t[1]); args = opt(n, t[2])
            cands = []
            for (f, fs) in funs:
                for (a, asz) in args:
                    tt = ('A', f, a); ts = 2 + fs + asz
                    if f[0] == 'L':
                        body = f[1]
                        if occurs(0, body): cands.append((tt, ts))
                        t2 = subst(0, a, body)
                        n2 = n if size(t2) < ts else n - 1
                        if n2 >= 0: cands.extend(opt(n2, t2))
                    else:
                        cands.append((tt, ts))
            cands.sort(key=lambda p: p[1])            # stable, by size
            hd = cands[0]; lim = hd[1] + slack
            tl = []
            for p in cands[1:]:
                if p[1] <= lim: tl.append(p)
                else: break
            chain = [hd] + tl
            grouped = [p for i, p in enumerate(chain) if i == 0 or p != chain[i - 1]]
            res = grouped[:width]
        memo[key] = res
        return res
    return opt

def optimize(t, width=57, slack=2, n=1):
    return make_optimize(width, slack)(n, t)

# ---------- parser (Lambda.lhs) ----------
def strip_comments(s):
    out = []; i = 0; L = len(s)
    while i < L:
        if s[i] == '-' and i + 1 < L and s[i+1] == '-':
            while i < L and s[i] != '\n': i += 1
        else:
            out.append(s[i]); i += 1
    return ''.join(out)

IDCH = lambda c: c.isalnum() or c in "_'"

class P:
    def __init__(s, txt): s.t = txt; s.i = 0
    def ws(s):
        while s.i < len(s.t) and s.t[s.i].isspace(): s.i += 1
    def peek_id(s):
        j = s.i
        while j < len(s.t) and s.t[j].isspace(): j += 1
        k = j
        while k < len(s.t) and IDCH(s.t[k]): k += 1
        return s.t[j:k], j, k
    def take_id(s):
        w, j, k = s.peek_id()
        if not w: raise SyntaxError(f"expected identifier at {s.i}: {s.t[s.i:s.i+30]!r}")
        s.i = k; return w
    def ch(s, c):
        s.ws()
        if s.i < len(s.t) and s.t[s.i] == c: s.i += 1; return True
        return False
    def expect(s, c):
        if not s.ch(c): raise SyntaxError(f"expected {c!r} at {s.i}: {s.t[s.i:s.i+30]!r}")

def p_lc(p):
    p.ws()
    if p.i < len(p.t) and p.t[p.i] == '\\':
        p.i += 1
        v = p.take_id()
        p.ch('.')                      # optional dot
        return ('lam', v, p_lc(p))
    w, j, k = p.peek_id()
    if w == 'let':
        p.i = k
        defs = []
        while True:
            w2, j2, k2 = p.peek_id()
            if w2 == 'in': break
            name = p.take_id(); p.expect('='); defs.append((name, p_lc(p)))
            if not p.ch(';'): break
        w3, j3, k3 = p.peek_id()
        if w3 != 'in': raise SyntaxError(f"expected 'in' at {p.i}: {p.t[p.i:p.i+30]!r}")
        p.i = k3
        body = p_lc(p)
        for (name, rhs) in reversed(defs):
            body = ('app', ('lam', name, body), letrec(name, rhs))
        return body
    return p_app(p)

def p_app(p):
    es = []
    while True:
        p.ws()
        if p.i >= len(p.t): break
        c = p.t[p.i]
        if c == '(':
            p.i += 1; e = p_lc(p); p.expect(')'); es.append(e); continue
        if IDCH(c):
            w, j, k = p.peek_id()
            if w in ('in',): break
            if w == 'let':
                es.append(p_lc(p)); continue   # not reachable via pLCAtom, kept defensive
            p.i = k; es.append(('var', w)); continue
        break
    if not es: raise SyntaxError(f"expected atom at {p.i}: {p.t[p.i:p.i+30]!r}")
    e = es[0]
    for x in es[1:]: e = ('app', e, x)
    return e

FIX = ('lam', '@f', ('app', ('lam', '@x', ('app', ('var', '@x'), ('var', '@x'))),
                            ('lam', '@x', ('app', ('var', '@f'),
                                           ('app', ('var', '@x'), ('var', '@x'))))))

def free_vars(e):
    if e[0] == 'var': return {e[1]}
    if e[0] == 'lam': return free_vars(e[2]) - {e[1]}
    return free_vars(e[1]) | free_vars(e[2])

def letrec(x, e):
    return ('app', FIX, ('lam', x, e)) if x in free_vars(e) else e

def to_db(e, vs=()):
    if e[0] == 'var':
        try: return ('V', vs.index(e[1]))
        except ValueError: raise NameError("Unbound variable " + e[1])
    if e[0] == 'lam': return ('L', to_db(e[2], (e[1],) + vs))
    return ('A', to_db(e[1], vs), to_db(e[2], vs))

def compile_lam(path):
    src = strip_comments(open(path).read())
    p = P(src); e = p_lc(p); p.ws()
    if p.i != len(src): raise SyntaxError(f"trailing input at {p.i}: {src[p.i:p.i+40]!r}")
    db = to_db(e)
    best = optimize(db)[0][0]
    return encode(best), db, best

if __name__ == '__main__':
    for path in sys.argv[1:]:
        try:
            bits, db, best = compile_lam(path)
            print(f"{len(bits):6d}  {path}\n        {bits}")
        except Exception as ex:
            print(f"  ERROR  {path}: {type(ex).__name__}: {ex}")
