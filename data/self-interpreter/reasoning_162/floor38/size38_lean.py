"""Generate kernel clauses from fixed size-38 certificates, without discovery."""
import sys
sys.dont_write_bytecode=True
import json,itertools
from size38 import *
from size38_follow import prefix_tail

def expr(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {expr(t[1])})'
    return f'(.app {expr(t[1])} {expr(t[2])})'
def paths(ps):return '['+', '.join('['+', '.join('.'+d for d in p)+']' for p in ps)+']'
def terms(ts):return '['+', '.join(expr(t) for t in ts)+']'
def replay(t,ps):
    for p in ps:t=red(t,p)
    return t
def trace(t,u,cap=100):
    ps=[]
    for _ in range(cap):
        if t==u:return ps
        p=weak_path(t);assert p is not None
        t=red(t,p);ps.append(p)
    raise AssertionError('fixed target not reached')

data=json.loads((HERE/'size38.json').read_text())['rows']
byid={r['id']:r for r in data}
es={r['id']:lc.decode(r['wire'])[0] for r in data}
out=['import Proofs\nnamespace Blc.Round3Floor38.Size38\nopen Term\n']
for r in data:
    i=r['id'];e=es[i]
    out += [f'def e{i} : Term := {expr(e)}',
            f'theorem e{i}_closed : Closed e{i} := by decide',
            f'theorem e{i}_size : (blcCode e{i}).length = 38 := by decide']
out.append('end Blc.Round3Floor38.Size38')
(HERE/'Size38Sources.lean').write_text('\n\n'.join(out)+'\n')

out=['import Size38Sources\nimport Families38\nnamespace Blc.Round3Floor38.Size38\n'
     'open Term SelfintSharp SelfintLowerBound WeakHeadClock\n'
     'set_option maxRecDepth 100000\nset_option maxHeartbeats 12000000\n']
proved=[];records=[]
for perm in itertools.permutations('abc'):
    a,b,c=perm
    for left in (False,True):
        body=f'({a} {b}) {c}' if left else f'{a} ({b} {c})'
        e=A(D,parse('\\a.a (\\b.a (\\c.'+body+'))'))
        ids=[i for i,t in es.items() if t==e];assert len(ids)==1
        i=ids[0]
        out.append(f'theorem e{i}_excluded : ¬ IsSelfInterpreter e{i} :=\n'
                   f'  OneArgument38.excluded .{"".join(perm)} {str(left).lower()}\n')
        proved.append(i);records.append(dict(id=i,kind='one_argument_grammar'))

for r in json.loads((HERE/'size38-follow.json').read_text()):
    if r['kind']!='prefix_pump':continue
    i=r['id'];core=lc.decode(r['core'])[0];ps=r['paths'];first=red(core,ps[0])
    extra=[lc.decode(x)[0] for x in r['extra']];tail=[lc.decode(x)[0] for x in r['tail']]
    q=A(A(es[i],V(1)),lc.bitlist('0010',V(0)))
    assert ps[0]==weak_path(core)
    assert replay(first,ps[1:])==appall(core,extra)
    assert replay(q,r['prefix_paths'])==appall(core,tail)
    out += [f'def core{i} : Term := {expr(core)}',f'def first{i} : Term := {expr(first)}',
            f'def extra{i} : List Term := {terms(extra)}',f'def tail{i} : List Term := {terms(tail)}',
            f'theorem step{i} : weakStep core{i} = some first{i} := by decide',
            f'theorem cycle{i} : replay {paths(ps[1:])} first{i} = some (tApps core{i} extra{i}) := by decide',
            f'theorem prefix{i} : replay {paths(r["prefix_paths"])}\n'
            f'  (.app (.app e{i} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
            f'  some (tApps core{i} tail{i}) := by decide',
            f'theorem e{i}_excluded : ¬ IsSelfInterpreter e{i} :=\n'
            f'  not_selfint_pump extra{i} tail{i} step{i} (replay_sound cycle{i}) (replay_sound prefix{i})']
    proved.append(i);records.append(dict(id=i,kind='prefix_pump',prefix_steps=len(r['prefix_paths']),cycle_steps=len(ps)))

