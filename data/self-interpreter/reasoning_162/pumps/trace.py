from classify import *
def show(t,depth=4):
    if depth<0:return '...'
    if t[0]=='a':
        h,xs=spine(t);return '('+' '.join([show(h,depth-1)]+[show(x,depth-1) for x in xs])+')'
    if t[0]=='c':return str(t[1])+('['+','.join(show(x,depth-1) for x in t[2])+']' if t[2] else '')
    return str(t)
bits=sys.argv[1] if len(sys.argv)>1 else '0001011011010'
m=Machine(dec(bits));t=m.root()
for k in range(35):
    h,xs=spine(t);print(k,sz(t),len(xs),show(t,2))
    u=m.step(t)
    if u is None:break
    t=u
print('RULES')
for i,(k,b,n,db) in enumerate(m.rules):print(i,k,n,show(b,3))
