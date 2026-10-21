#!/usr/bin/env python3
"""Sixty four-leaf layouts forced by the 35-bit, four-lambda allocation."""
import sys
sys.dont_write_bytecode = True
import itertools
import json
from pathlib import Path
from check34 import parse, head_trace, invoke, lc

def trees(xs):
    if len(xs) == 1:
        yield xs[0]
    for k in range(1,len(xs)):
        for f in trees(xs[:k]):
            for a in trees(xs[k:]):
                yield f'({f} {a})'

def spine(t):
    binders=0
    while t[0]=='L':
        binders+=1
        t=t[1]
    args=[]
    while t[0]=='A':
        args.append(t[2]); t=t[1]
    return binders,t,list(reversed(args))

def main():
    delta=parse('\\x.x x')
    ident=parse('\\x.x')
    rows=[]
    for p in sorted(set(itertools.permutations('aabc'))):
        for body in trees(p):
            n=parse('\\a\\b\\c.'+body)
            e=('A',delta,n)
            assert lc.size(e)==35
            status,steps,h=head_trace(e,48)
            ps,pn,ph=head_trace(invoke(e,ident),48)
            bs,hd,args=spine(h)
            pb,px,pa=spine(ph)
            row=dict(body=body,bits=lc.enc(e),head_status=status,head_steps=steps,
                     head_binders=bs,head=repr(hd),head_arguments=len(args),
                     I_status=ps,I_steps=pn,I_binders=pb,I_head=repr(px),
                     I_arguments=len(pa))
            if status=='hnf':row['hnf']=lc.show(h)[:600]
            if ps=='hnf':row['I_hnf']=lc.show(ph)[:600]
            rows.append(row)
            print(body,status,steps,(bs,hd,len(args)),ps,pn,(pb,px,len(pa)))
    assert len(rows)==60
    (Path(__file__).parent/'check35.json').write_text(json.dumps(rows,indent=2)+'\n')

if __name__=='__main__':main()
