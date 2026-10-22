"""Focused independent normalizer/cost controls and the lane Lean audit."""
import sys
sys.dont_write_bytecode=True
import json,hashlib,time,resource,subprocess
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
sys.path.insert(0,str(HERE.parent/'coord'))
import rd
import high_count as hc
import high_check as g
from high_check import d

canonical=r'\s. s I (\u. s (\q. c) (s s u)) j'
assert rd.check(canonical,nmax=8,verbose=False)==(True,(46,42,1,4,8,6,1,1))

# Convert named normal forms, treating every unbound name rigidly.
def conv(t,env=()):
    if t[0]=='V':return d.V(env.index(t[1])) if t[1] in env else d.Kc(t[1])
    if t[0]=='L':return d.L(conv(t[2],(t[1],)+env))
    return d.A(conv(t[1],env),conv(t[2],env))

R=conv(rd.parse(canonical))
for n in range(9):
    inp=d.Z() if n==0 else d.U(n)
    want=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
    assert g.nf(d.A(R,inp),[20000])==want

configs=list(hc.pinned_configs())
samples=[]
for i in [0,len(configs)//7,len(configs)//3,len(configs)//2,2*len(configs)//3,len(configs)-1]:
    flavor,m,b,a,p,j,lb,la,lp,mb,ma,mp,num=configs[i]
    A=d.A(d.V(0),d.V(0)) if flavor=='flat_ss' else next(g.terms(a,0,0,0,j,ma,la))
    B=next(g.terms(b,0,1,m,0,mb,lb))
    Cs=next(g.pending(p,1-j,mp,lp))
    body=d.A(d.L(B),A)
    for C in Cs:body=d.A(body,C)
    full=d.L(body);src=d.show(full,['c']);named=rd.parse(src)
    cost,L,V,X,J,JD=g.stats(full)
    assert rd.weight(named)==(cost+4*JD,cost,JD,L,V,X,g.occ(full,0),J)
    for n in (0,1,3):
        inp=d.Z() if n==0 else d.U(n)
        dbgot=g.nf(d.A(d.subst(full,0,d.Kc('c')),inp),[20000])
        nminp=rd.Z('r') if n==0 else rd.U(n,'N')
        nmgot=conv(rd.normalize(('A',named,nminp),fuel=20000))
        assert dbgot==nmgot
    samples.append(src)

start=time.monotonic()
run=subprocess.run(['lean','-j2',str(HERE/'FlatRestHole.lean')],cwd=ROOT/'lean',
    env=__import__('os').environ|{'LEAN_PATH':str(ROOT/'lean/.lake/build/lib/lean')},
    text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=110)
(HERE/'FlatRestHole.log').write_text(run.stdout)
assert run.returncode==0,run.stdout
assert 'sorryAx' not in run.stdout and 'error:' not in run.stdout
peak=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss
assert peak<900_000_000
names=['high_count.py','high_check.py','high_check.json','flat_count.py','flat_check.py',
       'flat_check.json','FlatRestHole.lean','FlatRestHole.log']
record=dict(canonical_reader=dict(weight=46,probes='zero and unary 1..8',passed=True),
    independent_named_checks=dict(sources=len(samples),probes_each=['zero','unary1','unary3'],sources_checked=samples),
    lean=dict(exit_code=run.returncode,seconds=time.monotonic()-start,peak_rss_bytes=peak,threads=2,
              remaining_hypothesis='TinyUnaryClassification; existing computer-checked 23-bit arm inventory'),
    sha256={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in names})
(HERE/'verification.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record,indent=2))
