import os
from pathlib import Path
import sys
ROOT = Path('/Users/a9lim/Work/blam')
HERE = Path(__file__).resolve().parent
os.environ['TMPDIR'] = str(HERE)
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery as b
base = (ROOT / 'data/self-interpreter/machines/int165.lam').read_text()
base = '\n'.join(line for line in base.splitlines() if not line.startswith('--'))
old = 'list (\\bit0. bit0 (\\unused \\r. r next) cont) (list list list)'
new = '(list (list (\\a. \\b. a))) (\\r. r next) cont (list list list)'
assert base.count(old) == 1
src = '-- 167-bit failed arity-switch candidate; see REPORT.txt for the exact identity-program refutation.\n' + base.replace(old,new) + '\n'
path = HERE / 'arity_switch_failed.lam'
path.write_text(src)
E = b.compile_lam(src)
I = ('L', ('V', 0))
N = b.compile_lam('\\a. \\b. \\c. \\d. (\\x. x)')
stream = b.bitlist(b.enc(I), N)
got = ('L', ('A', ('A', b.shift(E,1), ('V',0)), stream))
want = ('L', ('A', ('A', ('V',0), ('L',I)), N))
g = b.normalize(b.enc(got), 4096)
w = b.normalize(b.enc(want), 4096)
expected_wrong = b.enc(('L', I))
assert g == expected_wrong and g != w
print(f'{len(b.enc(E))} bits: exact I-program counterexample, rigid C; N = lambda a b c d. I')
print('got normal form: lambda c. I')
print('required normal form: lambda c. c (lambda z. I) N')
print('got bits:', g)
print('required bits:', w)
print('No full battery was run on this refuted candidate.')
(HERE / 'arity_switch_failed.blc').write_text(b.enc(E) + '\n')
