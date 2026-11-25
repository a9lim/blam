from extra import *
from functools import lru_cache
def shallow(t):
 if t[0]=='v':return t[1]==0
 return t[0]=='a' and (shallow(t[1]) or shallow(t[2]))
def live(t):
 if t[0] in ('k','v'):return '(.var _)'
 x=live(t[1])
 if x is None:return
 if t[0]=='l':return f'(.lam {x} (by decide))' if shallow(t[1]) else None
 y=live(t[2]);return f'(.app {x} {y})' if y else None
def graded(t,env=()):
 tag=t[0]
 if tag in ('k','v'):
    return env[t[1]] if tag=='v' and t[1]<len(env) else 0,'(.var _ _ (by decide))'
 flow=[[0,0,0],[0,1,1],[1,1,2]]
 if tag=='a':
    f=graded(t[1],env)
    if not f:return
    k,p=f
    if k==0:return 0,f'(.rigidApp {p})'
    a=graded(t[2],env)
    if a:
      m,r=a;out=flow[k][m]
      return out,f'(.app (kf := .{["rigid","pending","clear"][k]}) (ka := .{["rigid","pending","clear"][m]}) {p} {r} (by decide))'
 else:
    arms=[graded(t[1],(x,)+env) for x in range(3)]
    if not all(arms):return
    g=['rigid','pending','clear']
    for k in (1,2):
        if all(val[0]<=flow[k][i] for i,val in enumerate(arms)):
            p='(fun | '+ ' | '.join('.'+g[i]+' => '+f'({a[1]} : SelfintRound6ReaderBinary.Typed _ _ .{g[a[0]]}).weaken _ (by decide)' for i,a in enumerate(arms))+')'
            return k,f'(.lam (by decide) {p})'
def struct(R):
 hit=family(R)
 if hit:return hit
 p=live(R)
 def depthj(t,n=0):
    if t[0]=='k':return n if t[1]=='j' else 0
    if t[0]=='l':return depthj(t[1],n+1)
    if t[0]=='a':return depthj(t[1],n)+depthj(t[2],n)
    return 0
 if p and not depthj(R):return 'shallow live binders',f' exact SelfintRound6ReaderShallow.live_depth_zero_not_reader {p} (by decide)\n'
 g=graded(R)
 if g and g[0]==0:return 'rigid grade',f' exact SelfintRound6ReaderBinary.rigid_typed_not_reader (e := SelfintRound6ReaderBinary.rigidEnv) {g[1]}\n'
 return None
