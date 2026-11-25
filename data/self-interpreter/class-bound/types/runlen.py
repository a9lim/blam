import sys, collections
import narrow as nw
B = int(sys.argv[1])
mx = collections.Counter()
orig_compare = nw.compare
def run_law(fills, law, fuel_n):
    fuel = [fuel_n]
    try:
        nw.compare(('A', nw.ROOT, nw.inp(law)), None, nw.target(law), (), fills, fuel)
        r = ('ok',)
    except nw.Need as e: r = ('need', e.h)
    except nw.Fail: r = ('fail',)
    except (nw.Fuel, RecursionError): return orig(fills, law, fuel_n)
    used = fuel_n - fuel[0]
    mx[(law, r[0])] = max(mx[(law, r[0])], used)
    return r
orig = nw.run_law
nw.run_law = run_law
st = nw.search(B, [1, 2, 0], 2000, True, 100000)
print(st['states'], dict(mx))
