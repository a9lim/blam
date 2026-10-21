"""Two deliberately narrow, symbolic holes derived in the blind analysis.

No interpreter enumeration: the zero-arm hole has only q, s, bit0 in scope;
the skip hole has only s.  Sizes and limits are written into the output.
"""
from functools import lru_cache
from check import *

@lru_cache(None)
def terms(n, k):
    out=[]
    if 2 <= n <= k+1: out.append(('V', n-2))
    if n >= 4: out += [('L', x) for x in terms(n-2,k+1)]
    for a in range(2,n-3):
        out += [('A',f,x) for f in terms(a,k) for x in terms(n-2-a,k)]
    return tuple(out)

K = r'(\u \v.u)'
F = r'(\u \v.v)'

def norm(src):
    return lc.nf(compile_src(src), [500])

def zero_probe(z, bit):
    return (r'\q \tail.(\r.(\s \bit0. (' + z + r') r r)'
            + r'(\f.f ' + K + r' r) ' + K + r') (\f.f ' + bit + r' tail)')

out=[]
checked=0
fuel_exhausted=0
for n in range(2,15):
    for t in terms(n,3):
        checked+=1
        z=lc.show(t,names=['bit0','s','q'])
        try:
            if all(norm(zero_probe(z,b)) == norm(r'\q \tail.q '+b+' tail') for b in (K,F)):
                out.append((n,z))
        except lc.Fuel:
            fuel_exhausted+=1
print(f'zero-arm hole: checked={checked}; fuel_exhausted={fuel_exhausted}; max_bits=14; rigid q and tail; second bit K or F')
for n,z in out: print(f'  {n}: {z}')
assert out and min(n for n,z in out)==14
assert fuel_exhausted==0

def stream(bits):
    s='tail'
    for b in reversed(bits):
        s=r'(\f.f '+(K if b=='0' else F)+' '+s+')'
    return s

checked=0; out=[]; fuel_exhausted=0
want=norm(r'\tail.tail')
for n in range(2,11):
    for t in terms(n,1):
        checked+=1
        z=lc.show(t,names=['s'])
        try:
            if all(norm(r'\tail.(\s.'+z+') '+stream('1'*i+'0'))==want for i in range(5)):
                out.append((n,z))
        except lc.Fuel:
            fuel_exhausted+=1
print(f'skip hole: checked={checked}; fuel_exhausted={fuel_exhausted}; max_bits=10; prefixes 1^n0 for n=0..4; rigid tail')
for n,z in out: print(f'  {n}: {z}')
assert out and min(n for n,z in out)==10
assert fuel_exhausted==0
