"""Reuse finite strict-context/triangular divergence on the remaining literal cores."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootcert2'))
import tri_find as tf
import probe
from nested_families import watchdog,START
import json,time,resource,signal,threading,collections

def main(name):
 r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];groups=collections.defaultdict(list);rows=[];opened=[]
 for i in r['opened']:
  t=tf.ad.tup(es[i]['source']);cs=[]
  for _ in range(3):cs.append(t[2]);t=t[1]
  groups[t].append((i,cs[::-1]))
 for core,entries in groups.items():
  try:c=tf.find(tf.d.subst(core,0,tf.d.Kc('c')))
  except probe.Cap:c=None
  for i,cs in entries:
   if c:
    out=c
    for a in cs+[tf.d.Z()]:out=dict(kind='left',arg=tf.d.subst(a,0,tf.d.Kc('c')),sub=out)
    rows.append(dict(index=i,kind='tri',certificate=out))
   else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,core_groups=len(groups),states=probe.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'strict_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('tri',len(rows),'open',len(opened),'states',probe.COUNT,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
