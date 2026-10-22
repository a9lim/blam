"""Regular-stack finite Krivine invariant. All transitions overapproximated.
Addresses for binders use a k-lambda call string; stack addresses additionally
include the source application and its environment. Stack language retains
unbounded lower frames, including K-template return continuations.
"""
import collections,time,resource,sys
from aam import compile_term,Limit

def transfers(nodes,s,vals,konts,k,mode="site"):
    p,env,sp,ctx=s; n=nodes[p];tag=n[0]
    if tag=='C': return [],[],('opaque',n[1])
    if tag=='V':
        if n[1]>=len(env):return [],[],('unbound',n[1])
        return [(q,e,sp,ctx) for q,e in vals.get(env[n[1]],())],[],None
    if tag=='A':
        adr=(p,env,ctx)
        return [(n[1],env,adr,ctx)],[('K',adr,((n[2],env),sp,p))],None
    if sp is None:return [],[],('lambda-stop',p)
    nxt=[]; updates=[]
    for arg,rest,site in konts.get(sp,()):
        token = {"site":(p,site), "lambda":(p,), "arg":(p,arg[0]), "both":(p,site,arg[0]), "env":(p,site,arg[0]), "argenv":(p,site,arg[0])}[mode]
        parent = (env[0][1] if env else ()) if mode=="env" else ((arg[1][0][1] if arg[1] else ()) if mode=="argenv" else ctx)
        ctx2=(token,)+parent[:max(0,k-1)] if k else ()
        adr=(p,ctx2)
        nxt.append((n[1],(adr,)+env,rest,ctx2))
        updates.append(('V',adr,arg))
    return nxt,updates,None

def discover(t,k=2,cap=45000,seconds=8,mode="site"):
    nodes=compile_term(t);start=(0,(),None,()); vals={};konts={};seen={start}
    queue=collections.deque([start]);wv=collections.defaultdict(set);wk=collections.defaultdict(set)
    work=0;begin=time.monotonic()
    while queue:
        s=queue.popleft();work+=1
        if work>cap or len(seen)>cap:raise Limit('abstract work/state cap')
        if work%128==0:
            if time.monotonic()-begin>seconds:raise Limit('time cap')
            rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss*(1 if sys.platform=='darwin' else 1024)
            if rss>850_000_000:raise Limit('memory cap')
            if len(queue)>100000:raise Limit('pending-work cap')
        p,env,sp,ctx=s;tag=nodes[p][0]
        if tag=='V':wv[env[nodes[p][1]]].add(s)
        if tag=='L' and sp is not None:wk[sp].add(s)
        nxt,updates,bad=transfers(nodes,s,vals,konts,k,mode)
        if bad:return dict(ok=False,reason=bad,states=len(seen),work=work,k=k)
        for ty,adr,value in updates:
            store,watch=(vals,wv) if ty=='V' else (konts,wk)
            bucket=store.setdefault(adr,set())
            if value not in bucket:
                bucket.add(value);queue.extend(watch[adr])
        for u in nxt:
            if u not in seen:seen.add(u);queue.append(u)
    result=dict(ok=True,states=len(seen),work=work,k=k,mode=mode,nodes=nodes,vals=vals,konts=konts,invariant=seen,start=start)
    check(result)
    return result

def check(c):
    assert c['start']==(0,(),None,()) and c['start'] in c['invariant']
    for s in c['invariant']:
        nxt,updates,bad=transfers(c['nodes'],s,c['vals'],c['konts'],c['k'],c['mode'])
        assert bad is None and nxt
        assert all(u in c['invariant'] for u in nxt)
        for ty,adr,value in updates:assert value in (c['vals'] if ty=='V' else c['konts']).get(adr,())
    return True
