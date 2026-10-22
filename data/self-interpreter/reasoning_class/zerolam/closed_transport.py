"""Pinned finite case: closed application-root Y of size <= 29 in C[Y j].
Completeness: a reader supplies s and c outside closed Y, so C costs >=9;
w = 8+|C|+|Y| <=46 implies |Y|<=29. Application children are closed and
cost >=4, hence each <=23. Enumerate exactly the closed root pairs, using the
complete recursive closed-term basis through 23. No reader enumeration.
"""
import sys, time, resource
sys.dont_write_bytecode = True
resource.setrlimit(resource.RLIMIT_CPU, (90,90))
try: resource.setrlimit(resource.RLIMIT_AS, (950_000_000,950_000_000))
except (OSError,ValueError): pass
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/jn')
import dbn as d

def cost(t):
    if t[0]=='v':return t[1]+2
    if t[0]=='l':return 2+cost(t[1])
    if t[0]=='a':return 2+cost(t[1])+cost(t[2])
    raise ValueError(t)
def lams(t):
    if t[0]=='v':return 0
    if t[0]=='l':return 1+lams(t[1])
    return lams(t[1])+lams(t[2])
def bounded_size(t, limit=1500):
    n=0; stack=[t]
    while stack:
        q=stack.pop();n+=1
        if n>limit:return n
        if q[0]=='l':stack.append(q[1])
        elif q[0]=='a':stack.extend(q[1:])
    return n

def safe_head(t):
    stack=[];seen={};hist=[]
    for step in range(200):
        while t[0]=='a':stack.append(t[2]);t=t[1]
        if t[0]=='l' and not stack:return 'lambda',t
        if t[0]!='l':
            for x in reversed(stack):t=d.A(t,x)
            return 'neutral',t
        if bounded_size(t)>1500 or any(bounded_size(x)>1500 for x in stack):
            return 'cap',None
        key=(t,stack[-1]);depth=len(stack)
        if key in seen:
            s0,d0=seen[key]
            if depth>=d0 and min(hist[s0:])>=d0-1:return 'cycle',None
        seen[key]=(step,depth)
        t=d.beta(t[1],stack.pop());hist.append(len(stack))
    return 'cap',None

start=time.monotonic()
basis={n:[] for n in range(24)}
for c,t in d.enum_terms(23,0,None):basis[c].append(t)
print('basis',sum(map(len,basis.values())),flush=True)
num=cycles=caps=better=eq=larger=0
exceptions=[]
deferred=[]
for n in range(30):
    for a in range(4,n-5):
        b=n-2-a
        if a>23 or b>23:continue
        for u in basis[a]:
            for v in basis[b]:
                t=d.A(u,v);num+=1
                assert num<=100000
                assert time.monotonic()-start<110
                kind,h=safe_head(t)
                if kind=='cycle':cycles+=1;continue
                if kind=='cap':
                    caps+=1;exceptions.append(('CAP',n,d.show(t)));deferred.append((n,t));continue
                assert h[0]=='l'
                nh=cost(h);dl=lams(h)-lams(t)
                if nh<n:better+=1
                elif nh==n:
                    eq+=1;exceptions.append(('EQ',n,dl,d.show(t),d.show(h)));deferred.append((n,t))
                else:
                    larger+=1;exceptions.append(('GROW',n,nh,dl,d.show(t),d.show(h)));deferred.append((n,t))
print('num',num,'strict cheaper WHNF',better,'equal',eq,'larger',larger,'cycles',cycles,'uncertified caps',caps)
print('elapsed seconds',round(time.monotonic()-start,4),'maxrss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
print('exceptions',len(exceptions))
with open('/Users/a9lim/Work/blam/tmp/round4/zerolam/closed_exceptions.txt','w') as f:
    for x in exceptions: print(x,file=f)
assert num<100000

# Close only the deferred family using complete, tiny context budgets.
def fill(t,x):
    if t==d.Kc('j'):return x
    if t[0]=='a':return d.A(fill(t[1],x),fill(t[2],x))
    if t[0]=='l':return d.L(fill(t[1],d.shift(x,1)))
    return t

def compare(t,target,calls):
    calls[0]-=1
    if calls[0]<0:return 'unknown'
    kind,h=safe_head(t)
    if kind=='cycle':return 'different'
    if kind=='cap':return 'unknown'
    if kind=='lambda':
        if target[0]!='l':return 'different'
        return compare(h[1],target[1],calls)
    if target[0]=='l':return 'different'
    def spine(q):
        xs=[]
        while q[0]=='a':xs.append(q[2]);q=q[1]
        return q,xs[::-1]
    h0,ha=spine(h);t0,ta=spine(target)
    if h0!=t0 or len(ha)!=len(ta):return 'different'
    flags=[compare(x,y,calls) for x,y in zip(ha,ta)]
    if 'different' in flags:return 'different'
    if 'unknown' in flags:return 'unknown'
    return 'same'

contexts=[(n,t) for n,t in d.enum_terms(16,2,'top') if d.free_in(t,0) and d.free_in(t,1)]
print('contexts through 16 containing s and c',len(contexts))
pairs=passed=unresolved=0
for ny,y in deferred:
    x=d.A(y,d.Kc('j'))
    for nc,ctx in contexts:
        if nc+ny>38:continue
        pairs+=1;assert num+pairs<=100000
        assert time.monotonic()-start<110
        body=fill(ctx,x)
        probes=[(d.Z(),d.A(d.Kc('r'),d.Kc('j')))]
        probes += [(d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))) for n in (1,2,3)]
        flags=[compare(d.inst(body,s),target,[500]) for s,target in probes]
        if 'different' in flags:continue
        if 'unknown' in flags:
            unresolved+=1;print('UNRESOLVED',ny,nc,d.show(y),d.show(ctx),flags)
        else:
            passed+=1;print('SURVIVOR',ny,nc,d.show(y),d.show(ctx))
print('context pairs',pairs,'passed all probes',passed,'unresolved pairs',unresolved)
print('final elapsed seconds',round(time.monotonic()-start,4),'maxrss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
