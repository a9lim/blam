import sys,json,subprocess
from pathlib import Path
H=Path(__file__).resolve().parent
mods=['Extras','Special','Grow','Recursor','Lark','Church','Owl']+json.loads((H/'more_modules.json').read_text())
for m in mods:
 p=subprocess.run([sys.executable,str(H/'run_limited.py'),m+'.lean'],capture_output=True,text=True,timeout=118)
 print(p.stdout.strip(),flush=True)
 if p.returncode:raise RuntimeError((m,p.stderr))
