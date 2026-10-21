#!/usr/bin/env python3
"""Only hand-derived candidates and small rigid reader probes; two workers."""
import os
import sys
from pathlib import Path

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = Path('/Users/a9lim/Work/blam')
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
import tempfile
tempfile.tempdir = str(HERE)
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
from battery import check, compile_lam, enc, bitlist, normalize, shift, TRUE, FALSE

ABS = r'(cont (\args \arg. exp (\zx \zy. zx arg (zy args))))'
APP = r'(intL (\exp2. cont (\args. exp args (exp2 args))))'
NEXT = rf'(\bit1. intL (\exp. bit1 {ABS} {APP}))'

def machine(reader):
    return rf'''(\x. x x) (\x. (\intL. \cont.
      (\next. {reader}) {NEXT}) (x x))'''

# The extra final next fixes ZERO after replacing its arm by bit0 itself.
# With the bare continuation, it also escapes into the variable result.
READERS = {
    'spine3_bare': r'''\list. list (\bit0. bit0 bit0 cont)
                        (list list list) next''',
    'spine3_repaired': r'''\list. list
       (\bit0. bit0 bit0 (\value \rest \unused. cont value rest))
       (list list list) next''',
}

def A(f, *args):
    for a in args:
        f = ('A', f, a)
    return f

def Ls(n, body):
    for _ in range(n):
        body = ('L', body)
    return body

V = lambda i: ('V', i)

def rigid_reader(reader):
    E = compile_lam(r'\next \cont. ' + reader)
    outcomes = []
    for word in ['00', '01'] + ['1' * i + '0' for i in [1, 2, 3, 9, 31]]:
        s = bitlist(word, V(0))
        got = Ls(3, A(shift(E, 3), V(2), V(1), s))
        if word[0] == '0':
            want = Ls(3, A(V(2), TRUE if word[1] == '0' else FALSE, V(0)))
        else:
            want = Ls(3, A(V(1), bitlist(word[1:], V(0)), V(0)))
        g, w = normalize(enc(got), 100000), normalize(enc(want), 100000)
        outcomes.append((word, g == w))
    return outcomes

def identities():
    # For s = cons b r and D = lambda x. x x: s D -> b b r.
    D = compile_lam(r'\x. x x')
    checks = []
    for b, expected in [(TRUE, TRUE), (FALSE, V(0))]:
        s = ('L', A(V(0), shift(b, 1), V(1)))
        got = ('L', A(s, D))
        want = ('L', expected)
        checks.append(('stream_diagonal_' + ('K' if b == TRUE else 'F'),
                       normalize(enc(got), 10000) == normalize(enc(want), 10000)))
    # For unary s = 1^n 0 ++ N, n>=1, (s D)^3 -> N.
    for n in [1, 2, 3, 9, 31]:
        s = bitlist('1' * n + '0', V(0))
        u = A(s, D)
        got = ('L', A(u, u, u))
        checks.append((f'diagonal_skip_{n}', normalize(enc(got), 100000) == '0010'))
    # D (s D) arbitrary = K for 0:r, and N for 1^n 0:N.
    for word in ['0'] + ['1' * i + '0' for i in [1, 2, 3, 9, 31]]:
        s = bitlist(word, V(1))
        got = Ls(2, A(D, A(s, D), V(0)))
        want = Ls(2, TRUE if word == '0' else V(1))
        checks.append((f'conditional_skip_{len(word)-1}',
                       normalize(enc(got), 100000) == normalize(enc(want), 100000)))
    print('identity probes:', checks)
    assert all(v for _, v in checks)

if __name__ == '__main__':
    identities()
    if '--identities-only' in sys.argv:
        raise SystemExit(0)
    for name, reader in READERS.items():
        path = HERE / (name + '.lam')
        path.write_text(machine(reader) + '\n')
        E = compile_lam(path.read_text())
        print(name, 'rigid reader probes:', rigid_reader(reader), flush=True)
        ok, skip, bad = check(E, threads=2)
        print(f'{len(enc(E)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}', flush=True)
        if bad:
            print('first failures:', bad[:5], flush=True)
