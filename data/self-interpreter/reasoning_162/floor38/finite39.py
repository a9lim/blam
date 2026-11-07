"""Replay fixed positive size-39 certificates, no layout search. <105s."""
import sys
sys.dont_write_bytecode=True
import json,signal,time
from size39 import *
from size39_sources import expr

def paths(ps):return '['+', '.join('['+', '.join('.'+d for d in p)+']' for p in ps)+']'
def normal_path(t):
    if t[0]=='V':return None
    if t[0]=='L':
        p=normal_path(t[1]);return None if p is None else ['under']+p
    if t[1][0]=='L':return []
    p=normal_path(t[1])
    if p is not None:return ['left']+p
    p=normal_path(t[2]);return None if p is None else ['right']+p

signal.alarm(105);start=time.monotonic();records=[]
kindmap={'three_lambdas':'three','nonlinear_chain':'chain','smaller_than_39':'smaller',
         'wrong_hnf':'sourceHead','identity_wrong_hnf':'identityHead'}
for part in ['literal','four','five']:
    rows=json.loads((HERE/f'size39-{part}.json').read_text())['rows']
    pn=part.title();out=[f'import Sources39{pn}\nimport Finite39Base\n'
        f'namespace Blc.Round3Floor38.Size39Finite.{pn}\n'
        f'open Term SelfintSharp SelfintLowerBound Size39{pn}\n'
        'set_option maxRecDepth 100000\nset_option maxHeartbeats 20000000\n']
    for r in rows:
        i=r['id'];kind=r['kind'];e=lc.decode(r['wire'])[0]
        if kind.startswith('unresolved'):continue
        q=A(A(e,V(1)),lc.bitlist('0010',V(0)))
        record=dict(part=part,id=i,kind=kind,theorem=f'Size39Finite.{pn}.positive{i}')
        if kind in kindmap:
            ident=kind.startswith('identity_');t=q if ident else e
            for p in r['paths']:t=red(t,p)
            assert lc.enc(t)==r['final']
            out.append(f'theorem positive{i} : check e{i} {paths(r["paths"])} .{kindmap[kind]} {str(ident).lower()} = true := by decide')
            record.update(strength='certificate_predicate',beta_steps=len(r['paths']))
        elif kind=='identity_wrong_payload':
            t=q
            for p in r['paths']:t=red(t,p)
            assert lc.enc(t)==r['final']
            h,args=apps_spine(t);assert h==V(1) and len(args)==2
            u=args[r['payload']];qs=[]
            for _ in range(500):
                path=normal_path(u)
                if path is None:break
                u=red(u,path);qs.append(path)
            assert normal(u) and lc.enc(u)==r['nf'],(part,i)
            out.append(f'theorem positive{i} : checkPayload e{i} {paths(r["paths"])} {r["payload"]} {paths(qs)} = true := by decide')
            record.update(strength='certificate_predicate',beta_steps=len(r['paths']),payload_paths=qs)
        elif kind=='W_grammar':
            out += [f'theorem membership{i} : WGrammar38.B WGrammar38.empty e{i} := by decide',
                    f'theorem positive{i} : ¬ IsSelfInterpreter e{i} := WGrammar38.not_selfinterpreter membership{i}']
            record.update(strength='complete_not_IsSelfInterpreter')
        elif kind in ['W_grammar_reduct','W_identity_reduct']:
            ident=kind=='W_identity_reduct';t=q if ident else e
            for p in r['paths']:t=red(t,p)
            assert lc.enc(t)==r['final']
            source=f'(invocation e{i})' if ident else f'e{i}'
            out += [f'def landing{i} : Term := {expr(t)}',
                    f'theorem run{i} : replay {paths(r["paths"])} {source} = some landing{i} := by decide',
                    f'theorem membership{i} : WGrammar38.B WGrammar38.empty landing{i} := by decide',
                    f'theorem positive{i} : ¬ IsSelfInterpreter e{i} :=\n'
                    f'  {"not_selfint_w_identity" if ident else "not_selfint_w_reduct"} (replay_sound run{i}) membership{i}']
            record.update(strength='complete_not_IsSelfInterpreter',beta_steps=len(r['paths']))
        elif kind=='identity_cycle':
            pref=r['prefix'];period=len(r['paths'])-pref
            assert period>0
            t=q
            for p in r['paths'][:pref]:t=red(t,p)
            assert lc.enc(t)==r['final']
            out += [f'def core{i} : Term := {expr(t)}',
                    f'theorem prefix{i} : headSteps {pref} (invocation e{i}) = some core{i} := by decide',
                    f'theorem cycle{i} : headSteps {period} core{i} = some core{i} := by decide',
                    f'theorem positive{i} : ¬ IsSelfInterpreter e{i} :=\n'
                    f'  not_selfint_cycle prefix{i} cycle{i} (by decide)']
            record.update(strength='complete_not_IsSelfInterpreter',prefix_steps=pref,period=period)
        else:raise AssertionError((part,i,kind))
        records.append(record)
    out.append(f'end Blc.Round3Floor38.Size39Finite.{pn}')
    (HERE/f'Finite39{pn}.lean').write_text('\n\n'.join(out)+'\n')
(HERE/'size39-positive-checks.json').write_text(json.dumps(records,indent=2)+'\n')
print(len(records),'fixed certificates',dict(Counter(r['strength'] for r in records)),time.monotonic()-start)
