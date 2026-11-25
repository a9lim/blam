"""One final kernel pass, pinned toolchain, timed and memory bounded."""
from pathlib import Path
import os,subprocess,time,signal,json,re,hashlib
H=Path(__file__).resolve().parent;ROOT=H.parents[2];LEAN=ROOT/'lean'
mods=['Prices','Moves','PrefixExchange','Boundary','Exceptions0','Exceptions1']
records=[]
for name in mods:
 env=os.environ.copy();env['LEAN_PATH']=':'.join(map(str,[H,H.parent/'rootlow',H.parent/'rootnl',LEAN/'.lake/build/lib/lean']))
 cmd=['/usr/bin/time','-l','lean','--root=..','-j2','-M1800','-o',str(H/f'{name}.olean'),str(H/f'{name}.lean')]
 start=time.monotonic()
 with (H/f'{name}.log').open('w') as out,(H/f'{name}.time').open('w') as err:
  p=subprocess.Popen(cmd,cwd=LEAN,env=env,stdout=out,stderr=err,start_new_session=True)
  try:code=p.wait(timeout=110)
  except subprocess.TimeoutExpired:
   os.killpg(p.pid,signal.SIGKILL);p.wait();raise
 elapsed=time.monotonic()-start
 log=(H/f'{name}.log').read_text();tim=(H/f'{name}.time').read_text()
 rss=int(re.search(r'(\d+)\s+maximum resident set size',tim).group(1))
 assert code==0 and rss<=2_000_000_000 and elapsed<120,(name,code,rss,log)
 assert 'sorryAx' not in log and 'error:' not in log
 records.append(dict(module=name,seconds=elapsed,rss_bytes=rss,threads=2,sha256=hashlib.sha256((H/f'{name}.lean').read_bytes()).hexdigest(),axioms=sorted(set(re.findall(r'depends on axioms: (.+)',log)))))
(H/'verification.json').write_text(json.dumps(records,indent=2)+'\n')
print(json.dumps(records,indent=2))
