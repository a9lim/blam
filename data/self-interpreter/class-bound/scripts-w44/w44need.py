from w44hard import *
def trace(i):
 # Memoizing weak-head evaluation. Distinguish exact return from a repeated
 # demand for a currently evaluating thunk; all other bounds are inconclusive.
 R=ad.tup(sources()[str(i)]['source'])
 for root in [R,d.A(d.subst(R,0,d.Kc('c')), d.Z())]:
  if root==R:root=d.subst(R,0,d.Kc('c'))
  ns=regular.compile_term(convert(root))
  p=0;env=();args=[];frames=[];pending=set();cache={};steps=0;intern={};fetched=0
  for s in range(200000):
   n=ns[p]
   if n[0]=='A':args.append((n[2],env));p=n[1]
   elif n[0]=='L' and args:
    ae=args.pop()
    if ae not in intern:intern[ae]=len(intern)
    env=(intern[ae],)+env;p=n[1];steps+=1
   elif n[0]=='V':
    k=env[n[1]]
    if k in cache:p,env=cache[k];fetched+=1;continue
    if k in pending:break
    pending.add(k);frames.append((k,args));args=[];p,env=reverse[k]
   elif n[0]=='L' and frames:
    k,args=frames.pop();cache[k]=p,env;pending.remove(k)
   else:break
   if len(intern)>len(reverse):reverse.append(ae)
  print(i,s,n,'stack',len(args),'frames',len(frames),'steps',steps,'cache',len(cache),'hits',fetched,flush=True)
  reverse.clear()
if __name__=='__main__':
 limit();reverse=[]
 for i in (15938,15988,16674):trace(i)
