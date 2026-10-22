import ast,csv,collections,hashlib,json,pathlib
P=pathlib.Path(__file__).resolve().parent
rows=json.loads((P.parent/'rootnl/SURVIVORS.json').read_text())
old=json.loads((P/'checks.json').read_text())['excluded_minimum_rows']
new=json.loads((P/'extend.json').read_text())
ids=set(new['remaining_ids']);assert len(ids)==627
shape=collections.Counter()
for r in rows:
 if r['id'] in ids:shape[r['k'],r['hole_depth'],r['B_leading_lambdas'],r['A_leading_lambdas'],r['pending']]+=1
src_helpers=collections.Counter((r['A_leading_lambdas']) for r in rows if r['id'] in ids)
with (P/'NONMINIMUM.tsv').open('w') as f:
 w=csv.writer(f,delimiter='\t');w.writerow(['id','status','rule','source_weight','replacement_weight'])
 for r in old:w.writerow([r['id'],'NON-MINIMUM','idempotent_diagonal',r['weight'],r['replacement_weight']])
 for r in new['excluded_nonminimum']:w.writerow([r['id'],'NON-MINIMUM','independent_static_handoff',r['source_order'][0],r['replacement_order'][0]])
with (P/'REMAINING.tsv').open('w') as f:
 w=csv.writer(f,delimiter='\t');w.writerow(['id','weight','k','depth','B_leading_lambdas','A_leading_lambdas','pending','source'])
 for r in rows:
  if r['id'] in ids:w.writerow([r[k] for k in ['id','weight','k','hole_depth','B_leading_lambdas','A_leading_lambdas','pending','source']])
verification=json.loads((P.parent/'rootnl/verification.json').read_text())
summary=[];shapes=collections.Counter()
for e in verification['over_cap_cells']:
 x=json.loads((P/f"extensions_{e['k']}_{e['depth']}.json").read_text());assert x['basecells'][e['cell']]==e['count']
 n=x['new_nonminimum'].get(e['cell'],0)
 summary.append(dict(k=e['k'],depth=e['depth'],cell=e['cell'],before=e['count'],nonminimum=n,after=e['count']-n))
 cell=ast.literal_eval(e['cell']);check=0
 for key,v in x['remaining_shapes'].items():
  c,b,a=ast.literal_eval(key)
  if c==cell:shapes[b,a]+=v;check+=v
 assert check==e['count']-n
with (P/'COEFFICIENT_CUTS.tsv').open('w') as f:
 w=csv.writer(f,delimiter='\t');w.writerow(summary[0].keys())
 for r in summary:w.writerow(r.values())
def haslam(t):return t[0]=='l' or t[0]=='a' and (haslam(t[1]) or haslam(t[2]))
def extra(t):return t[0]=='k' or t[0]=='v' and t[1]!=0 or t[0]=='a' and (extra(t[1]) or extra(t[2]))
bodyshapes=collections.Counter()
for z in rows:
 if z['id'] not in ids:continue
 t=z['tree']
 while t[0]=='a':t=t[1]
 b=t[1];bodyshapes['inner-lambda-or-let' if haslam(b) else 'application-with-c-or-j' if extra(b) else 'pure-x-tree']+=1
hashes={str(p.relative_to(P.parent)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [P.parent/'rootnl/SURVIVORS.json',P.parent/'rootnl/verification.json',P.parent/'rootnl/grammar.py',P.parent/'rootnl/boundary.py']}
r=dict(catalogue_body_shapes=dict(bodyshapes),catalogue_scanned=631,catalogue_new_nonminimum=4,catalogue_total_nonminimum=31,catalogue_remaining=627,catalogue_helper_leading=dict(src_helpers),catalogue_shapes={str(k):v for k,v in shape.items()},overcap=summary,overcap_removed=sum(x['nonminimum'] for x in summary),overcap_remaining=sum(x['after'] for x in summary),overcap_remaining_shapes={str(k):v for k,v in shapes.items()},input_sha256=hashes)
(P/'extension_summary.json').write_text(json.dumps(r,indent=2)+'\n')
print(json.dumps(r,indent=2))
