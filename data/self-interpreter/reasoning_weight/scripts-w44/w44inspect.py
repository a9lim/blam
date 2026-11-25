from w44cert import *
def fmt(t):
 if t[0] in ('k','v'):return str(t[1])
 if t[0]=='l':return 'λ'+fmt(t[1])
 return '('+fmt(t[1])+' '+fmt(t[2])+')'
def residual():
 opened=sum((json.loads(f.read_text())['open'] for f in D.glob('found*.json')),[])
 es=json.loads((P/'probe44.json').read_text())['exceptions']
 return sorted(opened),es
if __name__=='__main__':
 op,es=residual();print(len(list(D.glob('found*.json'))),'batches;',len(op),'exceptions pending')
 for i in op:print(i,es[i]['cell'],fmt(es[i]['source']))
