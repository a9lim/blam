import sys,os,json,subprocess
from pathlib import Path
H=Path(__file__).resolve().parent
k,d=map(int,sys.argv[1:3])
for row in json.loads((H/f'cells_{k}_{d}.json').read_text()):
 if row['status']!='probed':continue
 name=row['file'];p=H/name.replace('check_','cert_')
 if not p.exists():
  r=subprocess.run([sys.executable,str(H/'certify.py'),name],env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'},capture_output=True,text=True,timeout=118)
  print(r.stdout.strip(),flush=True)
  if r.returncode:raise RuntimeError((name,r.returncode,r.stderr))
