import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/data/self-interpreter/reasoning_162/refute46')
import rd
exec(open('skipper.py').read().split('for k in')[0])
t = rd.whnf(rd.parse("%s (\\x y z. z) %s" % (NEXT, U(0))), [20000])
h = t
while h[0] == 'A': h = h[1]
print('k=0 whnf head:', h)
# the same with a rigid j: j (\x y z. z) U_1 is j-headed (no reduction)
