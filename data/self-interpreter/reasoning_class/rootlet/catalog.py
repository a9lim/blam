import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,collections
import boundary as b
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a
rows=json.loads((H/'remaining.json').read_text());summary={};lines=['cell\texception_index\tweight\tk\tdepth\tL\tV\ttax\tsource']
def leaves(t):
 if t[0] in ('v','k'):return 1
 if t[0]=='l':return leaves(t[1])
 return leaves(t[1])+leaves(t[2])
def jdepth(t,dep=0):
 if t[0]=='k':return dep if t[1]=='j' else -1
 if t[0]=='v':return -1
 if t[0]=='l':return jdepth(t[1],dep+1)
 return max(jdepth(t[1],dep),jdepth(t[2],dep))
for name,es in rows.items():
 counts=collections.Counter()
 for e in es:
  R=a.tup(e['source']);w=b.weight(R);L=b.lams(R);V=leaves(R);dep=jdepth(R);k=5 if name=='5' else 4;tax=w-(2*L+4*V-4+4*dep)
  assert w==e['weight'] and L==e['L'] and tax==e['tax'] and dep==(0 if k==5 else 1)
  counts[(w,L,tax)]+=1
  lines.append('\t'.join(map(str,[name,e['exception_index'],w,k,dep,L,V,tax,d.show(R,['c'])])))
 summary[name]={str(key):n for key,n in counts.items()}
(H/'SURVIVORS.tsv').write_text('\n'.join(lines)+'\n');(H/'survivor_prices.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
