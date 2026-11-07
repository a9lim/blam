import sys, collections
import narrow as nw
B = int(sys.argv[1])
recs = []
orig = nw.run_law
def run_law(fills, law, fuel_n):
    r = orig(fills, law, fuel_n)
    if law == 0: run_law.cur = [fills, []]; recs.append(run_law.cur)
    run_law.cur[1].append(r[0])
    return r
nw.run_law = run_law
st = nw.search(B, [0, 1, 2], 2000, True, 100000)
def top(code, fills, depth):
    if code[0] == 'H':
        f = fills.get(code[1]); return '_' if f is None else top(f, fills, depth)
    if depth == 0: return '*'
    if code[0] == 'C': return code[1]
    if code[0] == 'V': return 'v%d' % code[1]
    if code[0] == 'L': return '\\.' + top(code[1], fills, depth - 1)
    # spine
    args = []; t = code
    while True:
        if t[0] == 'H' and t[1] in fills: t = fills[t[1]]; continue
        if t[0] != 'A': break
        args.append(t[2]); t = t[1]
    args.reverse()
    return '(' + ' '.join([top(t, fills, depth)] + [top(a, fills, depth - 1) for a in args]) + ')'
cnt = collections.Counter()
for fills, v in recs:
    cnt[(top(nw.ROOT, fills, 3), 'fail' if 'fail' in v else 'live')] += 1
for k, c in cnt.most_common(30): print(c, k)
print(len(recs))
