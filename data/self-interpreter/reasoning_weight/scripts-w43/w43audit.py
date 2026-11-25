from w43cert import *
def audit():
 limit()
 base=json.loads((D/'main.json').read_text())
 es=json.loads((P/'probe43.json').read_text())['exceptions']
 ref=json.loads((P/'probe43.json').read_text())
 cell_es=[];finite=collections.Counter();weight_hist=[]
 for i,c in enumerate(cells):
  x=json.loads((D/f'cell{i}.json').read_text());assert tuple(x['cell'])==c and x['total']==rows[c][43]
  assert x['total']==sum(x['mismatch'].values())+len(x['exceptions']);assert x['rss']<=905000000 and x['seconds']<110
  cell_es+=x['exceptions'];finite.update(x['mismatch']);weight_hist.append((*c,x['total'],x['total']))
 assert cell_es==es and finite==ref['mismatch'] and sum(finite.values())+len(es)==428833
 assert not (D/'HIT.json').exists()
 kinds={int(i):k for i,k in base['by_index'].items()}
 names=list(base['modules'])
 extras=json.loads((D/'extras.json').read_text())
 residual=[]
 for i in base['open']:
  assert i not in kinds
  if str(i) in extras:k,n=extras[str(i)]
  elif (proofs/f'Slice43Regular{i}.resources.json').exists():k,n='regular closure and stack',f'Slice43Regular{i}'
  else:residual.append(i);continue
  kinds[i]=k
  if n not in names:names.append(n)
 assert set(kinds).isdisjoint(residual) and set(kinds)|set(residual)==set(range(len(es)));proof_rows=[];seen=set()
 with (D/'residual.tsv').open('w') as fp:
  wr=csv.writer(fp,delimiter='\t');wr.writerow(['exception_index','cell','original_ast','original_lean_term','probe','tried'])
  for i in residual:
   r=es[i];rr=ad.tup(r['source']);wr.writerow([i,json.dumps(r['cell']),repr(rr),ex.lean(rr),r['q'],'baseline, structural, symbolic cycle, two-probe regular closure and stack, demanded prefixes and internal developments, finite recursive and conjunctive types, norm comparison via type separation; closure trace inconclusive'])
 artifacts={};resources={}
 def verified(n):
  if n in artifacts:return
  f=proofs/(n+'.lean');s=f.read_text();digest=hashlib.sha256(f.read_bytes()).hexdigest()
  rs=json.loads((proofs/(n+'.resources.json')).read_text())
  assert rs['code']==0 and rs['peak']<=680000000 and rs['seconds']<110 and rs['source_sha256']==digest
  artifacts[n]=digest;resources[n]=rs
  for dep in re.findall(r'^import (Slice43\w+)$',s,re.M):
   verified(dep)
 for n in names:
  verified(n)
  s=(proofs/(n+'.lean')).read_text()
  log=(D/(n+'.log')).read_text();assert 'sorry' not in log
  literal=dict(re.findall(r'^def (r\d+) : Term := (.*)$',s,re.M))
  axiom_re=r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)"
  prints=dict(re.findall(axiom_re,log))
  for i_s,v in re.findall(r'^theorem reject(\d+) : ¬ Reader (r\d+) :=',s,re.M):
   i=int(i_s);assert i not in seen;seen.add(i)
   R=ad.tup(es[i]['source']);assert literal[v]==ex.lean(R)
   matches=[(th,ax) for th,ax in prints.items() if th.endswith(f'.{n}.reject{i}')]
   assert len(matches)==1;th,ax=matches[0];assert set(filter(None,ax.split(', ')))<={'propext','Quot.sound','Classical.choice'}
   proof_rows.append([43,i,kinds[i],hashlib.sha256(repr(R).encode()).hexdigest(),n,th])
  assert len(prints)==len(literal)==s.count('#print axioms')
 assert seen==set(kinds)
 with (P/'exception-manifest-w43.tsv').open('w') as fp:
  wr=csv.writer(fp,delimiter='\t');wr.writerow(['weight','exception_index','kind','original_ast_sha256','module','theorem']);wr.writerows(sorted(proof_rows,key=lambda r:r[1]))
 with (P/'histogram-w43.tsv').open('w') as fp:
  wr=csv.writer(fp,delimiter='\t');wr.writerow(['k','depth','hole','head','t','h','43','sum']);wr.writerows(weight_hist)
 source_manifest=''.join(f'{h}  proofs/{n}.lean\n' for n,h in sorted(artifacts.items()))
 (D/'proof-files.sha256').write_text(source_manifest)
 report=dict(inclusive_weight=43,sources=428833,finite=dict(finite),certificates=dict(sorted(collections.Counter(kinds.values()).items())))
 if residual:report.update(closed=False,residual_indices=residual)
 (P/'audit-w43.json').write_text(json.dumps(report,indent=2)+'\n')
 max_py=max([x['rss'] for x in map(lambda f:json.loads(f.read_text()),D.glob('cell*.json'))]+[x['rss'] for x in map(lambda f:json.loads(f.read_text()),D.glob('found*.json'))]+[json.loads(l)['peak'] for f in ('regdiscovery','discovery','probe') for l in (D/(f+'.jsonl')).read_text().splitlines()])
 res=dict(successful_lean_peak=max(r['peak'] for r in resources.values()),python_peak=max_py,elapsed_seconds=time.time()-json.loads((D/'start.json').read_text())['epoch'],end_epoch=time.time(),max_single_job_seconds=max([r['seconds'] for r in resources.values()]+[json.loads(l)['seconds'] for f in D.glob('*.jsonl') for l in f.read_text().splitlines()]),largest_source_check=max(x[-1] for x in weight_hist),proof_modules=len(artifacts),literal_modules=len(names))
 save(D/'verified.json',res);print(report,res)
if __name__=='__main__':audit()
