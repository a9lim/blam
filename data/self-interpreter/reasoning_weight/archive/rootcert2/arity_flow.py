"""0CFA test of a semantic exclusion: reader zero output must have r head."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
from families import d,ad
import json,time,collections

def cfa(t,cap=3):
 nodes=[];lams=[];bindings={}
 def go(t,env):
  i=len(nodes);nodes.append(None)
  if t[0]=='v':nodes[i]=('v',env[t[1]])
  elif t[0]=='k':nodes[i]=('k',t[1])
  elif t[0]=='l':
   lams.append(i);bindings[i]=set();b=go(t[1],[i]+env);nodes[i]=('l',b)
  else:nodes[i]=('a',go(t[1],env),go(t[2],env))
  return i
 go(t,[]);flow=[set() for _ in nodes]
 change=True;count=0
 while change:
  change=False
  for i,nd in enumerate(nodes):
   old=len(flow[i]);k=nd[0]
   if k=='v':flow[i]|=bindings[nd[1]]
   elif k=='k':flow[i].add((nd[1],0))
   elif k=='l':flow[i].add(i)
   else:
    for l in flow[nd[1]].copy():
     if isinstance(l,tuple):flow[i].add((l[0],min(cap,l[1]+1)))
     else:
      n=len(bindings[l]);bindings[l]|=flow[nd[2]]
      if len(bindings[l])!=n:change=True
      flow[i]|=flow[nodes[l][1]]
   if old!=len(flow[i]):change=True
  count+=1
  assert count<1000
 return flow[0],count,len(nodes),nodes,flow,bindings
if __name__=='__main__':
 from probe import rw,weakpath
 rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'flow_develop.json').read_text());certs=[];opened=[];start=time.monotonic();checks=0
 for i in old['opened']:
  r=rows[i];t=d.A(d.subst(ad.tup(r['tree']),0,d.Kc('c')),d.Z());prep=[];found=None
  for n in range(13):
   fl,*_=cfa(t);checks+=1
   if ('r',1) not in fl:found=dict(id=i,prep=prep,term=t,flow=sorted(fl,key=str));break
   p=weakpath(t)
   if p is None or d.size(t)>500:break
   t=rw(t,p);prep.append(p)
  if found:certs.append(found)
  else:opened.append(i)
 rec=dict(certificates=certs,opened=opened,checks=checks,seconds=time.monotonic()-start)
 (H/'arity_flow.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print('arity exclusions',len(certs),'open',len(opened),'checks',checks,'seconds',rec['seconds']);print('open',opened)
