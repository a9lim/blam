"""Tight boundary source grammar, k=5 initially; count before whole-source checks.

Adapted from rootnf/k5_live.py. Components are constructed only after their
independent grammar counts total <100k. Whole roots are counted by feature
products before any whole source is constructed. Local source-redex filters
use global full-law lexicographic minimality, never finite-probe minimality.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnf'))
sys.path.insert(0,str(H.parent/'jn'))
import k5_live as ct
import dbn as d
import functools,collections,json,time,signal,resource
START=time.monotonic()
sys.setrecursionlimit(3000)

@functools.lru_cache(None)
def gen(s):
 e,c,j,z,o,t,T=s;dep=len(e)
 if not ct.count(s):return ()
 out=[]
 if z+o+t==0 and ct.leaves(s)==1:
  if c==1 and T==dep:out.append(d.V(dep))
  if j==1 and dep==0 and T==0:out.append(d.Kc('j'))
  if c+j==0 and sum(e)==1 and T==e.index(1):out.append(d.V(e.index(1)))
 for r,num in enumerate((z,o,t)):
  if num:
   sub=[z,o,t];sub[r]-=1
   out.extend(d.L(b) for b in gen(((r,)+e,c,j,*sub,T)))
 for a,b in ct.parts(s):
  if ct.count(a) and ct.count(b):out.extend(d.A(x,y) for x in gen(a) for y in gen(b))
 assert len(out)==ct.count(s),(s,len(out),ct.count(s))
 return tuple(out)

@functools.lru_cache(None)
def fgen(s):
 if not ct.leaves(s):return ((),) if s==((),0,0,0,0,0,0) else ()
 out=[]
 for a,b in ct.fparts(s):
  if ct.count(a) and ct.forest(b):out.extend((x,)+ys for x in gen(a) for ys in fgen(b))
 assert len(out)==ct.forest(s)
 return tuple(out)

def weight(t,dep=0):
 if t[0]=='k':return 4*dep
 if t[0]=='v':return t[1]+2
 if t[0]=='l':return 2+weight(t[1],dep+1)
 return 2+weight(t[1],dep)+weight(t[2],dep)
def occ(t,i):
 if t[0]=='v':return int(t[1]==i)
 if t[0]=='k':return 0
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)
def lams(t):
 if t[0]=='l':return 1+lams(t[1])
 if t[0]=='a':return lams(t[1])+lams(t[2])
 return 0
def od(t,i=0,dep=0):
 if t[0]=='v':return dep*int(t[1]==i+dep)
 if t[0]=='k':return 0
 if t[0]=='l':return od(t[1],i,dep+1)
 return od(t[1],i,dep)+od(t[2],i,dep)
def free(t,dep=0):
 if t[0]=='v':return int(t[1]>=dep)
 if t[0]=='k':return 4
 if t[0]=='l':return free(t[1],dep+1)
 return free(t[1],dep)+free(t[2],dep)
def hasj(t):return 'j' in d.consts_of(t)
def admissible_redex(b,a,dep):
 m=occ(b,0)
 if m==0:return False
 if m>1 and hasj(a):return True # copying j needs a separate hoist; retain
 delta=weight(d.beta(b,a),dep)-weight(d.A(d.L(b),a),dep)
 formula=(m-1)*weight(a,dep)+(free(a)-1)*od(b)-4-2*m-(free(b)-m)
 assert delta==formula,(delta,formula,b,a,dep)
 if m==1:return delta>0
 return delta>0 or delta==0 and lams(a)>0
@functools.lru_cache(None)
def admissible(t,dep):
 if t[0] in ('v','k'):return True
 if t[0]=='l':return admissible(t[1],dep+1)
 if not admissible(t[1],dep) or not admissible(t[2],dep):return False
 return t[1][0]!='l' or admissible_redex(t[1][1],t[2],dep)
def head(t):
 while t[0]=='a':t=t[1]
 return t

def pools():
 roots=list(ct.roots())
 bs={r[2] for r in roots};aa={r[3] for r in roots};cc={r[4] for r in roots}
 raw=dict(B=sum(ct.count(s) for s in bs),A=sum(ct.count(s) for s in aa),Cs=sum(ct.forest(s) for s in cc))
 assert all(v<=100000 for v in raw.values())
 B={s:tuple(t for t in gen(s) if admissible(t,1) and head(t)!=d.V(1)) for s in bs}
 A={s:tuple(t for t in gen(s) if admissible(t,0)) for s in aa}
 C={s:tuple(ts for ts in fgen(s) if all(admissible(t,0) for t in ts)) for s in cc}
 return roots,B,A,C,raw

def blocks():
 roots,B,A,C,raw=pools()
 for z,T,b,a,c,n in roots:
  # Root charge uses only the exact component features, not full roots.
  BG=collections.defaultdict(list);AG=collections.defaultdict(list)
  for t in B[b]:BG[(od(t),free(t)-5)].append(t)
  for t in A[a]:AG[(weight(t),free(t),lams(t),hasj(t))].append(t)
  for (M,Tb),bb in BG.items():
   for (wa,Fa,La,ja),aa in AG.items():
    delta=4*wa+(Fa-1)*M-14-Tb
    if not ja and (delta<0 or delta==0 and La==0):continue
    if not C[c]:continue
    yield (3+z,T,b,a,c,M,Tb,wa,Fa,La,ja),bb,aa,C[c]

def semantic_blocks():
 for key,bb,aa,cc in blocks():
  # A rigid-headed value stays rigid when installed at the head x.
  b_head=tuple(b for b in bb if head(b)==d.V(0))
  b_redex=tuple(b for b in bb if head(b)[0]=='l')
  a_live=tuple(a for a in aa if head(a)[0]=='l')
  if b_head and a_live:yield 'x_head',key,b_head,a_live,cc
  if b_redex:yield 'nested_head',key,b_redex,aa,cc

def count():
 roots,B,A,C,raw=pools()
 rows=collections.Counter();shapes=collections.Counter()
 for key,bb,aa,cc in blocks():
  L,T=key[:2];n=len(bb)*len(aa)*len(cc)
  rows[f'L{L}_tax{T}']+=n
  for b in bb:
   shapes[head(b)[0]]+=len(aa)*len(cc)
 semantic=collections.Counter()
 for branch,key,bb,aa,cc in semantic_blocks():semantic[branch]+=len(bb)*len(aa)*len(cc)
 rec=dict(semantic_rows=dict(semantic),semantic_total=sum(semantic.values()),raw_components=raw,admissible_components=dict(B=sum(map(len,B.values())),A=sum(map(len,A.values())),Cs=sum(map(len,C.values()))),rows=dict(rows),total=sum(rows.values()),body_head=dict(shapes),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'boundary_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))

if __name__=='__main__':
 signal.alarm(110);count()
