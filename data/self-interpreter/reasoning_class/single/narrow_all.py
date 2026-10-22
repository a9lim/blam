"""Run types/narrow.py's untabled search and dump ALL solutions and cut-offs as JSON.
usage: narrow_all.py B PREFIX OUT.json"""
import sys, json
B, PRE, OUT = int(sys.argv[1]), sys.argv[2], sys.argv[3]
sys.argv = ['narrow.py', str(B), '--laws', '1,2', '--prefix', PRE]
src = open('/Users/a9lim/Work/blam/tmp/round4/types/narrow.py').read().split("if __name__ == '__main__':")[0]
g = {'__name__': 'narrow_lib'}
exec(compile(src, 'narrow.py', 'exec'), g)
st = g['search'](B, [1, 2], 2000, False, 100000)
json.dump({'states': st['states'], 'sol': st['sol'], 'fuel': st['fuel']}, open(OUT, 'w'))
print('states', st['states'], 'sols', len(st['sol']), 'fuel', len(st['fuel']))
