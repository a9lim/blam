"""Mechanized Lemma SF (shared lane, handwritten; generalized to non-lambda base terms):
let h = \\z. z A1..Am (closed, m >= 1), templates T_k(Y) = A_k[Y/z], base set
B = {h} u {T_k(Y) : Y in S}, S = application closure of B.  If for every k and fresh S-constants
#Y, #Z:  T_k(#Y) #Z ->h+ X' Z' R..  with X', Z' in S (checked syntactically: X' a fresh constant,
h, or a template instance with an S parameter; Z' likewise an S-term; no fresh constant forced
before; h #Z is checked the same way), then every X Y R.. with X, Y in S has no hnf.
S' relaxation (handwritten): S' = {X0 A1..Am : X0 in B, m = 0 or A1 in S'} (later arguments
arbitrary).  Invariant: the head spine is X0 A1 .. with X0 in B and A1 in S'; X0 A1 ->h+ X' Z' R..
with X', Z' in S' restores it (if X' has arguments its first is in S'; else Z' is first).
Applied when the zero-law run of R Z reaches head h with an S-term on top of the stack."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert
def closed(t, d=0):
    k = t[0]
    if k == 'V': return t[1] < d
    if k == 'L': return closed(t[1], d + 1)
    if k == 'A': return closed(t[1], d) and closed(t[2], d)
    return True
def match(p, t, l, env):
    """pattern p (z = var l at local depth l) against t; binds env['Y'] (closed)"""
    if p[0] == 'V' and p[1] == l:
        if not closed(t): return False
        if 'Y' in env: return env['Y'] == t
        env['Y'] = t; return True
    if p[0] != t[0]: return False
    if p[0] == 'L': return match(p[1], t[1], l + 1, env)
    if p[0] == 'A': return match(p[1], t[1], l, env) and match(p[2], t[2], l, env)
    return p == t
def freeonly(t, l0, d=0):
    """free vars of t (at local depth d) are only z = var l0+d; returns (ok, uses_z)"""
    k = t[0]
    if k == 'V':
        if t[1] < d: return True, False
        return (t[1] == l0 + d), (t[1] == l0 + d)
    if k == 'L': return freeonly(t[1], l0, d + 1)
    if k == 'A':
        a, ua = freeonly(t[1], l0, d); b, ub = freeonly(t[2], l0, d)
        return a and b, ua or ub
    return True, False
def mmatch(p, t, l, env):
    if p[0] == 'V' and p[1] >= l:
        if not closed(t): return False
        key = p[1] - l
        if key in env: return env[key] == t
        env[key] = t; return True
    if p[0] != t[0]: return False
    if p[0] == 'L': return mmatch(p[1], t[1], l + 1, env)
    if p[0] == 'A': return mmatch(p[1], t[1], l, env) and mmatch(p[2], t[2], l, env)
    return p == t
def whnf_closed(t, steps=40):
    n = 0
    while n < steps:
        hd = t; st = []
        while hd[0] == 'A': st.append(hd[2]); hd = hd[1]
        if hd[0] != 'L' or not st: return t
        t = cert.beta(hd, st.pop())
        for a in reversed(st): t = ('A', t, a)
        n += 1
    return t
class SF:
    def __init__(self, h):
        self.h = h; b = whnf_closed(h[1], 20); hd = b; nargs = 0   # body head-reduced (z rigid)
        while hd[0] == 'A': hd = hd[1]; nargs += 1
        self.ok = (hd == ('V', 0) and nargs >= 1 and closed(h))
        self.tpl = []
        def collect(t, l0, isarg):
            if isarg and t[0] in ('L', 'A') and (t[0] == 'L' or _shead(t)[0] == 'L'):
                fv = freevars(t)
                if fv and (t, l0) not in self.tpl: self.tpl.append((t, l0))
            if t[0] == 'L': collect(t[1], l0 + 1, False)
            elif t[0] == 'A': collect(t[1], l0, False); collect(t[2], l0, True)
        if self.ok: collect(b, 0, False)
    def inst(self, k, Y):
        t, l0 = self.tpl[k]
        return instm(t, {i: ('C', '#P%d' % i) for i in freevars(t)})
    def base(self, t, depth=0):
        if depth > 12: return False
        if t[0] == 'A' and closed(t):
            # a closed head redex X0 with X0 ->h* t' (a lambda) is in B when t' is: X0 Z ->h* t' Z
            u = t; n = 0
            while u[0] == 'A' and n < 30:
                hd = u; st = []
                while hd[0] == 'A': st.append(hd[2]); hd = hd[1]
                if hd[0] != 'L': break
                u = cert.beta(hd, st.pop())
                for a in reversed(st): u = ('A', u, a)
                n += 1
            if u[0] == 'L' and u != t and self.base(u, depth + 1): return True
        if t[0] == 'C' and t[1].startswith('#'): return True   # fresh constants stand for S' elements
        if t == self.h: return True
        for (p, l0) in self.tpl:
            env = {}
            if mmatch(p, t, 0, env) and env and all(self.isS(v, depth + 1) for v in env.values()): return True
        return False
    def isS(self, t, depth=0):
        if depth > 12: return False
        if self.base(t, depth): return True
        hd = t; args = []
        while hd[0] == 'A': args.append(hd[2]); hd = hd[1]
        return bool(args) and self.base(hd, depth) and self.isS(args[-1], depth + 1)   # only the FIRST argument matters (Lemma SF')
    def step_ok(self, k, steps=200):
        head = ('A', self.inst(k, None), ('C', '#Z')); stack = []; n = 0
        while n < steps:
            while head[0] == 'A': stack.append(head[2]); head = head[1]
            args = stack[::-1]
            if n > 0 and args and self.base(head) and self.isS(args[0]): return True
            if head[0] != 'L' or not stack: return False
            head = cert.beta(head, stack.pop()); n += 1
        return False
    def hstep_ok(self, steps=200):
        head = ('A', self.h, ('C', '#Z')); stack = []; n = 0
        while n < steps:
            while head[0] == 'A': stack.append(head[2]); head = head[1]
            args = stack[::-1]
            if n > 0 and args and self.base(head) and self.isS(args[0]): return True
            if head[0] != 'L' or not stack: return False
            head = cert.beta(head, stack.pop()); n += 1
        return False
    def valid(self):
        return self.ok and self.hstep_ok() and all(self.step_ok(k) for k in range(len(self.tpl)))
def certify(R, inp, steps=300):
    head = ('A', R, inp); stack = []; tried = set()
    for _ in range(steps):
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] != 'L' or not stack: return False
        if head not in tried:
            tried.add(head)
            sf = SF(head)
            if sf.ok and sf.isS(stack[-1]) and sf.valid(): return True
        head = cert.beta(head, stack.pop())
    return False

def freevars(t, d=0, out=None):
    if out is None: out = set()
    k = t[0]
    if k == 'V':
        if t[1] >= d: out.add(t[1] - d)
    elif k == 'L': freevars(t[1], d + 1, out)
    elif k == 'A': freevars(t[1], d, out); freevars(t[2], d, out)
    return out
def instm(t, m, d=0):
    k = t[0]
    if k == 'V': return m[t[1] - d] if t[1] >= d else t
    if k == 'L': return ('L', instm(t[1], m, d + 1))
    if k == 'A': return ('A', instm(t[1], m, d), instm(t[2], m, d))
    return t

def _shead(t):
    while t[0] == 'A': t = t[1]
    return t

# ---------------- SF2: base elements with arity (handwritten generalization) ----------------
# Invariant: the head is X0 in B applied to >= a(X0) arguments, the first in S'.  Step check for
# every base element with fresh arguments #Z1..#Za: >= 1 head step to a spine whose head h' is
#  - a fresh constant: then >= AMAX arguments (its S' value X0' A'.. adds its own), first in S';
#  - h / a template instance with S' parameters / a closed redex reducing to one: >= a(h') args,
#    first in S'.  Substituting the actual arguments (fresh constants are never forced) gives the
#  same shape, so the head reduction never stops.
def lamchain(t):
    n = 0
    while t[0] == 'L': n += 1; t = t[1]
    return n
def whnf_closed(t, steps=40):
    n = 0
    while n < steps:
        hd = t; st = []
        while hd[0] == 'A': st.append(hd[2]); hd = hd[1]
        if hd[0] != 'L' or not st: return t
        t = cert.beta(hd, st.pop())
        for a in reversed(st): t = ('A', t, a)
        n += 1
    return t
class SF2(SF):
    def arity_of(self, t):
        if t[0] == 'C' and t[1].startswith('#'): return self.amax
        if t[0] == 'A': t = whnf_closed(t)
        return lamchain(t)
    def prep(self):
        ar = [1]
        for k in range(len(self.tpl)):
            ar.append(lamchain(whnf_closed(self.inst(k, None))))
        self.amax = max(ar)
        return min(ar) >= 1
    def run_ok(self, start, a, steps=300):
        head = start
        for i in range(a): head = ('A', head, ('C', '#Z%d' % i))
        stack = []; n = 0
        while n < steps:
            while head[0] == 'A': stack.append(head[2]); head = head[1]
            args = stack[::-1]
            if n > 0 and args and self.base(head) and self.isS(args[0]):
                need = self.amax if (head[0] == 'C') else self.arity_of(head)
                if len(args) >= need: return True
            if head[0] != 'L' or not stack: return False
            head = cert.beta(head, stack.pop()); n += 1
        return False
    def valid2(self):
        if not self.ok or not self.prep(): return False
        if not self.run_ok(self.h, 1): return False
        for k in range(len(self.tpl)):
            t = self.inst(k, None)
            if not self.run_ok(t, lamchain(whnf_closed(t))): return False
        return True
def certify2(R, inp, steps=300):
    head = ('A', R, inp); stack = []; tried = set()
    for _ in range(steps):
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] != 'L' or not stack: return False
        if head not in tried:
            tried.add(head)
            sf = SF2(head)
            if sf.ok and sf.prep() and sf.isS(stack[-1]) and len(stack) >= 1 and sf.valid2(): return True
        head = cert.beta(head, stack.pop())
    return False
