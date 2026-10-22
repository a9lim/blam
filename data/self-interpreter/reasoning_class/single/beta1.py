"""(beta) with j's parent the last root operand: M' = X (Y j).  All 61 unary-core templates
of narrow.py at B = 37 (beta1.json), fillers expanded within the slack, every single-site
insertion E W with |M| <= 39 (E j-free), both laws tested."""
import json, time, sys
from insert import *
def conv_any(src):
    t = rd.parse(src)
    assert t[0] == 'L'
    def cv(t, env):
        if t[0] == 'V':
            if t[1] == '_': return ('h',)
            if t[1] in env: return V(env.index(t[1]))
            if t[1] == 'c': return V(len(env) + 1) if False else V(len(env))  # c after s? see below
            if t[1] == 'j': return Kc('j')
            raise ValueError(t[1])
        if t[0] == 'L': return L(cv(t[2], (t[1],) + env))
        return A(cv(t[1], env), cv(t[2], env))
    # frame: outer binder = s (index len(env)-1 at top... we build with env containing s)
    def cv2(t, env):
        if t[0] == 'V':
            if t[1] == '_': return ('h',)
            if t[1] in env: return V(env.index(t[1]))
            if t[1] == 'c': return V(len(env))
            if t[1] == 'j': return Kc('j')
            raise ValueError(t[1])
        if t[0] == 'L': return L(cv2(t[2], (t[1],) + env))
        return A(cv2(t[1], env), cv2(t[2], env))
    return cv2(t[2], (t[1],))
t0 = time.time()
d = json.load(open(sys.argv[1] if len(sys.argv) > 1 else 'beta1.json'))
tot = 0; hits = []; caps = []; ncore = 0; ucaps = []
for lb, src in d['sol']:
    tm = conv_any(src)
    b0 = cost(tm)
    for core, left in expand(tm, 39 - 8 - b0):
        u = unary_ok(core)
        if u is None: ucaps.append(show(core)); continue
        if not u: continue
        ncore += 1
        emax = 39 - cost(core) - 2
        for m in insert_sites(core, emax, 39):
            tot += 1
            r = laws(m)
            if r == 0: hits.append(show(m))
            elif r == 'cap':
                if not zero_cert_fail(m): caps.append(show(m))
print('templates', len(d['sol']), 'cores', ncore, 'insertions', tot, 'hits', len(hits), 'uncertified caps', len(caps), 'core caps', len(ucaps), f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', h)
for h in caps: print('  CAP', h)
for h in ucaps: print('  UCAP', h)
