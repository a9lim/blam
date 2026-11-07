from classify import *
base=json.loads((HERE/'normal-current.json').read_text())['rows'];lookup={x['bits']:x for x in base}
files=['simplified-pilot.json','secondary-0170.json','secondary-0320.json','secondary-0470.json','secondary-0620.json']
for f in files:
 for x in json.loads((HERE/f).read_text())['rows']:
  x['simplified']=True
  if lookup[x['bits']]['kind']=='unknown':lookup[x['bits']]=x
for x in json.loads((HERE/'other-pilot.json').read_text())['rows']:
 if x['kind']=='wrong':lookup[x['bits']]=x
r=dict(count=len(lookup),counts=dict(Counter(x['kind'] for x in lookup.values())),rows=list(lookup.values()))
(HERE/'normal-secondary.json').write_text(json.dumps(r)+'\n');print(r['counts'])
