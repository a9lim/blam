from w43hard import *
class Unify:
 def __init__(self):self.link=[];self.arr={};self.free={};self.const=[]
 def new(self):v=len(self.link);self.link.append(v);return v
 def root(self,i):
  while self.link[i]!=i:self.link[i]=self.link[self.link[i]];i=self.link[i]
  return i
 def eq(self,i,j):
  work=[(i,j)]
  while work:
   i,j=(self.root(x) for x in work.pop())
   if i==j:continue
   a=self.arr.pop(i,None);b=self.arr.get(j)
   self.link[i]=j
   if a and b:work+=list(zip(a,b))
   elif a:self.arr[j]=a
 def arrow(self,x,y):i=self.new();self.arr[i]=(x,y);return i
 def infer(self,t,e):
  k=t[0]
  if k=='v':return e[t[1]]
  if k=='k':
   if t not in self.free:self.free[t]=self.new()
   return self.free[t]
  if k=='l':
   j=self.new();return self.arrow(j,self.infer(t[1],(j,)+e))
  f=self.infer(t[1],e);a=self.infer(t[2],e);o=self.new();self.eq(f,self.arrow(a,o));return o
def go(i,R,ps=[]):
 R=d.subst(R,0,d.Kc('c'));u=Unify();out=u.infer(R,());out=u.root(out)
 if out in u.arr:return None
 keys=sorted(set(map(u.root,range(len(u.link))))-{out});mp={out:0,**{v:k+2 for k,v in enumerate(keys)}};m=lambda x:mp[u.root(x)]
 tab=[(m(k),m(a),m(b)) for k,(a,b) in u.arr.items()]
 env={t[1]:m(j) for t,j in u.free.items()}
 return dict(N=len(keys)+2,F=tab,env=env,prep=ps)
if __name__=='__main__':
 from w43variant import candidates
 i=21043;R=ad.tup(sources()[str(i)]['source'])
 for ps,t in [([],R),*candidates(i)]:
  r=go(i,t,ps)
  if r:print(r);break
 else:print('no simple type')
