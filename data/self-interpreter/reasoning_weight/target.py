from harder import *
def reach(u,v,budget=80):
    ps=[]
    def walk(t,v,path):
        if t==v:return True
        while True:
            if len(ps)>=budget or d.size(t)>1500:return False
            p=fam.weakpath(t)
            if p is None:break
            t=fam.mx.rewrite(t,p);ps.append(path+p)
            if t==v:return True
        if t[0]!=v[0]:return False
        if t[0]=='l':return walk(t[1],v[1],path+(0,))
        if t[0]=='a':return walk(t[1],v[1],path+(1,)) and walk(t[2],v[2],path+(2,))
        return t==v
    return ps if walk(u,v,()) else None
def target(R):
    rr=d.subst(R,0,d.Kc('c'));h,args=fam.flat(rr);a,*cs=args
    if h!=d.L(d.A(d.V(0),d.V(0))):return
    core=d.A(a,a);t=d.beta(a[1],a) if a[0]=='l' else None
    if t is None:return
    path=[]
    for _ in range(25):
        u=t;level=0
        while u[0]=='a':
            q=reach(u[1],a)
            if q is not None:
                b=reach(u[2],a)
                if b is not None:
                    suffix=[(1,)*level+(1,)+p for p in q]+[(1,)*level+(2,)+p for p in b]
                    extra=fam.flat(t)[1][-level:] if level else []
                    # Obtain actual remaining syntactic arguments, even if u is not a single redex.
                    extra=[];v=t
                    for _ in range(level):extra.insert(0,v[2]);v=v[1]
                    c=dict(kind='mixed',prep=[(1,)*(len(cs)+1)],paths=path+suffix,core=core,extra=extra,rest=cs+[d.Z()])
                    return 'targeted mixed cycle',more(R,c)
            u=u[1];level+=1
        p=fam.weakpath(t)
        if p is None or d.size(t)>600:break
        t=fam.mx.rewrite(t,p);path.append(p)
    return None
