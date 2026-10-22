from classify import *

def compare(m,t,w,limit=250):
    fuel=[0]
    def wh(t):
        for _ in range(limit):
            u=m.step(t)
            if u is None:return t
            fuel[0]+=1
            if fuel[0]>limit or sz(u)>6000:return None
            t=u
        return None
    def go(t,w,d=0,path=()):
        t=wh(t);w=wh(w)
        if t is None or w is None:return dict(kind='cap',path=path)
        h,xs=spine(t);j,ys=spine(w)
        hlam=h[0]=='c';jlam=j[0]=='c'
        if hlam!=jlam:return dict(kind='wrong',reason='lambda-rigid',path=path)
        if hlam:
            z=('r',2+d)
            return go(ap(t,z),ap(w,z),d+1,path+('under',))
        if h!=j or len(xs)!=len(ys):return dict(kind='wrong',reason='head-arity',path=path,head=h,arity=len(xs),want_head=j,want_arity=len(ys))
        for i,(a,b) in enumerate(zip(xs,ys)):
            r=go(a,b,d,path+(i,))
            if r['kind']!='equal':return r
        return dict(kind='equal')
    r=go(t,w);r['steps']=fuel[0];return r

if __name__=='__main__':
    rr=json.loads((HERE/sys.argv[1]).read_text())['rows'];out=[]
    for x in rr:
        if x['kind']!='stop':continue
        m=Machine(dec(x['bits']));r=compare(m,m.root(),ap(('r',0),m.F,('r',1)));r['bits']=x['bits'];out.append(r)
    (HERE/('stop-'+sys.argv[1])).write_text(json.dumps(out)+'\n');print(Counter(r['kind'] for r in out));print(out[:4])
