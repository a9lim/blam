"""Fixed-list head-pump discovery. No term enumeration; one thread.
Lambda lifting uses only beta equations. A certificate is a first-order pattern
q with q ->+ q[sigma] extra_args, without rewriting a pattern variable.
"""
import sys,json,time,hashlib
from pathlib import Path
from functools import lru_cache
from collections import Counter,defaultdict
HERE=Path(__file__).resolve().parent
SRC=HERE.parent/'proof/s1_27_pass1.txt'
NEXT='000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010'

def dec(s):
    def go(i):
        if s[i:i+2]=='00':
            b,j=go(i+2);return ('l',b),j
        if s[i:i+2]=='01':
            f,j=go(i+2);a,k=go(j);return ('a',f,a),k
        j=i
        while s[j]=='1':j+=1
        return ('v',j-i-1),j+1
    t,i=go(0);assert i==len(s);return t

def normal(t):
    return t[0]=='v' or (t[0]=='l' and normal(t[1])) or (t[0]=='a' and t[1][0]!='l' and normal(t[1]) and normal(t[2]))

def fv(t,d=0):
    if t[0]=='v':return {t[1]-d} if t[1]>=d else set()
    if t[0]=='l':return fv(t[1],d+1)
    return fv(t[1],d)|fv(t[2],d)

def ap(f,*xs):
    for x in xs:f=('a',f,x)
    return f

def spine(t):
    xs=[]
    while t[0]=='a':xs.append(t[2]);t=t[1]
    return t,tuple(reversed(xs))

def mkc(i,*xs):return ('c',i,tuple(xs))
def var(i):return ('p',i)

def sub(t,env,tag='p'):
    if t[0]==tag:return env[t[1]]
    if t[0]=='a':return ap(sub(t[1],env,tag),sub(t[2],env,tag))
    if t[0]=='c':return ('c',t[1],tuple(sub(x,env,tag) for x in t[2]))
    return t

def sz(t,cap=10000):
    if t[0]=='a':return 1+sz(t[1])+sz(t[2])
    if t[0]=='c':return 1+sum(sz(x) for x in t[2])
    return 1

def match(q,t,env):
    if q[0]=='?':
        j=q[1]
        if j in env:return env[j]==t
        env[j]=t;return True
    if q[0]!=t[0]:return False
    if q[0]=='a':return match(q[1],t[1],env) and match(q[2],t[2],env)
    if q[0]=='c':return q[1]==t[1] and len(q[2])==len(t[2]) and all(match(x,y,env) for x,y in zip(q[2],t[2]))
    return q==t

def prefix_match(q,t):
    h,xs=spine(t);_,qs=spine(q)
    if len(xs)<len(qs):return None
    env={}
    if match(q,ap(h,*xs[:len(qs)]),env):return env,xs[len(qs):]
    return None

def lgg(t,u,memo=None):
    if memo is None:memo={}
    if t==u:return t
    if t[0]==u[0]=='a':return ap(lgg(t[1],u[1],memo),lgg(t[2],u[2],memo))
    if t[0]==u[0]=='c' and t[1]==u[1]:return ('c',t[1],tuple(lgg(x,y,memo) for x,y in zip(t[2],u[2])))
    pair=(t,u)
    if pair not in memo:memo[pair]=('?',len(memo))
    return memo[pair]

