"""Exact shared-DAG head evaluation. No expanded-tree cap, no loop heuristic.
A finite rigid-head/arity discrepancy is a certificate; fuel is UNKNOWN.
"""
from classify import *
from other_probes import PROBES
import signal
class Timeout(Exception):pass
def timedout(*_):raise Timeout()

def compare_fast(m,t,w,limit=20000):
    fuel=[0]
    def wh(t):
        stk=[]
        while True:
            if t[0]=='a':stk.append(t[2]);t=t[1];continue
            if t[0]!='c' or len(stk)<m.rules[t[1]][0]:return t,tuple(reversed(stk))
            k,b,_,_=m.rules[t[1]]
            args=tuple(stk.pop() for _ in range(k))
            t=sub(b,args+t[2]);fuel[0]+=1
            if fuel[0]>limit:return None
    def go(t,w,d=0,path=()):
        tv=wh(t);wv=wh(w)
        if tv is None or wv is None:return dict(kind='unknown')
        h,xs=tv;j,ys=wv
        if (h[0]=='c')!=(j[0]=='c'):return dict(kind='wrong',reason='lambda-rigid',path=path)
        if h[0]=='c':
            z=('r',2+d);return go(ap(h,*xs,z),ap(j,*ys,z),d+1,path+('under',))
        if h!=j or len(xs)!=len(ys):return dict(kind='wrong',reason='head-arity',path=path,head=h,arity=len(xs),want_head=j,want_arity=len(ys))
        for i,(x,y) in enumerate(zip(xs,ys)):
            r=go(x,y,d,path+(i,))
            if r['kind']!='equal':return r
        return dict(kind='equal')
    r=go(t,w);r['steps']=fuel[0];return r

if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--input',default='hard-all.json');p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=35);p.add_argument('--output',default='fast-hard.json');a=p.parse_args()
 rr=json.loads((HERE/a.input).read_text())['rows'][a.start:a.start+a.count];out=[];start=time.monotonic();signal.signal(signal.SIGALRM,timedout)
 for x in rr:
  m=Machine(dec(x['bits']));r=dict(kind='unknown');signal.setitimer(signal.ITIMER_REAL,2)
  try:
   for code,w in [('0010','000010')]+PROBES:
    q=compare_fast(m,m.root(code),ap(('r',0),m.compile(dec(w),[]),('r',1)))
    if q['kind']=='wrong':r=q;r['probe']=code;r['fast']=True;break
  except (Timeout,RecursionError):pass
  finally:signal.setitimer(signal.ITIMER_REAL,0)
  r['bits']=x['bits'];out.append(r)
  if time.monotonic()-start>90:break
 result=dict(seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
 (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'});print(out[:5])
