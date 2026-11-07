import os, subprocess, json, concurrent.futures, time
from pathlib import Path
root=Path('/Users/a9lim/Work/blam'); base=root/'tmp/round4/single'; out=base/'review'
env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
jobs=[('X_lam',r'\s. (\u. _) j'),('X_s',r'\s. (s _) j'),('X_redex',r'\s. ((\y. _) _) j'),('X_app',r'\s. ((_ _) _) j'),('LRR',r'\s. ((_ (_ j)) _)'),('RLR',r'\s. _ ((j _) _)')]
# Correct path generator: all paths must terminate in R.
def term(p):
 if not p:return 'j'
 return '('+term(p[1:])+' _)' if p[0]=='L' else '(_ '+term(p[1:])+')'
jobs=jobs[:4]+[(p,r'\s. '+term(p)) for p in ['LRR','RLR','RRR']]
def run(job):
 name,pre=job;t=time.monotonic();dest=out/(name+'.json')
 p=subprocess.run(['python3',str(base/'narrow_all.py'),'37',pre,str(dest)],env=env,capture_output=True,text=True,timeout=120)
 log=p.stdout+p.stderr
 if p.returncode:raise RuntimeError(log)
 d=json.loads(dest.read_text());log+='\n'+json.dumps(d)+'\n'
 if not name.startswith('X_'):
  p=subprocess.run(['python3',str(base/'beta1.py'),str(dest)],env=env,capture_output=True,text=True,timeout=120)
  log+=p.stdout+p.stderr
 (out/(name+'.log')).write_text(log)
 print(name,pre, 'states', d['states'], 'solutions',len(d['sol']),'fuel',len(d['fuel']),f'{time.monotonic()-t:.2f}s',flush=True)
 if name.startswith('X_'):print(d['sol'],d['fuel'],flush=True)
 else:print(p.stdout,flush=True)
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as ex:
 for r in ex.map(run,jobs):pass
