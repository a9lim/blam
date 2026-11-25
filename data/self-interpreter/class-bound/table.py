from pathlib import Path
import json,ast,collections,csv
P=Path(__file__).resolve().parent
closed=(2,0,'Cs','x',3,1)
kept=P
official={tuple([a['k'],a['depth']]+a['cell']):a['after'] for a in json.loads((kept/'pending/x_overcap.json').read_text())['cells']}
official[2,1,'A','lambda',0,1]=141728
rows={}
for fp in sorted(P.glob('hist_*json')):
 k,d=map(int,fp.stem.split('_')[1:])
 for cell,counts in json.loads(fp.read_text()).items():
  rows[(k,d,*ast.literal_eval(cell))]=collections.Counter({int(w):n for w,n in counts.items()})
assert sum(rows[closed].values())==98442
assert all(sum(rows[c].values())==n for c,n in official.items())
weights=range(min(min(h) for h in rows.values()),46)
def fmt(h):return [h[w] for w in weights]
if __name__=='__main__':
 with (P/'histogram.tsv').open('w') as fp:
  out=csv.writer(fp,delimiter='\t');out.writerow(['k','depth','hole','head','t','h',*weights,'sum'])
  for c,h in sorted(rows.items()):out.writerow([*c,*fmt(h),sum(h.values())])
 print(list(weights))
 for c in official:print(c,fmt(rows[c]))
 print('control',fmt(rows[closed]))
 print('other',fmt(sum((h for c,h in rows.items() if c not in official and c!=closed),collections.Counter())))
 print('total',fmt(sum((h for c,h in rows.items() if c!=closed),collections.Counter())))
