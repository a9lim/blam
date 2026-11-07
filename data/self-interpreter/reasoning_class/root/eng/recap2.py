# recheck a caps pickle with check3 (incremental lazy comparison), larger fuel, per-term alarm
import sys, pickle, signal, importlib
from dbe import *
mod = importlib.import_module(sys.argv[1]); fuel = int(sys.argv[2]); files = sys.argv[3:]
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
left = []; tot = 0
for f in files:
    for item in pickle.load(open(f, 'rb')):
        tot += 1
        R = mod.build_from_cap(item)
        signal.setitimer(signal.ITIMER_REAL, 0.5)
        try: r = check3(R, nmax=3, fuel=fuel, cap=50000)
        except TO: r = ('timeout', None)
        except RecursionError: r = ('recursion', None)
        signal.setitimer(signal.ITIMER_REAL, 0)
        if r[0] == 'pass': print('PASS!!', item)
        if r[0] != 'fail': left.append((item, r))
print('rechecked', tot, 'left', len(left))
pickle.dump(left, open('left_' + sys.argv[1] + '.pkl', 'wb'))
