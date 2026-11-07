# for zero probes that blam did not certify (matched by bit string), adjudicate the three unary instances
import sys, pickle, subprocess
from dbe import *
from toblc import close
from blam_match import verdicts
probes = [l.strip() for l in open(sys.argv[1]) if l.strip()]
terms = pickle.load(open(sys.argv[2], 'rb'))      # list aligned with probes (terms or cap items)
build = None
if len(sys.argv) > 4:
    import importlib; build = importlib.import_module(sys.argv[4]).build_from_cap
v = verdicts(sys.argv[3])
idx = [i for i, p in enumerate(probes) if v.get(p) != 'DIVERGE']
uprobes = []
for i in idx:
    R = build(terms[i]) if build else terms[i]
    for n in (1, 2, 3): uprobes.append(close(A(R, U(n, Kc('N'))), ['c', 'j', 'N']))
open('tmp_u.bits', 'w').write('\n'.join(uprobes) + '\n')
out = subprocess.run(['./blam', 'adjudicate', '--no-oracle', '--file', 'tmp_u.bits', '--threads', '2'], capture_output=True, text=True).stdout
open('tmp_u.out', 'w').write(out)
vu = verdicts('tmp_u.out')
for k, i in enumerate(idx):
    vs = [vu.get(uprobes[3*k + m]) for m in range(3)]
    print(i, vs)
