"""Focused exact follow-up on the named 63 capped size-38 cases.
Only positive finite/prefix-pump certificates are exclusions. <=100s/run.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from collections import Counter
from size38 import *
from exact_probe import simp_path,sz

def prefix_tail(t,core):
    tail=[]
    while t!=core and t[0]=='A':tail.append(t[2]);t=t[1]
    return list(reversed(tail)) if t==core else None

def smart_step(t,ps):
    p=weak_path(t)
    if p is None:return None
    # Simplify only the argument of the selected head redex.
    for _ in range(100):
        ap=simp_path(at(t,p+['right']))
        if ap is None:break
        q=p+['right']+ap;t=red(t,q);ps.append(q)
    t=red(t,p);ps.append(p)
    return t

def cycle(core,deadline):
    p=weak_path(core)
    if p is None:return None
    t=red(core,p);ps=[p]
    for k in range(100):
        tail=prefix_tail(t,core)
        if tail is not None:return dict(core=lc.enc(core),paths=ps,extra=[lc.enc(x) for x in tail])
        if time.monotonic()>deadline or sz(t)>10000:return None
        t=smart_step(t,ps)
        if t is None:return None
    return None

def probe(row):
    e=lc.decode(row['wire'])[0];start=A(A(e,V(1)),lc.bitlist('0010',V(0)))
    deadline=time.monotonic()+1.2;t=start;ps=[];seen={};failed=set()
    for step in range(180):
        f,args=apps_spine(t);pr=f
        for k,a in enumerate(args):
            pr=A(pr,a)
            if pr in seen and pr not in failed:
                cert=cycle(pr,min(deadline,time.monotonic()+0.15))
                if cert:
                    oldps,tail=seen[pr]
                    return dict(id=row['id'],kind='prefix_pump',prefix_paths=oldps,
                                tail=[lc.enc(x) for x in tail],**cert)
                failed.add(pr)
            if pr not in seen:seen[pr]=(ps.copy(),args[k+1:])
        if time.monotonic()>deadline or sz(t)>12000:break
        t1=smart_step(t,ps)
        if t1 is None:
            # A rigid mismatch is definitive; payloads may be checked separately.
            h,aa=apps_spine(t)
            if h!=V(1) or len(aa)!=2:
                return dict(id=row['id'],kind='identity_wrong_weak_head',paths=ps,final=lc.enc(t))
            for j,(u,want) in enumerate(zip(aa,[KI,V(0)])):
                qs=[];v=u
                for _ in range(400):
                    p=head_path(v)
                    if p is None:
                        if v!=want:
                            return dict(id=row['id'],kind='identity_wrong_payload_head',paths=ps,
                                        final=lc.enc(t),payload=j,payload_paths=qs,payload_hnf=lc.enc(v))
                        break
                    if time.monotonic()>deadline or sz(v)>12000:break
                    v=red(v,p);qs.append(p)
            break
        t=t1
    return dict(id=row['id'],kind='unresolved',steps=len(ps),nodes=sz(t))

def main():
    st=time.monotonic();data=json.loads((HERE/'size38.json').read_text());out=[]
    ids={int(x) for x in sys.argv[1:]}
    rows=[r for r in data['rows'] if r['kind'].startswith('unresolved') and
          r['family']!='one_a_zero_a' and (not ids or r['id'] in ids)]
    for row in rows:
        assert time.monotonic()-st<100
        result=probe(row);out.append(result)
        print(result['id'],result['kind'],result.get('steps',''),flush=True)
    name='size38-follow.json' if not ids else 'size38-follow-'+ '-'.join(map(str,sorted(ids)))+'.json'
    (HERE/name).write_text(json.dumps(out,indent=2)+'\n')
    print('seconds',time.monotonic()-st,'verdicts',dict(Counter(r['kind'] for r in out)))
if __name__=='__main__':main()
