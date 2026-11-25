from cert import d
class LargeReduct(Exception):pass
def install():
 old=d.beta
 def limited(body,arg):
  b=d.size(body);a=d.size(arg)
  if b*a>9000:
   # Count exactly the leaves substituted for the redex binder.
   stack=[(body,0)];m=0
   while stack:
    t,dep=stack.pop()
    if t[0]=='v' and t[1]==dep:m+=1
    elif t[0]=='l':stack.append((t[1],dep+1))
    elif t[0]=='a':stack.append((t[1],dep));stack.append((t[2],dep))
   if b+m*(a-1)>9000:raise LargeReduct()
  return old(body,arg)
 d.beta=limited
