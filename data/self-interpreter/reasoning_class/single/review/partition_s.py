import os, subprocess, json, concurrent.futures, time, itertools
from pathlib import Path
root=Path('/Users/a9lim/Work/blam');base=root/'tmp/round4/single';out=base/'review'
env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
def term(p):
 if not p:return 'j'
 return '('+term(p[1:])+' _)' if p[0]=='L' else '(_ '+term(p[1:])+')'
def run(p):
 dest=out/('P_'+p+'.json');pre=r'\s. '+term(p)
 r=subprocess.run(['python3',str(base/'narrow_all.py'),'37',pre,str(dest)],env=env,capture_output=True,text=True,timeout=120)
 if r.returncode:raise RuntimeError(p+r.stderr)
 d=json.loads(dest.read_text())
 r2=subprocess.run(['python3',str(base/'beta1.py'),str(dest)],env=env,capture_output=True,text=True,timeout=120)
 if r2.returncode:raise RuntimeError(p+r2.stderr)
 (out/('P_'+p+'.log')).write_text(r.stdout+r2.stdout+r2.stderr)
 toks=r2.stdout.split();ni=int(toks[toks.index('insertions')+1]);hits=int(toks[toks.index('hits')+1]);caps=int(toks[toks.index('caps')+1]);ucaps=int(toks[toks.index('core')+2])
 assert not(hits or caps or ucaps),(p,r2.stdout)
 return p,d['states'],len(d['sol']),ni,d['fuel']
t0=time.monotonic();rows=[]
for n in range(2,8):
 paths=[''.join(x)+'R' for x in itertools.product('LR',repeat=n-1)]
 with concurrent.futures.ThreadPoolExecutor(max_workers=2) as ex:
  batch=list(ex.map(run,paths))
 rows+=batch
 print('length',n,'paths',len(paths),'states',sum(x[1] for x in batch),'templates',sum(x[2] for x in batch),'insertions',sum(x[3] for x in batch),'fuel',sum(len(x[4]) for x in batch),f'{time.monotonic()-t0:.1f}s',flush=True)
 for p,_,_,_,fuel in batch:
  if fuel:print('FUEL',p,fuel,flush=True)
(out/'partition_results.json').write_text(json.dumps(rows,indent=2))
