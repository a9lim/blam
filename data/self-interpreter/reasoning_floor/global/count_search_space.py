#!/usr/bin/env python3
"""Exact grammar counts; no lambda-term candidates are constructed."""
from functools import cache
from pathlib import Path
import json
import time

@cache
def count(n,d):
    if n<2:return 0
    value=int(n-2<d)
    if n>=4:value+=count(n-2,d+1)
    for i in range(2,n-3):value+=count(i,d)*count(n-2-i,d)
    return value

if __name__=='__main__':
    start=time.monotonic()
    report=dict(closed_exact_164=count(164,0),
                closed_below_165=sum(count(n,0) for n in range(4,165)),
                closed_exact_167=count(167,0),dp_states=count.cache_info().currsize,
                seconds=round(time.monotonic()-start,4),
                method='Grammar counting only; no candidate terms generated.')
    Path(__file__).with_name('search-count.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
