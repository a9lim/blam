"""Closed substitutions of the rigid zero law on the remaining saved exceptions."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootcert2'))
import probe as p
from nested_families import watchdog,START
import json,time,resource,signal,threading,collections
D=p.d

def main():
 r=json.loads((H/'strict_x.json').read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[]
 choices=[(D.I,D.I,D.I),(D.I,D.F,D.I),(D.F,D.I,D.I),(D.K,D.I,D.I),(D.I,D.K,D.I),(D.I,D.F,D.K),(D.F,D.K,D.I)]
 for at,i in enumerate(r['opened']):
  R=p.ad.tup(es[i]['source']);found=None
  for c,j,rr in choices:
   vals=dict(c=c,j=j,N=D.I,r=rr);target=p.substk(D.A(D.Kc('r'),D.Kc('j')),vals);nf=p.norm(target);target,qs=nf
   t=p.substk(D.A(D.subst(R,0,D.Kc('c')),D.Z()),vals)
   try:ce=p.find(t,target,80)
   except p.Cap:ce=None;break
   if ce and ce['kind'] in ('nf','cycle'):
    found=dict(index=i,kind='closed',values=vals,target=target,target_prep=qs,certificate=ce);break
  if found:rows.append(found)
  else:opened.append(i)
  if p.COUNT>=95000:opened+=r['opened'][at+1:];break
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,states=p.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'closed_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print(collections.Counter(x['certificate']['kind'] for x in rows),'open',len(opened),'states',p.COUNT,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
