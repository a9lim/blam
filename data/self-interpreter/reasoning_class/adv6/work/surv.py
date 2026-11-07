import sys, csv, signal, time
sys.path.insert(0, '.'); sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd, fam
rows = list(csv.DictReader(open('/Users/a9lim/Work/blam/tmp/round4/rootlet/SURVIVORS.tsv'), delimiter='\t'))
lo, hi = int(sys.argv[1]), int(sys.argv[2]); fuel = int(sys.argv[3])
def h(*a): raise TimeoutError()
signal.signal(signal.SIGALRM, h)
res = {}; t0 = time.time()
for r in rows[lo:hi]:
    src = r['source'].replace('\\x', '\\x')
    R = rd.parse(src)
    signal.setitimer(signal.ITIMER_REAL, 0.4)
    try: v = fam.law(R, fuel)
    except TimeoutError: v = 'time'
    finally: signal.setitimer(signal.ITIMER_REAL, 0)
    res[v] = res.get(v, 0) + 1
    if v == 'ok': print('HIT', src, flush=True)
print(lo, hi, res, '%.1fs' % (time.time() - t0))
