import os
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
ROOT = Path('/Users/a9lim/Work/blam')
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery
import lc
battery.BLAM = str(HERE / 'blam-frozen')

K = r'(\x \y. x)'
F = r'(\x \y. y)'
I = r'(\x. x)'
OMEGA = r'((\x. x x) (\x. x x))'
D = rf'(\t. t {K} {K} {K} {I})'

def pair(b, r):
    return rf'(\h. h {b} {r})'

cases = [
    ('classify K', f'{D} {K}', K),
    ('classify F', f'{D} {F}', K),
    ('classify 0-cell, rigid tail', rf'\r. {D} {pair(K,"r")}', rf'\r. {F}'),
    ('classify 1-cell, rigid tail', rf'\r. {D} {pair(F,"r")}', rf'\r. {F}'),
    ('classify 0-cell, divergent tail', f'{D} {pair(K,OMEGA)}', F),
    ('classify 1-cell, divergent tail', f'{D} {pair(F,OMEGA)}', F),
    ('APP alias = unary successor', rf'\e \r. e ({K} {I}) {pair(K,"r")}',
       rf'\e \r. {pair(F,pair(K,"r"))} e'),
]

cell = r'(\b \r. b a (r e))'
av = rf'(\a. f {cell})'
bv = r'(\g. f e (g e))'
cases += [
    ('tagged W none', rf'\f \e. {K} {av} {bv}', rf'\f \e. {av}'),
    ('tagged W some', rf'\f \g \e. (\none \some. some g) {av} {bv}',
       r'\f \g \e. f e (g e)'),
]

next_tagged = r'''(\b. p (\f.
    (b (\k. k b) (\k. p (\g. k (\none \some. some g))))
    (\q. c (\e. q
      (\a. f (\u \v. u a (v e)))
      (\g. f e (g e))))))'''
cases += [
    ('tagged NEXT, ABS bit', rf'\p \c. {next_tagged} {K}',
       r'\p \c. p (\f. c (\e \a. f (\u \v. u a (v e))))'),
    ('tagged NEXT, APP bit', rf'\p \c. {next_tagged} {F}',
       r'\p \c. p (\f. p (\g. c (\e. f e (g e))))'),
]

lines = []
for name, lhs, rhs in cases:
    a = battery.compile_lam(lhs)
    b = battery.compile_lam(rhs)
    py_a = lc.nf(a, [10000])
    py_b = lc.nf(b, [10000])
    rust_a = battery.normalize(battery.enc(a), 10000)
    rust_b = battery.normalize(battery.enc(b), 10000)
    assert py_a == py_b, name
    assert rust_a == rust_b == battery.enc(py_a), name
    lines.append(f'PASS Python/Rust: {name}')

# Check the ABS-assisted knot by head reduction only. Normalizing the
# recursive argument under rigid B would ask for an infinite normal form.
A = r'(\body \env \arg. body (\b \r. b arg (r env)))'
delta = r'(\h. h h)'
h = rf'({A} (\env. env B {delta}))'
e = rf'({delta} {h})'
unfold = battery.compile_lam(rf'\B \c. {e} c')[1][1]
want = battery.compile_lam(rf'\B \c. B c {e}')[1][1]

def head(term):
    stack = []
    count = 0
    while True:
        if term[0] == 'A':
            stack.append(term[2])
            term = term[1]
        elif term[0] == 'L' and stack:
            term = lc.beta(term, stack.pop())
            count += 1
            assert count < 100
        else:
            break
    while stack:
        term = ('A', term, stack.pop())
    return term, count

got, steps = head(unfold)
assert got == want
lines.append(f'PASS exact AST, {steps} head beta steps: E c -> B c E')

# The 193-bit candidate is actually beta-convertible to the 165. Remove
# its outer helper let, then compare the two finite knot generators.
source193 = battery.compile_lam((HERE / 'abs_driver.lam').read_text())
source165 = battery.compile_lam((ROOT / 'data/self-interpreter/machines/int165.lam').read_text())
unlet193 = lc.beta(source193[1], source193[2])
assert unlet193[0] == source165[0] == 'A'
assert unlet193[1] == source165[1]
nf193 = lc.nf(unlet193[2], [10000])
nf165 = lc.nf(source165[2], [10000])
assert nf193 == nf165
assert battery.normalize(battery.enc(unlet193[2]), 10000) == battery.enc(nf165)
assert battery.normalize(battery.enc(source165[2]), 10000) == battery.enc(nf165)
(HERE / 'common_generator_nf.blc').write_text(battery.enc(nf165) + '\n')
lines.append('PASS Python/Rust: 193 and 165 knot generators have identical beta normal forms')
term = battery.compile_lam(D)
lines.append(f'Boolean/Scott-cell classifier: {len(battery.enc(term))} bits unoptimized')
(HERE / 'bit_or_cell.lam').write_text(D + '\n')
(HERE / 'bit_or_cell.blc').write_text(battery.enc(term) + '\n')
shared_D = rf'(\k \t. t k k k {I}) {K}'
shared_term = battery.compile_lam(shared_D)
assert lc.nf(shared_term, [1000]) == term
lines.append(f'Shared-K classifier: {len(battery.enc(shared_term))} bits unoptimized')
(HERE / 'bit_or_cell_shared.lam').write_text(shared_D + '\n')
(HERE / 'bit_or_cell_shared.blc').write_text(battery.enc(shared_term) + '\n')

omega = battery.compile_lam(OMEGA)
for name in ['abs_driver', 'tagged_optional']:
    program = battery.compile_lam((HERE / f'{name}.lam').read_text())
    probe = ('L', ('A', ('A', battery.shift(program, 1), battery.FALSE),
                   battery.bitlist(battery.enc(omega), ('V', 0))))
    got = battery.normalize(battery.enc(probe), 100000)
    assert got == battery.enc(battery.compile_lam(I)), name
    lines.append(f'PASS Rust: {name} discards divergent value and returns rigid suffix')
(HERE / 'identities.txt').write_text('\n'.join(lines) + '\n')
print('\n'.join(lines))
