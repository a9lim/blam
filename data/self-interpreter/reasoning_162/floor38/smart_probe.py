"""Exact beta paths with argument-only affine preprocessing.
Records prefix pumps only; resource caps remain unresolved.
"""
import sys
sys.dont_write_bytecode=True
import json,time
from exact_probe import *

def weak_path(t):
    if t[0]!='A':return None
    if t[1][0]=='L':return []
    p=weak_path(t[1]);return None if p is None else ['left']+p

def apps_spine(t):
    args=[]
    while t[0]=='A':args.append(t[2]);t=t[1]
    return t,list(reversed(args))

def appall(f,args):
    for a in args:f=A(f,a)
    return f

def one(t,paths):
    p=weak_path(t)
    if p is None:return None
    arg=at(t,p+['right'])
    while True:
        ap=simp_path(arg)
        if ap is None:break
        path=p+['right']+ap
        t=red(t,path);paths.append(path)
        arg=at(t,p+['right'])
    t=red(t,p);paths.append(p)
    return t

def probe(idx,e,cap=300):
    start=A(A(e,V(1)),lc.bitlist('0010',V(0)));t=start;paths=[];seen={};states=[];st=time.monotonic()
    for k in range(cap):
        f,args=apps_spine(t)
        if args[-2:]==[V(1),lc.bitlist('0010',V(0))]:cut=2
        elif args[-1:]==[lc.bitlist('0010',V(0))]:cut=1
        else:cut=0
        core=appall(f,args[:-cut]) if cut else t
        trail=args[-cut:] if cut else []
        prefix=f
        for n,a in enumerate(args):
            prefix=A(prefix,a)
            if prefix in seen:
                old,oldpaths,oldtail=seen[prefix]
                if oldtail and args[-len(oldtail):]!=oldtail:continue
                # Certify only if every cycle path stays strictly inside
                # the old core or a growing application of that core.
                state=dict(id=idx,kind='pump',prefix_steps=old,head_period=k-old,
                           initial=lc.enc(start),core=lc.enc(prefix),
                           prefix_paths=paths[:oldpaths],cycle_paths=paths[oldpaths:],
                           cycle_start=lc.enc(states[old]),cycle_end=lc.enc(t),
                           extra=[lc.enc(x) for x in args[n+1:len(args)-len(oldtail) if oldtail else len(args)]],
                           tail=[lc.enc(x) for x in oldtail])
                print(idx,'pump',old,k,'nodes',sz(prefix),'time',round(time.monotonic()-st,3))
                return state
        seen[core]=(k,len(paths),trail);states.append(t)
        if sz(t)>15000 or time.monotonic()-st>6:break
        t1=one(t,paths)
        if t1 is None:
            print(idx,'stop',k,lc.show(t)[:160]);break
        t=t1
    print(idx,'unresolved','headsteps',k,'nodes',sz(t),'time',round(time.monotonic()-st,3))
    return dict(id=idx,kind='unresolved',head_steps=k,nodes=sz(t))

if __name__=='__main__':
    rows=json.loads((HERE.parent/'floor/four_lambda.json').read_text())
    ids=[int(x) for x in sys.argv[1:]] or [448,449,454,455,460,461,466,467,472,473,478,479,572]
    out=[probe(i,lc.decode(rows[i]['wire'])[0]) for i in ids]
    (HERE/'smart_probe.json').write_text(json.dumps(out,indent=2)+'\n')
