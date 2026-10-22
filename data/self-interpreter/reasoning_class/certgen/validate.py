"""Audit literal inputs, portable invariants, formal logs and resource manifests."""
import sys,json,hashlib
from pathlib import Path
from flow_probe import inputs,cert
from aam import compile_term
from portable import check,tupleize
H=Path(__file__).resolve().parent
rows=json.loads((H/'MANIFEST.json').read_text());original=dict(inputs());assert len(rows)==53
certs=[]
for r in rows:
 assert original[r['id']]==r['source']
 if not r['ok']:continue
 p=H/(r['label']+'.json');c=json.loads(p.read_text());assert check(c)
 assert c['nodes']==[list(n) for n in compile_term(('A',cert.parse_show(r['source']),cert.law_io(0)[0]))]
 assert hashlib.sha256(p.read_bytes()).hexdigest()==r['certificate_sha256']
 assert r['states']<45000 and r['work']<45000 and r['seconds']<110 and r['peak_rss_bytes']<1_000_000_000
 certs.append(r)
assert len(certs)==50
mods=json.loads((H/'modules.json').read_text());formal=json.loads((H/'LEAN_CHECKS.json').read_text());assert [r['file'] for r in formal]==mods
core=hashlib.sha256((H/'Regular.lean').read_bytes()).hexdigest()
for r in formal:
 assert r['code']==0 and r['limit'] is None and r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000 and r['threads']<=2
 assert r['core_sha256']==core
 assert r['sha256']==hashlib.sha256((H/r['file']).read_bytes()).hexdigest()
 log=(H/(Path(r['file']).stem+'.log')).read_text();assert 'sorryAx' not in log and 'error:' not in log
for r in certs:
 if r['label']=='Case04':continue
 assert r['label']+'.lean' in mods
 assert f"Certgen.{r['label']}.no_stop" in (H/(r['label']+'.log')).read_text()
reg=json.loads((H/'REGRESSION.json').read_text());assert len(reg)==256 and sum(r['new_ok'] for r in reg)==255
ctl=json.loads((H/'CONTROLS.json').read_text());assert len(ctl['negative_checks'])==36 and not any(r['accepted'] for r in ctl['negative_checks'])
for r in json.loads((H/'SF2_REPLACEMENTS.json').read_text()):assert check(json.loads((H/r['certificate']).read_text()))
result=dict(targets=53,certified=50,intended_residuals=36,intended_certified=33,
 unresolved=[r['id'] for r in rows if not r['ok']],formal_target_instances=49,formal_modules=len(mods),
 formal_deferred='Case04',legacy_regression_passed=255,legacy_regression_total=256,
 max_discovery_states=max(r['states'] for r in certs),max_discovery_work=max(r['work'] for r in certs),
 max_discovery_seconds=max(r['seconds'] for r in certs),max_discovery_rss=max(r['peak_rss_bytes'] for r in certs),
 max_lean_seconds=max(r['seconds'] for r in formal),max_lean_rss=max(r['peak_rss_bytes'] for r in formal))
(H/'VERIFICATION.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,indent=2))
