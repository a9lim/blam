import subprocess,sys,json
from pathlib import Path
from flow_probe import inputs
H=Path(__file__).resolve().parent;out=[]
for name,s in inputs():
    attempts=[]
    for k in [0,2,4,6,8,12]:
        p=subprocess.run([sys.executable,str(H/'probe_reg.py'),name,str(k)],capture_output=True,text=True,timeout=15)
        r=json.loads(p.stdout) if p.returncode==0 else {'ok':False,'reason':p.stderr[-1000:]}
        attempts.append(r)
        if r['ok']:break
    out.append(dict(id=name,source=s,attempts=attempts));print(name,r,flush=True)
(H/'batch_reg.json').write_text(json.dumps(out,indent=2))
