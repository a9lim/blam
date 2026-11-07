"""Replay certified fixed-list outcomes, independently validate finite graph
closure, and check every macro beta equation with a separate de Bruijn reducer.
This file performs NO arm enumeration or invariant discovery.
"""
from grammar import *
from simplified import SimplifiedMachine, Simplified2Machine
from eval_grammar import EvalGrammar, SharedEvalGrammar
from dag_pump import Canon, advance as dag_advance
from lambda_check import Realizer
from stopcheck import compare

def tuples(x):return tuple(tuples(y) for y in x) if isinstance(x,list) else x

def make_covers(g):
    # Alias inclusion is separate from the discovery algorithm.
    aliases={}
    def alias(l):
        if l in aliases:return aliases[l]
        seen={l};todo=[l]
        while todo:
            for p in g.prod[todo.pop()]:
                if p[0]=='alias' and p[1] not in seen:seen.add(p[1]);todo.append(p[1])
        aliases[l]=seen;return seen
    def covers(t,l,env):
        ls=alias(l)
        if t[0]=='p':return env[t[1]] in ls
        for q in ls:
            for p in g.prod[q]:
                if t[0]=='a' and p[0]=='a' and covers(t[1],p[1],env) and covers(t[2],p[2],env):return True
                if t[0]=='c' and p[0]=='c' and t[1]==p[1]:
                    if all(covers(x,g.labels[('capture',p[1],p[2],j)],env) for j,x in enumerate(t[2])):return True
                if t[0] in ['r','?'] and p==('rigid',t):return True
        return False
    return covers

def validate_graph(g,t):
    assert g.halt is None and not g.todo
    covers=make_covers(g)
    assert covers(t,g.root_label,())
    assert (g.root_label,()) in g.states
    count=0
    for src,stk in g.states:
        for p in g.prod[src]:
            count+=1
            if p[0]=='rigid':raise AssertionError('terminal rigid state')
            if p[0]=='alias':assert (p[1],stk) in g.states
            elif p[0]=='a':assert (p[1],((p[2],)+stk)[:g.stack]) in g.states
            elif p[0]=='c':
                i=p[1];k,b,_,db=g.m.rules[i];assert len(stk)>=k,'terminal underapplication'
                nc=0 if i<2 else len(fv(db))
                env=stk[:k]+tuple(g.labels[('capture',i,p[2],j)] for j in range(nc))
                nxt=g.transitions[(src,stk,p)]
                assert covers(b,nxt,env),'rule image not covered'
                assert (nxt,stk[k:]) in g.states
            else:raise AssertionError(p)
    return count

def validate_eval(g,t):
    assert not g.events and not g.values[g.root_label]
    covers=make_covers(g)
    assert covers(t,g.root_label,()) and g.root_label in g.need
    checked=0
    for l in g.need:
        for p in g.prod[l]:
            checked+=1
            if p[0]=='rigid':assert p in g.values[l]
            elif p[0]=='c':assert ('c',p[1],p[2],()) in g.values[l]
            elif p[0]=='alias':
                assert p[1] in g.need and g.values[p[1]]<=g.values[l]
            elif p[0]=='a':
                f,arg=p[1:];assert f in g.need
                for v in g.values[f]:
                    checked+=1
                    if v[0]=='rigid':assert v in g.values[l];continue
                    _,i,ctx,args=v;k,b,_,db=g.m.rules[i]
                    assert len(args)<k
                    aa=args+(arg,)
                    if len(aa)<k:
                        assert ('c',i,ctx,aa) in g.values[l];continue
                    nc=0 if i<2 else len(fv(db))
                    env=aa+tuple(g.labels[('capture',i,ctx,j)] for j in range(nc))
                    dest=g.returns[(v,arg)]
                    assert dest in g.need and g.values[dest]<=g.values[l]
                    assert covers(b,dest,env)
            else:raise AssertionError(p)
    return checked

def whnf(m,t):
    for n in range(500):
        u=m.step(t)
        if u is None:return t
        t=u
    raise AssertionError('unexpected capped navigation')

