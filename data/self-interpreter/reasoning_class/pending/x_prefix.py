"""Finite head clocks and replicator certificates on saved flow-open cases."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import prefix as p
from nested_families import watchdog,START
import json,time,resource,signal,threading,collections

def main(name):
 r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[]
 for i in r['opened']:
  R=p.ad.tup(es[i]['source']);t=p.d.A(p.d.subst(R,0,p.d.Kc('c')),p.d.Z())
  try:c=p.find(t)
  except p.Cap:c=None
  if c:rows.append(dict(index=i,**c))
  else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,states=p.STATES,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'prefix_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print(collections.Counter(x['kind'] for x in rows),'open',len(opened),'states',p.STATES,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
