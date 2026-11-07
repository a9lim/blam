import subprocess,sys,json,time
from pathlib import Path
from flow_probe import inputs
H=Path(__file__).resolve().parent
out=[]
for name,s in inputs():
    attempts=[]
    for k,w in [(0,4),(2,4),(4,4),(6,4),(8,4)]:
        p=subprocess.run([sys.executable,str(H/'probe_one.py'),name,str(k),str(w)],capture_output=True,text=True,timeout=15)
        if p.returncode: r={'ok':False,'reason':p.stderr[-1000:]}
        else:r=json.loads(p.stdout)
        attempts.append(r)
        if r['ok']:break
    out.append(dict(id=name,source=s,attempts=attempts));print(name,r,flush=True)
(H/'batch_probe.json').write_text(json.dumps(out,indent=2))
