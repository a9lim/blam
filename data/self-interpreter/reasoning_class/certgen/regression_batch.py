import subprocess,json,sys,time
from pathlib import Path
H=Path(__file__).resolve().parent;out=[]
for fn in sorted(H.glob('legacy_*.json')):
 for row in json.loads(fn.read_text()):
  if not row['legacy']:continue
  p=subprocess.run([sys.executable,str(H/'regression_one.py')],input=json.dumps(row),capture_output=True,text=True,timeout=110)
  if p.returncode:raise RuntimeError(p.stderr)
  r=json.loads(p.stdout);out.append(r)
  if not r['new_ok']:print('UNRESOLVED',r['id'],r['legacy'],r['attempts'][-1],flush=True)
(H/'REGRESSION.json').write_text(json.dumps(out,indent=2))
print('legacy accepted',len(out),'new accepted',sum(r['new_ok'] for r in out),'by rule', {k:sum(r['legacy']==[k] for r in out) for k in ['W5','SR','SFprime','SF2']})
