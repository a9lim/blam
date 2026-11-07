import sys, collections
import narrow as nw
B = int(sys.argv[1])
cnt = collections.Counter(); cur = []
orig = nw.run_law
def run_law(fills, law, fuel_n):
    r = orig(fills, law, fuel_n)
    if law == 0: cur.clear()
    cur.append(r[0])
    if r[0] == 'fail' or len(cur) == 3: cnt[tuple(cur)] += 1
    return r
nw.run_law = run_law
st = nw.search(B, [0, 1, 2], 2000, True, 100000)
for k, c in cnt.most_common(): print(c, k)
