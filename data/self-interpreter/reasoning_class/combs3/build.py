import resource
resource.setrlimit(resource.RLIMIT_CPU,(110,110))
from pathlib import Path
root=Path('/Users/a9lim/Work/blam/tmp/round4')
H='H'
def a(x,y):return (x,y)
def spine(t):
 s=[]
 while isinstance(t,tuple):s.append(t[1]);t=t[0]
 return t,s[::-1]
def app(t,s):
 for x in s:t=a(t,x)
 return t
def step(t):
 h,s=spine(t);assert h==H and len(s)>=2
 x,y,*rs=s;return app(x,[a(y,a(y,x))]+rs)
A=a(H,H);B=a(H,A);C=a(H,B);D=a(H,C)
# Prefix seen at step 5 of H H H H j c.
prefix=[C,a(D,A),a(a(D,a(D,A)),H)]
P=app(H,prefix)
names={H:'H','j':'(.var 1)','c':'(.var 0)'};defs=[]
def name(t):
 if t in names:return names[t]
 x,y=t;nx,ny=name(x),name(y)
 n='t'+str(len(defs));names[t]=n;defs.append(f'def {n} : Term := .app {nx} {ny}')
 return n
def ls(xs,tail='rs'):
 return ' :: '.join([name(x) for x in xs]+[tail])
trace=[P]
for _ in range(22):trace.append(step(trace[-1]))
assert spine(trace[-1])[1][:3]==prefix
extra=spine(trace[-1])[1][3:]
print('pump: 22 macro steps; extra args',len(extra))
body=[]
for i,t in enumerate(trace[:-1]):
 h,s=spine(t)
 body.append(f'  have h{i} := H_rule {name(s[0])} {name(s[1])} ({ls(s[2:])})')
composition='h21'
for i in range(20,-1,-1):composition=f'hs_comp h{i} ({composition})'
pump=f'''def Core : Term := ap H [{', '.join(name(x) for x in prefix)}]
def Extra : List Term := [{', '.join(name(x) for x in extra)}]
theorem advance (rs : List Term) :
    headSteps 44 (ap Core rs) = some (ap Core (Extra ++ rs)) := by
'''+ '\n'.join(body)+f'\n  exact {composition}\n'
entries=[]
for id,t,j,c in [(474,a(A,A),'j','c'),(492,a(a(H,A),H),'j','c'),(493,a(a(H,A),H),'c','j'),(506,a(a(A,H),H),'j','c'),(507,a(a(A,H),H),'c','j')]:
 term=app(t,[j,c]);count=0
 while spine(term)[1][:3]!=prefix:
  term=step(term);count+=1
  assert count<20
 rest=spine(term)[1][3:]
 entries.append((id,count,ls(rest,'[]')))
 print(id,2*count+1,'beta steps to core;',len(rest),'tail args')
common=(root/'combs2/Rootlet3.lean').read_text()
common=common[common.index('import Blc.SelfintClass'):common.index('/-! ## The helper A')].replace('namespace Blc.Combs2','namespace Blc.Combs3')
header='''/- Kernel certificates for rootcert2 ids 474,492,493,506,507.
H = λx y. x (y (y x)). Generic spine lemmas copied from combs2/Rootlet3.lean.
The fixed Core prefix reproduces itself after 44 head beta steps, with
additional arguments. No engine or native_decide evidence is used. -/\n'''
hrule='''def H : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))

theorem H_rule (u v : Term) (rs : List Term) :
    headSteps 2 (ap H (u :: v :: rs)) = some (ap u (.app v (.app v u) :: rs)) := by
  have h1 : headStep (ap H (u :: v :: rs)) =
      some (ap (.lam (.app (shift 1 0 u) (.app (.var 0) (.app (.var 0) (shift 1 0 u))))) (v :: rs)) := by
    rw [ap_cons]; unfold H; rw [beta_ap]; simp [contract, substDec]
  have h2 : headStep (ap (.lam (.app (shift 1 0 u) (.app (.var 0) (.app (.var 0) (shift 1 0 u)))))
      (v :: rs)) = some (ap u (.app v (.app v u) :: rs)) := by
    rw [ap_cons, beta_ap]; simp [contract, substDec, substDec_shift, ap_cons]
  simp [headSteps, h1, h2]

'''
rest='''
def Fam (t : Term) : Prop := ∃ rs, t = ap Core rs

theorem core_unsolvable (rs : List Term) : ¬ Solvable (ap Core rs) := by
  refine unsolvable_of_advance Fam ?_ _ ⟨rs, rfl⟩
  rintro t ⟨rs, rfl⟩
  exact ⟨43, _, advance rs, Extra ++ rs, rfl⟩

def L474 : Term := .lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))
def L492 : Term := .lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))
def L506 : Term := .lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))
'''
for id,count,tail in entries:
 let=474 if id==474 else 492 if id in (492,493) else 506
 j,c=(1,0) if id in (474,492,506) else (0,1)
 rest+=f'''\ndef r{id} : Term := .app (.app (.app L{let} H) (.var {j})) (.var {c})
theorem r{id}_base : headSteps {count*2+1} r{id} = some (ap Core ({tail})) := by decide
theorem r{id}_unsolvable : ¬ Solvable r{id} :=
  fun h => core_unsolvable _ (solvable_steps r{id}_base h)
theorem zero{id}_unsolvable : ¬ Solvable (.app r{id} Z) :=
  unsolvable_app r{id}_unsolvable Z
theorem zero{id}_not_join : ¬ BetaJoin (.app r{id} Z) zeroOut := by
  intro h
  exact zero{id}_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject{id} : ¬ Reader r{id} := fun h => zero{id}_not_join h.zero
'''
rest+='\nend Blc.Combs3\n'
for id,_,_ in entries:
 for suffix in (f'r{id}_unsolvable',f'zero{id}_not_join',f'reject{id}'):
  rest+=f'#print axioms Blc.Combs3.{suffix}\n'
(root/'combs3/Rootlet5.lean').write_text(header+common+hrule+'\n'.join(defs)+'\n\n'+pump+rest)
