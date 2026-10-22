import sys; sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
for a in sys.argv[1:]:
    ok,w = rd.check(a, nmax=6, verbose=True)
