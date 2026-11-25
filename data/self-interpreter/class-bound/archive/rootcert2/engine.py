import os,time,json,subprocess,signal,sys
from pathlib import Path
H=Path(__file__).resolve().parent
name=sys.argv[1] if len(sys.argv)>1 else 'zero'
start=time.monotonic();peak=0;reason=None
cmd=[str(H/'blam-frozen'),'adjudicate','--file',str(H/(name+'.blc')),'--threads','2','--budget1','64','--budget2','4096','--bb-cap','100000','--rescue','10000','--work-mult','2','--no-oracle']
with (H/(name+'.out')).open('w') as out,(H/(name+'.err')).open('w') as err:
 p=subprocess.Popen(cmd,env=dict(os.environ,RAYON_NUM_THREADS='2'),stdout=out,stderr=err,start_new_session=True)
 while p.poll() is None:
  if time.monotonic()-start>110:reason='time';break
  try:peak=max(peak,int(subprocess.check_output(['ps','-o','rss=','-p',str(p.pid)],text=True).strip() or 0)*1024)
  except subprocess.CalledProcessError:pass
  if peak>900_000_000:reason='memory';break
  time.sleep(.05)
 if reason:os.killpg(p.pid,signal.SIGKILL)
 code=p.wait()
rec=dict(command=cmd,code=code,seconds=time.monotonic()-start,peak_rss_bytes=peak,limit=reason,threads=2)
(H/('engine.resources.json' if name=='zero' else name+'.engine.resources.json')).write_text(json.dumps(rec,indent=2)+'\n');print(rec)
print((H/(name+'.err')).read_text()[-2000:])
