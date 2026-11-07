"""Specific residual macro traces. No candidate generation, caps are not verdicts."""
import json
from pathlib import Path

class Terms:
    def __init__(self):
        self.nodes=[]; self.index={}
        self.n=self.mk('N'); self.c=self.mk('C'); self.s=self.mk('S')
    def mk(self,*xs):
        if xs not in self.index:
            self.index[xs]=len(self.nodes);self.nodes.append(xs)
        return self.index[xs]
    def j(self,x):return self.mk('J',x)
    def app(self,*xs):
        t=xs[0]
        for x in xs[1:]:t=self.mk('A',t,x)
        return t
    def spine(self,t):
        args=[]
        while self.nodes[t][0]=='A':
            _,t,a=self.nodes[t];args.append(a)
        return t,tuple(reversed(args))
    def show(self,t,depth=7):
        if depth==0:return '#'+str(t)
        z=self.nodes[t]
        if z[0]=='J':return 'J('+self.show(z[1],depth-1)+')'
        if z[0]!='A':return z[0]
        h,args=self.spine(t)
        return '('+' '.join(self.show(x,depth-1) for x in (h,*args))+')'
    def step(self,t,mode,p):
        h,aa=self.spine(t);a=list(aa);z=self.nodes[h]
        if h==self.n and a:
            x=a.pop(0)
            if mode=='A':v=self.app(x,self.j(x),x)
            elif mode=='B':v=self.app(x,self.app(x,self.j(x)))
            else:v=self.app(x,self.j(x))
        elif z[0]=='J' and len(a)>=2:
            x=z[1];y=a.pop(0);w=a.pop(0)
            q=[x,y,w];u,v,w=[q[i] for i in p]
            v=self.app(u,self.app(v,w))
        else:return None
        return self.app(v,*a)

CASES=[(448,'A',(0,1,2)),(449,'B',(0,1,2)),
       (454,'A',(0,2,1)),(455,'B',(0,2,1)),
       (460,'A',(1,0,2)),(461,'B',(1,0,2)),
       (466,'A',(1,2,0)),(467,'B',(1,2,0)),
       (472,'A',(2,0,1)),(473,'B',(2,0,1)),
       (478,'A',(2,1,0)),(479,'B',(2,1,0)),(572,'C',(0,2,1))]

def probe(case,cap=300):
    idx,mode,p=case;m=Terms();n=m.n
    t=m.app(n,n) if mode!='C' else m.app(n,m.app(n,n))
    t=m.app(t,m.c,m.s); states=[]; prefix={}
    for k in range(cap):
        h,a=m.spine(t)
        for end in range(len(a)+1):
            key=(h,a[:end])
            if key in prefix:
                old,tail=prefix[key]
                if tail and tuple(a[-len(tail):])!=tail:continue
                print(idx,'prefix pump',old,k,'extra',len(a)-end,
                      'seed',m.show(states[old],4))
                return m,states,dict(id=idx,kind='prefix_pump',prefix=old,period=k-old)
        if a[-2:]==(m.c,m.s):prefix[h,a[:-2]]=(k,(m.c,m.s))
        elif a[-1:]==(m.s,):prefix[h,a[:-1]]=(k,(m.s,))
        else:prefix[h,a]=(k,())
        states.append(t)
        u=m.step(t,mode,p)
        if u is None:
            print(idx,'stopped',k,m.show(t,5))
            return m,states,dict(id=idx,kind='stop',step=k,state=m.show(t,7))
        t=u
    print(idx,'cap',cap,'nodes',len(m.nodes),'head',m.show(h,3),'args',len(a))
    return m,states,dict(id=idx,kind='cap',cap=cap)

if __name__=='__main__':
    rows=[]
    for case in CASES:
        _,_,r=probe(case);rows.append(r)
    Path(__file__).with_name('macro_probe.json').write_text(json.dumps(rows,indent=2)+'\n')
