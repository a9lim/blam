import os,sys,subprocess,json
from pathlib import Path
H=Path(__file__).resolve().parent
modules=['Certificates','Special','Grow','EtaPrice','Church','Recursor','Lark','Owl','Eta','Families0','Families1','Families2','ChurchCases','RecursorCases','LarkCases','OwlCases','MixedCases','EtaCases0','EtaCases1','LowerCases']
for name in modules:
 subprocess.run([sys.executable,str(H/'run_limited.py'),name+'.lean'],env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'),check=True)
 assert 'sorryAx' not in (H/(name+'.log')).read_text()
(H/'modules.json').write_text(json.dumps(modules)+'\n')
