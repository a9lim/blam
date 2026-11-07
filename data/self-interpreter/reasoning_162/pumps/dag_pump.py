"""Substitution-stable prefix pumps from exact shared-DAG head traces.
Hash-cons numbers are exact structural identities, never hash-only verdicts.
"""
from classify import *
import signal,argparse
GENERAL_DEPTH=7
PATTERN_BUDGET=150
PROOF_LIMIT=100
TRACE_SPACING=10
PREFIX_EXTRA=3
class Timeout(Exception):pass
def timeout(*_):raise Timeout()
class Canon:
 def __init__(self):self.objects={};self.intern={};self.size={}
 def key(self,t):
  if id(t) in self.objects:return self.objects[id(t)][1]
  stack=[(t,False)]
  while stack:
   u,done=stack.pop();uid=id(u)
   if uid in self.objects:continue
   kids=u[1:] if u[0]=='a' else u[2] if u[0]=='c' else ()
   if not done:
    stack.append((u,True))
    for x in kids:
     if id(x) not in self.objects:stack.append((x,False))
    continue
   ids=tuple(self.objects[id(x)][1] for x in kids)
   key=(u[0],u[1],ids) if u[0]=='c' else ('a',ids) if u[0]=='a' else u
   if key not in self.intern:
    n=len(self.intern);self.intern[key]=n;self.size[n]=min(100000,1+sum(self.size[j] for j in ids))
   self.objects[uid]=(u,self.intern[key])
  return self.objects[id(t)][1]
 def lgg(self,t,u):
  variables={};budget=[PATTERN_BUDGET]
  def go(t,u,d):
   a=self.key(t);b=self.key(u);pair=(a,b)
   same=t[0]==u[0] and (t[0]!='c' or t[1]==u[1])
   if (a==b and self.size[a]<12):return t
   if budget[0]<=0 or d>GENERAL_DEPTH or not same or t[0] in ['r','?']:
    if pair not in variables:variables[pair]=('?',len(variables))
    return variables[pair]
   budget[0]-=1
   if t[0]=='a':return ap(go(t[1],u[1],d+1),go(t[2],u[2],d+1))
   if t[0]=='c':return ('c',t[1],tuple(go(x,y,d+1) for x,y in zip(t[2],u[2])))
   return t
  return go(t,u,0)
 def match(self,q,t,env):
  if q[0]=='?':
   n=q[1];k=self.key(t)
   if n in env:return env[n]==k
   env[n]=k;return True
  if q[0]!=t[0]:return False
  if q[0]=='a':return self.match(q[1],t[1],env) and self.match(q[2],t[2],env)
  if q[0]=='c':return q[1]==t[1] and all(self.match(x,y,env) for x,y in zip(q[2],t[2]))
  return q==t
 def prefix(self,q,h,xs):
  _,qs=spine(q)
  return len(xs)>=len(qs) and self.match(q,ap(h,*xs[:len(qs)]),{})

def advance(m,t,stk):
 while t[0]=='a':stk.append(t[2]);t=t[1]
 if t[0]!='c' or len(stk)<m.rules[t[1]][0]:return None
 k,b,_,_=m.rules[t[1]];args=tuple(stk.pop() for _ in range(k));t=sub(b,args+t[2])
 while t[0]=='a':stk.append(t[2]);t=t[1]
 return t

def prove(m,q):
 c=Canon();h,xs=spine(q);stk=list(reversed(xs))
 for n in range(1,PROOF_LIMIT+1):
  h=advance(m,h,stk)
  if h is None:return None
  xs=tuple(reversed(stk))
  if c.prefix(q,h,xs):return n
  if len(stk)>200:return None
 return None

def search(m,limit=1500):
 c=Canon();h,xs=spine(m.root());stk=list(reversed(xs));past=defaultdict(list);tested=set()
 for n in range(limit):
  if h[0]!='c' or len(stk)<m.rules[h[1]][0]:return dict(kind='unknown',stop=n)
  if n<150 or n%TRACE_SPACING==0:
   xs=tuple(reversed(stk));k0=m.rules[h[1]][0]
   for k in range(k0,min(len(xs),k0+PREFIX_EXTRA)+1):
    t=ap(h,*xs[:k]);key=(h[1],k);old=past[key]
    for j,u in old[-3:]:
     q=c.lgg(u,t);qid=c.key(q)
     if qid in tested:continue
     tested.add(qid);p=prove(m,q)
     if p is not None:return dict(kind='pump',dag=True,entry=j,pattern=q,steps=p)
    old.append((n,t))
  h=advance(m,h,stk)
  if h is None:break
 return dict(kind='unknown')

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=15);p.add_argument('--output',default='dag-hard.json');p.add_argument('--input',default='hard-all.json');p.add_argument('--limit',type=int,default=1500);p.add_argument('--deep',action='store_true');p.add_argument('--wide',action='store_true');a=p.parse_args();
 if a.wide:PREFIX_EXTRA=6
 if a.deep:GENERAL_DEPTH=12;PATTERN_BUDGET=400;PROOF_LIMIT=300;TRACE_SPACING=20
 signal.signal(signal.SIGALRM,timeout)
 rr=json.loads((HERE/a.input).read_text())['rows'][a.start:a.start+a.count];out=[];start=time.monotonic()
 for x in rr:
  signal.setitimer(signal.ITIMER_REAL,5)
  try:r=search(Machine(dec(x['bits'])),a.limit)
  except (Timeout,RecursionError):r=dict(kind='unknown')
  finally:signal.setitimer(signal.ITIMER_REAL,0)
  r['bits']=x['bits'];out.append(r)
  result=dict(count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['kind'] for x in out)),rows=out)
  (HERE/a.output).write_text(json.dumps(result)+'\n')
  if time.monotonic()-start>90:break
 print({k:v for k,v in result.items() if k!='rows'})
