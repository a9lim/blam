"""Audit the completed follow-up artifacts without repeating their searches."""
from pathlib import Path
import json,hashlib,re,collections
H=Path(__file__).resolve().parent

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
mods=['Nested','Uniform']+json.loads((H/'nested_modules.json').read_text())
compiled=[]
for name in mods:
 r=json.loads((H/f'{name}.resources.json').read_text());s=(H/f'{name}.lean').read_text();log=(H/f'{name}.log').read_text()
 assert r['code']==0 and r['seconds']<120 and r['rss_bytes']<2_000_000_000 and r['sha256']==sha(H/f'{name}.lean')
 assert not re.search(r'\bsorry\b|(?m:^\s*axiom\s+\w)',s) and 'sorryAx' not in log
 assert 'depends on axioms' in log
 compiled.append(r)
manifest=json.loads((H/'nested_manifest.json').read_text());pairs={(r['file'],r['index']) for r in manifest};assert len(pairs)==len(manifest)

def tup(x):return tuple(tup(y) for y in x) if isinstance(x,list) else x
cells=[]
for k,d in [(2,0),(2,1),(3,0),(3,1),(4,0)]:
 name=f'check_nested_{k}_{d}.json';r=json.loads((H/name).read_text());c=json.loads((H/f'nested_count_{k}_{d}.json').read_text())
 assert c['before']<=100000 and r['total']==c['remaining'] and c['remaining']+c['cut']==c['before']
 assert sum(r['finite_failures'].values())+len(r['exceptions'])==r['total'] and not r['hits']
 assert r['seconds']<120 and r['rss_bytes']<1_000_000_000
 for i,e in enumerate(r['exceptions']):
  assert (name,i) in pairs
  m=next(x for x in manifest if x['file']==name and x['index']==i)
  assert m['source_sha256']==hashlib.sha256(repr(tup(e['source'])).encode()).hexdigest()
  assert m['theorem'] in (H/f'{m["module"]}.log').read_text()
 cells.append({**{a:b for a,b in r.items() if a not in ('exceptions','hits')},'exceptions':len(r['exceptions']),'before':c['before'],'price_cut':c['cut']})
inputs={str(p.relative_to(H.parent)):sha(p) for p in [H.parent/'rootnl'/'grammar.py',H.parent/'rootnl'/'generate.py',H.parent/'rootnl'/'check.py',H.parent/'rootnl'/'Certificates.lean',H.parent/'rootnl'/'Owl.lean',H.parent/'simplify'/'count_extensions.py']}
rec=dict(modules=compiled,nested=cells,nested_theorems=len(manifest),certificate_kinds=dict(collections.Counter(r['kind'] for r in manifest)),input_hashes=inputs)
(H/'followup_verification.json').write_text(json.dumps(rec,indent=2)+'\n');print('verified',len(compiled),'modules,',len(manifest),'original-source exception proofs')

# The x-cell is deliberately allowed a nonempty explicit residue.
xmods=['Flow','Closed']+json.loads((H/'x_modules.json').read_text());xcompiled=[];logs={}
for name in xmods:
 r=json.loads((H/f'{name}.resources.json').read_text());s=(H/f'{name}.lean').read_text();log=(H/f'{name}.log').read_text()
 assert r['code']==0 and r['seconds']<120 and r['rss_bytes']<2_000_000_000 and r['sha256']==sha(H/f'{name}.lean')
 assert not re.search(r'\bsorry\b|(?m:^\s*axiom\s+\w)',s) and 'sorryAx' not in log
 assert 'error:' not in log and 'depends on axioms' in log
 xcompiled.append(r);logs[name]=log
assert sha(H/'Flow.lean')==sha(H.parent/'rootcert2'/'Flow.lean')
x=json.loads((H/'check_x.json').read_text());xm=json.loads((H/'x_manifest.json').read_text());opened=json.loads((H/'x_opened.json').read_text());indices={r['index'] for r in xm}
assert len(indices)==len(xm) and indices.isdisjoint(opened) and indices|set(opened)==set(range(len(x['exceptions'])))
assert x['total']==98442==sum(x['finite_failures'].values())+len(x['exceptions']) and not x['hits']
for r in xm:
 e=x['exceptions'][r['index']]
 assert r['source_sha256']==hashlib.sha256(repr(tup(e['source'])).encode()).hexdigest()
 assert r['theorem'] in logs[r['module']]
left=json.loads((H/'X_REMAINING.json').read_text());assert {r['index'] for r in left}==set(opened)
for r in left:assert tup(r['tree'])==tup(x['exceptions'][r['index']]['source'])
rec.update(x_modules=xcompiled,x_cell={**{k:v for k,v in x.items() if k not in ('exceptions','hits')},'exceptions':len(x['exceptions']),'lean_refuted':len(xm),'opened':len(opened)},x_certificate_kinds=dict(collections.Counter(r['kind'] for r in xm)))
rec['input_hashes'].update({str((H.parent/'rootcert2'/name).relative_to(H.parent)):sha(H.parent/'rootcert2'/name) for name in ['Flow.lean','flow.py','export_flow.py']})
(H/'followup_verification.json').write_text(json.dumps(rec,indent=2)+'\n')
print('verified x cell:',len(xm),'original-source proofs,',len(opened),'explicit unresolved exceptions')
