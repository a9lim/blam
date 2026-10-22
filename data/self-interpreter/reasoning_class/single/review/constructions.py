import sys
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/single')
from insert import *
sources=[
 r'\s. s I (s (\q.c) (s s s)) j',
 r'\s. s (\t.t t c) (s s c) j',
 r'\s. s I (\u. s (\q.c) (s s u)) j',
 r'\s. s I (\u. s (\q.c) (s s s)) j',
 r'\s. s K (s j) (s (\q.c) (s s s))',
 r'\s. s (\b. b b (\t u. c t (t t u))) s j',
]
for src in sources:
 src=src.replace('I',r'(\i.i)').replace('K',r'(\a b.a)')
 t=conv_top(rd.parse(src))
 print('w',6+cost(t),'src',src)
 print('  zero',show(normalize(inst(t,Z()))),'unary',show(normalize(inst(t,U(1)))))
# Try absorbing the surplus j of the 39-bit near miss by placing one lambda
# around each j-free source subterm, and replacing any subset of its s/c
# leaves by the new argument. Preserve all old binding indices otherwise.
base=conv_top(rd.parse(r'\s. s (\t.t t c) (s s c) j'))
tried=0; hits=[]; low=[]
def variants(t,k=0):
 tag=t[0]
 if tag=='v':
  yield V(t[1]+(t[1]>=k))
  if t[1]>=k:yield V(k)
 elif tag=='k':yield t
 elif tag=='l':
  for b in variants(t[1],k+1):yield L(b)
 elif tag=='a':
  for f in variants(t[1],k):
   for x in variants(t[2],k):yield A(f,x)
for p,t,d in positions(base):
 if 'j' in consts_of(t):continue
 for body in variants(t):
  m=replace(base,p,L(body));w=6+cost(m)
  if w>47:continue
  tried+=1
  if laws(m)==0:hits.append((w,show(m)))
print('39-bit absorber repairs through w47:',tried,'hits',hits)
