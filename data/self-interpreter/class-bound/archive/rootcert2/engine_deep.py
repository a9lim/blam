import sys,os,json,time,subprocess,signal
from pathlib import Path
H=Path(__file__).resolve().parent
rs=json.loads((H/'sources.json').read_text());ids=[474,492,493,506,507];(H/'deep.blc').write_text('\n'.join(rs[i]['zero_bits'] for i in ids)+'\n')
cmd=[str(H/'blam-frozen'),'adjudicate','--file',str(H/'deep.blc'),'--threads','2','--budget1','64','--budget2','65536','--bb-cap','500000','--rescue','100000','--work-mult','2','--probe-fuel','65536','--no-oracle']
start=time.monotonic();peak=0;reason=None
with (H/'deep.out').open('w') as out,(H/'deep.err').open('w') as err:
 p=subprocess.Popen(cmd,env=dict(os.environ,RAYON_NUM_THREADS='2'),stdout=out,stderr=err,start_new_session=True)
 while p.poll() is None:
  if time.monotonic()-start>110:reason='time';break
  try:peak=max(peak,int(subprocess.check_output(['ps','-o','rss=','-p',str(p.pid)],text=True).strip() or 0)*1024)
  except subprocess.CalledProcessError:pass
  if peak>900_000_000:reason='memory';break
  time.sleep(.05)
 if reason:os.killpg(p.pid,signal.SIGKILL)
 code=p.wait()
rec=dict(ids=ids,command=cmd,code=code,seconds=time.monotonic()-start,peak_rss_bytes=peak,limit=reason,threads=2)
(H/'deep.resources.json').write_text(json.dumps(rec,indent=2)+'\n');print(rec);print((H/'deep.out').read_text());print((H/'deep.err').read_text())
