#!/usr/bin/env python3
"""Five fixed probes of a derived boundary shape; no source generation."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json
ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / 'tools'))
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import blcc, lc

def parse(src, frame):
    p=blcc.P(src); term=blcc.p_lc(p); p.ws(); assert p.i==len(p.t)
    return blcc.to_db(term, frame)

def lean(t):
    if t[0]=='V': return f'(.var {t[1]})'
    if t[0]=='L': return f'(.lam {lean(t[1])})'
    return f'(.app {lean(t[1])} {lean(t[2])})'

def step(t):
    if t[0]=='V': return None
    if t[0]=='L':
        u=step(t[1]); return None if u is None else ('L',u)
    if t[1][0]=='L': return lc.beta(t[1],t[2])
    u=step(t[1])
    if u is not None: return ('A',u,t[2])
    u=step(t[2]); return None if u is None else ('A',t[1],u)

def normal(t):
    for k in range(100):
        u=step(t)
        if u is None: return t,k
        t=u
    raise AssertionError('fixed probe exceeded 100 steps')

def weight(t, depth=0):
    if t[0]=='V': return 4*depth if t[1]==depth+1 else t[1]+2
    if t[0]=='L': return 2+weight(t[1],depth+1)
    return 2+weight(t[1],depth)+weight(t[2],depth)

D=r'\s. s (\x. x x) (\a. a) (s s) j'
R=r'\s. s (\a. a) (s (\q. c)) (s (\x. x x) (\a. a) (s s) j)'
H0=r'\x. x c'
H1=r'\x. x (\q. c)'
terms={name:parse(src,('c','j')) for name,src in [('dual',D),('near_reader',R)]}
out=['import ClosureBarrier','namespace Blc.Close46Boundary','open Term SelfintClass SelfintWireCost SelfintLowerBound','set_option maxRecDepth 10000','set_option maxHeartbeats 2000000','']
records=[]
for name,t in terms.items():
    out += [f'def {name} : Term := {lean(t)}',f'theorem {name}_weight : cost {name} + 4 * depth {name} = {weight(t)} := by decide','']
    for n in (0,1,2,3):
        inp=lc.pair(lc.TRUE,('V',3)) if n==0 else lc.bitlist('1'*n+'0',('V',2))
        got,k=normal(('A',t,inp))
        if name=='dual': want=('V',1) if n==0 else (('A',('V',2),('V',1)) if n==1 else ('V',2))
        else:
            tail=lc.bitlist('1'*(n-1)+'0',('V',2)) if n else None
            want=('A',('V',3),('V',1)) if n==0 else ('A',('A',('V',0),tail),(('A',('V',2),('V',1)) if n==1 else ('V',2)))
        assert got==want,(name,n,lc.show(got))
        th=f'{name}_probe_{n}'
        out += [f'theorem {th} : Betas (.app {name} {lean(inp)}) {lean(want)} :=',f'  normalSteps_sound (by decide : normalSteps {k} (.app {name} {lean(inp)}) = some {lean(want)})','']
        records.append(dict(name=name,probe=n,steps=k,expected=lc.show(want),weight=weight(t)))
    (HERE/f'{name}.txt').write_text((D if name=='dual' else R)+'\n')
out += ['theorem near_reader_not_reader : ¬ Reader near_reader := by','  intro h','  have he := normalForm_unique near_reader_probe_1 h.one_red','    (SelfintClassNext.nft_normal (by decide)) varOut_normal','  cases he','', '#print axioms near_reader_not_reader']
for name,src in [('flat_factory',H0),('nested_factory',H1)]:
    t=parse(src,('s','c'))
    out += [f'theorem {name}_bits : wire {lean(t)} = {lc.size(t)} := by decide']
    records.append(dict(name=name,bits=lc.size(t)))
out += ['end Blc.Close46Boundary','']
(HERE/'BoundaryChecks.lean').write_text('\n'.join(out))
(HERE/'boundary-checks.json').write_text(json.dumps(records,indent=2)+'\n')
print(json.dumps(records,indent=2))
