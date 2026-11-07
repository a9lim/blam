"""Check completed cell/certificate coverage and final Lean logs; no term search."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,collections,re
H=Path(__file__).resolve().parent

def lean(t,depth=0,source=False):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':
  i=(2 if source else 1) if t[1]=='j' else {'c':0,'N':2,'r':3}[t[1]]
  return f'(.var {depth+i})'
 if t[0]=='l':return f'(.lam {lean(t[1],depth+1,source)})'
 return f'(.app {lean(t[1],depth,source)} {lean(t[2],depth,source)})'

cells={k:v for m in (2,3,4) for k,v in json.loads((H/f'minimum{m}.json').read_text())['cells'].items()}
rows=[];expected=set();counts=collections.Counter();sources={}
for cell,static in cells.items():
 file='check-'+cell.replace(':','-')+'.json';r=json.loads((H/file).read_text());sources[file]=r
 assert r['sources']<=100000 and r['seconds']<120 and r['rss']<1_000_000_000 and r['threads']<=2
 assert not r['hits'] and sum(r['counts'].values())==r['sources']
 assert sum(n for k,n in r['counts'].items() if k.startswith('exception'))==len(r['exceptions'])
 counts.update(r['counts']);expected.update((file,i) for i in range(len(r['exceptions'])))
 rows.append(dict(cell=cell,static_sources=static,sources=r['sources'],exceptions=len(r['exceptions']),seconds=r['seconds'],rss=r['rss'],file=file,digest=r['source_digest']))
manifest=[]
for name in ('simple','extra','residual'):manifest+=json.loads((H/f'manifest_{name}.json').read_text())
actual=[(r['file'],r['index']) for r in manifest]
assert len(set(actual))==len(actual) and set(actual)==expected
modules=sorted({r['module'] for r in manifest}|{'Certificates','Special','Grow','Prices'})
logs={};resources=[];module_sources={}
for m in modules:
 p=H/(m+'.lean');s=p.read_text();log=(H/(m+'.log')).read_text();r=json.loads((H/(m+'.resources.json')).read_text())
 assert r['code']==0 and r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000 and r['threads']<=2
 assert not re.search(r'\bsorry\b|\baxiom\b',s) and 'sorryAx' not in log and 'error:' not in log
 assert 'depends on axioms: [propext, Quot.sound]' in log
 assert (H/(m+'.olean')).exists()
 logs[m]=log;resources.append(r);module_sources[m]=s
for r in manifest:
 name=r['theorem'].rsplit('.',1)[-1];n=name.removeprefix('reject')
 # The base exporter uses r0... per file, as do the later exporters.
 src='(.lam '+lean(sources[r['file']]['exceptions'][r['index']]['body'],source=True)+')'
 assert f'def r{n} : Term := {src}' in module_sources[r['module']],r
 assert f'theorem {name} : ¬ Reader r{n}' in module_sources[r['module']],r
 assert r['theorem'] in logs[r['module']],r
out=dict(cells=rows,source_total=sum(r['sources'] for r in rows),counts=dict(counts),exception_total=len(expected),certified=len(manifest),certificate_kinds=dict(collections.Counter(r['kind'] for r in manifest)),modules=resources,max_check_seconds=max(r['seconds'] for r in rows),max_check_rss=max(r['rss'] for r in rows),max_lean_seconds=max(r['seconds'] for r in resources),max_lean_rss=max(r['peak_rss_bytes'] for r in resources))
(H/'final.json').write_text(json.dumps(out,indent=2)+'\n')
(H/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k not in ('cells','modules')},indent=2))
