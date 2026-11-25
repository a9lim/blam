from count_extensions import f,forest,is_j,extension
def multiplicity(key,n):
  k,d=f.K,f.JD
  L,T,b,a,cs,bf,af,t=key;old=f.forest(cs,t);new=forest(cs,t,bf[5])
  assert n%old==0
  nnew=(n//old)*new
  if not nnew:return 0
  pureB=bool(not bf[5] and bf[8][0]==0 and bf[8][1] and (bf[8][1][0]==0 or not sum(b[3]) and not b[1] and not b[2]))
  pureA=bool(len(af[5])==1 and af[8][0]==0 and af[8][1] and (af[8][1][0]==0 or sum(a[3])==1 and not a[1] and not a[2]))
  if pureB and pureA:
   return 0
  p=len(bf[5]);bh,args=bf[8];h=len(af[5])
  literal_hole_pending=bool(d==0 and cs[2] and not sum(cs[3]))
  literal_hole_body=bool(b[2] and -2 in args)
  if bh==p and h>=len(args)+max(0,t-p)+1 and (literal_hole_pending or literal_hole_body):
   return 0
  if k==2 and not sum(b[3]) and f.leaves(b)==2 and not b[1] and not b[2] and t==1 and is_j(cs) and h==2 and af[8][0]==1:
   return 0
  w=2*L+4*(f.leaves(b)+f.leaves(a)+f.leaves(cs))-4+T+4*d
  if len(bf[5])==t+1 and t<=1 and len(af[5])==1 and af[8][0]==0 and len(af[8][1])==2:
   delta=f.fr(a)+f.fr(cs)+(t+1)*bf[5][-1]-k-sum(bf[5][:-1])
   if w+delta<=45:return 0
  return 0 if extension(key) else nnew
