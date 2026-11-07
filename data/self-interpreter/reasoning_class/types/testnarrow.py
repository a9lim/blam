import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd, narrow as nw
def tocode(t, env=()):
    if t[0] == 'V':
        if t[1] == '_': return ('H', -1)
        if t[1] in env: return ('V', env.index(t[1]))
        return ('C', t[1])
    if t[0] == 'L': return ('L', tocode(t[2], (t[1],) + env))
    return ('A', tocode(t[1], env), tocode(t[2], env))
def runall(src, cert):
    code = tocode(rd.parse(src))
    fills = {0: code}
    out = []
    for law in [0, 1, 2, 3]:
        nw.CERT[0] = cert
        try:
            nw.compare(('A', nw.ROOT, nw.inp(law)), None, nw.target(law), (), fills, [5000]); out.append('ok')
        except nw.Cycle: out.append('CYCLE')
        except nw.Fail: out.append('fail')
        except nw.Fuel: out.append('fuel')
        except nw.Need: out.append('need')
        finally: nw.CERT[0] = False
    return out
for R in [r'\s. s I (\u. s (\q. c) (s s u)) j', r'\s. s (\b. b F c) (s I (s s) j)',
          r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',
          r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
          r'\s. s (\b t. b (\x. x t) (c t)) (s (\b t. b (\a k. k a) (t t)) j)',
          r'\s. s I (\u. s (\q. c) (s s s)) j', r'\s. s I (\u. s (\q. c) (s s u)) _']:
    print(runall(R, False), runall(R, True), R)
