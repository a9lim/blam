"""Audit exported proof coverage, axiom logs and actual per-check resources."""
from pathlib import Path
import json,re,hashlib
H=Path(__file__).resolve().parent
manifest=json.loads((H/'nonlinear_manifest.json').read_text())
jbare=json.loads((H/'jbare_certificates.json').read_text())
by_module={}
for e in manifest:by_module.setdefault(e['module'],set()).add(e['theorem'])
for e in jbare:by_module.setdefault('JBare'+str(e['t']),set()).add(e['theorem'])
resources=[];hashes={}
for module,expected in by_module.items():
 log=(H/(module+'.log')).read_text();found=dict(re.findall(r"'([^']+)' depends on axioms: \[([^]]*)\]",log))
 assert set(found)==expected,(module,len(found),len(expected))
 assert all(v=='propext, Quot.sound' for v in found.values()),module
 assert not re.search(r'error:|sorryAx|native_decide',log),module
for module in list(by_module)+['NonlinearCertificates','NonlinearFamilies','NonlinearPrices','JBarePrices','StreamReify']:
 p=H/(module+'.lean');hashes[p.name]=hashlib.sha256(p.read_bytes()).hexdigest()
 r=json.loads((H/(module+'.resources.json')).read_text());assert r['code']==0 and r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000 and r['threads']<=2,r
 assert not re.search(r'error:|sorryAx|native_decide',(H/(module+'.log')).read_text()),module
 resources.append(r)
coverage=[]
for q,mode in [(1,'root'),(1,'nested'),(2,'all'),(3,'all'),(4,'all')]:
 name=f'nonlinear_{q}_{mode}';r=json.loads((H/(name+'.json')).read_text());audit=json.loads((H/(name+'_audit.json')).read_text())
 assert not r['hits'] and not audit['open']
 assert sum(r['nf_refutations'].values())+len(r['exceptions'])==r['unique']
 assert r['markings']<=100000 and r['seconds']<120 and r['rss']<1_000_000_000 and r['threads']<=2
 ids=[e['index'] for e in manifest if e['q']==q and e['mode']==mode];assert sorted(ids)==list(range(len(r['exceptions'])))
 coverage.append(dict(cell=name,markings=r['markings'],unique=r['unique'],nf_refutations=r['nf_refutations'],exception_theorems=len(ids),seconds=r['seconds'],rss=r['rss']))
 for file in (name+'.json',name+'_audit.json'):hashes[file]=hashlib.sha256((H/file).read_bytes()).hexdigest()
r=json.loads((H/'jbare_check.json').read_text());assert not r['hits'] and not r['exceptions']
assert len(jbare)==r['unique']==r['markings']==4188
assert r['seconds']<120 and r['rss']<1_000_000_000
for file in ['admissible_count.py','admissible_count.json','nonlinear_check.py','jbare_count.py','jbare_count.json','jbare_check.py','jbare_check.json','jbare_manifest.json','nonlinear_manifest.json','jbare_certificates.json','validate_admissible.json','validate_jbare.json']:
 hashes[file]=hashlib.sha256((H/file).read_bytes()).hexdigest()
rec=dict(nonlinear_exception_theorems=len(manifest),jbare_source_theorems=len(jbare),coverage=coverage,max_lean_seconds=max(x['seconds'] for x in resources),max_lean_rss=max(x['peak_rss_bytes'] for x in resources),lean_modules=len(resources),axioms='all concrete refutations: propext, Quot.sound; general price statements may also use Classical.choice',sha256=hashes)
(H/'followup_verification.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k not in('coverage','sha256')},indent=2))
