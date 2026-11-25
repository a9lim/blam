from w45cert import *
import inspect,w45run
def check_modules(proposals,stage):
 xs=json.loads((D/'extras.json').read_text());mods=list(dict.fromkeys(n for k,n in proposals.values()))
 jobs=leanjobs(mods)
 scope=vars(w45run).copy();exec(inspect.getsource(w45run.supervise).replace('if code:raise RuntimeError','if code not in (0,1):raise RuntimeError'),scope)
 def result(cb):
  def call(key,e):
   if e['code']==0:cb(key,e)
   else:assert 'error:' in (D/(key+'.log')).read_text()
  return call
 scope['supervise']([(k,c,cap,result(cb)) for k,c,cap,cb in jobs],stage)
 for i,(k,n) in proposals.items():
  p=proofs/(n+'.resources.json')
  if p.exists() and json.loads(p.read_text())['source_sha256']==hashlib.sha256((proofs/(n+'.lean')).read_bytes()).hexdigest():xs[str(i)]=[k,n]
 save(D/'extras.json',xs)
if __name__=='__main__':
 import w45delay
 p=json.loads((D/'natplans.json').read_text())
 out={n.removeprefix('Slice45Nat'):('unbounded arity grades',n) for n in p['modules'] if n!='Slice45Nat18419'}
 out.update({str(i):('delayed rigid arguments','Slice45Delay') for i in (31218,31219)})
 for i,n in json.loads((D/'orbitplans.json').read_text()).items():out[i]=('orbit omitting one rigid variable',n)
 check_modules(out,'lastfamilies')
