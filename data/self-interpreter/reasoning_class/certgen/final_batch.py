import json,sys,subprocess
from pathlib import Path
from flow_probe import inputs
H=Path(__file__).resolve().parent
chosen={}
for fn in ['batch_reg.json','refine.json','refine_env.json']:
 for row in json.loads((H/fn).read_text()):
  for a in row['attempts']:
   if a.get('ok'):
    v=(a.get('mode','site'),a['k'],a['states'])
    if row['id'] not in chosen or v[2]<chosen[row['id']][2]:chosen[row['id']]=v
for a in json.loads((H/'compact_probe.json').read_text()):
 if a.get('ok'):
  v=(a['mode'],a['k'],a['states'])
  if a['id'] not in chosen or v[2]<chosen[a['id']][2]:chosen[a['id']]=v
out=[]
for i,(name,s) in enumerate(inputs()):
 mode,k,_=chosen.get(name,('site',2,0));label=f'Case{i:02d}'
 p=subprocess.run([sys.executable,str(H/'final_one.py'),name,mode,str(k),label],capture_output=True,text=True,timeout=110)
 if p.returncode:raise RuntimeError(p.stderr)
 r=json.loads(p.stdout);out.append(r)
 print(name,r['ok'],r.get('portable_states',r.get('reason')),flush=True)
(H/'MANIFEST.json').write_text(json.dumps(out,indent=2))
