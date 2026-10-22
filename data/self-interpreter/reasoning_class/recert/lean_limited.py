"""Run one Lean job with a deadline and RSS watchdog, without other writes."""
import os,sys,time,subprocess,json,resource,signal,hashlib
from pathlib import Path
H=Path(__file__).resolve().parent
name=sys.argv[1];start=time.monotonic();peak=0
with (H/(Path(name).stem+'.log')).open('w') as out:
 env=dict(os.environ);env['LEAN_PATH']=str(H)+':'+str(H.parent/'certgen')+':.lake/build/lib/lean'
 cmd=['lean','-j2','-o',str(H/(Path(name).stem+'.olean')),'-R',str(H),str(H/name)]
 p=subprocess.Popen(cmd,cwd=H.parents[2]/'lean',env=env,stdout=out,stderr=subprocess.STDOUT,start_new_session=True)
 reason=None
 while p.poll() is None:
  if time.monotonic()-start>110:reason='time';break
  try:
   s=subprocess.check_output(['ps','-o','rss=','-p',str(p.pid)],text=True).strip()
   peak=max(peak,int(s or 0)*1024)
  except subprocess.CalledProcessError:pass
  if peak>1_800_000_000:reason='memory';break
  time.sleep(.1)
 if reason:os.killpg(p.pid,signal.SIGKILL)
 code=p.wait()
rec=dict(core_sha256=hashlib.sha256((H.parent/'certgen/Regular.lean').read_bytes()).hexdigest(),file=name,code=code,seconds=time.monotonic()-start,peak_rss_bytes=peak,limit=reason,threads=2,sha256=hashlib.sha256((H/name).read_bytes()).hexdigest())
(H/(Path(name).stem+'.resources.json')).write_text(json.dumps(rec,indent=2)+'\n')
print(json.dumps(rec));sys.exit(code)
