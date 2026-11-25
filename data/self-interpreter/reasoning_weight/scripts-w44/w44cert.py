from w44run import *
from resolve41 import solve,pick,ad,ex,limit
import re,resource
header="""import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
"""
def collect():
 es=[];m=collections.Counter();sizes=[]
 for part in parts():
  cell=cells[part['cell']];r=json.loads(partfile(part).read_text());assert tuple(r['cell'])==cell and r['part']==part and r['total']==part['total']
  m.update(r['mismatch']);es.extend(r['exceptions']);sizes.append(r['total'])
 assert sum(sizes)==819916==len(es)+sum(m.values())
 hashes={repr(ad.tup(e['source'])) for e in es};assert len(hashes)==len(es)
 save(P/'probe44.json',dict(w=44,total=sum(sizes),mismatch=m,exceptions=es,rss=max(json.loads(p.read_text())['rss'] for p in D.glob('cell*.json'))))
 print('finite',m,'exception count',len(es),flush=True)
 return es
def discover(batch):
 from w43guard import install,LargeReduct
 install();limit()
 es=json.loads((D/f'input{batch}.json').read_text());sol=[];opened=[]
 for i,e in es:
  R=ad.tup(e['source'])
  try:hit=solve(R,e['q'])
  except (LargeReduct,RecursionError):hit=None
  if hit is None:
   try:hit=pick(R)
   except (LargeReduct,RecursionError):hit=None
   if hit and hit[0]=='two-lambda helper' and e['cell'][1]:hit=None
  if hit:
   k,pf=hit
   if i==16601 and k=='diagonal power':pf=(D/'power-replay.txt').read_text()
   sol.append((i,k,pf))
  else:opened.append(i)
 save(D/f'found{batch}.json',dict(sol=sol,open=opened,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
def batches(es):
 jobs=[]
 for off in range(0,len(es),110):
  if not (D/f'input{off}.json').exists():save(D/f'input{off}.json',list(enumerate(es[off:off+110],off)))
  if not (D/f'found{off}.json').exists():jobs.append((f'find{off}',[sys.executable,'-B','w44cert.py','one',str(off)],905000000,None))
 return jobs
def module(name,items,es):
 s=header+f'namespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 20000\nset_option maxHeartbeats 6000000\n'
 for i,k,pf in items:
  s+=f'def r{i} : Term := {ex.lean(ad.tup(es[i]["source"]))}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+pf.replace('RPLACE',f'r{i}').replace('(by decide)', '(by decide +kernel)')+f'#print axioms reject{i}\n'
 (proofs/f'{name}.lean').write_text(s+f'end Blc.HandlerLet.{name}\n')
def render():
 es=json.loads((P/'probe44.json').read_text())['exceptions'];sol=[];opened=[]
 for off in range(0,len(es),110):
  r=json.loads((D/f'found{off}.json').read_text());sol+=r['sol'];opened+=r['open']
 assert sorted([i for i,k,pf in sol]+opened)==list(range(len(es)))
 mods=[];chunk=[];size=0
 for item in sol:
  if chunk and (len(chunk)>=40 or size+len(item[2])>60000):
   name=f'Slice44Main{len(mods):04d}';module(name,chunk,es);mods.append(name);chunk=[];size=0
  chunk.append(item);size+=len(item[2])
 if chunk:
  name=f'Slice44Main{len(mods):04d}';module(name,chunk,es);mods.append(name)
 save(D/'main.json',dict(modules=mods,by_index={i:k for i,k,p in sol},open=opened))
 print('rendered',len(mods),'modules; provisional open',len(opened),flush=True)
def leanjobs(names):
 lean=P.parents[2]/'lean';tool=Path.home()/'.elan/toolchains'/((lean/'lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/lean'
 jobs=[]
 for name in names:
  f=proofs/(name+'.lean');dig=hashlib.sha256(f.read_bytes()).hexdigest();receipt=proofs/(name+'.resources.json')
  if receipt.exists() and json.loads(receipt.read_text())['source_sha256']==dig:continue
  def checked(key,event):
   path=proofs/(key+'.lean');log=(D/(key+'.log')).read_text()
   assert 'sorry' not in log and 'error:' not in log
   lines=re.findall(r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",log)
   assert len(lines)==path.read_text().count('#print axioms') and all(set(filter(None,ax.split(', ')))<={'propext','Quot.sound','Classical.choice'} for th,ax in lines)
   save(proofs/(key+'.resources.json'),dict(**event,source_sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
  jobs.append((name,[str(tool),'--root='+str(proofs),'-j1','-M680',str(f)],680000000,checked))
 return jobs
if __name__=='__main__':
 mode=sys.argv[1]
 if mode=='one':discover(int(sys.argv[2]))
 elif mode=='discover':
  es=collect();supervise(batches(es),'discovery');render()
 elif mode=='compile':
  supervise(leanjobs(json.loads((D/'main.json').read_text())['modules']),'lean')
