r"""p = 0 s-headed bodies, one-argument handlers and q up to 5.
 u1 : A1 = \u. u Z    zero Z A2..Am r T..;  unary r' A2.. = A2 b' r'' A3..Am r T..
 b1 : A1 = \u. b Z    (same, b at index 1)
 uv1: A1 = \u v. u Z  zero Z A3..Am r T..;  unary A2 A3..Am r T..   (m >= 2)
 uvb1: A1 = \u v. b Z
 m = 1 forms: u1/b1 unary r' r' T.. = r' r'... -> K N T.. (dead unless q = 0);
 uv1/uvb1 with m = 1: zero Z T..; unary r' T1.. = T1 b' r'' T2..: T1 handler.
 Also re-runs sec. 13 shapes for q = 4, 5.
"""
import sys
from skel import *
from sk_s0 import sk_of, sk_bZ, B3
def sk1(shape, q, m):
    base = 15 + 2 * q + 2 * m
    Ts = ['T%d' % i for i in range(1, q + 1)]
    As = ['A%d' % i for i in range(2, m + 1)]
    holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
    if shape in ('u1', 'b1'):
        holes['Z'] = {'frame': ['bit'] + B3, 'jbase': 8, 'max': 40}
        ov = base + (2 + 2 + 2 if shape == 'u1' else 2 + 2 + 3)
        if m < 2: return None
        return {'name': f'{shape} q{q} m{m}', 'q': q, 'overhead': ov, 'zbound': 40, 'holes': holes,
                'zhead': 'Z', 'zargs': As + ['r'] + Ts, 'uhead': 'A2', 'uargs': ['bit2', 'r2'] + As[1:] + ['r'] + Ts}
    holes['Z'] = {'frame': ['r', 'bit'] + B3, 'jbase': 12, 'max': 40}
    ov = base + (4 + 2 + 3 if shape == 'uv1' else 4 + 2 + 4)
    if m >= 2:
        return {'name': f'{shape} q{q} m{m}', 'q': q, 'overhead': ov, 'zbound': 40, 'holes': holes,
                'zhead': 'Z', 'zargs': As[1:] + ['r'] + Ts, 'uhead': 'A2', 'uargs': As[1:] + ['r'] + Ts}
    return None
if __name__ == '__main__':
    tot = 0; hits = []
    for q in (1, 2, 3, 4, 5):
        for shape in ('u1', 'b1', 'uv1', 'uvb1'):
            for m in range(1, 7):
                sk = sk1(shape, q, m)
                if sk is None or 45 - sk['overhead'] - 2 * len(sk['holes']) < 0: continue
                h, us, nt = run(sk); hits += h; tot += 1
    for q in (4, 5):
        for shape in ('u', 'b', 'uv', 'uvb', 'bQ'):
            for m in range(1, 6):
                for l in range(2, 6):
                    sk = sk_of(shape, q, m, l)
                    if 45 - sk['overhead'] - 2 * len(sk['holes']) < 0: continue
                    h, us, nt = run(sk); hits += h; tot += 1
        for m in range(2, 6):
            sk = sk_bZ(q, m)
            if 45 - sk['overhead'] - 2 * len(sk['holes']) < 0: continue
            h, us, nt = run(sk); hits += h; tot += 1
    print('skeletons', tot, 'hits', len(hits))
