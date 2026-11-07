"""Finite internal beta developments followed by checked flow exclusion."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootcert2'))
from flow import cfa,d,ad
import probe as p
from nested_families import watchdog,START
import json,time,resource,signal,threading

def develop(t):
 qs=[]
 def go(t,path):
  if t[0]=='l':return d.L(go(t[1],path+(0,)))
  if t[0]!='a':return t
  f=go(t[1],path+(1,));a=go(t[2],path+(2,));t=d.A(f,a)
  if f[0]=='l':
   u=p.rw(t,())
   if d.size(u)<1000:qs.append(path);return u
  return t
 return go(t,()),qs

def main():
 r=json.loads((H/'unary_x.json').read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[];checks=0
 for i in r['opened']:
  t=d.A(d.subst(ad.tup(es[i]['source']),0,d.Kc('c')),d.Z());prep=[];found=None
  for n in range(10):
   checks+=1
   fl,*_=cfa(t)
   if 'r' not in fl:found=dict(index=i,kind='flow',prep=prep,term=t);break
   try:t,qs=develop(t)
   except p.Cap:break
   prep+=qs
   if not qs or d.size(t)>1200 or len(prep)>400:break
  if found:rows.append(found)
  else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,checks=checks,rewrites=p.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'develop_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('develop certs',len(rows),'open',len(opened),'checks',checks,'rewrites',p.COUNT,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
