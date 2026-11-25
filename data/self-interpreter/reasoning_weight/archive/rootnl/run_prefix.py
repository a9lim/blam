import sys,subprocess,json,os
from pathlib import Path
H=Path(__file__).resolve().parent
for f in sorted(H.glob('family_4_0_*.json')):
 r=json.loads(f.read_text())
 if not r['opened']:continue
 p=subprocess.run([sys.executable,str(H/'prefix.py'),f.name],env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'},capture_output=True,text=True,timeout=118)
 print(p.stdout.strip(),flush=True)
 if p.returncode:raise RuntimeError((f.name,p.returncode,p.stderr))
