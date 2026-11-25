"""Certificate discovery for one already-compliant source cell."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la,audit as ad,dbn as d
import json,time,resource,signal,threading,os,collections
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def main():
 name=sys.argv[1];es=json.loads((H/name).read_text())['exceptions'];assert len(es)<=100000
 rows=[];opened=[]
 for i,e in enumerate(es):
  R=ad.tup(e['source']);z=e['probe']=='zero';n=1 if z else int(e['probe'])
  target=d.A(d.Kc('r'),d.Kc('j')) if z else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
  cert=la.cert(d.A(d.subst(R,0,d.Kc('c')),d.Z() if z else d.U(n)),target)
  if cert and cert['kind'] in ('loop','head','missing'):
   rows.append(dict(index=i,certificate=cert))
  else:opened.append(i)
 rec=dict(source_file=name,certificates=rows,opened=opened,kinds=dict(collections.Counter(x['certificate']['kind'] for x in rows)),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('check_','cert_')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({**{k:v for k,v in rec.items() if k not in ('certificates','opened')},'certificates':len(rows),'opened':len(opened)}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
