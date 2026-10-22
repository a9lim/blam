# Δ-root h=1, p=1, M1 = λu1 u2 u3. E (G's chain binds the whole spine [M1[G], j, s]):
#   R = (λx. x x) (λz. z (λu1 u2 u3. E)) j,  w = 14 + 2 + 2 + 6 + |E| = 24 + |E| <= 45
#   E over [u3=s, u2=a, u1, z, c]; forced: s, a, c; and (u1 or z) [minimality]
import signal, time
from genk import make
from dbe import *
from fullchain import conv
g5 = make(5); DELTA = L(A(V(0), V(0)))
def build(E):
    M1 = L(L(L(conv(E, 4))))
    return A(DELTA, L(A(V(0), M1)), Kc('j'))
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
t0 = time.time(); stats = {}; n = 0; left = []
for size in range(2, 22):
    for E, m in g5(size, 0, 0b10011):
        if not (m & 0b01100): continue
        n += 1
        signal.setitimer(signal.ITIMER_REAL, 0.3)
        try: r = check3(build(E), nmax=3, fuel=2000)
        except TO: r = ('timeout', None)
        signal.setitimer(signal.ITIMER_REAL, 0)
        stats[r[0]] = stats.get(r[0], 0) + 1
        if r[0] != 'fail': left.append((E, r))
print(n, stats, f'{time.time()-t0:.1f}s', left[:5])
