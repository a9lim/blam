from advance_util import *
w=41
if __name__=='__main__':
 assert all(json.loads((P/f'cert{n}.json').read_text())['open']==[] for n in range(33,w))
 assert all((P/'proofs'/f'{module}.resources.json').is_file() for n in range(33,w) for module in json.loads((P/f'cert{n}.json').read_text())['modules'])
 total=sum(sum(h[v] for v in range(32,w+1)) for c,h in rows.items() if c!=closed)
 assert total<=300000
 for k,d in ((2,0),(2,1),(3,0),(3,1)):
    if not (P/f'probe41_{k}_{d}.json').exists():step('probe',w,k,d)
 ps=[json.loads(f.read_text()) for f in sorted(P.glob('probe41_*_*.json'))];assert len(ps)==4
 m=collections.Counter();es=[]
 for p in ps:m.update(p['mismatch']);es.extend(p['exceptions'])
 (P/'probe41.json').write_text(json.dumps(dict(w=41,total=sum(p['total'] for p in ps),exceptions=es,mismatch=dict(m),rss=max(p['rss'] for p in ps)),separators=(',',':')))
 # Certificate discovery is done only on previously recorded probe exceptions.
 certs=[];by_index={};modules=[];opened=[];kinds=collections.Counter()
 for start in range(0,len(es),450):
    code=10_000+start
    (P/f'probe{code}.json').write_text(json.dumps(dict(exceptions=es[start:start+450])))
    step('cert',code)
    r=json.loads((P/f'cert{code}.json').read_text());kinds.update(r['kinds']);opened.extend(start+i for i in r['open']);by_index.update({int(i)+start:k for i,k in r['by_index'].items()});modules.extend(r['modules'])
 (P/'cert41.json').write_text(json.dumps(dict(kinds=kinds,open=opened,by_index=by_index,modules=modules)))
 for mod in modules:step('leancheck',mod)
