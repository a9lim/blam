import sys, time, json
sys.path.insert(0, '.')
import fam, rd
fam_kind = sys.argv[1]; a = int(sys.argv[2]); k = int(sys.argv[3]); fuel = int(sys.argv[4]) if len(sys.argv) > 4 else 400
t0 = time.time()
if fam_kind == 'F1':
    budget = 31 - 4*a - 5*k
    leaves = ('s',)*a + ('h',)*k + ('j',)
    Ts = [t for t in fam.trees(leaves) if fam.j_ok(t)]
    As = [t for n in range(2, budget+1) for t in fam.terms(n, [], [('c','c')])]
    mk = lambda A, T: ('A', ('L','h',('L','s',T)), A)
elif fam_kind == 'F2':
    budget = 32 - 4*a - 6*k
    leaves = ('s',)*a + ('h',)*k + ('j',)
    Ts = [t for t in fam.trees(leaves) if fam.j_ok(t)]
    Ts = [rd.subst(t, 'j', ('V','n')) for t in Ts]
    As = [t for n in range(2, budget+1) for t in fam.terms(n, [], [('c','c')])]
    mk = lambda A, T: ('A', ('A', ('L','h',('L','n',('L','s',T))), A), ('V','j'))
elif fam_kind == 'F3':
    budget = 41 - 4*a - 5*k
    leaves = ('s',)*a + ('h',)*k
    Ts = fam.trees(leaves)
    As = [t for n in range(2, budget+1) for t in fam.terms(n, [], [('c','c'),('j','j')])
          if fam.contains(t,'j') and fam.contains(t,'c')]
    # one j only
    def jc(t):
        if t[0]=='V': return 1 if t[1]=='j' else 0
        if t[0]=='L': return jc(t[2])
        return jc(t[1])+jc(t[2])
    As = [t for t in As if jc(t)==1]
    mk = lambda A, T: ('A', ('L','h',('L','s',T)), A)
print(fam_kind, a, k, 'budget', budget, 'trees', len(Ts), 'A', len(As), 'total', len(Ts)*len(As), flush=True)
res = {}; hits = []; fuels = []
for A in As:
    for T in Ts:
        R = mk(A, T)
        w = rd.weight(R)[0]
        if w > 45: res['over'] = res.get('over',0)+1; continue
        import signal
        def _h(*a): raise TimeoutError()
        signal.signal(signal.SIGALRM, _h); signal.setitimer(signal.ITIMER_REAL, 0.5)
        try:
            r = fam.law(R, fuel)
        except TimeoutError:
            r = 'fuel:time'
        finally:
            signal.setitimer(signal.ITIMER_REAL, 0)
        res[r] = res.get(r, 0) + 1
        if r == 'ok':
            hits.append(rd.show(R)); print('HIT', w, rd.show(R), flush=True)
        elif r.startswith('fuel'):
            fuels.append((r, rd.show(R)))
    if time.time() - t0 > 110: print('TIMEOUT'); break
print(res, 'time %.1f' % (time.time()-t0))
json.dump({'res':res,'hits':hits,'fuels':fuels}, open('out_%s_%d_%d.json'%(fam_kind,a,k),'w'), indent=0)
