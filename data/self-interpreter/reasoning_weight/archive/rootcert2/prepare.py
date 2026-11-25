import sys
sys.dont_write_bytecode=True
import collections,hashlib,json,shutil
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'))
import rd
rows=json.loads((H.parent/'rootnl/SURVIVORS.json').read_text())
assert len(rows)==658

def enc(t,env):
 if t[0]=='V': return '1'*(env.index(t[1])+1)+'0'
 if t[0]=='L': return '00'+enc(t[2],[t[1]]+env)
 return '01'+enc(t[1],env)+enc(t[2],env)
groups=collections.defaultdict(list)
for row in rows:
 t=rd.parse(row['source']); assert rd.weight(t)[0]==row['weight']
 groups[row['helper']].append(row['id'])
 row['zero_bits']=enc(('L','c',('L','j',('L','r',('A',t,rd.Z('r'))))),[])
(H/'zero.blc').write_text('\n'.join(r['zero_bits'] for r in rows)+'\n')
(H/'sources.json').write_text(json.dumps(rows,separators=(',',':'))+'\n')
(H/'GROUPS.tsv').write_text('group\tcount\thelper\tids\n'+''.join(f'{i}\t{len(ids)}\t{a}\t'+','.join(map(str,ids))+'\n' for i,(a,ids) in enumerate(groups.items())))
for fn in ['engine.py','run_limited.py']:
 shutil.copyfile(H.parent/'rootcert'/fn,H/fn)
for fn in ['Certificates']:
 shutil.copyfile(H.parent/'rootnl'/(fn+'.lean'),H/(fn+'.lean'))
(H/'NOTES.md').open('a').write('# rootcert2 progress\n\nRead BRIEF/BRIEF5, current class-bound and STATUS, rootnl and precedents. Fixed input: 658 sources / 93 helpers; no enumeration. Every literal source price rechecked with coord/rd.py. Lean copies retain original namespaces and authorship.\n')
(H/'blam-frozen').unlink(missing_ok=True)
shutil.copy2(H.parents[2]/'target/release/blam',H/'blam-frozen')
(H/'binary.sha256').write_text(hashlib.sha256((H/'blam-frozen').read_bytes()).hexdigest()+'\n')
print('prepared',len(rows),'sources;',len(groups),'helpers')
