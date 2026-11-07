"""Self-reproducing-head certificate (handwritten lemma SR; generalizes W5 and C1):
if a lambda h applied to p arguments c1..cp, of which an abstracted set are fresh rigid
constants never forced, head-reduces (>= 1 step, never popping below the p arguments) to
h T1..Tp R1..Rq where every kept (concrete) position i has T_i == c_i, then by substitution
h X1..Xp Y.. ->h+ h X1'..Xp' R'.. Y.. with the kept positions unchanged, and again: no hnf.
Applied at every recurring lambda head of the zero-law run of R Z (holes rigid).
usage: certgen.py DUMP.json"""
import sys, json, signal, itertools
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
sys.path.insert(0, '.')
import cert
from certw5 import w5
import certsf
class Need(Exception): pass
def sim(h, args, fresh, steps=1500):
    head = h; stack = list(reversed(args))   # top of stack = first arg
    base = 0; n = 0
    while n < steps:
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] == 'C':
            if head[1] in fresh: raise Need()
            return None
        if head[0] != 'L' or not stack: return None
        if n > 0 and head == h and len(stack) >= len(args):
            res = list(reversed(stack))       # args first
            if all(res[i] == args[i] for i in range(len(args)) if not args[i][0] == 'C' or args[i][1] not in fresh):
                return res
        if len(stack) <= base: return None
        a = stack.pop(); head = cert.beta(head, a); n += 1
        if cert.size(head) + sum(map(cert.size, stack)) > 4000: return None
    return None
def tryat(h, stack):
    top = list(reversed(stack))          # first arg first
    for p in range(1, min(5, len(top)) + 1):
        args = top[:p]
        for mask in itertools.product((0, 1), repeat=p):   # 1 = abstract
            fresh = set(); a2 = []
            for i, (m, a) in enumerate(zip(mask, args)):
                if m: nm = '#%d' % i; fresh.add(nm); a2.append(('C', nm))
                else: a2.append(a)
            try: res = sim(h, a2, fresh)
            except Need: continue
            if res is None: continue
            if all(res[i] == a2[i] for i in range(p) if not mask[i]):
                return True
    return False
def certify(R, inp, steps=600):
    head = ('A', R, inp); stack = []; seen = {}
    for _ in range(steps):
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] != 'L' or not stack: return False
        seen[head] = seen.get(head, 0) + 1
        if 2 <= seen[head] <= 8 and tryat(head, stack): return True
        a = stack.pop(); head = cert.beta(head, a)
        if cert.size(head) + sum(map(cert.size, stack)) > 20000: return False
    return False
class TO(Exception): pass
def hd(*a): raise TO()
signal.signal(signal.SIGALRM, hd)
if __name__ == '__main__':
    d = json.load(open(sys.argv[1])); left = []; how = {}
    lo = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    hi = int(sys.argv[3]) if len(sys.argv) > 3 else len(d['cut'])
    secs = float(sys.argv[4]) if len(sys.argv) > 4 else 1.0
    for idx in range(lo, min(hi, len(d['cut']))):
        lb, s = d['cut'][idx]
        R = cert.parse_show(s); inp, _ = cert.law_io(0); ok = False
        for name, f in (('cert', lambda: any(v == 'fail' for v in cert.certify(s, fuel=1500).values())),
                        ('W5', lambda: w5(R, inp)), ('SR', lambda: certify(R, inp)),
                        ('SF', lambda: certsf.certify(R, inp)), ('SF2', lambda: certsf.certify2(R, inp))):
            signal.setitimer(signal.ITIMER_REAL, secs)
            try: ok = f()
            except TO: ok = False
            finally: signal.setitimer(signal.ITIMER_REAL, 0)
            if ok: how[name] = how.get(name, 0) + 1; break
        if not ok: left.append((idx, lb, s)); print('UNCERT', idx, lb, s, flush=True)
    print(f"[{lo},{hi}) {min(hi, len(d['cut'])) - lo} cut-offs, {min(hi, len(d['cut'])) - lo - len(left)} certified {how}, {len(left)} left", flush=True)
