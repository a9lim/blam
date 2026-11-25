from w44hard import *
from itertools import combinations_with_replacement
def tables(N):
 rs=[r for r in combinations_with_replacement(range(N),N)]
 def loop(xs):
  if len(xs)==N:yield xs;return
  for r in rs:
   if all(b>=a for a,b in zip(xs[-1],r)):yield from loop(xs+[r])
 yield from loop([(0,)*N])
def evaluate(t,tab,e=()):
 N=len(tab)
 if t[0]=='k':return 0
 if t[0]=='v':return e[t[1]] if t[1]<len(e) else 0
 if t[0]=='a':
  a=evaluate(t[1],tab,e)
  if a==0:return 0
  if a==N:return N
  b=evaluate(t[2],tab,e)
  return tab[a][b] if b<N else N
 bs=[evaluate(t[1],tab,(a,)+e) for a in range(N)]
 return next((a for a in range(1,N) if all(b<=c for b,c in zip(bs,tab[a]))),N)
def search():
 from time import monotonic
 limit();p=json.loads((D/'hard-input.json').read_text())
 ids=[7461,7741,7755,8935,9446,21044,21083,7735,18985]
 for N in (2,3,4):
  ts=[(i,ad.tup(p[str(i)]['source'])) for i in ids];start=time.monotonic()
  for tab in tables(N):
   for i,t in ts.copy():
    if evaluate(t,tab)==0:
     print('hit',i,tab,flush=True);save(D/f'grade{i}.json',tab);ts.remove((i,t));ids.remove(i)
   if not ts:break
  print('done',N,round(time.monotonic()-start,2),ids,flush=True)
if __name__=='__main__':search()
