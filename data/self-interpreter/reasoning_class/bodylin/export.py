"""Export every final source, not merely exceptions, for kernel refutation."""
import sys
sys.dont_write_bytecode=True
import json,hashlib,time,signal,resource,threading
from pathlib import Path
H=Path(__file__).resolve().parent
import check as ck
import minimum as ct
d=ck.d

def lean(t,depth=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':
  assert t[1]=='j'
  return f'(.var {depth+1})'
 if t[0]=='l':return f'(.lam {lean(t[1],depth+1)})'
 return f'(.app {lean(t[1],depth)} {lean(t[2],depth)})'

def sources(cell):
 for _,(a,ka,b,kb,p,kp,ja),num in ct.blocks(1,cell):
  count=0
  for A in ck.gen(a,2,1,ka):
   for B in ck.gen(b,3,0,kb):
    for Cs in ck.pgen(p,0,kp):
     body=d.A(d.L(B),A)
     for C in Cs:body=d.A(body,C)
     R=d.L(body);count+=1
     yield R,A,B,Cs,(a,ka,b,kb,p,kp)
  assert count==num

if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=ct.watchdog,daemon=True).start()
 code=['import Blc.SelfintHelperPair\nnamespace Blc.BodyLinCases\n'
       'open Term SelfintClass SelfintHelperPair\n'
       'set_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n']
 manifest=[];summary={};seen=set()
 for loc in ('A','B','C'):
  cell=(1,'redex','A',loc);digest=hashlib.sha256();n=0
  old=json.loads((H/f'check-1-redex-A-{loc}.json').read_text())
  for R,A,B,Cs,features in sources(cell):
   assert R not in seen;seen.add(R);assert len(seen)<=100000
   i=len(manifest);payload=repr(R)+'\n';digest.update(payload.encode());n+=1
   code.append(f'\ndef r{i} : Term := {lean(R)}\n'
               f'theorem reject{i} : ¬ Reader r{i} := rejectsZero_sound (by decide)\n'
               f'#print axioms reject{i}\n')
   manifest.append(dict(cell=loc,index=n-1,source_sha256=hashlib.sha256(payload.encode()).hexdigest(),
                        weight=ck.price(R),theorem=f'Blc.BodyLinCases.reject{i}'))
  assert (n,digest.hexdigest())==(old['sources'],old['source_digest'])
  summary[loc]=dict(sources=n,source_digest=digest.hexdigest())
 code.append('\nend Blc.BodyLinCases\n')
 (H/'Cases.lean').write_text(''.join(code))
 (H/'manifest.json').write_text(json.dumps(dict(cells=summary,sources=manifest),indent=2)+'\n')
 print(json.dumps(dict(total=len(manifest),cells=summary,seconds=time.monotonic()-ct.START,
                       rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)))
