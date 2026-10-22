"""Overapproximating regular-tree/finite-prefix head-machine invariant.
Closure capture slots merge by lambda identity. RHS application slots merge
by rule position. A dropped stack suffix is protected: encountering too few
known arguments is UNKNOWN, never a proof. An empty terminal set after full
finite saturation certifies infinite weak-head reduction of the input term.
"""
from classify import *
from collections import deque
class Grammar:
    def __init__(self,m,stack=4,cap=2000):
        self.m=m;self.stack=stack;self.cap=cap;self.labels={};self.keys=[];self.prod=[];self.users=[];self.todo=deque();self.states=set();self.edges=set();self.halt=None
    def label(self,key):
        if key not in self.labels:
            self.labels[key]=len(self.prod);self.keys.append(key);self.prod.append(set());self.users.append(set())
        return self.labels[key]
    def add(self,label,prod):
        if prod not in self.prod[label]:
            self.prod[label].add(prod)
            for stack in self.users[label]:self.todo.append((label,stack,prod))
    def state(self,s,stack):
        stack=tuple(stack[:self.stack]);k=(s,stack)
        if k in self.states:return
        self.states.add(k);self.users[s].add(stack)
        if len(self.states)>self.cap:raise OverflowError
        for p in self.prod[s]:self.todo.append((s,stack,p))
    def inst(self,t,env,key):
        if t[0]=='p':return env[t[1]]
        if t[0]=='a':
            q=self.label(key)
            f=self.inst(t[1],env,key+(0,));x=self.inst(t[2],env,key+(1,))
            self.add(q,('a',f,x));return q
        if t[0]=='c':
            i=t[1]
            vs=[self.inst(x,env,key+('capture',j)) for j,x in enumerate(t[2])]
            def base(v):
                return self.descriptor(v)
            ctx=tuple(base(v) for v in vs)
            q=self.label(('closure',i,ctx));self.add(q,('c',i,ctx))
            for j,v in enumerate(vs):
                self.add(self.label(('capture',i,ctx,j)),('alias',v))
            return q
        q=self.label(t);self.add(q,('rigid',t));return q
    def descriptor(self,v):
        z=self.keys[v]
        if z[0]=='closure':return z[:2]
        if z[0]=='capture':return (z[0],z[1],z[-1])
        if z[0]=='rule':return z[:2]+z[3:]
        return z
    def run(self,t):
        try:
            q=self.inst(t,(),('initial',));self.state(q,())
            while self.todo:
                src,stk,p=self.todo.popleft()
                if p[0]=='rigid':self.halt=(src,stk,p);break
                if p[0]=='alias':self.state(p[1],stk)
                if p[0]=='a':self.state(p[1],(p[2],)+stk)
                if p[0]=='c':
                    i=p[1];k,b,_,db=self.m.rules[i]
                    if len(stk)<k:self.halt=(src,stk,p);break
                    nc=0 if i<2 else len(fv(db))
                    env=stk[:k]+tuple(self.label(('capture',i,p[2],j)) for j in range(nc))
                    ctx=tuple(self.descriptor(v) for v in env)
                    nxt=self.inst(b,env,('rule',i,ctx));self.state(nxt,stk[k:])
                if len(self.labels)>20000:raise OverflowError
        except OverflowError:return dict(kind='large',states=len(self.states),labels=len(self.labels))
        return dict(kind='grammar' if self.halt is None else 'unknown',states=len(self.states),labels=len(self.labels))

def search(m,steps=60,stack=4,cap=5000,initial=None):
    t=m.root() if initial is None else initial;best={}
    for n in range(steps+1):
        if n in [0,12,20,30,45,60]:
            h,xs=spine(t)
            lengths=sorted(set([min(2,len(xs)),min(3,len(xs)),len(xs)]))
            for length in lengths:
                g=Grammar(m,stack,cap);r=g.run(ap(h,*xs[:length]));best=r
                if r['kind']=='grammar':return dict(entry=n,prefix=length,**r)
        t=m.step(t)
        if t is None or sz(t)>6000:break
    return best
if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--count',type=int,default=50);p.add_argument('--start',type=int,default=0);p.add_argument('--stack',type=int,default=4);p.add_argument('--output',default='grammar-pilot.json');a=p.parse_args()
    rr=[r for r in rows() if r[2]][a.start:a.start+a.count];out=[];start=time.monotonic()
    for bits,show,nf in rr:
        m=Machine(dec(bits));r=search(m,stack=a.stack);r['bits']=bits;out.append(r)
        if time.monotonic()-start>100:break
    result=dict(count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['kind'] for x in out)),rows=out)
    (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'});print(out[:10])
