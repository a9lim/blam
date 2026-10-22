# f=1, D=3, app-rooted, given V: per-row timing and slow-term capture
import sys, time, pickle, gen2, rowgen, safecheck
from collections import Counter
D = 3; f = 1; V = int(sys.argv[1]); out = sys.argv[2]
caps = []; slow = []; st = Counter(); T0 = time.time()
for L in range(D, 20):
    for X in range(0, 40):
        cost = 2*L + 4*V - 4 + X
        if cost > 39 - D: break
        t0 = time.time(); n = 0
        for t in gen2.stream_app_root(X, L, V, f, D):
            if cost + D + gen2.F_S0(t) > 39: continue
            n += 1
            R = rowgen.close_c(t); a = time.time(); ok, why = safecheck.check(R); dt = time.time() - a
            st[why] += 1
            if dt > 0.5: slow.append((dt, why, R))
            if ok: print('HIT', rowgen.show(R), flush=True)
            elif why in ('zfuel','alarm') or 'fuel' in why: caps.append((why, R))
        print(f'L={L} X={X} n={n} {time.time()-t0:.1f}s', flush=True)
        if time.time() - T0 > 100: print('STOP time'); break
    if time.time() - T0 > 100: break
pickle.dump({'caps': caps, 'hits': [], 'stats': dict(st), 'slow': slow}, open(out, 'wb'))
print(dict(st), 'caps', len(caps), 'slow', len(slow), f'{time.time()-T0:.1f}s')
for s in sorted(slow, key=lambda x: -x[0])[:5]: print('  slow %.1fs %s %s' % (s[0], s[1], rowgen.show(s[2])))
