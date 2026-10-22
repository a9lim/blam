"""Sound finite flow annotations for saved x-cell exceptions; no new sources."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootcert2'))
from flow import cfa,d,ad
sys.path.insert(0,str(H.parent/'rootnl'))
import families as f
from nested_families import watchdog,START
import time,resource,json,signal,threading

def main(name):
 r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[];checks=0
 for i in r['opened']:
  ex=es[i];assert ex['probe']=='zero';t=d.A(d.subst(ad.tup(ex['source']),0,d.Kc('c')),d.Z());prep=[];found=None
  for n in range(17):
   checks+=1;assert checks<95000
   fl,*_=cfa(t)
   if 'r' not in fl:found=dict(index=i,kind='flow',prep=prep,term=t);break
   p=f.weakpath(t)
   if p is None or d.size(t)>400:break
   t=f.mx.rewrite(t,p);prep.append(p)
  if found:rows.append(found)
  else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,checks=checks,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'flow_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('certified',len(rows),'open',len(opened),'checks',checks,'seconds',rec['seconds'],'rss',rec['rss_bytes'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
