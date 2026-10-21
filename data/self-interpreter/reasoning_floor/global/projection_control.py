#!/usr/bin/env python3
"""One existing semantic construction, used as a literal-head control."""
import sys
sys.dont_write_bytecode=True
import json
from pathlib import Path
from verify import ROOT,HERE,parse,lc,V,L,A,counts,nonlinear,width,chain
import battery

def main():
    e=parse((ROOT/'data/self-interpreter/machines/int165.lam').read_text())
    k=L(L(V(1)));f=L(L(V(0)))
    value=A(A(e,k),V(0))
    remainder=A(A(e,f),V(0))
    h=L(L(A(A(V(1),value),remainder)))
    assert lc.size(h)==366
    assert lc.size(value)==178 and lc.size(remainder)==177
    assert not chain(value) and not chain(remainder)
    src=lc.show(h)+'\n'
    assert parse(src)==h
    (HERE/'control366.lam').write_text(src)
    (HERE/'control366.blc').write_text(lc.enc(h)+'\n')
    battery.BLAM=str(HERE/'blam-frozen')
    ok,skip,fail=battery.check(h,threads=2)
    assert (ok,skip,len(fail))==(667,1,0)
    line=f'{lc.size(h)} bits  ok={ok} skip={skip} fail={len(fail)}'
    report=dict(idea='Literal continuation-headed decoder with two projections of int165',
                value_bits=lc.size(value),remainder_bits=lc.size(remainder),
                source_bits=lc.size(h),battery=line,
                value_nonlinear=nonlinear(value),remainder_nonlinear=nonlinear(remainder))
    (HERE/'projection-control.json').write_text(json.dumps(report,indent=2)+'\n')
    print(line)
    print(json.dumps(report))

if __name__=='__main__':main()
