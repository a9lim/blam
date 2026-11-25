"""Replay all final kernel certificates under per-file caps, audit, remove build outputs."""
import sys,os,subprocess,json,time
from pathlib import Path
H=Path(__file__).resolve().parent
start=time.monotonic();mods=json.loads((H/'modules.json').read_text())
for n,m in enumerate(mods,1):
 p=subprocess.run([sys.executable,str(H/'run_limited.py'),m+'.lean'],capture_output=True,text=True,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'))
 if p.returncode:
  print(p.stdout,p.stderr,(H/(m+'.log')).read_text());raise SystemExit(1)
 if n%25==0:print('checked',n,'/',len(mods),flush=True)
subprocess.run([sys.executable,str(H/'controls.py')],check=True)
subprocess.run([sys.executable,str(H/'validate.py')],check=True)
for suffix in ['.olean','.ilean']:
 for p in H.glob('*'+suffix):p.unlink()
print('all checks passed; build-only files removed; wall seconds',time.monotonic()-start)
