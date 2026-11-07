"""cert.py with a per-cut-off time limit. usage: certw.py DUMP.json [secs]"""
import sys, json, signal
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
d = json.load(open(sys.argv[1])); secs = int(sys.argv[2]) if len(sys.argv) > 2 else 4
bad = []
for lb, s in d['cut']:
    signal.alarm(secs)
    try:
        res = cert.certify(s, fuel=2000)
        ok = any(v == 'fail' for v in res.values())
    except TO:
        ok = False; res = 'timeout'
    finally:
        signal.alarm(0)
    if not ok: bad.append((lb, s, res))
for b in bad: print('UNCERT', *b)
print(f"{len(d['cut'])} cut-offs, {len(d['cut']) - len(bad)} certified, {len(bad)} uncertified")
