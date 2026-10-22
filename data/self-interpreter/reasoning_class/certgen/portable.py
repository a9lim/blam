"""Allocation-independent regular invariant format and independent Python checker.
The matching Lean definitions/proof are in Regular.lean.
"""
import json

def portable(c):
    va=sorted(c['vals'],key=repr);vid={a:i for i,a in enumerate(va)}
    ka=sorted(c['konts'],key=repr);kid={None:0,**{a:i+1 for i,a in enumerate(ka)}}
    def cl(c):return (c[0],tuple(vid[a] for a in c[1]))
    def st(s):return (s[0],tuple(vid[a] for a in s[1]),kid[s[2]])
    states=sorted(set(st(s) for s in c['invariant']));sid={s:i for i,s in enumerate(states)}
    vals=[sorted(set(cl(a) for a in c['vals'][v])) for v in va]
    konts=[[]]+[sorted(set((cl(a),kid[r]) for a,r,*_ in c['konts'][v])) for v in ka]
    # Bisimulation quotient of the mutually recursive regular value/stack stores.
    vc=[0]*len(vals);kc=[0]+[1]*(len(konts)-1)
    def intern(xs):
        ids={}; out=[]
        for x in xs:
            if x not in ids:ids[x]=len(ids)
            out.append(ids[x])
        return out
    for _ in range(len(vals)+len(konts)+1):
        def cq(c):return (c[0],tuple(vc[a] for a in c[1]))
        vv=intern([(vc[i],tuple(sorted(set(cq(c) for c in row)))) for i,row in enumerate(vals)])
        kk=intern([(kc[i],i==0,tuple(sorted(set((cq(c),kc[r]) for c,r in row)))) for i,row in enumerate(konts)])
        stable=len(set(vv))==len(set(vc)) and len(set(kk))==len(set(kc))
        vc,kc=vv,kk
        if stable:break
    def cq(c):return (c[0],tuple(vc[a] for a in c[1]))
    vq=[set() for _ in set(vc)];kq=[set() for _ in set(kc)]
    for i,row in enumerate(vals):vq[vc[i]].update(cq(c) for c in row)
    for i,row in enumerate(konts):kq[kc[i]].update((cq(c),kc[r]) for c,r in row)
    vals=list(map(sorted,vq));konts=list(map(sorted,kq))
    states=sorted(set((p,tuple(vc[a] for a in e),kc[sp]) for p,e,sp in states));sid={s:i for i,s in enumerate(states)}
    # Hints are extracted independently by semantic shape, not by reusing discovery transitions.
    byshape={}
    for i,(p,e,sp) in enumerate(states):byshape.setdefault((p,e),[]).append(i)
    hints=[]
    for p,e,sp in states:
        n=c['nodes'][p];out=[]
        if n[0]=='V':
            for q,ee in vals[e[n[1]]]:out.append(sid[(q,ee,sp)])
        elif n[0]=='A':
            fr=((n[2],e),sp)
            for i in byshape[(n[1],e)]:
                if states[i][2] and fr in konts[states[i][2]]:out.append(i);break
        elif n[0]=='L':
            for ac,rest in konts[sp]:
                for adr,row in enumerate(vals):
                    if ac in row:
                        key=(n[1],(adr,)+e,rest)
                        if key in sid:out.append(sid[key]);break
                else:raise AssertionError('missing beta successor')
        else:raise AssertionError('terminal')
        hints.append(out)
    result=dict(nodes=c['nodes'],values=vals,konts=konts,states=states,hints=hints)
    assert check(result)
    return result

def tupleize(x):return tuple(tupleize(v) for v in x) if isinstance(x,list) else x

def check(c):
    ns,vs,ks,ss,hs=[tupleize(c[k]) for k in ['nodes','values','konts','states','hints']]
    if not ns or not ks or len(ss)!=len(hs) or (0,(),0) not in ss or ks[0]:return False
    # Source code is a finite DAG with strictly forward child pointers.
    for p,n in enumerate(ns):
        if n[0] not in ('A','L','V','C'):return False
        if n[0] in ('A','L') and not all(isinstance(i,int) and p<i<len(ns) for i in n[1:]):return False
        if n[0]=='V' and (not isinstance(n[1],int) or n[1]<0):return False
    def cl_ok(c):return 0<=c[0]<len(ns) and all(0<=a<len(vs) for a in c[1])
    if not all(cl_ok(c) for row in vs for c in row):return False
    if not all(cl_ok(c) and 0<=rest<len(ks) for row in ks for c,rest in row):return False
    if not all(cl_ok((p,e)) and 0<=sp<len(ks) for p,e,sp in ss):return False
    for s,ids in zip(ss,hs):
        if any(i<0 or i>=len(ss) for i in ids):return False
        p,e,sp=s;out=[ss[i] for i in ids]
        if not (0<=p<len(ns) and 0<=sp<len(ks) and all(0<=a<len(vs) for a in e)):return False
        n=ns[p]
        if n[0]=='V':
            if not 0<=n[1]<len(e):return False
            if out != [(q,ee,sp) for q,ee in vs[e[n[1]]]]:return False
        elif n[0]=='A':
            if not any(q==n[1] and ee==e and pp and ((n[2],e),sp) in ks[pp] for q,ee,pp in out):return False
        elif n[0]=='L':
            if not sp:return False
            if len(out)!=len(ks[sp]):return False
            for (ac,rest),(q,ee,pp) in zip(ks[sp],out):
                if not (q==n[1] and ee and ee[1:]==e and pp==rest and ac in vs[ee[0]]):return False
        else:return False
    return True

def lean(c,name):
    def arr(xs,f):return '['+','.join(map(f,xs))+']'
    def nums(xs):return arr(xs,str)
    def cl(x):return f'⟨{x[0]},{nums(x[1])}⟩'
    def state(s):return f'⟨⟨{s[0]},{nums(s[1])}⟩,{s[2]}⟩'
    def node(n):return {"C":lambda:'.opaque',"V":lambda:f'.var {n[1]}',"L":lambda:f'.lam {n[1]}',"A":lambda:f'.app {n[1]} {n[2]}'}[n[0]]()
    def fr(x):return f'⟨{cl(x[0])},{x[1]}⟩'

    n=len(c['states']); chunks=[]; branch=[]
    for lo in range(0,n,12):
        size=min(12,n-lo);end=lo+size
        chunks.append(f'theorem block{lo} : checkRange P V K states hints {lo} {size}=true := by decide')
        if end<n:
            branch.append(f' by_cases h{lo} : i<{end}\n · exact range_sound block{lo} i (by omega) h{lo} hi')
        else:branch.append(f' exact range_sound block{lo} i (by omega) hh hi')
    return f'''import Regular
namespace Certgen.{name}
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #{arr(c['nodes'],node)}
def values : Array (List AClo) := #{arr(c['values'],lambda v:arr(v,cl))}
def konts : Array (List Frame) := #{arr(c['konts'],lambda v:arr(v,fr))}
def states : Array AState := #{arr(c['states'],state)}
def hints : Array (List Nat) := #{arr(c['hints'],nums)}
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
{chr(10).join(chunks)}
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<{n} := hi
{chr(10).join(branch)}
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.{name}
'''
