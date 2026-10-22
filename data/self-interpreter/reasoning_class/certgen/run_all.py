"""Replay saved Lean certificates, one bounded two-thread job at a time."""
import json,subprocess,sys,hashlib,time
from pathlib import Path
H=Path(__file__).resolve().parent;begin=time.monotonic();out=[]
for i,fn in enumerate(json.loads((H/'modules.json').read_text())):
 rp=H/(Path(fn).stem+'.resources.json');old=json.loads(rp.read_text()) if rp.exists() else {}
 sha=hashlib.sha256((H/fn).read_bytes()).hexdigest()
 reuse='--reuse' in sys.argv and old.get('core_sha256')==hashlib.sha256((H/'Regular.lean').read_bytes()).hexdigest() and old.get('code')==0 and old.get('sha256')==sha and (H/(Path(fn).stem+'.olean')).exists()
 if not reuse:
  p=subprocess.run([sys.executable,str(H/'run_limited.py'),fn],capture_output=True,text=True,timeout=115)
  if p.returncode:print(p.stdout,p.stderr);raise SystemExit('failed '+fn)
 rec=json.loads(rp.read_text());out.append(rec)
 if i%5==0:print(i,fn,round(rec['seconds'],3),flush=True)
(H/'LEAN_CHECKS.json').write_text(json.dumps(out,indent=2))
print('passed',len(out),'seconds',time.monotonic()-begin,'maxseconds',max(x['seconds'] for x in out),'maxrss',max(x['peak_rss_bytes'] for x in out),flush=True)
