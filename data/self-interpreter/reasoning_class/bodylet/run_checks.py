import sys,os,time,json,subprocess
from pathlib import Path
H=Path(__file__).resolve().parent
start=time.monotonic();runs=[]
for m in (4,3,2):
 p=subprocess.run([sys.executable,str(H/'minimum.py'),str(m)],stdout=(H/f'minimum{m}.log').open('w'),env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
 if p.returncode:raise SystemExit(p.returncode)
 info=json.loads((H/f'minimum{m}.json').read_text())
 for cell,n in info['cells'].items():
  if n>100000:
   runs.append(dict(cell=cell,sources=n,status='over-cap'));continue
  logfile=H/('check-'+cell.replace(':','-')+'.log')
  p=subprocess.run([sys.executable,str(H/'check.py'),cell],stdout=logfile.open('w'),stderr=subprocess.STDOUT,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
  runs.append(dict(cell=cell,sources=n,status='finished' if p.returncode==0 else 'failed',code=p.returncode))
  (H/'runs.json').write_text(json.dumps(runs,indent=2)+'\n')
  print(cell,n,'exit',p.returncode,flush=True)
  if p.returncode:raise SystemExit(p.returncode)
print('done',time.monotonic()-start,flush=True)
