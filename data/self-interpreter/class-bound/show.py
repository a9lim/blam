from cert import *
w=sys.argv[1];r=json.loads((P/f'cert{w}.json').read_text());p=json.loads((P/f'probe{w}.json').read_text());print(r['kinds'],r['open'])
def fmt(t):
 if t[0] in ('v','k'):return str(t[1])
 if t[0]=='l':return 'λ'+fmt(t[1])
 return '('+fmt(t[1])+' '+fmt(t[2])+')'
for i in r['open']:
 e=p['exceptions'][i];print(i,e['cell'],fmt(e['source']))
