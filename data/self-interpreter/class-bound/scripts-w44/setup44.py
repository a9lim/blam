from pathlib import Path
for base in ('run','cert','hard','inspect','regular','model','split','audit','polycert','sat','grade'):
 p=Path('w43'+base+'.py');s=p.read_text().replace('43','44').replace('428833','819916').replace('w44guard','w43guard');Path('w44'+base+'.py').write_text(s)
p=Path('w44run.py');s=p.read_text().replace(' and len(cells)==107','')
s=s.replace('def probe(i):','''def parts():
 return json.loads((D/'parts.json').read_text())
def partfile(p):
 return D/('cell'+p['key']+'.json')
def probe(i):''').replace('cell=cells[i];f.K,f.JD=cell[:2];nwant=rows[cell][44]',"part=parts()[i];cell=cells[part['cell']];f.K,f.JD=cell[:2];nwant=part['total'];block=-1")
s=s.replace('   L,T,b,a,cs,bf,af,t=key;emitted=0',"""   block+=1
   if not part['lo']<=block<part['hi']:continue
   L,T,b,a,cs,bf,af,t=key;emitted=0""")
s=s.replace("save(D/f'cell{i}.json',dict(cell=cell,total=nwant","save(partfile(part),dict(cell=cell,part=part,total=nwant")
s=s.replace("order=sorted(range(len(cells)),key=lambda i:-rows[cells[i]][44])","plan=parts();order=sorted(range(len(plan)),key=lambda i:-plan[i]['total'])").replace("if not (D/f'cell{i}.json').exists()","if not partfile(plan[i]).exists()")
p.write_text(s)
p=Path('w44cert.py');s=p.read_text().replace("for i,cell in enumerate(cells):\n  r=json.loads((D/f'cell{i}.json').read_text());assert tuple(r['cell'])==cell and r['total']==rows[cell][44]","for part in parts():\n  cell=cells[part['cell']];r=json.loads(partfile(part).read_text());assert tuple(r['cell'])==cell and r['part']==part and r['total']==part['total']")
p.write_text(s)
