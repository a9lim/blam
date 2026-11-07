"""Find exact certificates for every incomplete normalizer run, per source cell."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la
import mixed_audit as ma
import json,time,signal,resource,threading,os
START=time.monotonic()
def watch():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)

def main(q,mode):
 name=f'nonlinear_{q}_{mode}';r=json.loads((H/(name+'.json')).read_text());out=[];opened=[]
 assert len(r['exceptions'])<=100000
 for i,e in enumerate(r['exceptions']):
  Y=la.old.tup(e['body']);z=e['probe']=='zero';t=la.d.inst(Y,la.d.Z() if z else la.d.U(1))
  target=la.d.A(la.d.Kc('r'),la.d.Kc('j')) if z else la.d.A(la.d.A(la.d.Kc('c'),la.d.U(0)),la.d.Kc('N'))
  c=la.cert(t,target)
  if c and c['kind'] in('missing','head','loop'):out.append(dict(index=i,certificate=c));continue
  mixed=ma.cert(t)
  if mixed:out.append(dict(index=i,certificate=dict(kind='mixed',**mixed)))
  else:opened.append(dict(index=i,simple=c))
 rec=dict(q=q,mode=mode,certificates=out,open=opened,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,mixed_states=ma.COUNT)
 (H/(name+'_audit.json')).write_text(json.dumps(rec,indent=2)+'\n')
 from collections import Counter
 print(json.dumps({k:v for k,v in rec.items() if k!='certificates'},indent=2));print('kinds',dict(Counter(x['certificate']['kind'] for x in out)))
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watch,daemon=True).start();main(int(sys.argv[1]),sys.argv[2])
