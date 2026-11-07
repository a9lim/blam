import sys,subprocess,json,hashlib
from pathlib import Path
H=Path(__file__).resolve().parent
modules=['Bridge','PrefixPrice','LocalPrices','LinearPrices','Certificates','LinearNoHole0','LinearNoHole1','LinearNoHole2','LinearExceptions']
records=[]
for m in modules:
 subprocess.run([sys.executable,str(H/'run_limited.py'),m+'.lean'],check=True)
 r=json.loads((H/(m+'.resources.json')).read_text())
 assert r['sha256']==hashlib.sha256((H/(m+'.lean')).read_bytes()).hexdigest()
 log=(H/(m+'.log')).read_text()
 assert 'error:' not in log and 'error(' not in log and 'sorryAx' not in log
 records.append(r)
(H/'verification.json').write_text(json.dumps(records,indent=2)+'\n')
