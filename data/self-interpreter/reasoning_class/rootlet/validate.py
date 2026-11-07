import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,hashlib,collections
manifest=json.loads((H/'manifest.json').read_text());remaining=json.loads((H/'remaining.json').read_text());mods=json.loads((H/'modules.json').read_text())
by=collections.defaultdict(list)
for e in manifest:by[e['module']].append(e)
resources=[]
for mod in mods:
 rec=json.loads((H/f'{mod}.resources.json').read_text());assert rec['code']==0 and rec['limit'] is None and rec['seconds']<120 and rec['peak_rss_bytes']<2_000_000_000
 log=(H/f'{mod}.log').read_text();assert 'error' not in log and 'sorryAx' not in log
 for e in by[mod]:assert f"'{e['theorem']}' depends on axioms: [propext, Quot.sound]" in log
 assert log.count('depends on axioms:')==len(by[mod])
 rec['sha256']=hashlib.sha256((H/f'{mod}.lean').read_bytes()).hexdigest();resources.append(rec)
for cell in ('5','4A','4B','4Cs'):
 check=json.loads((H/('boundary_check.json' if cell=='5' else f'check{cell}.json')).read_text());es=check['exceptions']
 covered={e['index'] for e in manifest if e['cell']==cell};opened={e['exception_index'] for e in remaining[cell]}
 assert not covered&opened and covered|opened==set(range(len(es)))
 for e in [e for e in manifest if e['cell']==cell]:
  assert e['source_sha256']==hashlib.sha256(json.dumps(es[e['index']]['source']).encode()).hexdigest()
 assert check['total']<=100000 and check['seconds']<120 and check['rss_bytes']<1_000_000_000 and check['threads']<=2
 assert not check['hits']
assert len(manifest)==32743 and sum(map(len,remaining.values()))==580
for base in ('Certificates','EtaPrice'):
 rr=json.loads((H/f'{base}.resources.json').read_text())
 assert rr['code']==0 and rr['seconds']<120 and rr['peak_rss_bytes']<2_000_000_000
 ll=(H/f'{base}.log').read_text();assert 'error' not in ll and 'sorryAx' not in ll
 assert all('[propext, Quot.sound]' in line for line in ll.splitlines() if 'depends on axioms:' in line)
rec=dict(certificates=len(manifest),remaining={k:len(v) for k,v in remaining.items()},modules=len(mods),max_lean_seconds=max(r['seconds'] for r in resources),max_lean_rss=max(r['peak_rss_bytes'] for r in resources),axioms=['propext','Quot.sound'],resources=resources)
(H/'verification.json').write_text(json.dumps(rec,indent=2)+'\n');print({k:v for k,v in rec.items() if k!='resources'})
