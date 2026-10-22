"""Check final certificate coverage, source encodings, budgets and provenance."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,re,hashlib,time,signal,resource,threading
import minimum as ct
from export import sources,lean
from check import price,d
H=Path(__file__).resolve().parent
signal.alarm(110);threading.Thread(target=ct.watchdog,daemon=True).start()
manifest=json.loads((H/'manifest.json').read_text())
code=(H/'Cases.lean').read_text();log=(H/'Cases.log').read_text()
assert 'error:' not in log and 'sorryAx' not in log
seen=set();i=0;digests={}
for loc in ('A','B','C'):
 check=json.loads((H/f'check-1-redex-A-{loc}.json').read_text())
 assert check['sources']<=100000 and check['seconds']<120 and check['rss']<1_000_000_000
 assert not check['hits'] and not check['exceptions']
 assert check['counts'].get('wrongzero',0)==check['sources']
 digest=hashlib.sha256();n=0
 for R,A,B,Cs,features in sources((1,'redex','A',loc)):
  assert R not in seen;seen.add(R)
  payload=repr(R)+'\n';digest.update(payload.encode());rec=manifest['sources'][i]
  assert rec['cell']==loc and rec['index']==n and rec['weight']==price(R)
  assert rec['source_sha256']==hashlib.sha256(payload.encode()).hexdigest()
  assert f'def r{i} : Term := {lean(R)}\n' in code
  assert rec['theorem']==f'Blc.BodyLinCases.reject{i}'
  assert f"'{rec['theorem']}' depends on axioms: [propext, Quot.sound]" in log
  i+=1;n+=1
 assert n==check['sources'] and digest.hexdigest()==check['source_digest']
 assert manifest['cells'][loc]==dict(sources=n,source_digest=digest.hexdigest())
 digests[loc]=digest.hexdigest()
assert i==len(manifest['sources'])==569
assert len(re.findall(r'^theorem reject\d+',code,re.M))==569
resources={}
for name in ('Prices','LinearPrices','BodyReplacement','Bodies','Cases'):
 rec=json.loads((H/(name+'.resources.json')).read_text())
 assert rec['code']==0 and rec['limit'] is None
 assert rec['seconds']<120 and rec['peak_rss_bytes']<2_000_000_000 and rec['threads']<=2
 l=(H/(name+'.log')).read_text()
 assert 'error:' not in l and 'sorryAx' not in l
 assert not re.search(r'\b(sorry|axiom)\b',(H/(name+'.lean')).read_text())
 resources[name]=rec
bodyrecords=json.loads((H/'body-manifest.json').read_text());assert len(bodyrecords)==11
bcode=(H/'Bodies.lean').read_text();blog=(H/'Bodies.log').read_text()
for rec in bodyrecords:
 assert rec['replacement_cost']<rec['body_cost']
 assert f"'{rec['theorem']}' depends on axioms: [propext, Quot.sound]" in blog
assert sum(r['sources'] for r in bodyrecords)==569
hashes={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in H.iterdir()
        if p.suffix in ('.lean','.py','.json') and p.name!='verification.json'}
out=dict(sources=569,body_replacements=11,exceptions=0,coverage='mixed: handwritten grammar completeness, computer inventory, kernel refutations',
         cells=digests,lean_resources=resources,hashes=hashes,
         seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'verification.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k not in ('hashes','cells','lean_resources')},indent=2))
