"""Audit original source identities, theorem logs, budgets and wire-matched outcomes."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'));from export import lean,ad
sys.path.insert(0,str(H.parent/'coord'));import rd
from probe import d
import json,csv,hashlib,collections
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source=json.loads((H.parent/'rootnl/SURVIVORS.json').read_text());rows=json.loads((H/'sources.json').read_text());assert len(rows)==658
def wire(t,dep=0):
 if t[0]=='v':return '1'*(t[1]+1)+'0'
 if t[0]=='k':return '1'*(dep+dict(c=2,j=1,r=0)[t[1]]+1)+'0'
 if t[0]=='l':return '00'+wire(t[1],dep+1)
 return '01'+wire(t[1],dep)+wire(t[2],dep)
for a,b in zip(source,rows):
 assert all(a[k]==b[k] for k in a)
 assert rd.weight(rd.parse(b['source']))[0]==b['weight']
 t=d.A(d.subst(ad.tup(b['tree']),0,d.Kc('c')),d.Z())
 assert '000000'+wire(t)==b['zero_bits']
parts=['flow','develop','mixed','simplify','arity','unary','tri','owls'];proofs={};kinds={}
for part in parts:
 for p in json.loads((H/(part+'_manifest.json')).read_text()):
  i=p['id'];assert i not in proofs
  r=rows[i];assert p['source_sha256']==hashlib.sha256(r['source'].encode()).hexdigest()
  module=H/(p['module']+'.lean');text=module.read_text()
  assert f'def r{i} : Term := {lean(ad.tup(r["tree"]))}\n' in text
  assert f'theorem reject{i} : ¬ Reader r{i}' in text
  log=(H/(p['module']+'.log')).read_text()
  assert f"'{p['theorem']}' depends on axioms:" in log
  assert 'sorryAx' not in log and 'error:' not in log
  proofs[i]=p;kinds[i]=part
assert len(proofs)==653
base=['Certificates','Flow','Arity','Unary','Tri','TripleOwl','NestedOwl','Controls']
modules=base+sorted({p['module'] for p in proofs.values()});resources=[]
for m in modules:
 rr=json.loads((H/(m+'.resources.json')).read_text());assert rr['code']==0 and rr['limit'] is None
 assert rr['sha256']==sha(H/(m+'.lean'));assert rr['seconds']<120 and rr['peak_rss_bytes']<2_000_000_000 and rr['threads']<=2
 log=(H/(m+'.log')).read_text();assert 'sorryAx' not in log and 'error:' not in log
 resources.append(rr)
engine={}
for number,line in enumerate((H/'deep.out').read_text().splitlines(),1):
 bits,verdict,*_=line.split();assert verdict=='DIVERGE';assert bits not in engine;engine[bits]=(number,line)
remaining=set(range(658))-set(proofs);assert remaining=={474,492,493,506,507}
assert set(engine)=={rows[i]['zero_bits'] for i in remaining}
assert (H/'deep.blc').read_text().splitlines()==[rows[i]['zero_bits'] for i in [474,492,493,506,507]]
for f in ['engine.resources.json','unary.engine.resources.json','deep.resources.json']:
 r=json.loads((H/f).read_text());assert r['code']==0 and r['limit'] is None and r['seconds']<120 and r['peak_rss_bytes']<1_000_000_000 and r['threads']<=2
assert sha(H/'blam-frozen')==(H/'binary.sha256').read_text().strip()
# Parallel engine rows MUST be matched by exact wire, never line order.
zlines=[x.split()[0] for x in (H/'zero.out').read_text().splitlines()]
assert collections.Counter(zlines)==collections.Counter(r['zero_bits'] for r in rows)
ulines=[x.split()[0] for x in (H/'unary.out').read_text().splitlines()];ups=json.loads((H/'unary_probes.json').read_text())
assert collections.Counter(ulines)==collections.Counter(r['bits'] for r in ups)
manifest=[]
for r in rows:
 i=r['id'];p=proofs.get(i);islean=p is not None
 record=dict(id=i,weight=r['weight'],source_file=r['file'],exception_index=r['exception_index'],helper=r['helper'],source=r['source'],status='Lean' if islean else 'engine-only',kind=kinds[i] if islean else 'DIVERGE',probe='one' if islean and kinds[i]=='unary' else 'zero',module=p['module'] if islean else '',theorem=p['theorem'] if islean else '',evidence=(p['module']+'.lean') if islean else ('deep.out:'+str(engine[r['zero_bits']][0])),source_sha256=hashlib.sha256(r['source'].encode()).hexdigest(),zero_bits=r['zero_bits'])
 manifest.append(record)
(H/'manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
fields=['id','weight','source_file','exception_index','status','kind','probe','evidence','theorem','helper','source']
with (H/'MANIFEST.tsv').open('w') as f:
 w=csv.DictWriter(f,fields,delimiter='\t',extrasaction='ignore');w.writeheader();w.writerows(manifest)
with (H/'ENGINE_ONLY.tsv').open('w') as f:
 w=csv.DictWriter(f,fields+['zero_bits'],delimiter='\t',extrasaction='ignore');w.writeheader();w.writerows(r for r in manifest if r['status']=='engine-only')
groups=collections.defaultdict(list)
for r in manifest:groups[r['helper']].append(r)
with (H/'HELPER_PROOFS.tsv').open('w') as f:
 f.write('helper\tcount\tLean\tengine_only\tproof_patterns\tids\n')
 for h,rs in groups.items():f.write(f'{h}\t{len(rs)}\t{sum(r["status"]=="Lean" for r in rs)}\t{sum(r["status"]=="engine-only" for r in rs)}\t'+','.join(sorted({r['kind'] for r in rs}))+'\t'+','.join(str(r['id']) for r in rs)+'\n')
(H/'modules.json').write_text(json.dumps(modules)+'\n')
summary=dict(source_count=len(rows),helpers=len(groups),lean=653,engine_only=5,unresolved=0,formal_gap_ids=sorted(remaining),proof_patterns=dict(collections.Counter(kinds.values())),modules=len(modules),max_lean_seconds=max(r['seconds'] for r in resources),max_lean_rss_bytes=max(r['peak_rss_bytes'] for r in resources),source_sha256=sha(H.parent/'rootnl/SURVIVORS.json'),manifest_sha256=sha(H/'MANIFEST.tsv'),binary_sha256=sha(H/'blam-frozen'),axioms=['propext','Quot.sound'],wire_matching=True)
(H/'verification.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
print('source cells',dict(collections.Counter(r['file'] for r in rows)))
