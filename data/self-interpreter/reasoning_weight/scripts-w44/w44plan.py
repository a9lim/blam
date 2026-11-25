from w44run import *
from count import f,limit
import pickle,itertools
def plan():
 limit();blocks=collections.defaultdict(list)
 for k,j in sorted({c[:2] for c in cells}):
  f.K,f.JD=k,j
  with open(P/f'blocks_{k}_{j}_44.pkl','rb') as fp:
   while True:
    try:key,n,m=pickle.load(fp)
    except EOFError:break
    c=(k,j,*f.cell(key));blocks[c].append(m)
 out=[]
 for i,c in enumerate(cells):
  ns=blocks[c];assert sum(ns)==rows[c][44] and all(0<n<=100000 for n in ns)
  bound=90000 if sum(ns)>100000 else 100000
  chunks=[];lo=tot=0
  for hi,n in enumerate(ns):
   if tot and tot+n>bound:chunks.append((lo,hi,tot));lo=hi;tot=0
   tot+=n
  chunks.append((lo,len(ns),tot))
  for j,(lo,hi,tot) in enumerate(chunks):
   key=str(i) if len(chunks)==1 else f'{i}-part{j}'
   out.append(dict(key=key,cell=i,lo=lo,hi=hi,total=tot))
   if len(chunks)>1:print(c,out[-1])
 assert sum(x['total'] for x in out)==819916;print(len(cells),len(out),max(x['total'] for x in out));save(D/'parts.json',out)
plan()
