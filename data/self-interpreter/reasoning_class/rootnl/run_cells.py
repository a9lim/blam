"""Sequential launcher for distinct natural control-flow cells; no splitting."""
import sys,os,json,ast,subprocess,time
from pathlib import Path
H=Path(__file__).resolve().parent
k,d=map(int,sys.argv[1:3]);data=json.loads((H/f'count_{k}_{d}.json').read_text())
records=[]
for key,n in data['cells'].items():
 c=ast.literal_eval(key);name='_'.join(map(str,c));path=H/f'check_{k}_{d}_{name}.json'
 if n>100000:
  records.append(dict(cell=c,total=n,status='over-cap'));continue
 if not path.exists():
  p=subprocess.run([sys.executable,str(H/'check.py'),str(k),str(d),repr(c)],env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'},capture_output=True,text=True,timeout=118)
  if p.returncode:print(p.stdout,p.stderr,flush=True);raise RuntimeError((c,p.returncode))
  print(p.stdout.strip(),flush=True)
 r=json.loads(path.read_text());assert r['total']==n
 records.append(dict(cell=c,total=n,exceptions=len(r['exceptions']),hits=len(r['hits']),file=path.name,status='probed'))
(H/f'cells_{k}_{d}.json').write_text(json.dumps(records,indent=2)+'\n')
