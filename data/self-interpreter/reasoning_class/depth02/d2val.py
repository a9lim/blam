import time, gen3, safecheck, conv
from dbn import show
src = r'\s. s K (\t. t j) (s (\q.c)) (s s s)'
target = conv.db(src); print(conv.sig(src))
t0 = time.time(); n = 0; hits = []; found = False
for t in gen3.stream_root(3, 5, 9, 1, 2, 'lam'):
    n += 1
    import rowgen
    R = rowgen.close_c(t)
    if R == target: found = True
    ok, why = safecheck.check(R)
    if ok: hits.append(R)
    if time.time() - t0 > 100: print('time stop'); break
print('row terms', n, 'target generated', found, 'hits', len(hits), f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', show(h))
