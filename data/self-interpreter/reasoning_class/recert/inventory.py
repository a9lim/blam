import json,re
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent
rows=[]
def add(p,idx,s,tag,log):
 d=json.loads(p.read_text());matches=[i for i,(_,t) in enumerate(d['cut']) if t==s]
 assert matches,(p,idx,s)
 i=matches[0]
 rows.append(dict(id=str(p.relative_to(R))+':'+str(i),source=s,tag=tag,log_index=idx,log_file=str(log.relative_to(R))))
for fn,ids,tag in [('p1',[20,21,38,81],'SF'),('p4',[33,35,55,107],'SF'),('p4',[15,135,147,182],'Y-family')]:
 log=R/'shared'/(fn+'cert.txt')
 for line in log.read_text().splitlines():
  m=re.match(r'(\d+) \d+ (?:UN)?CERT .*? [0-9.]+s (.*)',line)
  if m and int(m[1]) in ids:add(log.with_name(fn+'.json'),int(m[1]),m[2],tag,log)
assert len(rows)==12
for p in sorted((R/'adv6/work').glob('*cert*.txt')):
 name=p.name.split('_cert')[0]+'.json';src=p.with_name(name)
 if not src.exists():continue
 for line in p.read_text().splitlines():
  m=re.match(r'(\d+) \d+ UNCERT .*? [0-9.]+s (.*)',line)
  if m:add(src,int(m[1]),m[2],'adv6 handwritten candidate',p)
rows=list({r['id']:r for r in rows}.values())
for i,r in enumerate(rows):r['label']=f'A{i:03d}'
covered=set()
for fn in ['h_xfull1.json','h2_1.json','h2_2.json','h2_5.json','h3_1.json']:
 covered.update(s for _,s in json.loads((R/'rootnarrow/work'/fn).read_text())['cut'])
root={};coverage=[]
for p in sorted((R/'rootnarrow/work').glob('*.json')):
 d=json.loads(p.read_text())
 if not isinstance(d,dict):continue
 for i,(_,s) in enumerate(d.get('cut',[])):
  id=str(p.relative_to(R))+':'+str(i)
  if s in covered:coverage.append(dict(id=id,covered=True));continue
  root.setdefault(s,[]).append(id)
for i,(s,ids) in enumerate(root.items(),75):rows.append(dict(id=ids[0],aliases=ids,source=s,tag='rootnarrow candidate',label=f'R{i:03d}'))

(H/'inventory.json').write_text(json.dumps(rows,indent=2)+'\n')
(H/'coverage.json').write_text(json.dumps(coverage,indent=2)+'\n')
print('rows',len(rows),'covered occurrences',len(coverage))