for i in (919,920,934,935):
    n=es[i][2];f=A(n,n);first=red(f,weak_path(f))
    x,y=V(1),V(0);kx,ky=L(V(2)),L(V(1))
    pp,qq={919:(kx,y),920:(x,ky),934:(ky,x),935:(y,kx)}[i]
    source=appall(f,[x,y]);target=appall(f,[pp,qq]);ps=trace(source,target)
    assert ps[0]==['left','left']
    q=A(A(es[i],V(1)),lc.bitlist('0010',V(0)));land=appall(f,[V(1),lc.bitlist('0010',V(0))])
    pref=trace(q,land)
    out += [f'def core{i} : Term := {expr(f)}',f'def first{i} : Term := {expr(first)}',
            f'def paramA{i} : Term := {expr(pp)}',f'def paramB{i} : Term := {expr(qq)}',
            f'theorem closedCore{i} : Closed core{i} := by decide',
            f'theorem closedFirst{i} : Closed first{i} := by decide',
            f'theorem step{i} : weakStep core{i} = some first{i} := by decide',
            f'theorem cycle{i} : replay {paths(ps[1:])} (.app (.app first{i} (.var 1)) (.var 0)) =\n'
            f'  some (.app (.app core{i} paramA{i}) paramB{i}) := by decide',
            f'theorem prefix{i} : replay {paths(pref)}\n'
            f'  (.app (.app e{i} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
            f'  some (.app (.app core{i} (.var 1)) (SelfintControl.quoteI (.var 0))) := by decide',
            f'theorem e{i}_excluded : ¬ IsSelfInterpreter e{i} := by\n'
            f'  intro he\n  have hn := betas_preserve_hasNormalForm (replay_sound prefix{i}) (identity_has_normal_form he)\n'
            f'  obtain ⟨k, hk⟩ := hasNormalForm_count hn\n'
            f'  exact fixed_family2_no_count core{i} first{i} paramA{i} paramB{i}\n'
            f'    closedCore{i} closedFirst{i} step{i} (replay_sound cycle{i}) k _ _ hk']
    proved.append(i);records.append(dict(id=i,kind='two_parameter_pump',prefix_steps=len(pref),cycle_steps=len(ps)))

i=723;n=es[i][2];c=V(1);a=A(n,c);f=A(a,a);first=red(f,weak_path(f));x=V(2)
source=A(f,x);target=A(f,A(c,x));ps=trace(source,target)
q=A(A(es[i],V(1)),lc.bitlist('0010',V(0)));arg=A(n,lc.bitlist('0010',V(0)))
pref=trace(q,A(f,arg))
out += [f'def core{i} : Term := {expr(f)}',f'def first{i} : Term := {expr(first)}',
        f'theorem scopeCore{i} : FreeUnder 2 core{i} := by decide',
        f'theorem scopeFirst{i} : FreeUnder 2 first{i} := by decide',
        f'theorem step{i} : weakStep core{i} = some first{i} := by decide',
        f'theorem cycle{i} : replay {paths(ps[1:])} (.app first{i} (.var 2)) =\n'
        f'  some (.app core{i} (.app (.var 1) (.var 2))) := by decide',
        f'theorem cycle{i}_all (x : Term) : Betas (.app first{i} x) (.app core{i} (.app (.var 1) x)) := by\n'
        f'  have h := SelfintControl.betas_subst (replay_sound cycle{i}) 2 x\n'
        f'  change Betas (substDec 2 x (.app first{i} (.var 2)))\n'
        f'    (substDec 2 x (.app core{i} (.app (.var 1) (.var 2)))) at h\n'
        f'  simpa only [substDec, if_pos rfl, ite_true, if_false, Nat.reduceEqDiff, Nat.reduceGT,\n'
        f'    substDec_of_freeUnder _ _ _ scopeCore{i}, substDec_of_freeUnder _ _ _ scopeFirst{i}] using h',
        f'theorem prefix{i} : replay {paths(pref)}\n'
        f'  (.app (.app e{i} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
        f'  some (.app core{i} {expr(arg)}) := by decide',
        f'theorem e{i}_excluded : ¬ IsSelfInterpreter e{i} := by\n'
        f'  intro he\n  have hn := betas_preserve_hasNormalForm (replay_sound prefix{i}) (identity_has_normal_form he)\n'
        f'  obtain ⟨k, hk⟩ := hasNormalForm_count hn\n'
        f'  exact family_no_count core{i} first{i} (Term.app (.var 1)) step{i} cycle{i}_all k _ hk']
proved.append(i);records.append(dict(id=i,kind='one_parameter_pump',prefix_steps=len(pref),cycle_steps=len(ps)))

out.append('def proved : List Term := ['+', '.join('e'+str(i) for i in sorted(proved))+']')
out.append('theorem proved_excluded (e : Term) (h : e ∈ proved) : ¬ IsSelfInterpreter e := by\n'
           '  simp only [proved, List.mem_cons, List.not_mem_nil, or_false] at h\n'
           '  rcases h with '+' | '.join('rfl' for _ in proved)+'\n'+
           '\n'.join('  · exact e'+str(i)+'_excluded' for i in sorted(proved)))
out += ['#print axioms proved_excluded','end Blc.Round3Floor38.Size38']
(HERE/'Size38Pumps.lean').write_text('\n\n'.join(out)+'\n')
(HERE/'size38-proved.json').write_text(json.dumps(records,indent=2)+'\n')
print('Generated',len(data),'source size/closure pairs and',len(proved),'complete exclusions')
