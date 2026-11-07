#!/usr/bin/env python3
"""Verify only the explicit witnesses; enforce two minutes/1 GB per command."""
import json, os, signal, subprocess, sys, time
from pathlib import Path
sys.dont_write_bytecode = True
LANE=Path(__file__).resolve().parent
ROOT=LANE.parents[2]
env=dict(os.environ, PYTHONDONTWRITEBYTECODE='1',
         LEAN_PATH=str(ROOT/'lean/.lake/build/lib/lean'))
commands=[
 ('erasure', ['lean','-j2',str(LANE/'Erasure.lean')],ROOT/'lean'),
 ('witnesses',['lean','-j2',str(LANE/'Witnesses.lean')],ROOT/'lean'),
 ('probes',[sys.executable,str(LANE/'probes.py')],ROOT),
 ('trace',[sys.executable,str(LANE/'trace.py')],ROOT),
]
results=[]
for name,cmd,cwd in commands:
 start=time.monotonic(); peak=0; killed=None
 with (LANE/(name+'.log')).open('w') as f:
  p=subprocess.Popen(cmd,cwd=cwd,env=env,stdout=f,stderr=subprocess.STDOUT,start_new_session=True)
  while p.poll() is None:
   ps=subprocess.check_output(['ps','-axo','pid,pgid,rss'],text=True)
   rss=0
   for line in ps.splitlines()[1:]:
    fields=line.split()
    if len(fields)==3 and (int(fields[1])==p.pid or int(fields[0])==os.getpid()):
     rss += int(fields[2])*1024
   peak=max(peak,rss)
   if time.monotonic()-start>120: killed='time'
   if rss>1_000_000_000: killed='memory'
   if killed:
    os.killpg(p.pid,signal.SIGKILL); break
   time.sleep(.02)
  code=p.wait()
 row={'name':name,'exit':code,'seconds':round(time.monotonic()-start,3),
      'sampled_peak_bytes_including_driver':peak,'cap_kill':killed}
 results.append(row); print(json.dumps(row))
 if code or killed: raise SystemExit(1)
(LANE/'verification.json').write_text(json.dumps(results,indent=2)+'\n')
