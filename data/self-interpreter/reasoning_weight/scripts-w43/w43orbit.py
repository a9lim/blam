# Terms over names H, F(x), K(x), and application. Only contract K internally;
# head H and F steps are tracked separately. Useful for seeing hereditary orbits.
from functools import lru_cache
def explore(i,n=75):
 store=[];intern={}
 def mk(k,*args):
  a=(k,*args)
  if a not in intern:intern[a]=len(store);store.append(a)
  return intern[a]
 H=mk('H');F=lambda x:mk('F',x);K=lambda x:mk('K',x)
 def A(x,y):return store[x][1] if store[x][0]=='K' else mk('a',x,y)
 def disp(t,d=0):
  x,*a=store[t]
  if d>=5:return f'#{t}'
  if not a:return x
  if len(a)==1:return x+disp(a[0],d+1)
  return '('+disp(a[0],d+1)+' '+disp(a[1],d+1)+')'
 t=A(H,H) if i!=21043 else A(A(H,H),H)
 for j in range(n):
  a=[];f=t
  while store[f][0]=='a':a.append(store[f][2]);f=store[f][1]
  if j<30:print(i,j,f,len(a),disp(f),*[disp(x) for x in a[-2:]])
  if not a:break
  if f==H:
   x=a.pop();u=F(x) if i==21043 else A(x,F(x))
  else:
   assert store[f][0]=='F'
   x=store[f][1];y=a.pop()
   if i==7741:u=A(x,A(A(x,K(y)),y))
   elif i==7755:u=A(A(x,K(y)),A(x,y))
   else:u=A(A(x,y),A(y,K(x)))
  for z in reversed(a):u=A(u,z)
  t=u
if __name__=='__main__':
 for i in (7741,7755,21043):explore(i)
