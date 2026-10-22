"""Fixed identity witnesses, not a search; no normal-form claim from fuel."""
import sys,json,signal
signal.alarm(30)
sys.path.insert(0,'tmp/round4/coord')
import rd

def metric(t,env=()):
    if t[0]=='V':
        if t[1] in env:return {'w':env.index(t[1])+2,'j':0,'jd':[],'c':0}
        if t[1]=='j':return {'w':4*len(env),'j':1,'jd':[len(env)],'c':0}
        assert t[1]=='c'
        return {'w':len(env)+2,'j':0,'jd':[],'c':1}
    if t[0]=='L':
        d=metric(t[2],(t[1],)+env);d['w']+=2;return d
    a=metric(t[1],env);b=metric(t[2],env)
    return {'w':2+a['w']+b['w'],'j':a['j']+b['j'],'jd':a['jd']+b['jd'],'c':a['c']+b['c']}

SOURCES={
 '165':r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',
 'copied_j':r'(\a s. s I (\u. s (\q. c) (s s a)) a) j',
 'recursive':r'(\g s. s (\b r. b (r j) (c r (g g r)))) (\g t. t (\b r. b r (g g r)))',
 'repaired_copy':r'\s. s I (\u. s (\q. c) (s s c)) j',
}
for name,src in SOURCES.items():
    t=rd.parse(src);ok,_=rd.check(src,nmax=8,verbose=False)
    out={'name':name,'source':src,'metric':metric(t),'zero_and_unary_1_to_8':ok}
    if name!='recursive':
      nf=rd.normalize(t);out['nf']=rd.show(nf);out['nf_metric']=metric(nf)
    print(json.dumps(out))
    assert ok
