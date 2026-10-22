#!/usr/bin/env python3
"""Tabled two-law narrowing (types/narrow2.py, unchanged) on one prefix, once; dump SOL/FUEL.
Usage: probe2.py B PREFIX OUT.json [--fuel F] [--jdepth D] [--notab] [--laws 0,1,2]"""
import sys, json, time, signal
a = sys.argv
B = int(a[1]); PREFIX = a[2]; OUT = a[3]
fuel = int(a[a.index('--fuel') + 1]) if '--fuel' in a else 300
laws = [int(x) for x in a[a.index('--laws') + 1].split(',')] if '--laws' in a else [0, 1, 2]
jlo, jhi = 0, 99
if '--jdepth' in a:
    v = a[a.index('--jdepth') + 1]; jlo, jhi = (int(v[:-1]), 99) if v.endswith('+') else (int(v), int(v))
tab = '--notab' not in a
sys.argv = ['narrow2.py']
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/types')
import narrow2
signal.alarm(115)
t0 = time.time()
try:
    st = narrow2.search(B, laws, fuel, False, 100000, jlo, jhi, tab, narrow2.parse_prefix(PREFIX))
except OverflowError:
    print('OVERFLOW', f'{time.time() - t0:.1f}s'); sys.exit(1)
res = {'B': B, 'prefix': PREFIX, 'fuel': fuel, 'laws': laws, 'jdepth': [jlo, jhi], 'tab': tab,
       'states': st['states'], 'memo_hits': st['memo_hits'], 'sol': st['sol'], 'cut': st['fuel'],
       'time': time.time() - t0}
json.dump(res, open(OUT, 'w'), indent=0)
print(f"states={st['states']} hits={st['memo_hits']} sols={len(st['sol'])} cut={len(st['fuel'])} time={time.time()-t0:.1f}s")
