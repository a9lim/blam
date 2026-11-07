from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from lab import *
base=Path('/Users/a9lim/Work/blam/data/self-interpreter/machines/int162.lam').read_text()
hoist=r'''(\x. x x) (\x. (\p. \c.
 (\next. \s. s (\a.a) (\u.s (\q.c) (s s u)) next)
 (\b. p (\e. b
   (c (\args \arg. e (\zx \zy. zx arg (zy args))))
   (p (\e2. c (\args. e args (e2 args))))))) (x x))'''
# Move APP's entire parser continuation outside the second-bit scope.
moveapp=r'''(\x. x x) (\x. (\p. \c.
 (\j. \s. s (\a.a) (\u.s (\q.c) (s s u))
   (\b. p (\e. b
     (c (\args \arg. e (\zx \zy. zx arg (zy args))))
     (j e))))
 (\e. p (\e2. c (\args. e args (e2 args))))
 ) (x x))'''

def counts(t):
 if t[0]=='V':return 0,0,t[1]
 if t[0]=='L':
  l,a,x=counts(t[1]);return l+1,a,x
 l,a,x=counts(t[1]);m,b,y=counts(t[2]);return l+m,a+b+1,x+y
for name,src in [('base',base),('hoist_next',hoist),('hoist_app',moveapp)]:
 t=parse(src); print(name,size(t), counts(t), flush=True)
 if name!='base':
  Path(__file__).with_name(name+'.lam').write_text(src+'\n')
  print('closed probes',[(m,probe(t,parse(m))) for m in [r'\x.x',r'\x.\y.x y',r'\x.x x',r'(\x.x) (\y.y)']],flush=True)
select=r'''(\x. x x) (\x. (\p. \c. \s.
 s (\a.a) (\u.s (\q.c) (s s u))
 ((\pp \a \d \b. pp (b a d)) p
  (\e. c (\args \arg. e (\zx \zy. zx arg (zy args))))
  (\e. p (\e2. c (\args. e args (e2 args)))))) (x x))'''
t=parse(select)
Path(__file__).with_name('select_helper.lam').write_text(select+'\n')
print('select_helper',size(t),counts(t),flush=True)
print('closed probes',[(m,probe(t,parse(m))) for m in [r'\x.x',r'\x.\y.x y',r'\x.x x',r'(\x.x) (\y.y)']],flush=True)
for src in [hoist,moveapp]:
 print('open-body beta equality',eq(parse(base)[2][1][1][1],parse(src)[2][1][1][1]),flush=True)
# Compare NEXT b r with p,c,s,r rigid. Select exactly the reader's final operand.
q0=parse(base)[2][1][1][1][1][1][2]
q1=t[2][1][1][1][1][1][2]
for bit in [K,F]:
 print('NEXT clause',eq(app(q0,bit,('V',3)),app(q1,bit,('V',3))),flush=True)
single=r'''(\x. x x) (\x. \c.
 (\next. \s. s (\a.a) (\u.s (\q.c) (s s u)) (next next))
 (\self \b. (x x) (b
  (\e. c (\args \arg. e (\zx \zy. zx arg (zy args))))
  (\e. self self (\a \d \e2. c (\args. e args (e2 args)))))))'''
t=parse(single)
Path(__file__).with_name('selfpassing.lam').write_text(single+'\n')
print('selfpassing',size(t),counts(t),flush=True)
print('closed probes',[(m,probe(t,parse(m))) for m in [r'\x.x',r'\x.\y.x y',r'\x.x x',r'(\x.x) (\y.y)']],flush=True)
