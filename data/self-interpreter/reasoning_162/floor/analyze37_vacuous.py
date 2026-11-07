import sys
sys.dont_write_bytecode=True
from pathlib import Path
from analyze37 import *
rows=[]
for a,b,c in itertools.permutations('abc'):
    src='\\a.a (\\b\\c.'+a+' (\\u.'+b+' '+c+'))'
    n=parse(src);e=A(D,n)
    assert normal(n) and lc.size(e)==37
    rows.append(dict(family='boxed_pair',src=src,wire=lc.enc(e),**assess(e)))
for a,b,c in itertools.permutations('abc'):
    for assoc in (0,1):
        for box in 'abc':
            p=[f'(\\u.{x})' if x==box else x for x in (a,b,c)]
            body=f'({p[0]} {p[1]}) {p[2]}' if assoc==0 else f'{p[0]} ({p[1]} {p[2]})'
            src='\\a\\b.a (\\c.'+body+')';n=parse(src)
            if not normal(n):continue
            e=A(D,n)
            assert lc.size(e)==37
            rows.append(dict(family='outer_between_box',src=src,wire=lc.enc(e),**assess(e)))
Path(__file__).with_name('five_lambda.json').write_text(json.dumps(rows,indent=2)+'\n')
from collections import Counter
print(len(rows),Counter(r['kind'] for r in rows))
for i,r in enumerate(rows):
    if r['kind'].startswith('unresolved'):print(i,r['family'],r['kind'],r['src'])
