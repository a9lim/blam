import sys, json, importlib
from pathlib import Path
import independent as q
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'types'))
sys.path.insert(0,str(HERE.parent/'coord'))
import rd

def ast(t,env=()):
    if t[0]=='V':
        if t[1]=='_': return ('H',)
        return ('V',env.index(t[1])) if t[1] in env else ('C',t[1])
    if t[0]=='L': return ('L',ast(t[2],(t[1],)+env))
    return ('A',ast(t[1],env),ast(t[2],env))
def match(t,p):
    if p[0]=='H': return True
    if t[0]!=p[0]: return False
    if t[0] in ('V','C'): return t==p
    if t[0]=='L': return match(t[1],p[1])
    return match(t[1],p[1]) and match(t[2],p[2])

B, law = map(int,sys.argv[1:])
mods=[importlib.import_module(x) for x in ('narrow','narrow2','narrow3')]
patterns=[]; reports=[]
for m in mods:
    if m.__name__=='narrow': st=m.search(B,[law],2000,True,100000)
    else:
        start=({}, {0:(0,False,None) if m.__name__=='narrow3' else (0,False)},0,False,False)
        st=m.search(B,[law],2000,True,100000,0,99,True,start)
    reports.append(dict(engine=m.__name__,states=st['states'],cores=len(st['sol']),fuel=st['fuel']))
    patterns.append([ast(rd.parse(s)) for _,s in st['sol']])
    assert not st['fuel'], st['fuel']
input_, want=q.law(law)
res=dict(budget=B,law=law,enumerated=0,solutions=0,solutions_with_c=0,unknown=[],engines=reports)
missing=[[] for _ in mods]; extra=[[] for _ in mods]
for n in range(B+1):
    for c in (0,1):
        for t in q.terms(n,0,1,c):
            res['enumerated']+=1
            assert res['enumerated']<=100000
            assert q.weight(t)==n
            try: ok=q.norm(('A',t,input_),200)==want
            except RuntimeError:
                res['unknown'].append(q.show(t)); continue
            if ok:
                res['solutions']+=1;res['solutions_with_c']+=c
            for i,ps in enumerate(patterns):
                covered=any(match(t,p) for p in ps)
                if ok and not covered: missing[i].append(dict(term=q.show(t),weight=n,has_c=c))
                if covered and not ok: extra[i].append(dict(term=q.show(t),weight=n,has_c=c))
for i,r in enumerate(reports):
    r['missing_count']=len(missing[i]);r['extra_count']=len(extra[i])
    r['missing_with_c']=sum(x['has_c'] for x in missing[i])
    r['missing_examples']=missing[i][:12];r['extra_examples']=extra[i][:12]
assert res['enumerated']==sum(q.count(n,0,1,c) for n in range(B+1) for c in (0,1))
(HERE/f'crosscheck_{law}_{B}.json').write_text(json.dumps(res,indent=2)+'\n')
print(json.dumps(res,indent=2))
