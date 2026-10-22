"""Fixed identity-source probes on the four hard cases, at closed continuations.
These instances follow from the rigid universal contract by substitution.
No capped computation is an exclusion.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from size38_follow import *

def run(i,e,cname,c):
    suffix=I;start=A(A(e,c),lc.bitlist('0010',suffix))
    want=lc.nf(A(A(c,KI),suffix),[100]);t=start;ps=[];seen={};failed=set()
    deadline=time.monotonic()+3
    for step in range(300):
        f,args=apps_spine(t);pr=f
        for k,a in enumerate(args):
            pr=A(pr,a)
            if pr in seen and pr not in failed:
                cert=cycle(pr,min(deadline,time.monotonic()+0.15))
                if cert:
                    oldps,tail=seen[pr]
                    return dict(id=i,continuation=cname,c=lc.enc(c),suffix=lc.enc(suffix),
                                kind='prefix_pump',prefix_paths=oldps,tail=[lc.enc(x) for x in tail],**cert)
                failed.add(pr)
            if pr not in seen:seen[pr]=(ps.copy(),args[k+1:])
        if time.monotonic()>deadline or sz(t)>20000:break
        t1=smart_step(t,ps)
        if t1 is None:
            v=t;extra=[]
            for _ in range(400):
                p=head_path(v)
                if p is None:
                    if normal(v) and v!=want:
                        return dict(id=i,continuation=cname,c=lc.enc(c),suffix=lc.enc(suffix),
                                    kind='wrong_normal',paths=ps+extra,final=lc.enc(v),want=lc.enc(want))
                    break
                if time.monotonic()>deadline or sz(v)>20000:break
                v=red(v,p);extra.append(p)
            break
        t=t1
    return dict(id=i,continuation=cname,kind='unresolved',steps=len(ps),nodes=sz(t))

data=json.loads((HERE/'size38.json').read_text())['rows'];es={r['id']:lc.decode(r['wire'])[0] for r in data}
out=[]
for i in (120,122,137,176):
    for name,c in [('I',I),('K',parse('\\a\\b.a')),('F',parse('\\a\\b.b'))]:
        r=run(i,es[i],name,c);out.append(r);print(i,name,r['kind'],r.get('steps'),flush=True)
(HERE/'size38-closed.json').write_text(json.dumps(out,indent=2)+'\n')
