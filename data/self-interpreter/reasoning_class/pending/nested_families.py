"""Symbolic-family replay discovery for named normalizer exceptions only."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import families as f
import json,time,resource,signal,threading,os,collections
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def main(name):
 first=json.loads((H/name).read_text());es=json.loads((H/first['source_file']).read_text())['exceptions'];rows=[];opened=[]
 for i in first['opened']:
  ex=es[i];assert ex['probe']=='zero'
  try:c=f.discover(f.ad.tup(ex['source']))
  except f.Cap:c=None
  if c:rows.append(dict(index=i,**c))
  else:opened.append(i)
 rec=dict(source_file=first['source_file'],certificates=rows,opened=opened,states=f.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/(name.replace('cert_','family_') if name.startswith('cert_') else 'family_'+name)).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('certificates','opened')})+' '+str(collections.Counter(c['kind'] for c in rows))+' open='+str(len(opened)))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
