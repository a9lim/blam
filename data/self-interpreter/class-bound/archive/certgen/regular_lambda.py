"""Regular-stack finite Krivine invariant. All transitions overapproximated.
Addresses for binders use a k-lambda call string; stack addresses additionally
include the source application and its environment. Stack language retains
unbounded lower frames, including K-template return continuations.
"""
import collections,time
from aam import compile_term,Limit

def transfers(nodes,s,vals,konts,k):
    p,env,sp,ctx=s; n=nodes[p];tag=n[0]
    if tag=='C': return [],[],('opaque',n[1])
    if tag=='V':
        if n[1]>=len(env):return [],[],('unbound',n[1])
        return [(q,e,sp,ctx) for q,e in vals.get(env[n[1]],())],[],None
    if tag=='A':
        adr=(p,env,ctx)
        return [(n[1],env,adr,ctx)],[('K',adr,((n[2],env),sp))],None
    if sp is None:return [],[],('lambda-stop',p)
    ctx2=(p,)+ctx[:max(0,k-1)] if k else ()
    adr=(p,ctx2)
    rows=konts.get(sp,())
    return [(n[1],(adr,)+env,rest,ctx2) for arg,rest in rows],[('V',adr,arg) for arg,rest in rows],None

def discover(t,k=2,cap=45000,seconds=8):
    nodes=compile_term(t);start=(0,(),None,()); vals={};konts={};seen={start}
    queue=collections.deque([start]);wv=collections.defaultdict(set);wk=collections.defaultdict(set)
    work=0;begin=time.monotonic()
    while queue:
        s=queue.popleft();work+=1
        if work>cap or len(seen)>cap:raise Limit('abstract work/state cap')
        if work%128==0 and time.monotonic()-begin>seconds:raise Limit('time cap')
        p,env,sp,ctx=s;tag=nodes[p][0]
        if tag=='V':wv[env[nodes[p][1]]].add(s)
        if tag=='L' and sp is not None:wk[sp].add(s)
        nxt,updates,bad=transfers(nodes,s,vals,konts,k)
        if bad:return dict(ok=False,reason=bad,states=len(seen),work=work,k=k)
        for ty,adr,value in updates:
            store,watch=(vals,wv) if ty=='V' else (konts,wk)
            bucket=store.setdefault(adr,set())
            if value not in bucket:
                bucket.add(value);queue.extend(watch[adr])
        for u in nxt:
            if u not in seen:seen.add(u);queue.append(u)
    result=dict(ok=True,states=len(seen),work=work,k=k,nodes=nodes,vals=vals,konts=konts,invariant=seen,start=start)
    check(result)
    return result

def check(c):
    assert c['start']==(0,(),None,()) and c['start'] in c['invariant']
    for s in c['invariant']:
        nxt,updates,bad=transfers(c['nodes'],s,c['vals'],c['konts'],c['k'])
        assert bad is None and nxt
        assert all(u in c['invariant'] for u in nxt)
        for ty,adr,value in updates:assert value in (c['vals'] if ty=='V' else c['konts']).get(adr,())
    return True
