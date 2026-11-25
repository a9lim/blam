"""Small independent generator controls and final certificate accounting."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
from collections import Counter
import json,hashlib,re,time,resource
H=Path(__file__).resolve().parent
import count as c
import check as ch
D=ch.d
START=time.monotonic()

@lru_cache(None)
def raw(n,depth,nfree):
 out=[]
 if n<2:return ()
 for i in range(depth+nfree):
  if i+2==n:out.append(D.V(i))
 out += [D.L(b) for b in raw(n-2,depth+1,nfree)]
 for a in range(2,n-3):
  out += [D.A(f,x) for f in raw(a,depth,nfree) for x in raw(n-2-a,depth,nfree)]
 return tuple(out)

def free(t,depth=0):
 if t[0]=='v':return int(t[1]>=depth)
 if t[0]=='l':return free(t[1],depth+1)
 return free(t[1],depth)+free(t[2],depth)

def md(t,depth=0):
 if t[0]=='v':return (1,depth,0) if t[1]==depth else (0,0,int(t[1]>depth))
 if t[0]=='l':return md(t[1],depth+1)
 a=md(t[1],depth);b=md(t[2],depth);return tuple(x+y for x,y in zip(a,b))

checked=0
for nf in (3,4,5):
 for n in range(2,15):
  terms=raw(n,0,nf);checked+=len(terms)
  actual=Counter((free(t),ch.lams(t),int(ch.occ(t,nf-1)>0)) for t in terms)
  assert dict(actual)==c.A(n,0,nf)
  actualD=Counter((*md(t),int(ch.occ(t,nf-1)>0)) for t in terms if md(t)[0]<=5)
  assert dict(actualD)==c.D(n,0,nf)
assert checked<=100000

# The known162 reader and a literal nonlinear-handler expansion of it.
V=D.L(D.A(D.A(D.V(1),D.L(D.V(3))),D.A(D.A(D.V(1),D.V(1)),D.V(0))))
I=D.L(D.V(0));nonlinear=D.L(D.A(D.L(D.A(D.V(0),D.V(0))),D.L(D.V(1))))
controls=[]
for label,handler,w in [('known162',I,46),('nonlinear_identity_expansion',nonlinear,59)]:
 Y=D.A(D.A(D.A(D.V(0),handler),V),D.Kc('j'))
 assert ch.cost(Y)+6==w
 assert ch.nf(D.inst(Y,D.Z()),[1200])==D.A(D.Kc('r'),D.Kc('j'))
 for n in range(1,9):
  assert ch.nf(D.inst(Y,D.U(n)),[1200])==D.A(D.A(D.Kc('c'),D.U(n-1)),D.Kc('N'))
 controls.append(dict(name=label,weight=w,zero=True,unary_probes=8))

manifest=json.loads((H/'certificates_manifest.json').read_text());counts=Counter(x['kind'] for x in manifest)
summary=[];total=Counter()
for q in (1,2,3,4):
 r=json.loads((H/f'check{q}.json').read_text());rs=json.loads((H/f'Exceptions{q}.resources.json').read_text())
 assert rs['code']==0 and rs['seconds']<120 and rs['peak_rss_bytes']<1_000_000_000
 assert r['markings']<=100000 and r['seconds']<120 and r['rss']<1_000_000_000
 assert r['threads']<=2 and rs['threads']<=2 and not r['hits']
 assert len(r['exceptions'])==sum(x['q']==q for x in manifest)
 log=(H/f'Exceptions{q}.log').read_text()
 axioms=re.findall(r'depends on axioms: (.*)',log)
 assert len(axioms)==len(r['exceptions']) and set(axioms)=={'[propext, Quot.sound]'}
 wrong=Counter()
 for row in r['rows'].values():wrong.update(row['wrong_nf'])
 assert sum(wrong.values())+len(r['exceptions'])==r['unique']
 total.update(wrong)
 summary.append(dict(q=q,markings=r['markings'],unique=r['unique'],wrong_nf=dict(wrong),lean_exceptions=len(r['exceptions']),check_seconds=r['seconds'],check_rss=r['rss'],lean_seconds=rs['seconds'],lean_rss=rs['peak_rss_bytes']))
files=[p for p in H.iterdir() if p.suffix in ('.py','.lean','.json','.log') and p.name not in ('verification.json','audit.json')]
record=dict(status='all source cells and all normalizer exceptions resolved',small_independent_source_controls=checked,reader_controls=controls,rows=summary,exception_kinds=dict(counts),wrong_nf_totals=dict(total),seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,hashes={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)})
(H/'verification.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({k:v for k,v in record.items() if k not in ('hashes','rows')},indent=2))
