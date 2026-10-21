#!/usr/bin/env python3
"""Thirty-six single-leaf boxes in the last four-live-binder family."""
import sys
sys.dont_write_bytecode = True
import itertools
import json
from pathlib import Path
from check34 import parse, head_trace, invoke, lc
from check35 import spine

def main():
    delta=parse('\\x.x x'); ident=parse('\\x.x')
    rows=[]
    for p in itertools.permutations('abc'):
        for assoc in (0,1):
            for box in 'abc':
                q=[f'(\\u.{x})' if x==box else x for x in p]
                body=f'({q[0]} {q[1]}) {q[2]}' if assoc==0 else f'{q[0]} ({q[1]} {q[2]})'
                src='\\a.a (\\b\\c.'+body+')'
                n=parse(src); e=('A',delta,n)
                assert lc.size(e)==36
                hs,hn,h=head_trace(e,60); ps,pn,ph=head_trace(invoke(e,ident),60)
                hb,hv,ha=spine(h);pb,pv,pa=spine(ph)
                row=dict(body=body,n=src,bits=lc.enc(e),head_status=hs,head_steps=hn,
                         head_binders=hb,head=repr(hv),head_arguments=len(ha),
                         I_status=ps,I_steps=pn,I_binders=pb,I_head=repr(pv),I_arguments=len(pa))
                if hs=='hnf':row['hnf']=lc.show(h)[:800]
                if ps=='hnf':row['I_hnf']=lc.show(ph)[:800]
                rows.append(row)
                print(body,hs,hn,(hb,hv,len(ha)),ps,pn,(pb,pv,len(pa)))
    assert len(rows)==36
    (Path(__file__).parent/'check36.json').write_text(json.dumps(rows,indent=2)+'\n')
if __name__=='__main__':main()
