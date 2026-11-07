#!/usr/bin/env python3
"""Run untabled two-law narrowing (types/narrow.py, unchanged) on one prefix once,
dump every SOL and every FUEL cut-off (full list) to a JSON file.
Usage: probe1.py B PREFIX OUT.json [--fuel F]"""
import sys, json, time, signal
B = int(sys.argv[1]); PREFIX = sys.argv[2]; OUT = sys.argv[3]
fuel = int(sys.argv[sys.argv.index('--fuel') + 1]) if '--fuel' in sys.argv else 2000
extra = ['--jdepth', sys.argv[sys.argv.index('--jdepth') + 1]] if '--jdepth' in sys.argv else []
sys.argv = ['narrow.py', str(B), '--prefix', PREFIX] + extra
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/types')
import narrow
signal.alarm(115)
t0 = time.time()
try:
    st = narrow.search(B, [0, 1, 2], fuel, False, 100000)
except OverflowError:
    print('OVERFLOW', time.time() - t0); sys.exit(1)
res = {'B': B, 'prefix': PREFIX, 'fuel': fuel, 'extra': extra, 'states': st['states'],
       'sol': st['sol'], 'cut': st['fuel'], 'time': time.time() - t0}
json.dump(res, open(OUT, 'w'), indent=0)
print(f"states={st['states']} sols={len(st['sol'])} cut={len(st['fuel'])} time={time.time()-t0:.1f}s")