def navigate(m,path,code='0010',want='000010'):
    t=m.root(code);w=ap(('r',0),m.compile(dec(want),[]),('r',1));d=0
    for node in path:
        t=whnf(m,t);w=whnf(m,w);h,xs=spine(t);j,ys=spine(w)
        if node=='under':
            assert h[0]==j[0]=='c'
            z=('r',2+d);d+=1;t=ap(t,z);w=ap(w,z)
        else:
            assert h==j and h[0]=='r' and len(xs)==len(ys)
            t=xs[node];w=ys[node]
    return t,w

WANTS={'0010':'000010','0000110':'000000110','0100100010':'000010','00011010':'0000011010','00000110110':'0000000110110','0001001010':'000010','000010':'00000010','0100100000110':'000000110'}
def check_record(r):
    bits=r['bits'];m=(Simplified2Machine if r.get('simplifier')==2 else SimplifiedMachine if r.get('simplified') else Machine)(dec(bits))
    code=r.get('probe','0010');t,w=navigate(m,r.get('path',[]),code,WANTS[code])
    equations=Realizer(m).check_rules()
    if r['kind']=='wrong':
        result=compare(m,m.root(code),ap(('r',0),m.compile(dec(WANTS[code]),[]),('r',1)),limit=1000)
        assert result['kind']=='wrong',result
        return dict(kind='wrong',equations=equations)
    if r.get('dag'):
        h,xs=spine(t);stk=list(reversed(xs))
        for _ in range(r['entry']):
            h=dag_advance(m,h,stk);assert h is not None
        q=tuples(r['pattern']);canon=Canon()
        assert canon.prefix(q,h,tuple(reversed(stk)))
        h,xs=spine(q);stk=list(reversed(xs))
        for _ in range(r['steps']):
            h=dag_advance(m,h,stk);assert h is not None
        assert r['steps']>0 and canon.prefix(q,h,tuple(reversed(stk)))
        return dict(kind='pump',equations=equations,entry=r['entry'],macro_steps=r['steps'],dag=True)
    for _ in range(r['entry']):
        t=m.step(t);assert t is not None
    if r['kind']=='pump':
        q=tuples(r['pattern']);assert prefix_match(q,t) is not None,'entry instance'
        u=q
        for _ in range(r['steps']):
            u=m.step(u);assert u is not None
        assert prefix_match(q,u) is not None,'pump result instance'
        assert r['steps']>0
        return dict(kind='pump',equations=equations,macro_steps=r['steps'])
    if r['kind']=='eval-grammar':
        if 'prefix' in r:
            h,xs=spine(t);t=ap(h,*xs[:r['prefix']])
        g=(SharedEvalGrammar if r.get('shared') else EvalGrammar)(m,r['precision'],max(30000,2*r['values']))
        a=g.run(t);assert a['kind']=='eval-grammar',a
        n=validate_eval(g,t)
        return dict(kind='eval-grammar',equations=equations,constraints=n,labels=len(g.labels),values=g.eval_count)
    assert r['kind']=='grammar'
    h,xs=spine(t);t=ap(h,*xs[:r['prefix']])
    g=Grammar(m,r.get('stack',4),max(10000,2*r['states']),r.get('precision',1))
    a=g.run(t);assert a['kind']=='grammar',a
    transitions=validate_graph(g,t)
    serial=[sorted(map(repr,p)) for p in g.prod],sorted(map(repr,g.states))
    digest=hashlib.sha256(json.dumps(serial).encode()).hexdigest()
    return dict(kind='grammar',equations=equations,states=len(g.states),transitions=transitions,graph_sha256=digest)

if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('input');p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=1000);p.add_argument('--output',default='verification.json');a=p.parse_args()
    rr=json.loads((HERE/a.input).read_text())['rows'];rr=[r for r in rr if r['kind'] in ['grammar','pump','wrong','eval-grammar']][a.start:a.start+a.count];out=[];start=time.monotonic()
    for r in rr:
        s=check_record(r);s['bits']=r['bits'];out.append(s)
        if time.monotonic()-start>95:break
    result=dict(count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['kind'] for x in out)),rows=out)
    (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
