from pathlib import Path
import re,json
H=Path(__file__).resolve().parent;mods=json.loads((H/'modules.json').read_text());out=[]
for name in mods:
 if not (name.startswith('Case04Block') and int(name[11:13])>=23):out.append(name);continue
 p=H/name;s=p.read_text();blocks=re.findall(r'theorem block\d+[^\n]+',s)
 if len(blocks)<2:out.append(name);continue
 head=s[:s.index('theorem block')];sub=[]
 for i,blk in enumerate(blocks):
  sn=p.stem+'Part'+str(i);sub.append(sn);out.append(sn+'.lean')
  (H/(sn+'.lean')).write_text(head+blk+'\nend Certgen.Case04\n')
 p.write_text('\n'.join('import '+n for n in sub)+'\n');out.append(name)
(H/'modules.json').write_text(json.dumps(out,indent=2));print(len(out))
