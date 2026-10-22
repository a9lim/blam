"""Fixed open-component checks only: no candidate interpreter or search."""
import json, os, sys, subprocess, time
from pathlib import Path
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
os.environ['TMPDIR']=str(HERE)
os.environ['RAYON_NUM_THREADS']='2'
sys.dont_write_bytecode=True
sys.path.insert(0,str(ROOT/'tools/self-interpreter'))
import battery
battery.BLAM=str(HERE/'blam')
K=r'(\x \y.x)'
F=r'(\x \y.y)'
I=r'(\x.x)'
J=r'(\h \x.h (\y.x))'
T3=r'(\a \b \d.d)'
def A(e): return rf'(\env \arg.{e} (\z \r.z arg (r env)))'
def B(e,f): return rf'(\env.{e} env ({f} env))'
def parse(s): return battery.compile_lam(s)
def size(t): return len(battery.enc(t))
def stats(t):
    if t[0]=='V':return (0,0,t[1])
    if t[0]=='L':
        l,a,x=stats(t[1]);return (l+1,a,x)
    l,a,x=stats(t[1]);m,b,y=stats(t[2]);return (l+m,a+b+1,x+y)
def norm(t):
    r=subprocess.run([battery.BLAM,'normalize',battery.enc(t),'--beta','65536'],capture_output=True,text=True,timeout=10)
    assert r.returncode==0,r.stderr
    out=r.stdout.split()[0]
    assert set(out)<={'0','1'}
    return out
checks={}
def eq(name,a,b):
    checks[name]=norm(parse(a))==norm(parse(b))
    assert checks[name],name

def stream(bits,tail='n'):
    for bit in reversed(bits):tail=rf'(\z.z {K if bit=="0" else F} {tail})'
    return tail

start=time.monotonic()
V=r'(\v.s (\q.c) (s s v))'
Vth=r'(s (\q.c) (s s))'
Qold=rf'(\b.p (\e.b (c {A("e")}) (\t \u.p (\f.c {B("e","f")}) (t u))))'
Qmode=rf'(\b.b (\q.q (\e.c {A("e")})) (\q.q (\e \t \u.(u {T3}) (\f.c {B("e","f")}) (t u))) p)'
Qguard=rf'(\b.p (\e.b (c {A("e")}) (\t \u.u (\f.c {B("e","f")}) (t u))))'
Qraw=rf'(\b \t \d.d (\e.b (c {A("e")}) (\n \u.u (\f.c {B("e","f")}) n)) t)'
Qcps=rf'(\b.p (\e.b (c {A("e")}) (\T.T (p (\f.c {B("e","f")})))))'
# These are nonrecursive generators, never closed with a fixed-point knot.
gens={
 'old_thunk':rf'\p \c \s.s {I} {Vth} {Qold}',
 'parser_exposure':rf'\p \c \s.s {I} {Vth} {Qmode}',
 'guard_parser':rf'\p \c \s.s {I} {Vth} (s {K} {Qguard} p)',
 'four_operand_raw':rf'\p \c \s.s {I} {V} {Qraw} p',
 'suffix_transformer':rf'\p \c \s.s {I} (s (\q.c) (\k \u.k (s s u))) {Qcps}',
}
expected={'old_thunk':151,'parser_exposure':170,'guard_parser':164,'four_operand_raw':169,'suffix_transformer':158}
prices={}
for name,source in gens.items():
    t=parse(source);l,a,x=stats(t)
    assert size(t)==expected[name],(name,size(t),expected[name])
    assert size(t)==2*l+4*a+2+x
    prices[name]={'generator_bits':size(t),'L':l,'A':a,'X':x,'with_old_knot':size(t)+20}
prices['parser_exposure'].update(single_site_depth=3,core=170+3+14,public_adapter=30,total=217)
prices['guard_parser'].update(core=184,public_adapter=30,total=214)
prices['four_operand_raw'].update(single_site_depth=2,core=169+2+14,public_adapter=26,total=211)
prices['suffix_transformer'].update(core=178,public_adapter=21,total=199)
assert size(parse(J))==14
assert size(parse(T3))==8

reader=rf'(\s.s {I} (s (\v.c) (s s)) q)'
eq('reset_J',rf'\q \c.{reader} {J}',r'\q \c.c')
eq('I_is_not_reset',rf'\q \c.{reader} {I}',r'\q \c.c q')
eq('J_I',rf'{J} {I}',K)
eq('J_preserves_constant',rf'\k.{J} ({K} k)',rf'\k.{K} k')
eq('expose_parser',rf'\p \c.{Qmode} {T3}',r'\p \c.p')
eq('raw_ABS',rf'\p \c \r.{Qraw} {K} r p',rf'\p \c \r.p (\e.c {A("e")}) r')
eq('raw_APP',rf'\p \c \r.{Qraw} {F} r p',rf'\p \c \r.p (\e \n \u.u (\f.c {B("e","f")}) n) r')
for n in (1,2,5,17):
    s=stream('1'*n+'0');r=stream('1'*(n-1)+'0')
    eq(f'raw_variable_{n}',rf'\c \q \p \n.(\s.s {I} {V} q p) {s}',rf'\c \q \p \n.c {r} n p')
    eq(f'suffix_transformer_{n}',rf'\k \u \n.(\s.(\k \u.k (s s u)) k u) {s}',r'\k \u \n.k n')
result={'scope':'fixed nonrecursive components only; no complete new interpreter built','prices':prices,'checks':checks,'elapsed_seconds':time.monotonic()-start}
(HERE/'followup_checks.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
