"""Exact fixed traces for the 13 named residuals; writes only this lane.
No layout generation or bounded divergence verdict is used.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from exact_probe import *
from smart_probe import weak_path,apps_spine,appall

IDS=[448,449,454,455,460,461,466,467,472,473,478,479,572]
ORDERS=[(0,1,2),(0,2,1),(1,0,2),(1,2,0),(2,0,1),(2,1,0)]
rows=json.loads((HERE.parent/'floor/four_lambda.json').read_text())
terms={i:lc.decode(rows[i]['wire'])[0] for i in IDS}
ns={i:terms[i][2] for i in IDS}

def j(order,x):
    xs=[lc.shift(2,0,x),V(1),V(0)];a,b,c=[xs[i] for i in order]
    return L(L(A(a,A(b,c))))

def f461(x):
    xx=lc.shift(2,0,x)
    return L(L(appall(xx,[A(xx,V(1)),A(j(ORDERS[2],xx),V(0))])))

def expr(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {expr(t[1])})'
    return f'(.app {expr(t[1])} {expr(t[2])})'

def paths_expr(ps):return '['+', '.join('['+', '.join('.'+x for x in p)+']' for p in ps)+']'
def list_expr(ts):return '['+', '.join(expr(t) for t in ts)+']'

def head_trace(t,target,limit=50):
    ps=[];u=t
    for _ in range(limit):
        if u==target:return ps
        p=head_path(u);assert p is not None
        u=red(u,p);ps.append(p)
    raise AssertionError('fixed identity did not match')

def left_tail(t,core):
    tail=[]
    while t!=core and t[0]=='A':tail.append(t[2]);t=t[1]
    return list(reversed(tail)) if t==core else None

def smart_until(t,core,allow_initial=False,limit=500):
    ps=[];start=time.monotonic()
    def found(t):return left_tail(t,core)
    if allow_initial and (tail:=found(t)) is not None:return ps,t,tail
    for _ in range(limit):
        assert time.monotonic()-start<15
        p=weak_path(t);assert p is not None
        while True:
            ap=simp_path(at(t,p+['right']))
            if ap is None:break
            q=p+['right']+ap;t=red(t,q);ps.append(q)
            if (tail:=found(t)) is not None:return ps,t,tail
        t=red(t,p);ps.append(p)
        if (tail:=found(t)) is not None:return ps,t,tail
    raise AssertionError('fixed core not reached')

out=['/- Kernel-replayed fixed evidence for floor38. Generated only from the\n13 explicit residual terms and displayed parametric identities. -/\nimport Proofs\n\nnamespace Blc.Round3Floor38\nopen Term SelfintSharp SelfintLowerBound WeakHeadClock\nset_option maxRecDepth 100000\nset_option maxHeartbeats 12000000\n']
facts=[]
def fact(name,t,u,ps):
    v=t
    for p in ps:v=red(v,p)
    assert v==u,name
    out.append(f'theorem {name} : replay {paths_expr(ps)} {expr(t)} = some {expr(u)} := by decide\n')
    facts.append(dict(name=name,steps=len(ps),source_nodes=sz(t),target_nodes=sz(u)))

for i in IDS:
    e=terms[i];assert lc.size(e)==37
    out.append(f'def e{i} : Term := {expr(e)}\n')
    out.append(f'theorem closed_{i} : Closed e{i} := by decide\n')
    out.append(f'theorem length_{i} : (blcCode e{i}).length = 37 := by decide\n')
    target=red(e,[])
    fact(f'initial_{i}',e,target,[[]])

# Every root rule in the rank proof, including both N variants and all four J permutations.
for k in (0,1,4,5):
    order=ORDERS[k]
    for mode,idx in [('a',448+6*k),('b',449+6*k)]:
        x=V(0);jx=j(order,x)
        target=appall(x,[jx,x]) if mode=='a' else A(x,A(x,jx))
        fact(f'rank_N_{mode}_{k}',A(ns[idx],x),target,[[]])
    x,y,z=V(2),V(1),V(0);xyz=[x,y,z];a,b,c=[xyz[h] for h in order]
    t=appall(j(order,x),[y,z]);target=A(a,A(b,c))
    fact(f'rank_J_{k}',t,target,head_trace(t,target))

# The three schematic clauses used by the 461 protected-tail grammar.
x,y,z=V(2),V(1),V(0)
t=A(ns[461],j(ORDERS[2],V(0)));u=f461(V(0))
fact('fusion_461',t,u,head_trace(t,u))
t=appall(f461(x),[y,z]);u=appall(x,[A(x,y),A(j(ORDERS[2],x),z)])
fact('F_rule_461',t,u,head_trace(t,u))
t=A(ns[461],V(0));u=A(V(0),A(V(0),j(ORDERS[2],V(0))))
fact('N_rule_461',t,u,head_trace(t,u))

# The five-head-step parametric growth identity for 460.
n=ns[460];p=j(ORDERS[2],n);ff=A(n,p);gg=red(ff,[])
start=A(ff,V(0));target=A(ff,A(p,V(0)));ps=head_trace(start,target)
assert len(ps)==5 and ps[0]==['left']
out.extend([f'def f460 : Term := {expr(ff)}\n',f'def g460 : Term := {expr(gg)}\n',f'def p460 : Term := {expr(p)}\n',
            'theorem f460_closed : Closed f460 := by decide\n',
            'theorem g460_closed : Closed g460 := by decide\n',
            'theorem p460_closed : Closed p460 := by decide\n',
            'theorem f460_first : weakStep f460 = some g460 := by decide\n'])
fact('growth_460',start,target,ps)
fact('growth_460_rest',A(gg,V(0)),target,ps[1:])
out.append('''theorem growth_460_all (x : Term) :
    Betas (.app g460 x) (.app f460 (.app p460 x)) := by
  have h := SelfintControl.betas_subst (replay_sound growth_460_rest) 0 x
  change Betas (substDec 0 x (.app g460 (.var 0)))
    (substDec 0 x (.app f460 (.app p460 (.var 0)))) at h
  simpa only [substDec, if_pos rfl, ite_true, shift_zero,
    substDec_closed _ _ f460_closed, substDec_closed _ _ g460_closed,
    substDec_closed _ _ p460_closed] using h

theorem no_count_460 (n : Nat) (x : Term) : ¬ Count (.app f460 x) n :=
  family_no_count f460 g460 (Term.app p460) f460_first growth_460_all n x
''')
orig=A(A(terms[460],V(1)),lc.bitlist('0010',V(0)))
u=appall(ff,[n,V(1),lc.bitlist('0010',V(0))]);ps=head_trace(orig,u)
fact('prefix_460',orig,u,ps)
out.append(f'''theorem e460_not_selfinterpreter : ¬ IsSelfInterpreter e460 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix_460)
    (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  change Count (tApps (.app f460 {expr(n)})
    [.var 1, SelfintControl.quoteI (.var 0)]) k at hk
  obtain ⟨m, hm, hcm⟩ := count_apps_left _ hk
  exact no_count_460 m _ hcm
''')

# Exact closed-prefix pumps. 466 has a short handwritten core; the others
# use the explicit repeated redexes exposed by the diagnostic histories.
hist=json.loads((HERE/'history_five.json').read_text())+json.loads((HERE/'history_probe.json').read_text())
core_by_id={r['id']:lc.decode(r['old']['bits'])[0] for r in hist if 'old' in r}
n=ns[466];core_by_id[466]=appall(n,[j(ORDERS[3],n),n])
pumps=[]
for idx in (466,467,572):
    core=core_by_id[idx]
    if idx==466:
        extras=[j(ORDERS[3],core),core]
        target=appall(core,extras)
        ps=head_trace(core,target)
    else:ps,target,extras=smart_until(core,core)
    assert ps[0]==weak_path(core) and len(ps)>1,(idx,ps[0],weak_path(core))
    first=red(core,ps[0])
    q=A(A(terms[idx],V(1)),lc.bitlist('0010',V(0)))
    if idx==466:
        tail=[V(1),lc.bitlist('0010',V(0))]
        land=appall(core,tail);pp=head_trace(q,land)
    else:pp,land,tail=smart_until(q,core,True)
    out.append(f'def core{idx} : Term := {expr(core)}\n')
    out.append(f'def afterFirst{idx} : Term := {expr(first)}\n')
    out.append(f'theorem first_{idx} : weakStep core{idx} = some afterFirst{idx} := by decide\n')
    out.append(f'def extras{idx} : List Term := {list_expr(extras)}\n')
    out.append(f'def tail{idx} : List Term := {list_expr(tail)}\n')
    out.append(f'theorem cycle_{idx} : replay {paths_expr(ps[1:])} afterFirst{idx} =\n  some (tApps core{idx} extras{idx}) := by decide\n')
    out.append(f'theorem prefix_{idx} : replay {paths_expr(pp)}\n  (.app (.app e{idx} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n  some (tApps core{idx} tail{idx}) := by decide\n')
    out.append(f'''theorem e{idx}_not_selfinterpreter : ¬ IsSelfInterpreter e{idx} :=
  not_selfint_pump extras{idx} tail{idx} first_{idx}
    (replay_sound cycle_{idx}) (replay_sound prefix_{idx})
''')
    pumps.append(dict(id=idx,core_bits=lc.enc(core),core_nodes=sz(core),
                      prefix_beta_steps=len(pp),cycle_beta_steps=len(ps),
                      cycle_selected_head_steps=1,extra_arguments=len(extras),
                      initial_tail_arguments=len(tail),prefix_paths=pp,cycle_paths=ps))

out.append('end Blc.Round3Floor38\n')
(HERE/'Checks.lean').write_text('\n'.join(out))
(HERE/'checks.json').write_text(json.dumps(dict(fixed_clauses=facts,pumps=pumps),indent=2)+'\n')
print('Generated',len(facts),'fixed clauses, 13 size/closure pairs, three prefix pumps, one parametric pump.')
for p in pumps:print({k:v for k,v in p.items() if not k.endswith('paths') and k!='core_bits'})
