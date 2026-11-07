#!/usr/bin/env python3
import json, os, pathlib, resource, subprocess, sys, time
p=pathlib.Path(sys.argv[1]).resolve();lane=pathlib.Path(__file__).resolve().parent
assert p.parent==lane
def limit():resource.setrlimit(resource.RLIMIT_CPU,(110,110))
t=time.monotonic();peak=0;status='finished'
with p.with_suffix('.log').open('w') as f:
 q=subprocess.Popen([sys.executable,str(p)],stdout=f,stderr=subprocess.STDOUT,preexec_fn=limit,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'))
 while q.poll() is None:
  r=subprocess.run(['ps','-o','rss=','-p',str(q.pid)],capture_output=True,text=True)
  if r.stdout.strip():peak=max(peak,int(r.stdout.strip())*1024)
  if time.monotonic()-t>115 or peak>950*1024*1024:
   status='wall-limit' if time.monotonic()-t>115 else 'rss-limit';q.kill();break
  time.sleep(.1)
 q.wait()
r=dict(file=p.name,returncode=q.returncode,status=status,wall_seconds=time.monotonic()-t,peak_rss_bytes=peak)
p.with_suffix('.resource.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r));print(p.with_suffix('.log').read_text())
