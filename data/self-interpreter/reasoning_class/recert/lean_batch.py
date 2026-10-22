import subprocess,sys
from pathlib import Path
H=Path(__file__).resolve().parent
for label in [f'A{i:03d}' for i in range(12)]+['A029','A030']:
 p=subprocess.run([sys.executable,'-B',str(H/'lean_limited.py'),label+'.lean'],text=True,capture_output=True,timeout=115)
 print(p.stdout.strip(),flush=True)
 if p.returncode:print('FAILED',label,p.stderr,flush=True)
