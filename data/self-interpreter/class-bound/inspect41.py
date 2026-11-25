from structural import *
p=json.loads((P/'probe41.json').read_text());r=json.loads((P/'cert41.json').read_text())
for i in r['open']:
 R=ad.tup(p['exceptions'][i]['source']);hit=struct(R)
 print(i,hit[0] if hit else 'open')
