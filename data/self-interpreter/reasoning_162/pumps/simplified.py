"""Finite beta simplification interleaved with mandatory weak-head steps.
Only saturated ordinary lambda macros (not P/G) are simplified internally,
and only when the represented tree does not grow. Never extrapolate fuel.
"""
from classify import *
class SimplifiedMachine(Machine):
    def simplify(self,t,budget=80):
        fuel=[budget]
        def go(t):
            if fuel[0]<=0:return t
            if t[0]=='a':t=ap(go(t[1]),go(t[2]))
            elif t[0]=='c':t=('c',t[1],tuple(go(x) for x in t[2]))
            while fuel[0]>0:
                h,xs=spine(t)
                if h[0]!='c' or h[1]<2:break
                u=Machine.step(self,t)
                if u is None or sz(u)>sz(t):break
                fuel[0]-=1;t=u
            return t
        return go(t)
    def step(self,t):
        u=super().step(t)
        return None if u is None else self.simplify(u)
if __name__=='__main__':
    from run import solve
    r=json.loads((HERE/'correct-0000.json').read_text())['rows'];out=[];start=time.monotonic()
    for x in r:
        if x['kind']!='unknown':continue
        m=SimplifiedMachine(dec(x['bits']));a=solve(m);a['bits']=x['bits'];out.append(a)
        if time.monotonic()-start>90:break
    result=dict(seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
    (HERE/'simplified-pilot.json').write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'});print([(x['bits'],x['kind']) for x in out[:10]])

class Simplified2Machine(Machine):
    def simplify(self,t,budget=120):
        fuel=[budget]
        def go(t):
            if fuel[0]<=0:return t
            if t[0]=='a':t=ap(go(t[1]),go(t[2]))
            elif t[0]=='c':t=('c',t[1],tuple(go(x) for x in t[2]))
            h,xs=spine(t)
            if h[0]!='c' or len(xs)<self.rules[h[1]][0]:return t
            n=sz(t);u=t;best=t;bs=n
            for _ in range(min(14,fuel[0])):
                u=Machine.step(self,u)
                if u is None:break
                fuel[0]-=1;s=sz(u)
                if s>max(150,4*n):break
                if s<=bs and u!=t:best=u;bs=s
            return best
        return go(t)
    def step(self,t):
        u=Machine.step(self,t)
        return None if u is None else self.simplify(u)
