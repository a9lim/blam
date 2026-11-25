from cert import *
def fmt(t):
 if t[0] in ('v','k'):return str(t[1])
 if t[0]=='l':return 'λ'+fmt(t[1])
 return '('+fmt(t[1])+' '+fmt(t[2])+')'
seen=set()
for file in sorted(P.glob('cert1*.json')):
 if file.stem=='cert41':continue
 r=json.loads(file.read_text());p=json.loads(file.with_name(file.name.replace('cert','probe')).read_text())
 for i in r['open']:
    R=p['exceptions'][i]['source'];h,cs=fam.flat(R);key=fmt(fam.d.A(h,cs[0]))
    if key in seen:continue
    seen.add(key);print(int(file.stem[4:])-10000+i,key,' | ',','.join(map(fmt,cs[1:])))
