#!/usr/bin/env python3
"""Fixed equations and two bootstrap unfoldings, with rigid Q; no search."""
from checks import *


def whnf(t):
    steps = 0
    def head(t):
        nonlocal steps
        if t[0] != 'A':
            return t
        f = head(t[1])
        if f[0] != 'L':
            return ('A', f, t[2])
        steps += 1
        assert steps <= 200
        return head(lc.beta(f, t[2]))
    return head(t), steps


def run():
    free = ['t', 'q', 'c', 'a']
    r = r'(\s.s (\b.b (\u.\r.r q) c) (s s s))'
    ra = r'(\s.s (\b.b (\u.\r.r q) c) (s s a))'
    z = r'(\u.\r.r t)'
    f = r'(\u.\v.v)'
    equations = [
        (f'{r} {z}', 't t'),
        (f'{ra} {z}', 'a t t'),
        (f'{ra} {f}', 'a'),
    ]
    for lhs, rhs in equations:
        equation(lhs, rhs, free)

    # Q is an arbitrary rigid constructor of NEXT from parser and continuation.
    b = r'(\p.\c.\s.s (\b.b (\u.\r.r (q p c)) c) (s s c))'
    w = r'(\x.x (\u.u) x (\a.\b.b) x)'
    g = rf'(\x.{b} ({w} x))'
    e = rf'({w} {g})'
    lhs, sl = whnf(parse(e, ['q']))
    rhs, sr = whnf(parse(f'{b} {e}', ['q']))
    assert lhs == rhs

    bx = r'(\x.\p.\c.\s.s (\b.b (\u.\r.r (q p c)) c) (s s x))'
    wx = r'(\x.x x x (\a.\b.b) x)'
    gx = rf'(\x.{bx} x ({wx} x))'
    ex = rf'({wx} {gx})'
    lhsx, slx = whnf(parse(ex, ['q']))
    rhsx, srx = whnf(parse(f'{bx} {gx} {ex}', ['q']))
    assert lhsx == rhsx

    out = dict(
        rigid_equations=len(equations),
        bootstrap_cont_steps=[sl, sr],
        bootstrap_generator_steps=[slx, srx],
        diagonal_carrier_bits=lc.size(parse(z, ['t'])),
        original_driver_bits=lc.size(parse(r'\x.x (\u.u) x (\u.\r.r x)')),
        reset_cont_driver_bits=lc.size(parse(w)),
        reset_generator_driver_bits=lc.size(parse(wx)),
    )
    (HERE / 'identities.json').write_text(json.dumps(out, indent=2)+'\n')
    print(json.dumps(out, indent=2))


if __name__ == '__main__':
    run()
