import sys, json, time, signal
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
d = json.load(open(sys.argv[1])); idx = [int(x) for x in sys.argv[2].split(',')]
fuel = int(sys.argv[3]) if len(sys.argv) > 3 else 500
cuts = sorted(d['cut']); T0 = time.time()
for i in idx:
    lb, s = cuts[i]; t0 = time.time(); res = {}
    for law in (1, 0, 2):
        signal.alarm(3)
        try:
            inp, tgt = cert.law_io(law)
            res[law] = cert.compare(('A', cert.parse_show(s), inp), tgt, fuel)
        except TO: res[law] = 'timeout'
        signal.alarm(0)
        if res[law] == 'fail': break
    print(i, lb, 'CERT' if 'fail' in res.values() else 'UNCERT', res, f'{time.time()-t0:.2f}s', s, flush=True)
    if time.time() - T0 > 100: print('STOP time'); break
