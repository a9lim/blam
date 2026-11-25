import subprocess,sys,json
from pathlib import Path
H=Path(__file__).resolve().parent;out=[]
for name in ['h2_2.final_left:'+str(i) for i in [0,2,3,9]]:
    attempts=[];ok=False
    for n in [1,2,3,5,8]:
        for mode,k in [('site',1),('site',2),('arg',1),('lambda',2)]:
            p=subprocess.run([sys.executable,str(H/'probe_prefix.py'),name,str(n),str(k),mode],capture_output=True,text=True,timeout=15)
            r=json.loads(p.stdout) if p.returncode==0 else {'ok':False,'reason':p.stderr[-500:]}
            attempts.append(r)
            if r['ok']:break
        if r['ok']:break
    out.append(dict(id=name,attempts=attempts));print(name,r,flush=True)
(H/'refine_prefix.json').write_text(json.dumps(out,indent=2))
