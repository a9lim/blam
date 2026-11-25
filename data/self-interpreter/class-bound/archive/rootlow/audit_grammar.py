"""Independent raw generation and actual-contractum filter at small costs.
Does not use the coefficient recurrence or its beta-price expression.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
import collections,json,time,signal,resource
H=Path(__file__).resolve().parent
import hole_gen,linear_zero_gen
D=hole_gen.d

def occ(t,i):
 if t[0]=='v':return int(t[1]==i)
 if t[0]=='k':return 0
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)
def jcount(t):
 if t[0]=='k':return 1
 if t[0]=='v':return 0
 return sum(jcount(x) for x in t[1:])
def lams(t):return (1+lams(t[1])) if t[0]=='l' else sum(lams(x) for x in t[1:]) if t[0]=='a' else 0
def w(t,dep):
 if t[0]=='k':return 4*dep
 if t[0]=='v':return t[1]+2
 if t[0]=='l':return 2+w(t[1],dep+1)
 return 2+w(t[1],dep)+w(t[2],dep)
def free(t,dep=0):
 if t[0]=='k':return 4
 if t[0]=='v':return int(t[1]>=dep)
 if t[0]=='l':return free(t[1],dep+1)
 return free(t[1],dep)+free(t[2],dep)
def sink(t):
 if t[0]!='a':return 0
 a,b=t[1:];oa,ob=occ(a,0),occ(b,0)
 if oa and not ob:return free(b)+sink(a)
 if ob and not oa:return free(a)+sink(b)
 return 0
def good(t,dep,JD):
 if t[0] in ('v','k'):return True
 if t[0]=='l':return good(t[1],dep+1,JD)
 a,b=t[1:]
 if not good(a,dep,JD) or not good(b,dep,JD):return False
 if JD==0:
  head=a
  while head[0]=='a':head=head[1]
  if head==D.Kc('j') or head==D.V(dep) and jcount(t):return False
  if a[0]=='l' and b==D.Kc('j'):return False
 if a[0]=='l':
  m=occ(a[1],0)
  if not m or sink(a[1]):return False
  if not(m>1 and jcount(b)):
   u=D.beta(a[1],b);delta=w(u,dep)-w(t,dep)
   if delta<0 or delta==0 and lams(u)<lams(t):return False
 return True

def state(t,dep):
 hist=[0]*7;tax=0
 def go(t):
  nonlocal tax
  if t[0]=='v':tax+=t[1]
  elif t[0]=='l':hist[occ(t[1],0)]+=1;go(t[1])
  elif t[0]=='a':go(t[1]);go(t[2])
 go(t)
 return tuple(occ(t,i) for i in range(dep)),occ(t,dep),jcount(t),tuple(hist),tax

def main(g):
 JD=g.f.JD
 @lru_cache(None)
 def raw(n,dep,j):
  if n<0 or j and dep>JD:return ()
  out=[]
  if j and dep==JD and n==4*dep:out.append(D.Kc('j'))
  if not j:
   out.extend(D.V(i) for i in range(dep+1) if n==i+2)
  if n>=2:out.extend(D.L(x) for x in raw(n-2,dep+1,j))
  for a in range(n-1):
   for jl in range(j+1):out.extend(D.A(x,y) for x in raw(a,dep,jl) for y in raw(n-2-a,dep,j-jl))
  return tuple(out)
 groups=collections.defaultdict(set);total=kept=0
 for dep in (0,1):
  for n in range(13):
   for j in (0,1):
    for t in raw(n,dep,j):
     total+=1;assert total<=100000
     s=state(t,dep);groups[s]
     if good(t,dep,JD):groups[s].add(t);kept+=1
 for s,want in groups.items():
  got=set(t for key in g.f.count(s) for t in g.gen(s,key))
  assert got==want,(JD,s,len(got),len(want),got-want,want-got)
 return dict(depth=JD,raw_terms=total,retained=kept,states=len(groups))
if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();r=dict(audits=[main(hole_gen),main(linear_zero_gen)],seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'grammar_audit.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
