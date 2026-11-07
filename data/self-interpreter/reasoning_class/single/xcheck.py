"""Cross-check of the prefix narrowing against brute force at a small budget:
all one-j terms over [s,c] with j at M-depth 0 and cost <= C satisfying U1, U2 (brute force,
jn enum_terms 'top'), grouped by j's path, versus narrow.py on every path prefix at B = C + 6."""
import sys, subprocess, json, itertools, time
from insert import *
C = int(sys.argv[1])
def jpath(t, p=''):
    if t == Kc('j'): return p
    if t[0] == 'a':
        r = jpath(t[1], p + 'L')
        return r if r is not None else jpath(t[2], p + 'R')
    return None
t0 = time.time(); bf = {}; n = 0; caps = 0
for c, t in enum_terms(C, 2, 'top'):
    if 'j' not in consts_of(t): continue
    n += 1
    ok = True
    for k in range(2):
        try:
            if normalize(inst(t, Us[k]), 2000) != cU[k]: ok = False; break
        except (Fuel, RecursionError):
            ok = False; caps += 1; break
    if ok: bf.setdefault(jpath(t), []).append(show(t))
print('brute force: terms', n, 'U1U2 cores', sum(len(v) for v in bf.values()), 'caps', caps, f'{time.time()-t0:.1f}s')
for p, v in sorted(bf.items()): print('  path', p, v)
def term(p):
    if not p: return 'j'
    return '(%s _)' % term(p[1:]) if p[0] == 'L' else '(_ %s)' % term(p[1:])
nar = {}
for ell in range(1, 6):
    for mid in itertools.product('LR', repeat=ell - 1):
        p = ''.join(mid) + 'R'
        out = subprocess.run(['python3', 'narrow_all.py', str(C + 6), r'\s. ' + term(p), '/dev/stdout'], capture_output=True, text=True).stdout
        js = out[:out.rindex('}') + 1]
        d = json.loads(js)
        if d['sol']: nar[p] = d['sol']
print('narrowing templates by path:')
for p, v in sorted(nar.items()): print('  path', p, v)
