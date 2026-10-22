"""Independent de Bruijn validation of every compiled macro equation.
No compiler substitution or macro-step function is reused here.
"""
from classify import *
from flow import full

def shift(t,n,d=0):
    if t[0]=='v':return ('v',t[1]+n) if t[1]>=d else t
    if t[0]=='l':return ('l',shift(t[1],n,d+1))
    return ('a',shift(t[1],n,d),shift(t[2],n,d))

def inst(t,env,d=0):
    if t[0]=='v':return shift(env[t[1]-d],d) if t[1]>=d else t
    if t[0]=='l':return ('l',inst(t[1],env,d+1))
    return ('a',inst(t[1],env,d),inst(t[2],env,d))

def beta(t,x,d=0):
    if t[0]=='v':
        if t[1]==d:return shift(x,d)
        return ('v',t[1]-1) if t[1]>d else t
    if t[0]=='l':return ('l',beta(t[1],x,d+1))
    return ('a',beta(t[1],x,d),beta(t[2],x,d))

def weak(t):
    if t[0]!='a':return None
    if t[1][0]=='l':return beta(t[1][1],t[2])
    u=weak(t[1]);return None if u is None else ('a',u,t[2])

def generator(fill):
    b=('a',('a',('a',('v',0),dec('0010')),fill),dec(NEXT))
    return ('l',('a',('l',('l',('l',b))),('a',('v',0),('v',0))))

class Realizer:
    def __init__(self,m):self.m=m;self.g=generator(m.fill)
    def term(self,t):
        if t[0]=='a':return ('a',self.term(t[1]),self.term(t[2]))
        if t[0] in ['r','p','?']:return ('v',t[1] + (0 if t[0]=='r' else 100))
        assert t[0]=='c'
        i=t[1]
        if i==0:return ('a',self.g,self.g)
        if i==1:return self.g
        src=self.m.rules[i][3];free=sorted(fv(src));env=[('v',9999)]*(1+max(free,default=-1))
        for j,x in zip(free,t[2]):env[j]=self.term(x)
        return inst(src,env)
    def check_rules(self):
        root=self.m.root()
        for i,(arity,rhs,_,src) in enumerate(self.m.rules):
            ncap=0 if i<2 else len(fv(src))
            args=[('r',100+j) for j in range(arity)]
            caps=[('r',100+arity+j) for j in range(ncap)]
            lhs=self.term(ap(mkc(i,*caps),*args));want=self.term(sub(rhs,tuple(args+caps)))
            for _ in range(4 if i<2 else arity):
                lhs=weak(lhs);assert lhs is not None,(i,'stopped')
            assert lhs==want,('bad-macro',i)
        assert weak(full(self.m.fill))==self.term(root),'root mismatch'
        return len(self.m.rules)

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--count',type=int,default=4417);a=p.parse_args()
    start=time.monotonic();total=0;n=0
    for bits,_,nf in rows():
        if not nf:continue
        m=Machine(dec(bits));total+=Realizer(m).check_rules();n+=1
        if n>=a.count:break
    r=dict(candidates=n,macro_equations=total,seconds=time.monotonic()-start,source_sha256=hashlib.sha256(SRC.read_bytes()).hexdigest());(HERE/'lambda-check.json').write_text(json.dumps(r,indent=2)+'\n');print(r)
