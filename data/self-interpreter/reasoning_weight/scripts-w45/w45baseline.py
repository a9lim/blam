"""Check every proposed module even when Lean rejects a particular derivation.

Only an ordinary Lean elaboration error can enter repair. The supervising
watchdog owns every PID, and any other process status stops the stage.
"""
from w45cert import *
import inspect,w45run
def validate_main():
 base=json.loads((D/'main.json').read_text());jobs=leanjobs(base['modules']);fix={}
 def wrap(key,cb):
  def record(name,event):
   if event['code']==0:return cb(name,event)
   log=(D/(name+'.log')).read_text()
   assert 'error:' in log
   bad={int(x) for x in re.findall(r"reject(\d+)' depends on axioms: \[[^\]]*sorryAx",log)}
   assert bad,(key,log[-1000:])
   fix[key]=bad
  return record
 sc=vars(w45run).copy()
 exec(inspect.getsource(w45run.supervise).replace('if code:raise RuntimeError','if code not in (0,1):raise RuntimeError'),sc)
 sc['supervise']([(k,cmd,cap,wrap(k,cb)) for k,cmd,cap,cb in jobs],'lean')
 if not fix:return
 ids={i for vv in fix.values() for i in vv};save(D/'failed-baseline.json',{k:sorted(vv) for k,vv in fix.items()})
 # Move failed proposals into discovery's open list as well, for exact replay.
 for off in sorted({i//110*110 for i in ids}):
  p=D/f'found{off}.json';r=json.loads(p.read_text());b={i for i,k,s in r['sol'] if i in ids}
  r['sol']=[v for v in r['sol'] if v[0] not in b];r['open']=sorted(r['open']+list(b));save(p,r)
 for mod,bad in fix.items():
  p=proofs/(mod+'.lean');s=p.read_text()
  for i in bad:
   s,n=re.subn(rf'^def r{i} : Term := .*?^#print axioms reject{i}\n','',s,flags=re.M|re.S)
   assert n==1
   base['open'].append(i);del base['by_index'][str(i)]
  p.write_text(s)
 base['open'].sort();save(D/'main.json',base)
 supervise(leanjobs(list(fix)),'leanrepair')
if __name__=='__main__':validate_main()
