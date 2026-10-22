r"""(a)/(e) bodies with p = 0, s-headed: R = \s. s (\b. s A1 A2..Am) T1..Tq.
Generic run: A1 b r A2 .. Am r T1 .. Tq.  First-level handler shapes A1:
 u  : \u. u Z Y C3..Cl      b  : \u. b Z Y C3..Cl
 uv : \u v. u Z Y C3..Cl    uvb: \u v. b Z Y C3..Cl
 bQ : b Z Y C3..Cl          bZ : b Z   (unary continues F r A2 .. = A2 ..)
"""
import sys
from skel import *
B3 = ['bit', 's', 'c']
def sk_of(shape, q, m, l):
    base = 15 + 2 * q + 2 * m
    Ts = ['T%d' % i for i in range(1, q + 1)]
    As = ['A%d' % i for i in range(2, m + 1)]
    holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
    Cs = ['C%d' % i for i in range(3, l + 1)]
    if shape in ('u', 'b'):
        fr, jb = ['bit'] + B3, 8
        ov = base + (4 + 2 * l if shape == 'u' else 5 + 2 * l)
        args = Cs + ['r'] + As + ['r'] + Ts
    elif shape in ('uv', 'uvb'):
        fr, jb = ['r', 'bit'] + B3, 12
        ov = base + (7 + 2 * l if shape == 'uv' else 8 + 2 * l)
        args = Cs + As + ['r'] + Ts
    elif shape == 'bQ':
        fr, jb = B3, 4
        ov = base + 2 * l + 2
        args = Cs + ['bit', 'r'] + As + ['r'] + Ts
    for h in ['Z', 'Y'] + Cs: holes[h] = {'frame': fr, 'jbase': jb, 'max': 40}
    return {'name': f'{shape} q{q} m{m} l{l}', 'q': q, 'overhead': ov, 'zbound': 40,
            'holes': holes, 'zhead': 'Z', 'zargs': args, 'uhead': 'Y', 'uargs': args}
def sk_bZ(q, m):
    base = 15 + 2 * q + 2 * m
    Ts = ['T%d' % i for i in range(1, q + 1)]
    As = ['A%d' % i for i in range(2, m + 1)]
    holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
    holes['Z'] = {'frame': B3, 'jbase': 4, 'max': 40}
    return {'name': f'bZ q{q} m{m}', 'q': q, 'overhead': base + 4, 'zbound': 40, 'holes': holes,
            'zhead': 'Z', 'zargs': ['bit', 'r'] + As + ['r'] + Ts,
            'uhead': 'A2', 'uargs': As[1:] + ['r'] + Ts}
if __name__ == "__main__":
  tot = 0; allhits = []
  for q in (1, 2, 3):
      for shape in ('u', 'b', 'uv', 'uvb', 'bQ'):
          for m in range(1, 6):
              for l in range(2, 6):
                  sk = sk_of(shape, q, m, l)
                  free = 45 - sk['overhead'] - 2 * len(sk['holes'])
                  if free < 0: continue
                  h, us, nt = run(sk); allhits += h; tot += 1
      for m in range(2, 6):
          sk = sk_bZ(q, m)
          if 45 - sk['overhead'] - 2 * len(sk['holes']) < 0: continue
          h, us, nt = run(sk); allhits += h; tot += 1
  print('skeletons', tot, 'hits', len(allhits))
