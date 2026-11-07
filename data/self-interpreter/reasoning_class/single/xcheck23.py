"""Exact cross-check at cost 23 (j at M-depth 0): brute force over all 49,500 terms of cost
exactly 23 (U1, U2) vs the union over all j-paths (length <= 6) of narrow.py templates at
B = 29, expanded to every filling of total cost exactly 23.  The sets must coincide."""
import subprocess, json, itertools, time
from insert import *
from convany import conv_any
import sys; C = int(sys.argv[1])
t0 = time.time(); bf = set(); n = 0; caps = 0
for c, t in enum_terms(C, 2, 'top'):
    if c != C or 'j' not in consts_of(t): continue
    n += 1
    ok = True
    for k in range(2):
        try:
            if normalize(inst(t, Us[k]), 2000) != cU[k]: ok = False; break
        except (Fuel, RecursionError):
            ok = False; caps += 1; break
    if ok: bf.add(show(t))
print('brute force exact', C, ': terms', n, 'cores', len(bf), 'caps', caps, f'{time.time()-t0:.1f}s')
def term(p):
    if not p: return 'j'
    return '(%s _)' % term(p[1:]) if p[0] == 'L' else '(_ %s)' % term(p[1:])
nar = set(); st = 0
for ell in range(1, 7):
    for mid in itertools.product('LR', repeat=ell - 1):
        p = ''.join(mid) + 'R'
        out = subprocess.run(['python3', 'narrow_all.py', str(C + 6), r'\s. ' + term(p), '/dev/stdout'], capture_output=True, text=True).stdout
        d = json.loads(out[:out.rindex('}') + 1]); st += d['states']
        for lb, src in d['sol']:
            tm = conv_any(src)
            for core, left in expand(tm, C - cost(tm)):
                if cost(core) == C and unary_ok(core) is not False:
                    # keep exactly those passing U1,U2 (unary_ok tests 1..3; recheck 1,2)
                    pass
                if cost(core) == C:
                    try:
                        if all(normalize(inst(core, Us[k]), 2000) == cU[k] for k in range(2)): nar.add(show(core))
                    except (Fuel, RecursionError): pass
print('narrowing states', st, 'expanded cores', len(nar))
print('brute-only', sorted(bf - nar)); print('narrow-only', sorted(nar - bf))
print('both', sorted(bf & nar))
