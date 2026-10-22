"""Run narrowing (laws U1,U2, B=37) + single-site insertion for every j-path of a given length
(all application nodes from M's root to j; L = j in the function part, R = argument part)."""
import sys, subprocess, json, itertools, time
def term(p):
    if not p: return 'j'
    return '(%s _)' % term(p[1:]) if p[0] == 'L' else '(_ %s)' % term(p[1:])
ell = int(sys.argv[1])
done = set(sys.argv[2].split(',')) if len(sys.argv) > 2 else set()
tot_states = 0; tot_ins = 0
for mid in itertools.product('LR', repeat=ell - 1):
    p = ''.join(mid) + 'R'
    if p in done: continue
    pre = r'\s. ' + term(p)
    out = subprocess.run(['python3', 'narrow_all.py', '37', pre, 'path_%s.json' % p], capture_output=True, text=True, timeout=120).stdout.strip()
    ins = subprocess.run(['python3', 'beta1.py', 'path_%s.json' % p], capture_output=True, text=True, timeout=120).stdout.strip().splitlines()
    st = int(out.split()[1]); tot_states += st
    n_ins = int(ins[0].split('insertions')[1].split()[0]); tot_ins += n_ins
    print(p, '|', out, '|', ins[0], flush=True)
    for l in ins[1:]: print('   ', l)
print('TOTAL states', tot_states, 'insertions', tot_ins)
