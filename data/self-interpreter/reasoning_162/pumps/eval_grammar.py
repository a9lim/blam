"""Call-by-name regular-grammar analysis with exact abstract call/return.
Arguments are grammar labels (unevaluated thunks); partial applications retain
all arguments. The finite post-fixed-point constraints, not a fuel limit,
certify nontermination when the root result set is empty.
"""
from grammar import *
class EvalGrammar(Grammar):
 def __init__(self,m,precision=1,cap=30000):
  super().__init__(m,4,cap,precision)
  self.values=[];self.flow=[];self.calls=[];self.need=set();self.events=deque();self.eval_count=0;self.returns={}
 def label(self,key):
  n=len(self.labels);r=super().label(key)
  if r==n:self.values.append(set());self.flow.append(set());self.calls.append(set())
  return r
 def demand(self,l):
  if l not in self.need:
   self.need.add(l)
   for p in self.prod[l]:self.events.append(('p',l,p))
 def add(self,l,p):
  if p not in self.prod[l]:
   self.prod[l].add(p)
   if l in self.need:self.events.append(('p',l,p))
 def value(self,l,v):
  if v not in self.values[l]:
   self.values[l].add(v);self.events.append(('v',l,v));self.eval_count+=1
   if self.eval_count>self.cap or len(self.labels)>self.cap:raise OverflowError
 def edge(self,src,dest):
  self.demand(src)
  if dest not in self.flow[src]:
   self.flow[src].add(dest)
   for v in self.values[src]:self.value(dest,v)
 def apply(self,v,arg,dest):
  if v[0]=='rigid':self.value(dest,v);return
  _,i,ctx,args=v;args=args+(arg,);k,b,_,db=self.m.rules[i]
  if len(args)<k:self.value(dest,('c',i,ctx,args));return
  assert len(args)==k
  nc=0 if i<2 else len(fv(db))
  env=args+tuple(self.label(('capture',i,ctx,j)) for j in range(nc))
  ctx2=tuple(self.descriptor(x) for x in env)
  body=self.inst(b,env,('rule',i,ctx2));self.returns[(v,arg)]=body;self.edge(body,dest)
 def run(self,t):
  try:
   self.root_label=self.inst(t,(),('initial',));self.demand(self.root_label)
   while self.events:
    event,l,p=self.events.popleft()
    if self.values[self.root_label]:return dict(kind='unknown',labels=len(self.labels),values=self.eval_count)
    if event=='p':
     if p[0]=='rigid':self.value(l,p)
     elif p[0]=='c':self.value(l,('c',p[1],p[2],()))
     elif p[0]=='alias':self.edge(p[1],l)
     elif p[0]=='a':
      self.demand(p[1]);self.calls[p[1]].add((p[2],l))
      for v in list(self.values[p[1]]):self.apply(v,p[2],l)
    else:
     for dest in list(self.flow[l]):self.value(dest,p)
     for arg,dest in list(self.calls[l]):self.apply(p,arg,dest)
  except OverflowError:return dict(kind='large',labels=len(self.labels),values=self.eval_count)
  return dict(kind='eval-grammar' if not self.values[self.root_label] else 'unknown',labels=len(self.labels),values=self.eval_count,demand=len(self.need))

def search_eval(m,initial=None,precision=1,cap=30000):
 t=m.root() if initial is None else initial
 for n in range(31):
  if n in [0,12,20,30]:
   g=EvalGrammar(m,precision,cap);r=g.run(t)
   if r['kind']=='eval-grammar':return dict(entry=n,precision=precision,**r)
  t=m.step(t)
  if t is None or sz(t)>6000:break
 return r

if __name__=='__main__':
 import argparse,signal
 class Timeout(Exception):pass
 def timedout(*_):raise Timeout()
 signal.signal(signal.SIGALRM,timedout)
 p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=60);p.add_argument('--output',default='eval-pilot.json');a=p.parse_args()
 rr=json.loads((HERE/'normal-secondary.json').read_text())['rows'];rr=[x for x in rr if x['kind']=='unknown'][a.start:a.start+a.count];out=[];start=time.monotonic()
 for x in rr:
  m=Machine(dec(x['bits']))
  signal.setitimer(signal.ITIMER_REAL,8)
  try:
   for pr in [1,2,3]:
    r=search_eval(m,precision=pr)
    if r['kind']=='eval-grammar':break
  except Timeout:r=dict(kind='unknown',reason='eight-second-case-limit')
  finally:signal.setitimer(signal.ITIMER_REAL,0)
  r['bits']=x['bits'];out.append(r)
  if time.monotonic()-start>90:break
 result=dict(start=a.start,seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
 (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'});print([(x['bits'],x['kind']) for x in out[:8]])

class SharedEvalGrammar(EvalGrammar):
 def __init__(self,*args,**kwargs):
  super().__init__(*args,**kwargs);self.initial_cache={};self.initial_ids={}
 def inst(self,t,env,key):
  if key[0]!='initial':return super().inst(t,env,key)
  tid=id(t)
  if tid in self.initial_cache:return self.initial_cache[tid]
  self.initial_ids[tid]=len(self.initial_ids)
  q=super().inst(t,env,('initial',self.initial_ids[tid]))
  self.initial_cache[tid]=q;return q
