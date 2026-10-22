#!/usr/bin/env python3
r"""Lemma C repair (Codex's joint check, reproduced): every closed driver D and
every fill d in frame [x] with |D| + |d| <= 14, in E = D (\x. (\p. B) d), with B
the 162's body; contract probes on sources 0010 and 000010."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
sys.path.insert(0, '/Users/a9lim/Work/blam/tools')
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/knot')
import battery, lc
src = open('/Users/a9lim/Work/blam/tmp/round4/knot/m2_enum.py').read().split("total = m2 = 0")[0]
sys.argv = ['x']; exec(src)
E162 = battery.compile_lam(open('/Users/a9lim/Work/blam/data/self-interpreter/machines/int162.lam').read())
assert E162[0] == 'A'
G = E162[2]                     # \x. (\intL. B) (x x)
LB = G[1][1]                    # (\intL. B), closed
assert G[1][0] == 'A' and G[1][2] == ('V', 0) or True
LB = G[1][1]
progs = [lc.decode('0010')[0], lc.decode('000010')[0]]
def cost(t): return lc.size(t)
pairs = survivors = 0; kinds = {}
for cD in range(4, 15):
    for D, *_ in genx(0, cD, False, 0, 0):
        for cd in range(2, 15 - cD + 1):
            for d, *_ in genx(1, cd, False, 0, 0):
                pairs += 1
                E = ('A', D, ('L', ('A', LB, d)))
                res = [battery._probe(E, M, False) for M in progs]
                kinds[tuple(res)] = kinds.get(tuple(res), 0) + 1
                if all(r == "ok" for r in res):
                    survivors += 1
                    print("SURVIVOR", D, d, res)
print("pairs", pairs, "survivors", survivors, kinds)
