import sys, random, collections
import narrow as nw
B = int(sys.argv[1])
orig_rec_states = []
orig = nw.run_law
def run_law(fills, law, fuel_n):
    r = orig(fills, law, fuel_n)
    if law == 0: run_law.last = (fills, [])
    run_law.last[1].append(r[0])
    if len(run_law.last[1]) == 3 or r[0] == 'fail':
        orig_rec_states.append((tuple(run_law.last[1]), nw.show(nw.ROOT, fills)))
    return r
nw.run_law = run_law
st = nw.search(B, [0, 1, 2], 2000, True, 100000)
random.seed(1)
inner = [s for v, s in orig_rec_states if v == ('need', 'need', 'need')]
# shape statistics: top-level skeleton up to depth
for s in random.sample(inner, 25): print(s)
