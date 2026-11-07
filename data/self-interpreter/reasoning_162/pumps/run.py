from grammar import *

def solve(m,t=None,w=None,d=0,path=(),depth=0):
    if t is None:t=m.root()
    if w is None:w=ap(('r',0),m.F,('r',1))
    if depth>8:return dict(kind='unknown',path=path)
    for pr,stk in [(1,4),(1,6),(2,6)]:
        g=search(m,initial=t,precision=pr,stack=stk,cap=10000)
        if g.get('kind')=='grammar':return dict(path=path,**g)
    p=m.find(initial=t)
    if p['kind']=='pump':return dict(path=path,**p)
    if p['kind']!='stop':return dict(kind='unknown',path=path,last=p['kind'])
    t=p['term']
    for _ in range(30):
        u=m.step(w)
        if u is None:break
        w=u
    h,xs=spine(t);j,ys=spine(w)
    hlam=h[0]=='c';jlam=j[0]=='c'
    if hlam!=jlam:return dict(kind='wrong',reason='lambda-rigid',path=path,entry=p['step'])
    if hlam:
        z=('r',2+d)
        return solve(m,ap(t,z),ap(w,z),d+1,path+('under',),depth+1)
    if h!=j or len(xs)!=len(ys):return dict(kind='wrong',reason='head-arity',path=path,entry=p['step'],head=h,arity=len(xs),want_head=j,want_arity=len(ys))
    for i,(a,b) in enumerate(zip(xs,ys)):
        r=solve(m,a,b,d,path+(i,),depth+1)
        if r['kind']!='equal':return r
    return dict(kind='equal')

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=1000);p.add_argument('--output',default='combined.json');a=p.parse_args()
    rr=[r for r in rows() if r[2]][a.start:a.start+a.count];out=[];start=time.monotonic()
    for bits,show,nf in rr:
        m=Machine(dec(bits));r=solve(m);r.update(bits=bits,show=' '.join(show));out.append(r)
        if time.monotonic()-start>95:break
    result=dict(start=a.start,count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['kind'] for x in out)),rows=out)
    (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
