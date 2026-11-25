"""Group by literal let core; prove its divergence once, then extend the spine."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import mixed as m
from nested_families import watchdog,START
import json,time,resource,signal,threading,collections

def main(name):
 r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];groups=collections.defaultdict(list);rows=[];opened=[]
 for i in r['opened']:
  t=m.ad.tup(es[i]['source']);cs=[]
  for _ in range(3):cs.append(t[2]);t=t[1]
  groups[t].append((i,cs[::-1]))
 for core,entries in groups.items():
  try:c=m.find(m.d.subst(core,0,m.d.Kc('c')),False)
  except m.Cap:c=None
  for i,cs in entries:
   if c:
    out=dict(c);out['prep']=[(1,1,1,1)+tuple(p) for p in c['prep']];out['rest']=c['rest']+[m.d.subst(t,0,m.d.Kc('c')) for t in cs]+[m.d.Z()];rows.append(dict(index=i,**out))
   else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,core_groups=len(groups),states=m.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'core_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('core mixed',len(rows),'open',len(opened),'groups',len(groups),'states',m.COUNT,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
