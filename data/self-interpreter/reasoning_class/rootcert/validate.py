from probe import *
import hashlib,re,csv

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
modules=json.loads((H/'modules.json').read_text());resources=[]
for m in modules:
 r=json.loads((H/(m+'.resources.json')).read_text());log=(H/(m+'.log')).read_text()
 assert r['code']==0 and r['limit'] is None and r['threads']<=2
 assert r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000
 assert r['sha256']==sha(H/(m+'.lean')) and 'sorryAx' not in log
 resources.append(r)
prep=json.loads((H/'prepare.json').read_text());assert sha(H/'blam-frozen')==prep['binary_sha256'];assert sha(H/'zero.blc')==prep['zero_sha256']
rs=json.loads((H/'sources.json').read_text());raw=source_rows();assert len(rs)==len(raw)==580
lines=[l.split() for l in (H/'zero.out').read_text().splitlines()]
assert collections.Counter(x[0] for x in lines)==collections.Counter(r['zero_bits'] for r in rs)
engine={w:v for w,*v in lines};manifest={}
for filename,modbase in [('certificates.json',None),('church_certificates.json','ChurchCases'),('k_certificates.json','RecursorCases'),('owl_certificates.json','OwlCases'),('lark_certificates.json','LarkCases'),('mixed_certificates.json','MixedCases')]:
 for ix,r in enumerate(json.loads((H/filename).read_text())):
  i=r['id'];assert i not in manifest;mod=modbase or f'Families{ix//150}'
  theorem=f'Blc.Rootcert.{mod}.reject{i}'
  assert f"'{theorem}' depends on axioms:" in (H/(mod+'.log')).read_text()
  assert f'def r{i} : Term := {lean(a.tup(raw[i][1]["source"]))}' in (H/(mod+'.lean')).read_text()
  manifest[i]=dict(id=i,cell=rs[i]['cell'],exception_index=int(rs[i]['exception_index']),weight=int(rs[i]['weight']),evidence='Lean',kind=r['kind'],module=mod,theorem=theorem)
for r in rs:
 i=r['id']
 if i not in manifest:
  assert engine[r['zero_bits']]==['DIVERGE','bb-engine']
  manifest[i]=dict(id=i,cell=r['cell'],exception_index=int(r['exception_index']),weight=int(r['weight']),evidence='engine',kind='DIVERGE bb-engine',wire=r['zero_bits'])
assert sum(r['evidence']=='Lean' for r in manifest.values())==577
eta=json.loads((H/'eta_certificates.json').read_text());assert len(eta)==346
for ix,r in enumerate(eta):
 mod=f'EtaCases{ix//175}';assert f"'Blc.Rootcert.{mod}.reject_min{r['id']}' depends on axioms:" in (H/(mod+'.log')).read_text()
 assert f'def r{r["id"]} : Term := {lean(a.tup(raw[r["id"]][1]["source"]))}' in (H/(mod+'.lean')).read_text()
low=json.loads((H/'lower_check.json').read_text());lp=json.loads((H/'lower_probes.json').read_text());ll=[l.split() for l in (H/'lower.out').read_text().splitlines()]
assert len(lp)==len(ll)==3518 and collections.Counter(r['wire'] for r in lp)==collections.Counter(l[0] for l in ll)
lc={r['id']:r for r in json.loads((H/'lower_certificates.json').read_text())}
le={w:v for w,*v in ll};lstats=collections.defaultdict(collections.Counter)
for r in lp:
 if r['id'] in lc:
  assert f"'Blc.Rootcert.LowerCases.reject{r['id']}' depends on axioms:" in (H/'LowerCases.log').read_text()
  assert f'def r{r["id"]} : Term := {lean(a.tup(r["source"]))}' in (H/'LowerCases.lean').read_text()
  lstats[r['cell']]['Lean']+=1
 else:assert le[r['wire']]==['DIVERGE','bb-engine'];lstats[r['cell']]['engine']+=1
assert len(lc)==10 and low['total']==73311 and low['hits']==0
rows=[manifest[i] for i in range(580)];(H/'manifest.json').write_text(json.dumps(rows,indent=2)+'\n')
with (H/'MANIFEST.tsv').open('w') as out:
 w=csv.DictWriter(out,fieldnames=['id','cell','exception_index','weight','evidence','kind','module','theorem'],delimiter='\t',extrasaction='ignore');w.writeheader();w.writerows(rows)
with (H/'MAIN_ENGINE_ONLY.tsv').open('w') as out:
 w=csv.DictWriter(out,fieldnames=['id','cell','exception_index','weight','source','zero_bits'],delimiter='\t',extrasaction='ignore');w.writeheader();w.writerows(r for r in rs if manifest[r['id']]['evidence']=='engine')
summary=dict(main_sources=580,main_lean=577,main_engine=3,main_remaining=0,
 main_by_cell={cell:dict(collections.Counter(r['evidence'] for r in rows if r['cell']==cell)) for cell in ['5','4A','4B','4Cs']},
 eta_minimum_certificates=346,lower_sources=73311,lower_direct_failures=69793,lower_exception_lean=10,lower_exception_engine=3508,lower_remaining=0,lower_exceptions_by_cell={c:dict(v) for c,v in lstats.items()},
 lean_modules=len(modules),max_lean_seconds=max(r['seconds'] for r in resources),max_lean_rss_bytes=max(r['peak_rss_bytes'] for r in resources),axioms=['propext','Classical.choice','Quot.sound'],frozen_engine_sha256=prep['binary_sha256'],resources=resources)
(H/'verification.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({k:v for k,v in summary.items() if k!='resources'},indent=2))
