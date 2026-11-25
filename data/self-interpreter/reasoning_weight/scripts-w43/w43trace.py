from w43hard import *
def trace(i):
 R=ad.tup(sources()[str(i)]['source']);t=d.A(d.subst(R,0,d.Kc('c')), d.Z())
 nodes=regular.compile_term(convert(t));pc=0;e=();stack=[];vals=[];lambdas=collections.Counter();act=[]
 for s in range(100000):
  n=nodes[pc]
  if n[0]=='C' or (n[0]=='L' and not stack):break
  if n[0]=='A':stack.append((n[2],e));pc=n[1]
  elif n[0]=='L':
   vals.append(stack.pop());e=(len(vals)-1,)+e;pc=n[1];lambdas[pc]+=1
   if s<135:act.append((pc,len(stack)))
  else:pc,e=vals[e[n[1]]]
 print(i,s,len(stack),n, sorted(lambdas.items()),act[:25],flush=True)
if __name__=='__main__':
 limit()
 for i in (7461,7741,7755,8935,9436,21043,21083,18985):trace(i)
