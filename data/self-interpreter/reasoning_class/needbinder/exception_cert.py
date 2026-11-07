import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
H=Path(__file__).resolve().parent
r=json.loads((H/'nonlinear_check.json').read_text())
def tup(x):return tuple(tup(y) if isinstance(y,list) else y for y in x)
def occ(t,i):
 if t[0]=='v':return int(t[1]==i)
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)
def lean(t):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='l':return f'(.lam {lean(t[1])})'
 return f'(.app {lean(t[1])} {lean(t[2])})'
s='''import Blc.SelfintNeededHead
namespace Blc.NeedBinder.NonlinearExceptions
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer
set_option maxRecDepth 4000
set_option maxHeartbeats 1000000

def reader (b : Term) : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam b))) (.var 2))

theorem absent_reduct {r : Term} (h : occ 3 (advance 4 (.app r Z))=0) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound 4 (.app r Z)) hr.zero_red zeroOut_normal
  have no := SelfintKnot.occ_betas_zero red 3 h
  have yes : occ 3 zeroOut=1 := by decide
  omega

theorem fixed_spine_no_nf {t : Term} (hs : Spine t) (hf : headStep t=some t) :
    ¬ HasNormalForm t := by
  have one : ∀ u, Beta t u → u=t := by
    intro u hu
    have hh := headStep_complete (spine_beta_head hs hu)
    rw [hf] at hh
    exact (Option.some.inj hh).symm
  have many : ∀ a b, Betas a b → a=t → b=t := by
    intro a b hab
    induction hab with
    | refl => exact id
    | head hab _ ih =>
      intro ha
      apply ih
      rw [ha] at hab
      exact one _ hab
  rintro ⟨n,hn,hnf⟩
  have he := many _ _ hn rfl
  subst n
  exact hnf _ (beta_of_headStep (headStep_sound hf))

theorem looping_reduct {r : Term} (hs : Spine (advance 4 (.app r Z)))
    (hf : headStep (advance 4 (.app r Z))=some (advance 4 (.app r Z))) : ¬ Reader r := by
  intro hr
  have red := betas_preserve_nf (advance_sound 4 (.app r Z)) hr.zero_red zeroOut_normal
  exact fixed_spine_no_nf hs hf ⟨_,red,zeroOut_normal⟩
'''
audit=[]
for i,e in enumerate(r['exceptions']):
 B=tup(e['term']);s+=f'\ndef body{i} : Term := {lean(B)}\n'
 if occ(B,0)==0 and occ(B,2)==0:
  s+=f'theorem reject{i} : ¬ Reader (reader body{i}) := absent_reduct (by decide)\n'
  kind='missing r after four steps'
 else:
  # The four remaining bodies are Omega with normal pending arguments.
  assert i in (2,3,4,5)
  k=3 if i in (2,3) else 2
  proof='(Spine.redex (by decide) (by decide))'
  for _ in range(k):proof=f'(Spine.appL _ (by intro b h; cases h) {proof} (by decide))'
  s+=f'theorem reject{i} : ¬ Reader (reader body{i}) := by\n  apply looping_reduct\n  · exact {proof}\n  · decide\n'
  kind='single redex repeats exactly'
 s+=f'#print axioms reject{i}\n'
 audit.append(dict(index=i,kind=e['kind'],proof=kind,body=e['body']))
s+='end Blc.NeedBinder.NonlinearExceptions\n'
(H/'NonlinearExceptions.lean').write_text(s)
(H/'nonlinear_audit.json').write_text(json.dumps(audit,indent=2)+'\n')
print('Generated',len(audit),'certificates')
