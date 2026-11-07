"""Count stream-headed first operands with arbitrary source operands.
Counts only: nmax=35 is the largest operand budget; no syntax generated.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,time,signal,threading,resource
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('other',H/'other_count.py');other=importlib.util.module_from_spec(spec);spec.loader.exec_module(other)
ct=other.ct
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();start=time.monotonic();rows={}
 for t in range(1,9):
  for p in range(1,t+1):
   rows[f'{t}:{p}']=sum(other.jt(v,t,p,c) for v in range(2*t+2,38-2*t) for c in range(1,v//3+1))
 rec=dict(cells=rows,total=sum(rows.values()),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'stream_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
