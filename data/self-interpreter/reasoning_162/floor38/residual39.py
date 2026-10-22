"""Emit full Lean exclusions for the nine fixed initial size-39 residuals."""
import sys
sys.dont_write_bytecode=True
import json
from size39 import *
from size39_sources import expr

def paths(ps):return '['+', '.join('['+', '.join('.'+d for d in p)+']' for p in ps)+']'
def terms(ts):return '['+', '.join(expr(t) for t in ts)+']'
def rigid(t):
    if t[0]=='V':return f'(.var {t[1]})'
    assert t[0]=='A';return f'(.app _ {rigid(t[1])})'
def replay(t,ps):
    for p in ps:t=red(t,p)
    return t

data={part:{r['id']:r for r in json.loads((HERE/f'size39-{part}.json').read_text())['rows']}
      for part in ['literal','four','five']}
out=['import Sources39Literal\nimport Sources39Four\nimport Sources39Five\n'
     'import Pair39\nimport Shapes39\nnamespace Blc.Round3Floor38.Size39Residuals\n'
     'open Term SelfintSharp SelfintLowerBound WeakHeadClock\n'
     'set_option maxRecDepth 100000\nset_option maxHeartbeats 20000000\n']
records=[];sources=[]
for r in json.loads((HERE/'size39-follow.json').read_text()):
    part=r['part'];i=r['id'];name=part+str(i);source=f'Size39{part.title()}.e{i}'
    e=lc.decode(data[part][i]['wire'])[0];q=A(A(e,V(1)),lc.bitlist('0010',V(0)))
    sources.append(source)
    if part=='literal' and i==180:
        n=L(A(V(0),L(A(A(V(1),V(0)),V(3)))))
        ps=[['left'],['left'],['left','left'],['left','right']]
        assert replay(q,ps)==A(A(n,n),lc.bitlist('0010',V(0)))
        out += [f'theorem prefix{name} : replay {paths(ps)}\n'
                f'  (.app (.app {source} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
                '  some (tApps (.app Pair39.n Pair39.n) [SelfintControl.quoteI (.var 0)]) := by decide',
                f'theorem excluded{name} : ¬ IsSelfInterpreter {source} :=\n'
                f'  Pair39.not_selfint_prefix .n .n [SelfintControl.quoteI (.var 0)] (replay_sound prefix{name})']
        kind='protected_active_pair'
    elif r['kind']=='prefix_pump':
        core=lc.decode(r['core'])[0];ps=r['paths'];first=red(core,ps[0])
        extra=[lc.decode(x)[0] for x in r['extra']];tail=[lc.decode(x)[0] for x in r['tail']]
        assert ps[0]==weak_path(core)
        assert replay(first,ps[1:])==appall(core,extra)
        assert replay(q,r['prefix_paths'])==appall(core,tail)
        out += [f'def core{name} : Term := {expr(core)}',f'def first{name} : Term := {expr(first)}',
                f'def extra{name} : List Term := {terms(extra)}',f'def tail{name} : List Term := {terms(tail)}',
                f'theorem step{name} : weakStep core{name} = some first{name} := by decide',
                f'theorem cycle{name} : replay {paths(ps[1:])} first{name} = some (tApps core{name} extra{name}) := by decide',
                f'theorem prefix{name} : replay {paths(r["prefix_paths"])}\n'
                f'  (.app (.app {source} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
                f'  some (tApps core{name} tail{name}) := by decide',
                f'theorem excluded{name} : ¬ IsSelfInterpreter {source} :=\n'
                f'  not_selfint_pump extra{name} tail{name} step{name} (replay_sound cycle{name}) (replay_sound prefix{name})']
        kind='prefix_pump'
    elif r['kind']=='identity_wrong_weak_head':
        t=lc.decode(r['final'])[0];assert replay(q,r['paths'])==t
        assert part=='four' and i==0
        # Peel the outermost three applications, leaving a rigid function.
        f=t[1][1][1]
        out += [f'def landing{name} : Term := {expr(t)}',
                f'theorem prefix{name} : replay {paths(r["paths"])}\n'
                f'  (.app (.app {source} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
                f'  some landing{name} := by decide',
                f'theorem mismatch{name} : ¬ Betas landing{name} identityTarget := three_or_more_not_identity {rigid(f)}',
                f'theorem excluded{name} : ¬ IsSelfInterpreter {source} :=\n'
                f'  not_selfint_bad_identity (replay_sound prefix{name}) mismatch{name}']
        kind='rigid_arity_mismatch'
    elif r['kind']=='identity_wrong_payload_head':
        landing=lc.decode(r['final'])[0];h,args=apps_spine(landing)
        assert h==V(1) and len(args)==2 and r['payload']==0
        p,rest=args;hnf=lc.decode(r['payload_hnf'])[0]
        assert replay(q,r['paths'])==landing and replay(p,r['payload_paths'])==hnf
        body=hnf[1][1];assert hnf[0]==hnf[1][0]=='L' and body[0]=='A'
        out += [f'def payload{name} : Term := {expr(p)}',f'def rest{name} : Term := {expr(rest)}',
                f'def hnf{name} : Term := {expr(hnf)}',
                f'theorem prefix{name} : replay {paths(r["paths"])}\n'
                f'  (.app (.app {source} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
                f'  some (.app (.app (.var 1) payload{name}) rest{name}) := by decide',
                f'theorem payloadHead{name} : replay {paths(r["payload_paths"])} payload{name} = some hnf{name} := by decide',
                f'theorem mismatch{name} : ¬ Betas hnf{name} churchFalse := two_lam_false_mismatch {rigid(body[1])}',
                f'theorem excluded{name} : ¬ IsSelfInterpreter {source} :=\n'
                f'  not_selfint_wrong_first (replay_sound prefix{name}) (replay_sound payloadHead{name}) mismatch{name}']
        kind='rigid_payload_mismatch'
    else:raise AssertionError((part,i,r['kind']))
    records.append(dict(part=part,id=i,kind=kind,theorem='Size39Residuals.excluded'+name))
out.append('def initialResiduals : List Term := ['+', '.join(sources)+']')
out.append('theorem initialResiduals_excluded (e : Term) (h : e ∈ initialResiduals) : ¬ IsSelfInterpreter e := by\n'
           '  simp only [initialResiduals, List.mem_cons, List.not_mem_nil, or_false] at h\n'
           '  rcases h with '+' | '.join('rfl' for _ in sources)+'\n'+
           '\n'.join('  · exact excluded'+r['part']+str(r['id']) for r in records))
out += ['#print axioms initialResiduals_excluded','end Blc.Round3Floor38.Size39Residuals']
(HERE/'Residuals39.lean').write_text('\n\n'.join(out)+'\n')
(HERE/'size39-residuals-excluded.json').write_text(json.dumps(records,indent=2)+'\n')
print('generated',len(records),'complete residual exclusions')
