import sys, pickle, signal
from dbe import *
from delta3 import build
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
caps = pickle.load(open(sys.argv[1], 'rb')); left = []
for n, sig, names in caps:
    signal.setitimer(signal.ITIMER_REAL, 0.5)
    try: r = check2(build(sig), nmax=3, fuel=int(sys.argv[2]), cap=50000)
    except TO: r = ('timeout', None)
    signal.setitimer(signal.ITIMER_REAL, 0)
    if r[0] != 'fail': left.append((n, sig, r))
print('left', len(left))
for x in left[:20]: print(x)
pickle.dump(left, open(sys.argv[1] + '.left', 'wb'))
