"""Short exact mixed reductions for the twelve residual audit cases."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import json,time,signal,resource
D=ma.D;START=time.monotonic();COUNT=0

def restricted(t):
 global COUNT
 prep=[]
 for _ in range(15):
  cores=[];p=t
  while p[0]=='a':cores.append(p);p=p[1]
  for core in reversed(cores):
   u=ma.la.old.step(core)
   if u is None:continue
   ps=[]
   for _ in range(30):
    COUNT+=1;assert COUNT<=100000
    extra=ma.la.prefix(u,core)
    if extra is not None:return dict(kind='mixed',prep=prep,cycle=dict(core=core,paths=ps,extra=extra),rest=ma.la.prefix(t,core))
    if D.size(u)>500:break
    paths=[p for p in ma.redexes(u) if p and p[0]==2]
    if not paths:break
    p=paths[0];u=ma.rewrite(u,p);ps.append(p)
  u=ma.la.old.step(t)
  if u is None or D.size(u)>500:return None
  p=[];h=t
  while h[0]=='a' and h[1][0]!='l':p.append(1);h=h[1]
  assert ma.rewrite(t,p)==u
  prep.append(p);t=u
 return None

def main():
 for q,mode in [(1,'root'),(1,'nested'),(2,'all')]:
  p=H/f'nonlinear_{q}_{mode}';r=json.loads(p.with_suffix('.json').read_text());audit=json.loads(Path(str(p)+'_audit.json').read_text());opened=[]
  for e in audit['open']:
   i=e['index'];src=ma.la.old.tup(r['exceptions'][i]['body']);t=D.inst(src,D.Z())
   c=restricted(t);probe='zero'
   if not c:
    t=D.inst(src,D.U(1));target=D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N'))
    c=ma.la.cert(t,target);probe='unary'
   if c and c['kind'] in('mixed','missing','head','loop'):audit['certificates'].append(dict(index=i,probe=probe,certificate=c))
   else:opened.append(e)
  audit['open']=opened;audit['supplement_states']=COUNT;audit['supplement_seconds']=time.monotonic()-START
  Path(str(p)+'_audit.json').write_text(json.dumps(audit,indent=2)+'\n');print(q,mode,'open',opened)
 print('states',COUNT,'seconds',time.monotonic()-START,'rss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
if __name__=='__main__':signal.alarm(110);main()
