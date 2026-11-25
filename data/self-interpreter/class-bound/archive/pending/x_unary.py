"""Direct length-one witnesses for the 63 saved zero-normalizer exceptions."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la,audit as ad,dbn as d
from nested_families import watchdog,START
import json,time,resource,signal,threading,collections

def main():
 r=json.loads((H/'mixed_core_x.json').read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[]
 target=d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
 for i in r['opened']:
  R=ad.tup(es[i]['source']);c=la.cert(d.A(d.subst(R,0,d.Kc('c')),d.U(1)),target)
  if c and c['kind'] in ('loop','head','missing'):rows.append(dict(index=i,certificate=c,probe='1'))
  else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'unary_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('unary certs',len(rows),'open',len(opened))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
