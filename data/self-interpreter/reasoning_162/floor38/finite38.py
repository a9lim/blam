"""Replay the 1,143 fixed positive finite certificates in Lean.
No layout discovery: only stored paths and stored positive payload normals.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from size38 import *

def paths(ps):return '['+', '.join('['+', '.join('.'+d for d in p)+']' for p in ps)+']'
def normal_path(t):
    if t[0]=='V':return None
    if t[0]=='L':
        p=normal_path(t[1]);return None if p is None else ['under']+p
    if t[1][0]=='L':return []
    p=normal_path(t[1])
    if p is not None:return ['left']+p
    p=normal_path(t[2]);return None if p is None else ['right']+p

start=time.monotonic();rows=json.loads((HERE/'size38.json').read_text())['rows']
out=['import Finite38Base\nnamespace Blc.Round3Floor38.Size38Finite\n'
     'open Term SelfintSharp Size38\nset_option maxRecDepth 100000\n'
     'set_option maxHeartbeats 16000000\n'];records=[]
kindmap={'three_lambdas':'three','nonlinear_chain':'chain','smaller_than_38':'smaller',
         'wrong_hnf':'sourceHead','identity_wrong_hnf':'identityHead'}
for r in rows:
    i=r['id'];kind=r['kind']
    if kind.startswith('unresolved'):continue
    assert time.monotonic()-start<105
    e=lc.decode(r['wire'])[0]
    if kind in kindmap:
        identity=kind.startswith('identity_')
        t=L(L(A(A(e,V(1)),lc.bitlist('0010',V(0))))) if identity else e
        for p in r['paths']:t=red(t,p)
        assert lc.enc(t)==r['final']
        out.append(f'theorem finite{i} : check e{i} {paths(r["paths"])} .{kindmap[kind]} {str(identity).lower()} = true := by decide')
        records.append(dict(id=i,kind=kind,beta_steps=len(r['paths'])))
    elif kind=='exact_cycle':
        # Check the identity invocation itself. A source's failure to have
        # a full normal form alone is not a self-interpreter obstruction.
        t=L(L(A(A(e,V(1)),lc.bitlist('0010',V(0)))))
        seen={}
        for steps in range(100):
            if t in seen:
                p=seen[t];q=steps-p
                break
            seen[t]=steps
            path=head_path(t)
            assert path is not None,('identity head terminated',i)
            t=red(t,path)
        else:raise AssertionError(('no positive identity cycle',i))
        assert q>0
        out.append(f'theorem finite{i} : checkCycle e{i} {p} {q} = true := by decide')
        records.append(dict(id=i,kind=kind,invocation='identity',prefix_steps=p,period=q))
    elif kind=='identity_wrong_payload':
        t=L(L(A(A(e,V(1)),lc.bitlist('0010',V(0)))))
        for p in r['paths']:t=red(t,p)
        assert lc.enc(t)==r['final']
        l,h,args=spine(t);assert (l,h,len(args))==(2,V(1),2)
        arg=args[r['payload']];qs=[];u=arg
        for _ in range(500):
            path=normal_path(u)
            if path is None:break
            u=red(u,path);qs.append(path)
        assert normal(u) and lc.enc(u)==r['nf'],i
        out.append(f'theorem finite{i} : checkPayload e{i} {paths(r["paths"])} {r["payload"]} {paths(qs)} = true := by decide')
        records.append(dict(id=i,kind=kind,beta_steps=len(r['paths']),payload_steps=len(qs),payload_paths=qs))
    else:raise AssertionError((i,kind))
out.append('end Blc.Round3Floor38.Size38Finite')
(HERE/'Size38Finite.lean').write_text('\n\n'.join(out)+'\n')
(HERE/'size38-finite-checks.json').write_text(json.dumps(records,indent=2)+'\n')
print('Generated',len(records),'positive finite checks in',round(time.monotonic()-start,3),'seconds')
