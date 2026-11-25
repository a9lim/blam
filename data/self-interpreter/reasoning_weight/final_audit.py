from table import *
import hashlib
def audit(w):
    stats=collections.Counter();finite=collections.Counter();n=0
    for v in range(32,w+1):
        p=json.loads((P/f'probe{v}.json').read_text());n+=p['total']
        assert p['total']==sum(h[v] for c,h in rows.items() if c!=closed)
        finite.update(p['mismatch']);es=p['exceptions'];assert sum(p['mismatch'].values())+len(es)==p['total']
        if not es:continue
        r=json.loads((P/f'cert{v}.json').read_text());assert not r['open']
        assert {int(i) for i in r['by_index']}==set(range(len(es)))
        assert collections.Counter(r['by_index'].values())==r['kinds']
        stats.update(r['kinds']);nr=0
        for name in r['modules']:
            f=P/'proofs'/f'{name}.lean';rs=json.loads(f.with_suffix('.resources.json').read_text());assert rs['code']==0 and rs['peak']<1_000_000_000 and rs['seconds']<120
            assert rs['source_sha256']==hashlib.sha256(f.read_bytes()).hexdigest()
            nr+=f.read_text().count('#print axioms')
        assert nr==len(es)
    return dict(inclusive_weight=w,sources=n,finite=finite,certificates=stats)
if __name__=='__main__':
 import sys
 report=audit(int(sys.argv[1]))
 p=P/'audit.json';p.write_text(json.dumps(report,indent=2));print(report)
 with (P/'next-weight.tsv').open('w') as f:
    c=csv.writer(f,delimiter='\t');w=report['inclusive_weight']+1;c.writerow(['k','depth','hole','head','t','h',f'weight {w}'])
    for cell,h in sorted(rows.items()):
        if cell!=closed and h[w]:c.writerow([*cell,h[w]])
