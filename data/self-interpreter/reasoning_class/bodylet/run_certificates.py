import sys,os,json,subprocess,time
from pathlib import Path
H=Path(__file__).resolve().parent
mods=sorted({e['module'] for e in json.loads((H/'manifest_simple.json').read_text())},key=lambda x:int(x[10:]))
for mod in mods:
 p=subprocess.run([sys.executable,str(H/'run_limited.py'),mod+'.lean'],env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
 if p.returncode:raise SystemExit(p.returncode)
