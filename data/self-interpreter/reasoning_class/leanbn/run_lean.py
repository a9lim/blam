#!/usr/bin/env python3
"""Compile exactly one lane file with hard wall/RSS limits; preserve logs."""
import json, os, pathlib, signal, subprocess, sys, time, resource
lane=pathlib.Path(__file__).resolve().parent
path=pathlib.Path(sys.argv[1]).resolve()
assert path.parent == lane
log=path.with_suffix('.log')
env=dict(os.environ, LEAN_PATH='/Users/a9lim/Work/blam/lean/.lake/build/lib/lean')
def limits(): resource.setrlimit(resource.RLIMIT_CPU,(110,110))
t=time.monotonic(); peak=0; status='finished'
with log.open('w') as f:
    p=subprocess.Popen(['lean','-j2',str(path)],cwd='/Users/a9lim/Work/blam/lean',env=env,stdout=f,stderr=subprocess.STDOUT,preexec_fn=limits)
    while p.poll() is None:
        r=subprocess.run(['ps','-o','rss=','-p',str(p.pid)],capture_output=True,text=True)
        if r.stdout.strip(): peak=max(peak,int(r.stdout.strip())*1024)
        if time.monotonic()-t>115 or peak>1900*1024*1024:
            status='wall-limit' if time.monotonic()-t>115 else 'rss-limit'
            p.kill(); break
        time.sleep(.1)
    p.wait()
result=dict(file=path.name,returncode=p.returncode,status=status,wall_seconds=round(time.monotonic()-t,3),peak_rss_bytes=peak,command=['lean','-j2',str(path)])
path.with_suffix('.resource.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result)); print(log.read_text())
