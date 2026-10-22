#!/usr/bin/env python3
r"""Knotless case K1: first head H closed with 3 nonlinear binders (forced
when nl(H) = 3 and |H| <= 30: then V = 6, L in {3,4}), second head
J in {exp, bit1, list, I} (|J| <= 32 - |H| <= 4).  Builds the exact knotless
skeleton E[H,J] (the 162 with knot, let and recursive leaves removed) and runs
contract probes; single-threaded, stops a candidate at its first failure.
'fuel' verdicts are inconclusive and are reported separately."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
sys.path.insert(0, '/Users/a9lim/Work/blam/tools')
import battery, lc
src = open('/Users/a9lim/Work/blam/tmp/round4/knot/m2_enum.py').read().split("total = m2 = 0")[0]
sys.argv = ['x']; exec(src)
MH = r"(\m1. \m2. \m3. \m4. \m5. \m6. \m7. m7)"
MJ = r"(\n1. \n2. \n3. \n4. \n5. \n6. \n7. \n8. \n9. n9)"
SKEL = r"""\cont. \list.
  list (\a. a) (\u. list (\q. cont) (list list u))
    (\bit1. HH (\exp. bit1
      (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
      (JJ (\exp2. cont (\args. exp args (exp2 args))))))"""
S = battery.compile_lam(SKEL.replace("HH", MH).replace("JJ", MJ))
mh, mj = battery.compile_lam(MH), battery.compile_lam(MJ)
def repl(t, old, new):
    if t == old: return new
    if t[0] == 'L': return ('L', repl(t[1], old, new))
    if t[0] == 'A': return ('A', repl(t[1], old, new), repl(t[2], old, new))
    return t
assert len(battery.enc(S)) - len(battery.enc(mh)) - len(battery.enc(mj)) == 129
print("skeleton bits without heads:", len(battery.enc(S)) - len(battery.enc(mh)) - len(battery.enc(mj)))
JS = {'exp': ('V', 0), 'bit1': ('V', 1), 'list': ('V', 2), 'I': ('L', ('V', 0))}
P1 = lc.decode('0010')[0]
MORE = [lc.decode(b)[0] for b in ['000010', '0000110', '0100100010', '00011010']]
hs = [t for c in range(28, 31) for t, *_ in genx(0, c, False, 0, 0)
      if sum(1 for p, k in binders(t) if k >= 2) == 3]
print("K1 first heads:", len(hs))
stage1 = {}; pass1 = []
for H in hs:
  for jn, J in JS.items():
    E = repl(repl(S, mh, H), mj, J)
    r = battery._probe(E, P1, False)
    stage1[r] = stage1.get(r, 0) + 1
    if r != 'WRONG': pass1.append((H, J, jn, r))
print("probe 0010, all four J:", stage1)
from battery import shift as bshift, bitlist
def decomp(t):
    n = 0
    while t[0] == 'L': n += 1; t = t[1]
    args = []
    while t[0] == 'A': args.append(t[2]); t = t[1]
    return n, t, args[::-1]
def bt_cmp(g, w, depth):
    """Sound Boehm comparison of g against the beta-normal w: 'ref:*' on a
    certified mismatch, 'open' otherwise."""
    r = hnf(g)
    if r is None: return 'open'
    if r == ('cycle',): return 'ref:no-hnf'
    n, head, args = r
    wn_, wh, wargs = decomp(w)
    if n != wn_ or head != wh or len(args) != len(wargs): return 'ref:shape'
    if depth == 0: return 'open'
    for a, b in zip(args, wargs):
        c = bt_cmp(a, b, depth - 1)
        if c.startswith('ref'): return c
    return 'open'
def certify(E, M):
    """Sound check of the probe term via head normal form: must be
    \\c n. c X n.  Returns 'ref:...' or 'open'."""
    got = ("L", ("L", ("A", ("A", bshift(E, 2), ("V", 1)), bitlist(lc.enc(M), ("V", 0)))))
    want = ("L", ("L", ("A", ("A", ("V", 1), ("L", bshift(M, 3))), ("V", 0))))
    wn = lc.nf(want, [10**6])
    return bt_cmp(got, wn, 4)
summary = {}
for H, J, jn, r0 in pass1:
    E = repl(repl(S, mh, H), mj, J)
    v = certify(E, P1)
    summary[v] = summary.get(v, 0) + 1
    if v == 'open':
        print("  OPEN H", battery.enc(H), lc.show(H), "J", jn)
print("certified on 0010 among non-WRONG:", summary)
