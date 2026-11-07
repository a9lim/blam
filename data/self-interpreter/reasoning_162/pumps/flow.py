"""Finite, monotone 0-CFA over the fixed lambda term. Empty abstract result
certifies absence of weak head normal form; nonempty means unknown.
All syntax nodes are analyzed, including uncalled bodies (safe overapprox).
"""
from classify import *
from collections import deque

def full(fill,code='0010'):
    b=('a',('a',('a',('v',0),dec('0010')),fill),dec(NEXT))
    g=('l',('a',('l',('l',('l',b))),('a',('v',0),('v',0))))
    e=('a',('l',('a',('v',0),('v',0))),g)
    s=('v',1)
    def shift(t):
        def go(t,d):
            if t[0]=='v':return ('v',t[1]+int(t[1]>=d))
            if t[0]=='l':return ('l',go(t[1],d+1))
            return ('a',go(t[1],d),go(t[2],d))
        return go(t,0)
    for ch in reversed(code):s=('l',('a',('a',('v',0),dec('0000110' if ch=='0' else '000010')),shift(s)))
    return ('a',('a',e,('v',0)),s)

class Flow:
    def __init__(self,t):
        self.nodes=[];self.lam=[]
        def node(t,env):
            i=len(self.nodes);self.nodes.append(None)
            if t[0]=='v':self.nodes[i]=('v',env[t[1]]) if t[1]<len(env) else ('r',t[1]-len(env))
            if t[0]=='l':self.nodes[i]=('l',node(t[1],[i]+env));self.lam.append(i)
            if t[0]=='a':self.nodes[i]=('a',node(t[1],env),node(t[2],env))
            return i
        self.root=node(t,[])
    def run(self):
        n=len(self.nodes);values=[set() for _ in range(2*n)]
        edges=[set() for _ in values];calls=[[] for _ in values];q=deque();queued=set()
        def add(i,xs):
            d=set(xs)-values[i]
            if d:
                values[i]|=d
                if i not in queued:q.append(i);queued.add(i)
        def edge(i,j):
            if j not in edges[i]:edges[i].add(j);add(j,values[i])
        for i,t in enumerate(self.nodes):
            if t[0]=='l':add(i,[i])
            if t[0]=='r':add(i,[-1-t[1]])
            if t[0]=='v':edge(n+t[1],i)
            if t[0]=='a':calls[t[1]].append((i,t[2]))
        while q:
            i=q.popleft();queued.remove(i)
            for j in edges[i]:add(j,values[i])
            for dest,arg in calls[i]:
                for f in list(values[i]):
                    if f<0:add(dest,[f])
                    else:
                        assert self.nodes[f][0]=='l'
                        edge(arg,n+f);edge(self.nodes[f][1],dest)
        self.values=values
        return sorted(values[self.root])

def main():
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--count',type=int,default=4417);p.add_argument('--start',type=int,default=0);p.add_argument('--all',action='store_true');p.add_argument('--output',default='flow.json');a=p.parse_args()
    rr=list(rows());rr=rr if a.all else [r for r in rr if r[2]];rr=rr[a.start:a.start+a.count];out=[];start=time.monotonic()
    for bits,show,nf in rr:
        f=Flow(full(dec(bits)));v=f.run();out.append(dict(bits=bits,normal=nf,values=v,kind='empty' if not v else 'unknown',show=' '.join(show)))
        if time.monotonic()-start>100:break
    r=dict(count=len(out),counts=dict(Counter(x['kind'] for x in out)),seconds=time.monotonic()-start,rows=out)
    (HERE/a.output).write_text(json.dumps(r)+'\n');print({k:v for k,v in r.items() if k!='rows'})
    for x in out[:12]:print(x['bits'],x['kind'],x['values'])
if __name__=='__main__':main()
