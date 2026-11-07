#!/usr/bin/env python3
"""Order only the 3484 archived terms by the proved Lean grammar.
No term enumeration or additional search is done in Python.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,re
from collections import defaultdict
from functools import lru_cache
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
SOURCE=ROOT/'data/self-interpreter/reasoning_162/floor'
sys.path.insert(0,str(SOURCE))
from checks import lc,lean
rows=json.loads((SOURCE/'reader29.json').read_text())['rows']
@lru_cache(None)
def counts(t,h):
    if t[0]=='V':
        k=t[1]
        return (0,1,0 if k==h+1 else k,int(k==h+1),int(k==h),0)
    if t[0]=='L':
        l,v,x,j,c,d=counts(t[1],h+1)
        return l+1,v,x,j,c,d+j
    a,b=counts(t[1],h),counts(t[2],h)
    return tuple(x+y for x,y in zip(a,b))
def order(t,h):
    if t[0]=='V': return (0,)
    if t[0]=='L': return (1,order(t[1],h+1))
    l,v,x,j,c,d=counts(t[1],h)
    return (2,l,v,x,j,c,d,order(t[1],h),order(t[2],h))
groups=defaultdict(list)
for i,r in enumerate(rows):
    t,_=lc.decode(r['reader'])
    key=tuple(r['case'][1:])
    groups[key].append((i,t))
manifest=[]
for k,((l,v,x,d,c),items) in enumerate(groups.items()):
    items.sort(key=lambda it:(counts(it[1],0)[2],order(it[1][1],1)))
    manifest.append(dict(row=k,l=l,v=v,x=x,d=d,c=c,count=len(items),indices=[i for i,t in items]))
assert sum(m['count'] for m in manifest)==3484
assert sorted(i for m in manifest for i in m['indices'])==list(range(3484))
(HERE/'coverage-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Prepared recorded-row identities:',[(r['row'],r['count']) for r in manifest])
