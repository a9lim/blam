import sys, collections
import narrow as nw
B = int(sys.argv[1])
cnt = collections.Counter()
orig = nw.run_law
def run_law(fills, law, fuel_n):
    r = orig(fills, law, fuel_n)
    run_law.vec.append(r[0])
    return r
run_law.vec = []
nw.run_law = run_law
# wrap search to log status vectors per state
orig_search = nw.search
import types
def patched(B, laws, fuel_n, betanormal, maxstates):
    return orig_search(B, laws, fuel_n, betanormal, maxstates)
st = nw.search(B, [0, 1, 2], 2000, True, 100000)
# vec is a flat list in triples (but fail short-circuits) -> recount
v = run_law.vec; i = 0; states = []
cur = []
for r in v:
    cur.append(r)
    if r == 'fail' or len(cur) == 3:
        states.append(tuple(cur)); cur = []
for s in states: cnt[s] += 1
for k, c in cnt.most_common(): print(c, k)
print(st['states'])
