import subprocess,sys,json
from pathlib import Path
H=Path(__file__).resolve().parent;fn=sys.argv[1];n=len(json.loads((H.parent/'rootnarrow/work'/fn).read_text())['cut'])
dest=H/('legacy_'+fn)
out=json.loads(dest.read_text()) if dest.exists() else []
for i in range(len(out),n):
 p=subprocess.run([sys.executable,str(H/'legacy_one.py'),fn,str(i)],capture_output=True,text=True,timeout=3)
 if p.returncode:raise RuntimeError(p.stderr)
 row=json.loads(p.stdout);out.append(row)
 dest.write_text(json.dumps(out,indent=2))
 if i%40==0:print(fn,i,'accepted',sum(bool(x['legacy']) for x in out),flush=True)
(H/('legacy_'+fn)).write_text(json.dumps(out,indent=2))
print(fn,'total',n,'accepted',sum(bool(x['legacy']) for x in out),flush=True)
