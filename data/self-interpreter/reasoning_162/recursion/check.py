#!/usr/bin/env python3
"""Fixed recursion identities and the two-head skeleton; no term search."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
tempfile.tempdir = str(HERE / 'scratch')
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery
import lc

V = lambda n: ('V', n)
L = lambda t: ('L', t)
A = lambda f, a: ('A', f, a)
I = L(V(0))
K = L(L(V(1)))
F = L(L(V(0)))
DELTA = L(A(V(0), V(0)))
OMEGA = A(DELTA, DELTA)

def parse(src):
    return battery.compile_lam(src)

def apply(t, *args):
    for a in args:
        t = A(t, a)
    return t

ABS = L(L(A(V(2), L(L(A(A(V(1), V(2)), A(V(0), V(3))))))))
APP = L(A(A(V(2), V(0)), A(V(1), V(0))))
VAR = L(A(A(V(1), L(V(3))), A(A(V(1), V(1)), V(0))))

def skeleton(h, j):
    # h's frame is [b,s,c], j's is [e,b,s,c].
    nxt = L(A(h, L(A(A(V(1), A(V(3), ABS)), A(j, L(A(V(4), APP)))))))
    return L(L(apply(V(0), I, VAR, nxt)))

def occ(t, n=0):
    if t[0] == 'V':
        return int(t[1] == n)
    if t[0] == 'L':
        return occ(t[1], n + 1)
    return occ(t[1], n) + occ(t[2], n)

def nonlinear(t):
    if t[0] == 'V': return 0
    if t[0] == 'L': return nonlinear(t[1]) + (occ(t[1]) > 1)
    return nonlinear(t[1]) + nonlinear(t[2])

def chain(t):
    if t[0] == 'V': return True
    if t[0] == 'L': return chain(t[1])
    return (chain(t[1]) and chain(t[2]) and
            (nonlinear(t[1]) == 0 or nonlinear(t[2]) == 0))

def first_step(t, p=()):
    if t[0] == 'A' and t[1][0] == 'L':
        return p, lc.beta(t[1], t[2])
    if t[0] == 'L':
        q = first_step(t[1], p + ('under',))
        return None if q is None else (q[0], L(q[1]))
    if t[0] == 'A':
        q = first_step(t[1], p + ('left',))
        if q is not None: return q[0], A(q[1], t[2])
        q = first_step(t[2], p + ('right',))
        if q is not None: return q[0], A(t[1], q[1])
    return None

def trace(t, cap=100):
    paths = []
    for _ in range(cap):
        q = first_step(t)
        if q is None: return paths, t
        p, t = q
        paths.append(p)
    raise RuntimeError('Fixed identity did not terminate within its bound')

def reaches(t, want, cap=100):
    for n in range(cap):
        if t == want: return n
        step = first_step(t)
        if step is None: return None
        _, t = step
    return None

def lean_trace(paths):
    return '[' + ', '.join('[' + ', '.join('.' + x for x in p) + ']' for p in paths) + ']'

def main():
    start = time.monotonic()
    reader = parse(r'\q \c \s.s (\a.a) (\u.s (\z.c) (s s u)) q')
    q, c, t = V(0), V(1), V(2)
    fixtures = [
        ('identity_reset', I, c),
        ('boolean_K', K, q),
        ('boolean_F', F, q),
        ('continuation_packet', L(A(V(0), I)), A(c, q)),
        ('single_field_K', L(A(V(0), K)), L(A(lc.shift(1, 0, c), K))),
        ('single_field_F', L(A(V(0), F)), q),
        ('double_constant', L(L(lc.shift(2, 0, t))), A(t, q)),
    ]
    rows = []
    for name, stream, want in fixtures:
        paths, got = trace(apply(reader, q, c, stream))
        assert got == want, (name, lc.show(got), lc.show(want))
        rows.append(dict(name=name, contractions=len(paths), ok=True))

    # The proof in REPORT.md classifies these shapes by lambda/leaf count.
    # These are fixed proof leaves, not a generated search space.
    open_below_eight = [
        ('g', V(0)), ('I', I), ('K_g', L(V(1))),
        ('F', F), ('K', K), ('g_g', A(V(0), V(0))),
    ]
    carrier_checks = []
    for name, carrier in open_below_eight:
        assert lc.size(carrier) < 8
        inserted = lc.shift(2, 0, carrier)  # g is now the independent var 2.
        _, got = trace(apply(reader, q, c, inserted))
        assert got != A(t, q)
        _, diag = trace(apply(reader, q, q, carrier))
        assert diag != A(q, q)
        carrier_checks.append(dict(name=name, frame='g', bits=lc.size(carrier),
                                   target='g q and g g diagonal', refuted=True))
    closed_below_ten = [('I', I), ('F', F), ('K', K),
                        ('K_F', L(F)), ('K_K', L(K))]
    for name, carrier in closed_below_ten:
        assert lc.size(carrier) < 10
        _, got = trace(apply(reader, q, q, carrier))
        assert got != A(q, q)
        carrier_checks.append(dict(name=name, frame='closed', bits=lc.size(carrier),
                                   target='g g', refuted=True))
    delta_steps = reaches(apply(reader, q, q, DELTA), A(q, A(OMEGA, q)))
    assert delta_steps is not None
    carrier_checks.append(dict(name='Delta', frame='closed', bits=8, target='g g',
                               refuted=True, reduces_to='g (Omega g)', steps=delta_steps))
    # Attaining the stated bounds.
    assert lc.size(L(L(V(2)))) == 8
    assert lc.size(L(A(V(0), I))) == 10

    h, j = V(100), V(101)
    skel = skeleton(h, j)
    base = lc.size(skel) - lc.size(h) - lc.size(j)
    assert base == 129
    # Replacing both heads by ambient variables adds no nonlinear branch.
    assert chain(skeleton(V(0), V(0)))
    abs_source = L(OMEGA)
    abs_input = lc.bitlist(lc.enc(abs_source), V(1))
    abs_paths, abs_result = trace(apply(skel, V(0), abs_input))
    abs_k = L(A(V(1), ABS))
    assert nonlinear(abs_k) == 0
    assert nonlinear(lc.bitlist(lc.enc(OMEGA), V(1))) == 0
    (HERE / 'abs_trace.txt').write_text(lean_trace(abs_paths) + '\n')
    result = dict(reader_identities=rows, carrier_bound_leaves=carrier_checks,
                  head_skeleton_base_bits=base,
                  abs_cut_contractions=len(abs_paths),
                  abs_trace=lean_trace(abs_paths), abs_result=lc.show(abs_result),
                  seconds=round(time.monotonic()-start, 4))
    (HERE / 'checks.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))

if __name__ == '__main__':
    main()
