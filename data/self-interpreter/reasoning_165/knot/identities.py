#!/usr/bin/env python3
"""Specific symbolic normal-form checks, never a search."""
from pathlib import Path
import sys
import tempfile

HERE = Path(__file__).resolve().parent
REPO = Path('/Users/a9lim/Work/blam')
sys.dont_write_bytecode = True
sys.path.insert(0, str(REPO / 'tools/self-interpreter'))
tempfile.tempdir = str(HERE)
import battery as b
import db

def app(*args):
    value = args[0]
    for arg in args[1:]:
        value = ('A', value, arg)
    return value

def check(label, left, right):
    lhs = b.compile_lam(left)
    rhs = b.compile_lam(right)
    ln = b.normalize(b.enc(lhs), 4096)
    rn = b.normalize(b.enc(rhs), 4096)
    assert ln is not None and rn is not None and ln == rn, label
    print(f'PASS {label}: {len(ln)}-bit common normal form', flush=True)

def z(q):
    return rf'(\u \r. r {q})'

def h(q, c):
    return rf'(\b. b {z(q)} {c})'

def r(q, c):
    return rf'(\s. s {h(q,c)} (s s s))'

check('R(q,c) Z(t) = t t',
      rf'\q \c \t. {r("q","c")} {z("t")}',
      r'\q \c \t. t t')
check('H(q,c) R(q,c) = q q c',
      rf'\q \c. {h("q","c")} {r("q","c")}',
      r'\q \c. q q c')
check('zero stream s(sH) = q',
      rf'\q \c \tail. (\s. s (s {h("q","c")})) (\f. f (\a \b. a) tail)',
      r'\q \c \tail. q')
check('H_i H_j = c_j q_i c_i',
      rf'\qi \ci \qj \cj. {h("qi","ci")} {h("qj","cj")}',
      r'\qi \ci \qj \cj. cj qi ci')

# The full cross-reader expression has an unsolvable payload R_j R_j R_j.
# A four-argument observer discards it and checks both retained arguments.
cj = r'(\q \c \u \v. marker q c)'
check('cross-reader four-argument observer',
      rf'\qi \ci \qj \marker. {r("qi","ci")} {r("qj",cj)}',
      r'\qi \ci \qj \marker. marker qi ci')

interpreter = b.compile_lam((REPO / 'data/self-interpreter/machines/int165.lam').read_text())
detector = b.compile_lam(r'\a \b \c \d \e. e')
next_builder = b.compile_lam(r'''\intL \cont \bit1.
    intL (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (intL (\exp2. cont (\args. exp args (exp2 args)))))''')
next_term = app(next_builder, interpreter, detector)
quoted_id = b.bitlist('0010', ('V', 0))
diagonal_probe = ('L', app(b.shift(next_term, 1), b.shift(next_term, 1), quoted_id))
ordinary_probe = ('L', app(b.shift(interpreter, 1), b.shift(detector, 1), quoted_id))
diagonal_nf = b.normalize(b.enc(diagonal_probe), 16384)
ordinary_nf = b.normalize(b.enc(ordinary_probe), 16384)
assert diagonal_nf == '0010'
assert ordinary_nf == '0000000010'
print(f'PASS NEXT diagonal separation: q q <I> -> {diagonal_nf}; E C <I> -> {ordinary_nf}', flush=True)

omega = db.parse(r'(\1 1) (\1 1)')
tail_selector = b.compile_lam(r'\v \r. r')

def counts(t):
    if t[0] == 'V':
        return (0, 0, t[1])
    if t[0] == 'L':
        l, a, x = counts(t[1])
        return l+1, a, x
    left, right = counts(t[1]), counts(t[2])
    return left[0]+right[0], left[1]+right[1]+1, left[2]+right[2]

def diagonals(t, stack=()):
    if t[0] == 'V':
        return []
    if t[0] == 'L':
        return diagonals(t[1], stack + ('lambda',))
    found = [stack] if t[1] == t[2] else []
    return found + diagonals(t[1], stack+('function',)) + diagonals(t[2], stack+('argument',))

for name in ['root_next', 'reader_knot']:
    e = b.compile_lam((HERE / (name + '.lam')).read_text())
    suffix_probe = ('L', app(b.shift(e, 1), b.shift(tail_selector, 1),
                            b.bitlist(b.enc(omega), ('V', 0))))
    suffix = b.normalize(b.enc(suffix_probe), 16384)
    assert suffix == '0010'
    print(f'PASS {name}: divergent-program suffix -> tail; (L,A,X)={counts(e)}', flush=True)
    if name == 'reader_knot':
        ds = diagonals(e)
        assert len(ds) == 1
        print(f'PASS reader_knot: one syntactic equal-child application, at {ds[0]}', flush=True)
