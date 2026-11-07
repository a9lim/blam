"""Fixed Lean exclusions for all 63 initially capped size-38 layouts."""
import sys
sys.dont_write_bytecode=True
import json
from functools import lru_cache
from size38 import *

def expr(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {expr(t[1])})'
    return f'(.app {expr(t[1])} {expr(t[2])})'
def paths(ps):return '['+', '.join('['+', '.join('.'+d for d in p)+']' for p in ps)+']'
def rigid(t):
    if t[0]=='V':return f'(.var {t[1]})'
    assert t[0]=='A'
    return f'(.app _ {rigid(t[1])})'
@lru_cache(None)
def w(t,m=()):
    if t[0]=='V':return t[1]<len(m) and m[t[1]]
    return t[0]=='L' and b(t[1],(True,)+m)
@lru_cache(None)
def b(t,m=()):
    if t[0]=='V':return False
    if t[0]=='L':return b(t[1],(False,)+m)
    return b(t[1],m) or (w(t[1],m) and (w(t[2],m) or b(t[2],m)))

data=json.loads((HERE/'size38.json').read_text())['rows']
es={r['id']:lc.decode(r['wire'])[0] for r in data}
ids=[r['id'] for r in data if r['kind'].startswith('unresolved')]
follow={r['id']:r for r in json.loads((HERE/'size38-follow.json').read_text())}
out=['import Size38Pumps\nimport Payload38\nimport WGrammar38\n'
     'namespace Blc.Round3Floor38.Size38\nopen Term SelfintSharp SelfintLowerBound\n'
     'set_option maxRecDepth 100000\nset_option maxHeartbeats 20000000\n']
summary=[]
for i in ids:
    if b(es[i]):
        out += [f'theorem w{i} : WGrammar38.B WGrammar38.empty e{i} := by decide',
                f'theorem residual{i} : ¬ IsSelfInterpreter e{i} := WGrammar38.not_selfinterpreter w{i}']
        summary.append(dict(id=i,kind='W_grammar',theorem='residual'+str(i)))
    elif i==723:
        out.append(f'theorem residual{i} : ¬ IsSelfInterpreter e{i} := e{i}_excluded')
        summary.append(dict(id=i,kind='parametric_pump',theorem='residual'+str(i)))
    else:
        r=follow[i];assert r['kind']=='identity_wrong_payload_head' and r['payload']==0
        landing=lc.decode(r['final'])[0];h,args=apps_spine(landing)
        assert h==V(1) and len(args)==2
        p,rest=args;hnf=lc.decode(r['payload_hnf'])[0]
        q=A(A(es[i],V(1)),lc.bitlist('0010',V(0)));t=q
        for path in r['paths']:t=red(t,path)
        assert t==landing
        t=p
        for path in r['payload_paths']:t=red(t,path)
        assert t==hnf
        assert hnf[0]=='L'
        if hnf[1][0]=='L':
            body=hnf[1][1];assert body[0]=='A'
            mismatch='two_lam_false_mismatch '+rigid(body[1])
        else:mismatch='one_lam_false_mismatch '+rigid(hnf[1])
        out += [f'def payload{i} : Term := {expr(p)}',f'def rest{i} : Term := {expr(rest)}',
                f'def hnf{i} : Term := {expr(hnf)}',
                f'theorem landing{i} : replay {paths(r["paths"])}\n'
                f'  (.app (.app e{i} (.var 1)) (SelfintControl.quoteI (.var 0))) =\n'
                f'  some (.app (.app (.var 1) payload{i}) rest{i}) := by decide',
                f'theorem payloadHead{i} : replay {paths(r["payload_paths"])} payload{i} = some hnf{i} := by decide',
                f'theorem mismatch{i} : ¬ Betas hnf{i} churchFalse := {mismatch}',
                f'theorem residual{i} : ¬ IsSelfInterpreter e{i} :=\n'
                f'  not_selfint_wrong_first (replay_sound landing{i}) (replay_sound payloadHead{i}) mismatch{i}']
        summary.append(dict(id=i,kind='rigid_payload_head',theorem='residual'+str(i)))
out.append('def initialResiduals : List Term := ['+', '.join('e'+str(i) for i in ids)+']')
out.append('theorem initialResiduals_excluded (e : Term) (h : e ∈ initialResiduals) : ¬ IsSelfInterpreter e := by\n'
           '  simp only [initialResiduals, List.mem_cons, List.not_mem_nil, or_false] at h\n'
           '  rcases h with '+' | '.join('rfl' for _ in ids)+'\n'+
           '\n'.join('  · exact residual'+str(i) for i in ids))
out += ['#print axioms initialResiduals_excluded','end Blc.Round3Floor38.Size38']
(HERE/'Size38Residuals.lean').write_text('\n\n'.join(out)+'\n')
(HERE/'size38-residuals-excluded.json').write_text(json.dumps(summary,indent=2)+'\n')
print('generated',len(ids),'complete exclusions:',dict(Counter(r['kind'] for r in summary)))
