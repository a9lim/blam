#!/usr/bin/env python3
"""Compare a lane's inventory with the independent enumerator's survivors.

usage: compare.py SURVIVORS LANE_WIRES

SURVIVORS is the output of audit_enum (every closed term of the size that
has an incomparable nonlinear pair, a width-3 subterm and no shortening
contraction). The lane's inventory must be a subset of it, must contain
every application-rooted survivor, and may omit a λ-rooted survivor only
for one of the literal-interface reasons:
  two leading lambdas       (a literal `λc s.B` costs at least 46)
  continuation dead         (`c` does not occur in the body of `λc.B`)
  no internal width 3       (no subterm of `B` has three free variables other than `c`)
Anything else is reported as UNEXPLAINED.
"""
import sys
from collections import Counter
sys.setrecursionlimit(100000)

def parse(w, i=0):
    if w[i] == '1':
        j = i
        while w[j] == '1':
            j += 1
        return ('v', j - i - 1), j + 1
    if w[i:i+2] == '00':
        b, j = parse(w, i + 2)
        return ('l', b), j
    f, j = parse(w, i + 2)
    x, k = parse(w, j)
    return ('a', f, x), k

def occ(t, i):
    k = t[0]
    if k == 'v': return int(t[1] == i)
    if k == 'l': return occ(t[1], i + 1)
    return occ(t[1], i) + occ(t[2], i)

def fvs(t, d):
    k = t[0]
    if k == 'v': return {d - 1 - t[1]}
    if k == 'l': return fvs(t[1], d + 1) - {d}
    return fvs(t[1], d) | fvs(t[2], d)

def internal_width3(t, d):
    if len(fvs(t, d) - {0}) >= 3: return True
    k = t[0]
    if k == 'l': return internal_width3(t[1], d + 1)
    if k == 'a': return internal_width3(t[1], d) or internal_width3(t[2], d)
    return False

mine = set(l.split()[0] for l in open(sys.argv[1]) if l.strip())
lane = set(l.split()[0] for l in open(sys.argv[2]) if l.strip())
print(f"enumerator survivors {len(mine)}; lane inventory {len(lane)}")
print(f"lane wires that the enumerator does not keep: {len(lane - mine)}")
extra = sorted(mine - lane)
reasons = Counter(); bad = []
for w in extra:
    t, j = parse(w)
    if t[0] != 'l':
        reasons['UNEXPLAINED application root'] += 1; bad.append(w); continue
    body = t[1]
    if body[0] == 'l': reasons['two leading lambdas'] += 1
    elif occ(body, 0) == 0: reasons['continuation dead'] += 1
    elif not internal_width3(body, 1): reasons['no internal width 3'] += 1
    else:
        reasons['UNEXPLAINED lambda root'] += 1; bad.append(w)
print(f"survivors the lane omits: {len(extra)}")
for k, v in sorted(reasons.items()): print(f"  {v:8d}  {k}")
app_m = sum(1 for w in mine if w.startswith('01')); app_l = sum(1 for w in lane if w.startswith('01'))
print(f"application-rooted: enumerator {app_m}, lane {app_l}")
for w in bad[:10]: print("  UNEXPLAINED", w)
ok = not bad and not (lane - mine)
print("COMPLETE" if ok else "NOT CONFIRMED")
sys.exit(0 if ok else 1)
