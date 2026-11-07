"""Independent named-term controls, price identities, and final Lean audit.
No new source sweep. Raw unknowns stay in repeated_helper.json; the one
identified exception is discharged by Followup.badR_not_reader.
"""
import sys
sys.dont_write_bytecode=True
import json,hashlib,time,subprocess,resource,os
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
sys.path.insert(0,str(HERE.parent/'coord'))
import rd
import high_check as g
from high_check import d
import linear_lambda as ll
import repeated_helper as rh

def cost(t,env=(),weighted=True):
    if t[0]=='V':
        v=t[1]
        if v in env:return env.index(v)+2
        if v=='c':return len(env)+2
        if v=='j':return 4*len(env) if weighted else len(env)+3
        raise ValueError(v)
    if t[0]=='L':return 2+cost(t[2],(t[1],)+env,weighted)
    return 2+cost(t[1],env,weighted)+cost(t[2],env,weighted)

def uses(t,name,depth=0):
    if t[0]=='V':return (1,depth) if t[1]==name else (0,0)
    if t[0]=='L':return (0,0) if t[1]==name else uses(t[2],name,depth+1)
    a=uses(t[1],name,depth);b=uses(t[2],name,depth)
    return a[0]+b[0],a[1]+b[1]

def parse(s):return rd.parse(s)
def apps(f,as_):
    for a in as_:f=('A',f,a)
    return f

profiles=[]
for bs,aas,css in [
 (r'\y z. x (y c)',r's I j',[]),
 (r's x (c x)',r's I j',[]),
 (r'x (\y. x y) x',r's (\q.c) j',['s']),
 (r'x x x x',r'I j',[])]:
    B,A=parse(bs),parse(aas);Cs=[parse(s) for s in css]
    R=('L','s',apps(('A',('L','x',B),A),Cs))
    N=('L','s',apps(rd.subst(B,'x',A),Cs))
    H=('A',('L','h',rd.subst(N,'j',('V','h'))),('V','j'))
    m,M=uses(B,'x');q=uses(A,'s')[0]+uses(A,'c')[0]
    G=uses(B,'s')[0]+uses(B,'c')[0]
    a=cost(A,('s',),False)-4
    first=(m-1)*a+(q+3)*M+2*m-8-G
    hoisted=(m-1)*a+q*M+m-4-uses(B,'s')[0]+m*uses(A,'c')[0]+sum(uses(c,'c')[0] for c in Cs)
    assert cost(N)-cost(R)==first
    assert cost(H)-cost(R)==hoisted
    profiles.append(dict(m=m,a=a,q=q,M=M,G=G,source=cost(R),contracted=cost(N),hoisted=cost(H)))

chain=[r'\s. ((\x y z. y x) (s I j)) s c',r'\s. (\y z. y (s I j)) s c',
       r'\s. (\z. s (s I j)) c',r'\s. s (s I j)']
assert [cost(parse(s)) for s in chain]==[42,44,33,20]

# Independent named normalizer checks six chosen sources from the new
# lambda-headed family. They are complete reductions, not fuel failures.
AA,BB=ll.catalogs();cfg=list(ll.configs(AA,BB));samples=[]
for i in (0,len(cfg)//5,2*len(cfg)//5,3*len(cfg)//5,4*len(cfg)//5,len(cfg)-1):
    a,q,A,b,D,G,B,p,mp,lp,n=cfg[i]
    Cs=next(g.pending(p,0,mp,lp))
    Rb=d.A(d.L(B),A)
    for C in Cs:Rb=d.A(Rb,C)
    R=d.L(Rb);src=d.show(R,['c']);named=parse(src)
    assert rd.weight(named)[0]==10+a+b+p
    for k in (0,1):
        stream=rd.Z('r') if k==0 else rd.U(k,'N')
        target=parse('r j') if k==0 else ('A',('A',('V','c'),rd.U(k-1,'N')),('V','N'))
        named_ok=rd.alpha_eq(rd.normalize(('A',named,stream),2000),rd.normalize(target,2000))
        contracted=d.beta(B,A)
        for C in Cs:contracted=d.A(contracted,C)
        dt=d.A(d.Kc('r'),d.Kc('j')) if k==0 else d.A(d.A(d.Kc('c'),d.U(k-1)),d.Kc('N'))
        direct_ok=rh.matches(d.inst(contracted,d.Z() if k==0 else d.U(k)),dt,[2000])
        assert direct_ok==named_ok
    samples.append(dict(source=src,weight=10+a+b+p))

raw=json.loads((HERE/'repeated_helper.json').read_text())
assert raw['unknowns']==[dict(m=2,A=r'\x2. x2 (\x3. x3 x3 c)',weight=44,reason='fuel')]
start=time.monotonic()
env=dict(os.environ,LEAN_PATH=str(ROOT/'lean/.lake/build/lib/lean'))
cmd=['lean','-j2',str(HERE/'Followup.lean')]
p=subprocess.run(cmd,cwd=ROOT/'lean',env=env,capture_output=True,text=True,timeout=110)
(HERE/'Followup.log').write_text(p.stdout+p.stderr)
assert p.returncode==0 and 'sorryAx' not in p.stdout and 'error:' not in p.stdout
out=dict(price_controls=profiles,chain_weights=[42,44,33,20],independent_samples=samples,
    repeated_helper_adjudication=dict(sources=raw['sources'],raw_fuel_unknowns=1,
      kernel_certified_exceptions=['Blc.BodyRedexFollowup.badR_not_reader'],unresolved=0,survivors=0),
    lean=dict(exit_code=p.returncode,seconds=time.monotonic()-start,
      peak_rss_bytes=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,threads=2),
    hashes={f:hashlib.sha256((HERE/f).read_bytes()).hexdigest() for f in
      ['Followup.lean','linear_lambda.py','linear_lambda.json','repeated_helper.py','repeated_helper.json']})
(HERE/'followup_verification.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
