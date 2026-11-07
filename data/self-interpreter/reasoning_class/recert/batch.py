import sys,json,time,subprocess,os,concurrent.futures
from pathlib import Path
H=Path(__file__).resolve().parent
rows=json.loads((H/'inventory.json').read_text());action=sys.argv[1];lo=int(sys.argv[2]);hi=int(sys.argv[3])
def run(row):
 label=row['label'];out=H/(label+'.'+action+'.json')
 if out.exists():return
 if action=='legacy' and row['tag']!='rootnarrow candidate':return
 if action.startswith('discover'):
  if any(json.loads(p.read_text()).get('ok') for p in H.glob(label+'.discover_*.json')):return
 p=subprocess.Popen([sys.executable,'-B',str(H/'one.py'),label,action],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,start_new_session=True)
 start=time.monotonic();reason=None
 while p.poll() is None:
  try:rss=int(subprocess.check_output(['ps','-o','rss=','-p',str(p.pid)],text=True).strip() or 0)*1024
  except subprocess.CalledProcessError:rss=0
  if rss>900000000:reason='RSS';break
  if time.monotonic()-start>110:reason='time';break
  time.sleep(.05)
 if reason:os.killpg(p.pid,9)
 stdout=p.communicate()[0]
 if p.returncode:print(label,'ERROR',reason,stdout[-500:],flush=True)
 elif action!='legacy':print(label,json.loads(out.read_text()).get('ok'),flush=True)
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:list(pool.map(run,rows[lo:hi]))
