import subprocess,sys,json
from pathlib import Path
H=Path(__file__).resolve().parent;out=[]
for name in ['h2_2.final_left:'+str(i) for i in [0,2,3,4,9]]+['h2_5.final_left:1']:
    attempts=[]
    for mode in ['arg','both','lambda']:
        for k in [1,2,3,4,6]:
            p=subprocess.run([sys.executable,str(H/'probe_reg.py'),name,str(k),mode],capture_output=True,text=True,timeout=15)
            r=json.loads(p.stdout) if p.returncode==0 else {'ok':False,'reason':p.stderr[-500:]}
            r['mode']=mode;attempts.append(r)
            if r['ok']:break
        if r['ok']:break
    out.append(dict(id=name,attempts=attempts));print(name,r,flush=True)
(H/'refine.json').write_text(json.dumps(out,indent=2))
