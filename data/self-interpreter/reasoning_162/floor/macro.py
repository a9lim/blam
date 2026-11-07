import sys
sys.dont_write_bytecode=True
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from analyze37 import *
N=('N',)
def j(x):return ('J',x)
def b(x):return ('B',x)
def c(x,y):return ('C',x,y)
def app(*xs):
    t=xs[0]
    for a in xs[1:]:t=('A',t,a)
    return t

def show(t):
    if t==N:return 'N'
    if t[0] in ('J','B'):return t[0]+'('+show(t[1])+')'
    if t[0]=='C':return 'C('+show(t[1])+','+show(t[2])+')'
    args=[]
    while t[0]=='A':args.insert(0,t[2]);t=t[1]
    return '('+' '.join([show(t)]+[show(a) for a in args])+')'

def subst(t,env):
    if t[0]=='V':return env[t[1]]
    assert t[0]=='A'
    return app(subst(t[1],env),subst(t[2],env))

def step(t,mode,body):
    h=t;args=[]
    while h[0]=='A':args.insert(0,h[2]);h=h[1]
    if h==N and args:
        x=args.pop(0)
        if mode=='200_0':v=app(x,j(x),x)
        elif mode=='200_1':v=app(x,app(x,j(x)))
        elif mode=='200_2':v=app(x,x,j(x))
        elif mode in ('101','100'):v=app(x,j(x))
        elif mode=='110':v=app(x,b(x))
        else:raise ValueError(mode)
    elif h[0]=='J' and len(args)>=2:
        x=h[1];y=args.pop(0);z=args.pop(0)
        v=subst(body,[z,y,x])
    elif h[0]=='B' and args:
        x=h[1];y=args.pop(0);v=app(y,c(x,y))
    elif h[0]=='C' and args:
        x,y=h[1:];z=args.pop(0);v=subst(body,[z,y,x])
    else:return None
    return app(v,*args)

def size(t):return 1+sum(size(x) for x in t[1:])

if __name__=='__main__':
    import json
    rows=json.loads(Path(__file__).with_name('four_lambda.json').read_text())
    for idx in [int(x) for x in sys.argv[1:]]:
        r=rows[idx];e,_=lc.decode(r['wire']);n=e[2]
        mode=r['family'][5:] if r['family'].startswith('diag_') else '100'
        if mode=='200':
            nbody=n[1];
            if nbody[1]==V(0):mode='200_1'
            elif nbody[1][2]==V(0):mode='200_2'
            else:mode='200_0'
        # Get T by descending to final lambda body.
        def last(t):
            if t[0]=='L':
                # c is identified by its subtree containing no lambdas.
                if t[1][0]!='L' and not any_lam(t[1]):return t[1]
                return last(t[1])
            if t[0]=='A':
                return last(t[1]) if any_lam(t[1]) else last(t[2])
            raise ValueError(t)
        def any_lam(t):return t[0]=='L' or (t[0]=='A' and (any_lam(t[1]) or any_lam(t[2])))
        body=last(n)
        t=app(N,N)
        if r['family']=='triple0':t=app(t,N)
        if r['family']=='triple1':t=app(N,t)
        print('\n',idx,r['family'],mode,r['src'])
        seen=[]
        for k in range(18):
            print(k,show(t)[:3500])
            if size(t)>300:break
            t=step(t,mode,body)
            if t is None:break
