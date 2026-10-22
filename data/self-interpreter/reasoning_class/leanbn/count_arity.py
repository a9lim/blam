#!/usr/bin/env python3
"""Count only, not a search. Independent exact normal grammar with j at depth 1."""
from functools import cache
@cache
def term(d,b,j,head=False):
    if b<2 or j>1: return 0
    v=sum(b==i+2 for i in range(d+1)) if j==0 else int(d==1 and b==4)
    if not head and b>=4 and j==0: v+=term(d+1,b-2,0)
    for p in range(2,b-3):
        for x in range(j+1): v+=term(d,p,x,True)*term(d,b-2-p,j-x)
    return v
@cache
def forest(k,b,j):
    if k==0: return int(b==0 and j==0)
    return sum(term(1,p,x)*forest(k-1,b-p,j-x) for p in range(2,b-2*(k-1)+1) for x in range(j+1))
if __name__=='__main__':
    for k in (9,8,7):
        print(k, sum(forest(k,b,1) for b in range(2*k,46-4-2*k)))
