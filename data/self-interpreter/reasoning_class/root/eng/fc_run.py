# run a slice of the full-chain inventory: python3 fc_run.py START END  (indices into the enumeration order)
import sys, time, pickle, signal
from fullchain import *
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
S, E = int(sys.argv[1]), int(sys.argv[2]); skip_delta = '--skip-delta' in sys.argv
t0 = time.time(); idx = -1; stats = {}; caps = []; hits = []
for k in range(1, 8):
    for t in range(1, 8):
        budget = W - 8 - 4*k - 4*t
        if budget < 2*k + 7: continue
        for inst in instances(k, t, budget):
            idx += 1
            if idx < S or idx >= E: continue
            i, Bs, Cs, sig, w = inst
            if skip_delta and k == 1 and t == 1 and Bs[0][0] == ('v', 0): stats['delta3'] = stats.get('delta3', 0) + 1; continue
            R = build(k, t, i, Bs, Cs, sig)
            signal.setitimer(signal.ITIMER_REAL, 0.3)
            try: r = check2(R, nmax=3, fuel=1500, cap=20000)
            except TO: r = ('timeout', None)
            except RecursionError: r = ('recursion', None)
            signal.setitimer(signal.ITIMER_REAL, 0)
            stats[r[0]] = stats.get(r[0], 0) + 1
            if r[0] == 'pass': hits.append((k, t, inst))
            elif r[0] != 'fail': caps.append((k, t, inst, r))
print(S, E, stats, f'{time.time()-t0:.1f}s'); print('hits', hits)
pickle.dump(caps, open(f'fc_caps_{S}_{E}.pkl', 'wb')); print('caps', len(caps))
