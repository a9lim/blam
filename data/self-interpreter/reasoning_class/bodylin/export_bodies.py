"""Eleven finite body replacements; no normalization of a whole reader."""
import sys
sys.dont_write_bytecode=True
import json,time,signal,resource,threading
from pathlib import Path
from collections import Counter
import minimum as ct
import check as ck
from export import sources,lean
H=Path(__file__).resolve().parent;d=ck.d
signal.alarm(110);threading.Thread(target=ct.watchdog,daemon=True).start()
counts=Counter();N=0
for loc in ('A','B','C'):
 for R,A,B,Cs,features in sources((1,'redex','A',loc)):
  counts[B]+=1;N+=1;assert N<=100000
assert N==569 and len(counts)==11
text=['import BodyReplacement\nnamespace Blc.BodyLinBodies\n'
      'open Term SelfintClass SelfintSourceCost SelfintFlatMinimum SelfintHelperPair BodyLinReplacement\n'
      'set_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n']
manifest=[]
for i,(B,n) in enumerate(counts.items()):
 U=d.normalize(B,100)
 assert ck.price(U)<ck.price(B)
 text.append(f'\ndef b{i} : Term := {lean(B)}\ndef u{i} : Term := {lean(U)}\n'
             f'theorem reduce{i} : Betas b{i} u{i} := normalizeUntil_sound\n'
             f'  (by decide : normalizeUntil 32 b{i} = some u{i})\n'
             f'theorem exclude{i} (a : Term) (as : List Term) :\n'
             f'  ¬ MinimumReader (bodyReader b{i} a as) :=\n'
             f'  cheaper_body_not_minimum b{i} u{i} a as reduce{i} (by decide) (by decide) (by decide)\n'
             f'#print axioms exclude{i}\n')
 manifest.append(dict(index=i,body=d.show(B,['x','s','c']),replacement=d.show(U,['x','s','c']),
                      body_cost=ck.price(B),replacement_cost=ck.price(U),sources=n,
                      theorem=f'Blc.BodyLinBodies.exclude{i}'))
text.append('\nend Blc.BodyLinBodies\n')
(H/'Bodies.lean').write_text(''.join(text))
(H/'body-manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps(dict(bodies=len(manifest),sources=N,seconds=time.monotonic()-ct.START,
                     rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)))
