import sys,json
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'types'))
import narrow2 as m
stores={};hits=[]
def snap(v):
    return dict(term=m.show(m.ROOT,v['fills']),cost=v['cost'],remaining=v['remaining'],
                orphans=v['orphans'],open=[(h,v['meta'][h]) for h in sorted(v['open_'])],
                flags=(v['jused'],v['cused']),key=repr(v['key']))
def trace(frame,event,arg):
    if event=='line' and frame.f_code.co_filename==m.__file__ and frame.f_code.co_name=='rec':
        v=frame.f_locals
        if frame.f_lineno==231: hits.append(dict(prior=stores.get(v['key']),hit=snap(v)))
        if frame.f_lineno==260: stores[v['key']]=snap(v)
    return trace
sys.settrace(trace)
st=m.search(19,[0],2000,True,100000,0,99,True,({}, {0:(0,False)},0,False,False))
sys.settrace(None)
out=dict(stats=st,hits=hits)
(HERE/'trace_memo.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
