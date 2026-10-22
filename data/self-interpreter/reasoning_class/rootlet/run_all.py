import subprocess,json,sys,time
from pathlib import Path
H=Path(__file__).resolve().parent
modules=json.loads((H/'modules.json').read_text());records=[];start=time.monotonic()
for m in modules:
 p=H/f'{m}.resources.json'
 out=subprocess.run([sys.executable,str(H/'run_limited.py'),m+'.lean'],capture_output=True,text=True)
 print(out.stdout.strip(),flush=True)
 if out.returncode:
  print('FAILED',m,out.stderr,flush=True);sys.exit(out.returncode)
 rec=json.loads(p.read_text())
 records.append(rec)
 (H/'lean_verification.json').write_text(json.dumps(dict(modules=records,elapsed=time.monotonic()-start),indent=2)+'\n')
print('ALL',len(records),'seconds',time.monotonic()-start,flush=True)
