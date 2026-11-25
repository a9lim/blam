"""Bounded mixed-cycle discovery only for the saved unresolved exceptions."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import mixed as mx
from nested_families import watchdog,START
import json,signal,threading,time,resource,collections
def main(name):
 first=json.loads((H/name).read_text());es=json.loads((H/first['source_file']).read_text())['exceptions'];rows=[];opened=[]
 for i in first['opened']:
  ex=es[i];assert ex['probe']=='zero';R=mx.ad.tup(ex['source']);t=mx.d.A(mx.d.subst(R,0,mx.d.Kc('c')),mx.d.Z())
  try:c=mx.find(t,False)
  except mx.Cap:c=None
  if c:rows.append(dict(index=i,**c))
  else:opened.append(i)
 rec=dict(source_file=first['source_file'],certificates=rows,opened=opened,states=mx.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('family_','mixed_')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('certificates','opened')})+' '+str(collections.Counter(c['kind'] for c in rows))+' open='+str(len(opened)))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
