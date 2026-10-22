import sys
sys.dont_write_bytecode=True
import csv,collections,hashlib,json
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'))
import rd
rows=list(csv.DictReader((H.parent/'rootlet/SURVIVORS.tsv').open(),delimiter='\t'))
assert len(rows)==580

def enc(t,env):
 if t[0]=='V': return '1'*(env.index(t[1])+1)+'0'
 if t[0]=='L': return '00'+enc(t[2],[t[1]]+env)
 return '01'+enc(t[1],env)+enc(t[2],env)

def helper(t):
 while t[0]=='A':
  if t[1][0]=='L':return t[2]
  t=t[1]
 raise ValueError(t)

out=[];groups=collections.defaultdict(list)
for i,row in enumerate(rows):
 t=rd.parse(row['source']); assert rd.weight(t)[0]==int(row['weight'])
 a=helper(t);astr=rd.show(a)
 groups[(row['cell'],astr)].append(i)
 z=('A',t,rd.Z('r')); closed=('L','c',('L','j',('L','r',z)))
 bits=enc(closed,[]);out.append(bits)
 row.update(id=i,zero_bits=bits,helper=astr)
(H/'zero.blc').write_text('\n'.join(out)+'\n')
(H/'sources.json').write_text(json.dumps(rows,separators=(',',':'))+'\n')
(H/'GROUPS.tsv').write_text('cell\tcount\thelper\tids\n'+'\n'.join('\t'.join([c,str(len(ids)),a,','.join(map(str,ids))]) for (c,a),ids in groups.items())+'\n')
summary={'sources':len(rows),'helpers':len(groups),'binary_sha256':hashlib.sha256((H/'blam-frozen').read_bytes()).hexdigest(),'zero_sha256':hashlib.sha256((H/'zero.blc').read_bytes()).hexdigest()}
(H/'prepare.json').write_text(json.dumps(summary,indent=2)+'\n');print(summary)
