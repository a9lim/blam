import sys, traceback
sys.argv = ['narrow.py', '45', '--prefix', r'\s. (\g. _) _']
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/types')
import narrow
try:
    st = narrow.search(45, [0,1,2], 300, False, 100000)
except OverflowError:
    traceback.print_exc(limit=-3)
