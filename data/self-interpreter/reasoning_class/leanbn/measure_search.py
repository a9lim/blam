#!/usr/bin/env python3
"""Instrument the reviewed k>=4 run. Metrics only, not a proof certificate."""
import sys
sys.dont_write_bytecode=True
import collections, importlib.util, json, pathlib, time
p=pathlib.Path('/Users/a9lim/Work/blam/tmp/round4/types/narrow3.py')
spec=importlib.util.spec_from_file_location('n3measure',p)
n=importlib.util.module_from_spec(spec);spec.loader.exec_module(n)
n.MINAR=4
start=n.parse_prefix('\\s. _')
(h,)=start[1];start[1][h]=(1,False,0)
counts=collections.Counter(); orig=n.run_law
sizes=collections.Counter()
def nodes(x):
    if isinstance(x, tuple): return 1+sum(nodes(y) for y in x)
    return 1
def expanded(t,f):
    if t[0]=='H' and t[1] in f:return expanded(f[t[1]],f)
    if t[0]=='L':return 1+expanded(t[1],f)
    if t[0]=='A':return 1+expanded(t[1],f)+expanded(t[2],f)
    return 1
def observed(f,m,law,fuel):
    if law==1:
        sz=expanded(n.ROOT,f); sizes['source_nodes_total']+=sz;sizes['source_nodes_max']=max(sizes['source_nodes_max'],sz)
    r=orig(f,m,law,fuel); counts[r[0]]+=1
    if r[0]=='need' and r[2] is not None:
        sz=nodes(r[2]);sizes['residual_nodes_total']+=sz;sizes['residual_nodes_max']=max(sizes['residual_nodes_max'],sz)
        sz=len(json.dumps(r[2],separators=(',',':')));sizes['residual_json_bytes_total']+=sz;sizes['residual_json_bytes_max']=max(sizes['residual_json_bytes_max'],sz)
    return r
n.run_law=observed
compare_orig=n.compare
def compare_observed(code,env,tgt,fills,meta,fuel):
    before=fuel[0]
    try:return compare_orig(code,env,tgt,fills,meta,fuel)
    finally:
        delta=before-fuel[0]
        sizes['compare_calls']+=1
        sizes['beta_steps_total']+=delta
        sizes['beta_steps_max_per_compare']=max(sizes['beta_steps_max_per_compare'],delta)
n.compare=compare_observed
t=time.monotonic();st=n.search(45,[1,2,0],2000,True,100000,1,1,True,start)
assert st['states']==32810 and not st['sol'] and not st['fuel']
result=dict(search=st,law_calls=counts,metrics=sizes,wall_seconds=time.monotonic()-t,note='Metrics only; Python search evidence, not a Lean certificate.')
pathlib.Path(__file__).with_name('search_metrics.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
