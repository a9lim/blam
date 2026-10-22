import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,hashlib,re,collections
H=Path(__file__).resolve().parent
import generate as g

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def lean(t,dep=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]})'
 if t[0]=='l':return f'(.lam {lean(t[1],dep+1)})'
 return f'(.app {lean(t[1],dep)} {lean(t[2],dep)})'
def read(n):return json.loads((H/n).read_text())
records=read('verification.json')
for r in records:
 assert r['code']==0 and r['limit'] is None and r['threads']<=2
 assert r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000
 assert r['sha256']==hashlib.sha256((H/r['file']).read_bytes()).hexdigest()
 log=(H/(Path(r['file']).stem+'.log')).read_text()
 assert 'sorryAx' not in log and 'error:' not in log and 'error(' not in log
sources=[R for R,_ in g.sources('Cs')]
nohole=read('linear_nohole_check.json')
assert len(sources)==nohole['total']==1236
assert hashlib.sha256(b''.join(repr(R).encode()+b'\n' for R in sources)).hexdigest()==nohole['sha256']
assert nohole['hits']==nohole['exceptions']==[]
checks={'zero':read('linear_zero_check.json')}
checks.update({i:read(f'linear_hole_check{i}.json') for i in (1,2,3,4)})
for r in checks.values():
 assert r['total']<=100000 and r['seconds']<120 and r['rss_bytes']<1_000_000_000
 assert not r['hits']
 assert sum(r['wrong'].values())+len(r['exceptions'])==r['total']
manifest=read('linear_manifest.json');seen=set();mods=collections.Counter()
for e in manifest:
 key=e['cell'],e['index'];assert key not in seen;seen.add(key)
 R=sources[e['index']] if e['cell']=='nohole' else tup(checks[e['cell']]['exceptions'][e['index']]['source'])
 assert e['source_sha256']==hashlib.sha256(repr(R).encode()).hexdigest()
 num=e['theorem'].split('reject')[-1]
 source=(H/(e['module']+'.lean')).read_text()
 assert f'def r{num} : Term := {lean(R)}\n' in source
 log=(H/(e['module']+'.log')).read_text()
 assert f"'{e['theorem']}' depends on axioms: [propext, Quot.sound]" in log
 mods[e['module']]+=1
assert len(manifest)==1354
for m,n in mods.items():
 assert len(re.findall(r'^theorem reject\d+', (H/(m+'.lean')).read_text(),re.M))==n
assert sum(len(r['exceptions']) for r in checks.values())==118
assert len(seen)-len(sources)==118
assert all((c,i) in seen for c,r in checks.items() for i in range(len(r['exceptions'])))
assert not read('linear_certificates.json')['opened']
summary=dict(total_sources=nohole['total']+sum(r['total'] for r in checks.values()),
             unresolved=0,normalizer_exceptions=118,individual_Lean_refutations=len(manifest),
             modules=len(records),max_Lean_seconds=max(r['seconds'] for r in records),
             max_Lean_rss=max(r['peak_rss_bytes'] for r in records),
             max_source_seconds=max(r['seconds'] for r in checks.values()),
             max_source_rss=max(r['rss_bytes'] for r in checks.values()))
assert summary['total_sources']==135652
(H/'validation.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
