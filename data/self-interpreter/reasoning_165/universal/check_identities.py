from pathlib import Path
import sys
HERE = Path(__file__).resolve().parent
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
from battery import compile_lam, enc, check, bitlist, normalize, FALSE, TRUE
from merges import INT165, body165, READER165, ABS, APP

K = r'(\x\y.x)'
F = r'(\x\y.y)'
NEXT = rf'(\bit1.intL (\exp.bit1 {ABS} {APP}))'
for dummy, want in [('list', F), ('next', NEXT), ('cont','cont'), ('intL','intL')]:
    body = body165(READER165).replace('(list list list)', f'(list list {dummy})')
    def normalized(src):
        return normalize(enc(compile_lam(src)), 4096)
    got = normalized(rf'\intL\cont. ({body}) cont {F}')
    expected = normalized(rf'\intL\cont. {want}')
    assert got is not None and got == expected
    print(f'B_{dummy} p c F = {dummy if dummy != "list" else "F"}: exact beta normal forms agree',flush=True)
    got = normalized(rf'\intL\cont. ({body}) cont {K} {F}')
    expected = normalized(r'\intL\cont.cont')
    assert got is not None and got == expected
    print(f'B_{dummy} p c K F = c: exact beta normal forms agree', flush=True)

src = INT165.replace('(list list list)', '(list list next)')
(HERE/'int166_skip_next.lam').write_text(src+'\n')
P = compile_lam(src)
(HERE/'int166_skip_next.blc').write_text(enc(P)+'\n')
ok,skip,bad = check(P,uni=False,max_bits=18,threads=2)
print(f'{len(enc(P))} bits ok={ok} skip={skip} fail={len(bad)} int166_skip_next.lam',flush=True)

# M = (free_1 K) F; R is exactly the suffix after that variable's 10 code.
M = ('A', ('A', ('V',0),TRUE),FALSE)
Rbits = enc(TRUE)+enc(FALSE)
print('strictness witness M code='+enc(M),flush=True)
U = compile_lam((HERE/'uni186_skip_next_Kparser.lam').read_text())
got = normalize(enc(('A',U,bitlist(enc(M),FALSE))), 1<<16)
expected = normalize(enc(('A',bitlist(Rbits,FALSE),FALSE)),1<<16)
assert got is not None and got == expected
print(f'U_186 (code(M) ++ F) = (code(K) ++ code(F) ++ F) F: exact beta normal forms agree; normal-form size={len(got)}',flush=True)
(HERE/'strictness_witness.nf.blc').write_text(got+'\n')

# The same derivation holds with a rigid suffix, which proves failure is
# not merely a nil-specific coincidence.
from battery import shift
from_lhs = ('L',('A',shift(U,1),bitlist(enc(M),('V',0))))
from_rhs = ('L',('A',bitlist(Rbits,('V',0)),('V',0)))
lhs = normalize(enc(from_lhs),1<<16)
rhs = normalize(enc(from_rhs),1<<16)
assert lhs is not None and lhs == rhs
print('strictness witness identity also verified with arbitrary rigid N',flush=True)
