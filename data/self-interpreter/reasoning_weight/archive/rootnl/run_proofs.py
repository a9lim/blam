import sys,subprocess,json,time
from pathlib import Path
H=Path(__file__).resolve().parent
mods=json.loads((H/'modules.json').read_text());start=time.monotonic()
for i,m in enumerate(mods):
 p=subprocess.run([sys.executable,str(H/'run_limited.py'),m+'.lean'],capture_output=True,text=True,timeout=118)
 if p.returncode:
  print(p.stdout,p.stderr,flush=True);raise RuntimeError(m)
 if i%10==0 or i+1==len(mods):print(i+1,'/',len(mods),'seconds',round(time.monotonic()-start,2),flush=True)
