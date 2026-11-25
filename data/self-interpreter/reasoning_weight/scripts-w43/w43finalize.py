from pathlib import Path
import json
D=Path('w43')
extras=json.loads((D/'extras.json').read_text())
for i in (7741,7742):extras[str(i)]=['unbounded arity grades','Slice43Arity']
for i in (7755,7756):extras[str(i)]=['push and delay types','Slice43Push']
(D/'extras.json').write_text(json.dumps(extras))
p=Path('w43audit.py');s=p.read_text()
a=s.index(" for i in base['open']:");b=s.index(' artifacts={}',a)
s=s[:a]+''' extras=json.loads((D/'extras.json').read_text())
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
  wr=csv.writer(fp,delimiter='\\t');wr.writerow(['exception_index','cell','original_ast','original_lean_term','probe','tried'])
  for i in residual:
   r=es[i];rr=ad.tup(r['source']);wr.writerow([i,json.dumps(r['cell']),repr(rr),ex.lean(rr),r['q'],'baseline, structural, symbolic cycle, two-probe regular closure and stack, demanded prefixes and internal developments, finite recursive and conjunctive types, norm comparison via type separation; closure trace inconclusive'])
''' +s[b:]
s=s.replace("(P/'audit-w43.json').write_text","if residual:report.update(closed=False,residual_indices=residual)\n (P/'audit-w43.json').write_text")
p.write_text(s)
