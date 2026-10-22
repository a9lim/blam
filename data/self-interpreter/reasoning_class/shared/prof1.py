import sys, cProfile, pstats
sys.argv = ['narrow.py', '40', '--prefix', r'\s. (\g. _) (\y. y _ _)']
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/types')
import narrow
cProfile.run('st = narrow.search(40, [0,1,2], 2000, False, 100000)', 'prof.out')
print(st['states'], len(st['sol']), len(st['fuel']))
p = pstats.Stats('prof.out'); p.sort_stats('tottime').print_stats(8)
