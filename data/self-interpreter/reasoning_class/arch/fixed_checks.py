import json, os, sys, time
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT/'tools/self-interpreter'))
import battery
battery.BLAM = str(HERE/'blam')

def stats(t):
    if t[0]=='V': return (0,0,t[1])
    if t[0]=='L':
        l,a,x=stats(t[1]); return (l+1,a,x)
    l,a,x=stats(t[1]); m,b,y=stats(t[2]); return (l+m,a+b+1,x+y)

def compile(s): return battery.compile_lam(s)
def check(t,want):
    a=battery.normalize(battery.enc(t),1<<16)
    b=battery.normalize(battery.enc(want),1<<16)
    assert a is not None and a==b, (a,b)
    return True

start=time.monotonic()
results={}
programs=[compile(r'(\x.x x) (\x.x x)'),
          compile(r'\z.(\x.x x) (\x.x x)'),
          compile(r'((\x.x x) (\x.x x)) ((\x.x x) (\x.x x))')]
for name in ('before_parse','joint_dispatch','thunk_token'):
    E=compile((HERE/(name+'.lam')).read_text())
    bits=battery.enc(E)
    (HERE/(name+'.blc')).write_text(bits+'\n')
    l,a,x=stats(E)
    assert len(bits)==2*l+4*a+2+x
    tests=[]
    for m in programs:
        got=('L',('A',('A',battery.shift(E,1),battery.FALSE),
                       battery.bitlist(battery.enc(m),('V',0))))
        tests.append(check(got,compile(r'\n.n')))
    results[name]={'bits':len(bits),'L':l,'A':a,'X':x,
                   'divergent_source_suffix_probes':tests}
    if name=='thunk_token':
        P=E[1][1]
        assert stats(P)==(17,25,35)
        k=compile(r'\v \t \u.t')
        unary=[]
        for n in (1,2,5,17):
            got=('L',('A',('A',battery.shift(P,1),k),
                       battery.bitlist('1'*n+'0',('V',0))))
            unary.append(check(got,compile(r'\n \u.n')))
        results[name]['core_bits']=len(battery.enc(P))
        results[name]['unary_thunk_probes']=unary
results['elapsed_seconds']=time.monotonic()-start
(HERE/'fixed_checks.json').write_text(json.dumps(results,indent=2)+'\n')
print(json.dumps(results,indent=2))
