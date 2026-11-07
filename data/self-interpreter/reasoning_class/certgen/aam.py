"""Finite closure/stack abstraction of the call-by-name Krivine machine.
Discovery is untrusted; check_certificate independently verifies a closed invariant.
Unknown stack tails and free heads are failure, never divergence evidence.
"""
import collections, time
class Limit(Exception): pass

def compile_term(t):
    nodes=[]
    def go(t):
        i=len(nodes); nodes.append(None)
        if t[0] in ('V','C'): n=t
        elif t[0]=='L': n=('L',go(t[1]))
        else: n=('A',go(t[1]),go(t[2]))
        nodes[i]=n; return i
    go(t); return nodes

def transitions(nodes,s,store,k,width):
    """Returns successors, optional new binding, optional rejection reason.
    Environments contain finite addresses; closures contain code+environment.
    Stack head comes first. overflow means an arbitrary uninspected suffix.
    """
    p,env,stack,ctx,overflow=s; n=nodes[p]; tag=n[0]
    if tag=='C': return [],None,'opaque head '+str(n[1])
    if tag=='V':
        if n[1]>=len(env): return [],None,'unbound variable'
        return [(q,e,stack,ctx,overflow) for q,e in store.get(env[n[1]],())],None,None
    if tag=='A':
        st=((n[2],env),)+stack
        ov=overflow or len(st)>width
        return [(n[1],env,st[:width],ctx,ov)],None,None
    if not stack: return [],None,'unknown stack tail demanded' if overflow else 'lambda with empty stack'
    ctx2=(p,)+ctx[:max(0,k-1)] if k else ()
    addr=(p,ctx2)
    return [(n[1],(addr,)+env,stack[1:],ctx2,overflow)],(addr,stack[0]),None

def discover(t,k=1,width=6,cap=100000,seconds=8):
    nodes=compile_term(t); start=(0,(),(),(),False)
    store={}; seen={start}; pending=collections.deque([start]); watchers=collections.defaultdict(set)
    steps=0; begin=time.monotonic()
    while pending:
        s=pending.popleft(); steps+=1
        if steps>cap or len(seen)>cap: raise Limit('100000 abstract work/state cap')
        if steps%128==0 and time.monotonic()-begin>seconds: raise Limit('time cap')
        if nodes[s[0]][0]=='V': watchers[s[1][nodes[s[0]][1]]].add(s)
        nxt,binding,bad=transitions(nodes,s,store,k,width)
        if bad: return dict(ok=False,reason=bad,states=len(seen),work=steps,k=k,width=width)
        if binding:
            addr,value=binding
            vals=store.setdefault(addr,set())
            if value not in vals:
                vals.add(value); pending.extend(watchers[addr])
        for u in nxt:
            if u not in seen: seen.add(u); pending.append(u)
    result=dict(ok=True,states=len(seen),work=steps,k=k,width=width,nodes=nodes,
                store=store,invariant=seen,start=start)
    check_certificate(result)
    return result

def check_certificate(c):
    assert c['ok'] and c['start']==(0,(),(),(),False) and c['start'] in c['invariant']
    for s in c['invariant']:
        nxt,binding,bad=transitions(c['nodes'],s,c['store'],c['k'],c['width'])
        assert bad is None
        # Empty variable flow is disallowed in the final invariant.
        if c['nodes'][s[0]][0]=='V': assert nxt
        assert all(u in c['invariant'] for u in nxt)
        if binding: assert binding[1] in c['store'].get(binding[0],())
    return True
