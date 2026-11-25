"""0CFA test of a semantic exclusion: reader zero output must have r head."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
from families import d,ad
import json,time,collections

def cfa(t):
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
   elif k=='k':flow[i].add(nd[1])
   elif k=='l':flow[i].add(i)
   else:
    for l in flow[nd[1]].copy():
     if isinstance(l,str):flow[i].add(l)
     else:
      n=len(bindings[l]);bindings[l]|=flow[nd[2]]
      if len(bindings[l])!=n:change=True
      flow[i]|=flow[nodes[l][1]]
   if old!=len(flow[i]):change=True
  count+=1
  assert count<1000
 return flow[0],count,len(nodes),nodes,flow,bindings
if __name__=='__main__':
 rows=json.loads((H/'sources.json').read_text());out=[];start=time.monotonic()
 for r in rows:
  R=d.subst(ad.tup(r['tree']),0,d.Kc('c'))
  fl,c,n,*_=cfa(d.A(R,d.Z()))
  out.append(dict(id=r['id'],flow=sorted(fl,key=str),rounds=c,nodes=n))
 (H/'flow.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
 print('zero head r excluded',sum('r' not in x['flow'] for x in out),'total',len(out),'sec',time.monotonic()-start)
 print(collections.Counter(tuple(x['flow']) for x in out))
