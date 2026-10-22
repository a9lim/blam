import re,json
from pathlib import Path
H=Path(__file__).resolve().parent
rows=json.loads((H/'MANIFEST.json').read_text())
for row in rows:
    p=H/(row['label']+'.result.json')
    row.update(json.loads(p.read_text()))
(H/'MANIFEST.json').write_text(json.dumps(rows,indent=2))
modules=['Regular.lean']
for r in rows:
    if not r['ok']:continue
    name=r['label'];p=H/(name+'.lean');s=p.read_text()
    if r['portable_states']<300:modules.append(name+'.lean');continue
    header,rest=s.split('theorem block0',1);rest='theorem block0'+rest
    proofs,tail=rest.split('theorem closedAt',1);tail='theorem closedAt'+tail
    blocks=re.findall(r'theorem block\d+[^\n]+',proofs)
    (H/(name+'Data.lean')).write_text(header+'\nend Certgen.'+name+'\n');modules.append(name+'Data.lean')
    imports=['import '+name+'Data']
    for i in range(0,len(blocks),4):
        mod=name+'Block'+str(i//4).zfill(2);imports.append('import '+mod)
        (H/(mod+'.lean')).write_text(f'import {name}Data\nnamespace Certgen.{name}\nset_option maxRecDepth 30000\nset_option maxHeartbeats 12000000\n'+'\n'.join(blocks[i:i+4])+'\nend Certgen.'+name+'\n')
        modules.append(mod+'.lean')
    p.write_text('\n'.join(imports)+f'\nnamespace Certgen.{name}\nset_option maxRecDepth 30000\nset_option maxHeartbeats 12000000\n'+tail)
    modules.append(name+'.lean')
(H/'modules.json').write_text(json.dumps(modules,indent=2))
print(len(modules),'modules',sum(r['ok'] for r in rows),'certificates')