class Machine:
    def __init__(self,fill):
        self.rules=[None,None];self.lams={};self.P=mkc(0);self.G=mkc(1)
        self.I=self.compile(dec('0010'),[])
        self.K=self.compile(dec('0000110'),[])
        self.F=self.compile(dec('000010'),[])
        self.fill=fill
        self.rules[0]=(2,self.body(var(1),var(0),self.P,self.G),'P',None)
        self.rules[1]=(3,self.body(var(2),var(1),ap(var(0),var(0)),var(0)),'G',None)
    def compile(self,t,env):
        if t[0]=='v':return env[t[1]]
        if t[0]=='a':return ap(self.compile(t[1],env),self.compile(t[2],env))
        if t not in self.lams:
            free=sorted(fv(t));i=len(self.rules);self.lams[t]=(i,free);self.rules.append(None)
            k=0;b=t
            while b[0]=='l':k+=1;b=b[1]
            e=[var(j) for j in reversed(range(k))]
            e.extend(var(k+free.index(j)) if j in free else ('r',-1) for j in range(1+max(free,default=-1)))
            rhs=self.compile(b,e)
            self.rules[i]=(k,rhs,'lam',t)
        i,free=self.lams[t]
        return ('c',i,tuple(env[j] for j in free))
    def body(self,s,c,p,g):
        env=[s,c,p,g]
        return ap(s,self.I,self.compile(self.fill,env),self.compile(dec(NEXT),env))
    def step(self,t):
        h,xs=spine(t)
        if h[0]!='c':return None
        k,b,_,_=self.rules[h[1]]
        if len(xs)<k:return None
        return ap(sub(b,xs[:k]+h[2]),*xs[k:])
    def root(self,code='0010'):
        s=('r',1)
        cons=dec('0001011011101110') # lambda f. f free0 free1; verified below
        # construct exact lambda f. f bit tail using compile with [bit,tail]
        cons=('l',('a',('a',('v',0),('v',1)),('v',2)))
        for b in reversed(code):s=self.compile(cons,[self.K if b=='0' else self.F,s])
        return ap(self.P,('r',0),s)
    def prove(self,q,limit=100):
        u=q
        for k in range(1,limit+1):
            u=self.step(u)
            if u is None:return None
            if sz(u)>3500:return None
            m=prefix_match(q,u)
            if m is not None:return dict(pattern=q,steps=k,result=u,extra=len(m[1]))
        return None
    def find(self,limit=120,initial=None):
        t=self.root() if initial is None else initial;past=defaultdict(list);done=set()
        for k in range(limit):
            h,xs=spine(t)
            if h[0]!='c' or len(xs)<self.rules[h[1]][0]:return dict(kind='stop',step=k,term=t)
            key=h[1]
            old=past[key]
            for j,u in old[-5:]:
                if sz(u)+sz(t)>3000:continue
                uh,us=spine(u)
                if len(xs)<len(us):continue
                q=lgg(u,ap(h,*xs[:len(us)]))
                if q in done:continue
                done.add(q)
                cert=self.prove(q)
                if cert:
                    assert prefix_match(q,u) is not None
                    return dict(kind='pump',entry=j,**cert)
            old.append((k,t))
            t=self.step(t)
            if sz(t)>6000:return dict(kind='big',step=k+1)
        return dict(kind='cap',step=limit)

def rows():
    for s in SRC.read_text().splitlines()[4:]:
        w=s.split();yield w[3],w[4:],normal(dec(w[3]))

def main():
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=25);p.add_argument('--all',action='store_true');p.add_argument('--steps',type=int,default=120);p.add_argument('--output',default='pilot.json');a=p.parse_args()
    rr=list(rows());rr=rr if a.all else [r for r in rr if r[2]];rr=rr[a.start:a.start+a.count]
    ans=[];start=time.monotonic()
    for bits,show,nf in rr:
        m=Machine(dec(bits));r=m.find(a.steps);r.update(bits=bits,nf=nf,show=' '.join(show));ans.append(r)
        if time.monotonic()-start>100:break
    out=dict(seconds=time.monotonic()-start,count=len(ans),counts=dict(Counter(r['kind'] for r in ans)),rows=ans)
    (HERE/a.output).write_text(json.dumps(out)+'\n');print(json.dumps({k:v for k,v in out.items() if k!='rows'}))
    for r in ans[:12]:print(r['bits'],r['kind'],r.get('steps',r.get('step')),r['show'])
if __name__=='__main__':main()
