from pathlib import Path
import os,subprocess,time,signal,json,re,hashlib,sys
H=Path(__file__).resolve().parent;LEAN=H.parents[2]/'lean';name=sys.argv[1]
env=os.environ.copy();env['LEAN_PATH']=':'.join(map(str,[H,H.parent/'rootlow',H.parent/'rootnl',H.parent/'simplify',H.parent/'rootcert2',LEAN/'.lake/build/lib/lean']))
start=time.monotonic()
with (H/f'{name}.log').open('w') as out,(H/f'{name}.time').open('w') as err:
 p=subprocess.Popen(['/usr/bin/time','-l','lean','--root=..','-j2','-M1800','-o',str(H/f'{name}.olean'),str(H/f'{name}.lean')],cwd=LEAN,env=env,stdout=out,stderr=err,start_new_session=True)
 try:code=p.wait(timeout=110)
 except subprocess.TimeoutExpired:os.killpg(p.pid,signal.SIGKILL);p.wait();raise
elapsed=time.monotonic()-start;log=(H/f'{name}.log').read_text();tim=(H/f'{name}.time').read_text();rss=int(re.search(r'(\d+)\s+maximum resident set size',tim).group(1))
rec=dict(module=name,code=code,seconds=elapsed,rss_bytes=rss,sha256=hashlib.sha256((H/f'{name}.lean').read_bytes()).hexdigest())
(H/f'{name}.resources.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec));print(log[-6000:]);assert code==0 and rss<=2_000_000_000 and 'sorryAx' not in log and 'declaration uses `sorry`' not in log
