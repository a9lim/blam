"""Assemble the exact fixed-list coverage ledger; unresolved stays unresolved."""
from classify import *
PASS={'grammar','eval-grammar','pump','wrong'}
base=json.loads((HERE/'normal-secondary.json').read_text())['rows']
known={b for b,_,nf in rows() if nf}
lookup={x['bits']:dict(x,source='normal-secondary.json') for x in base}
for x in json.loads((HERE/'extra.json').read_text())['rows']:lookup[x['bits']]=dict(x,source='extra.json')
updates=['eval-pilot.json','eval-0060.json','eval-0150.json','eval-0240.json','dag-0000.json','dag-0015.json','dag-deep-0000.json','dag-deep-0015.json','dag-wide-0000.json','dag-wide-0015.json']
for name in updates:
 p=HERE/name
 if not p.exists():continue
 for x in json.loads(p.read_text())['rows']:
  if x['kind'] in PASS:
   assert x['bits'] in lookup
   lookup[x['bits']]=dict(x,source=name)
normalized=json.loads((HERE/'normalization.json').read_text())['rows']
ledger=[]
for x in normalized:
 r=lookup[x['reduct']]
 ledger.append(dict(**x,certified=r['kind'] in PASS,family=r['kind'],certificate=x['reduct']))
certs=dict(count=len(lookup),counts=dict(Counter(x['kind'] for x in lookup.values())),rows=list(lookup.values()))
(HERE/'certificates.json').write_text(json.dumps(certs)+'\n')
summary=dict(source_sha256=hashlib.sha256(SRC.read_bytes()).hexdigest(),source_count=len(ledger),source_certified=sum(x['certified'] for x in ledger),source_unresolved=sum(not x['certified'] for x in ledger),source_families=dict(Counter(x['family'] for x in ledger)),normal_count=len(known),normal_families=dict(Counter(lookup[b]['kind'] for b in known)),residual_count=len(lookup),residual_families=certs['counts'])
(HERE/'coverage.json').write_text(json.dumps(summary,indent=2)+'\n')
(HERE/'members.tsv').write_text('source_bits\tsize\tbeta_steps\treduct_bits\tgroup\tfamily\tcertified\n'+''.join(f"{x['bits']}\t{len(x['bits'])}\t{x['steps']}\t{x['reduct']}\t{x['group']}\t{x['family']}\t{str(x['certified']).lower()}\n" for x in ledger))
(HERE/'unresolved.bits').write_text(''.join(x['bits']+'\n' for x in ledger if not x['certified']))
(HERE/'unresolved_residuals.bits').write_text(''.join(b+'\n' for b,x in lookup.items() if x['kind'] not in PASS))
(HERE/'unresolved_normal.bits').write_text(''.join(b+'\n' for b in sorted(known) if lookup[b]['kind'] not in PASS))
print(json.dumps(summary,indent=2))
