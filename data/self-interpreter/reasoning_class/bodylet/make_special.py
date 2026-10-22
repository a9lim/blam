import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
H=Path(__file__).resolve().parent

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def lean(t,depth=0,source=False):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':
  i=(2 if source else 1) if t[1]=='j' else {'c':0,'N':2,'r':3}[t[1]]
  return f'(.var {depth+i})'
 if t[0]=='l':return f'(.lam {lean(t[1],depth+1,source)})'
 return f'(.app {lean(t[1],depth,source)} {lean(t[2],depth,source)})'
s='''import Certificates
namespace Blc.BodyLetSpecial
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open SelfintStreamSpecializer WeakHeadClock HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def payloadA (left : Bool) : Term :=
 .lam (.lam (.app (.app (.var 0)
   (if left then .app (shift 2 0 Z) (.var 1) else .app (.var 1) (shift 2 0 Z))) (.var 0)))
def payload (left : Bool) (t : Term) : Term :=
 .app (.app (payloadA left) t) (payloadA left)
def next (left : Bool) (t : Term) : Term :=
 if left then .app Z t else .app t Z

theorem payload_step (left : Bool) (t : Term) :
 weakSteps 2 (payload left t)=some (payload left (next left t)) := by
 cases left <;> simp [weakSteps,weakStep,payload,payloadA,next,
   contract,substDec,shift,substDec_shift,Z,pairT,churchTrue]

theorem payload_no_count (left : Bool) : ∀ n, ∀ t, ¬ Count (payload left t) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro t hc
  obtain ⟨m,hm,hcm⟩ := weakSteps_clock 2 (payload_step left t) hc
  exact ih m (by omega) (next left t) hcm

theorem payload_no_nf (left : Bool) (t : Term) (rest : List Term) :
 ¬ HasNormalForm (spine (payload left t) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact payload_no_count left m t hcm
'''
s+='''
def templateA (D : Term) : Term := .lam (.lam (.app (.app (.var 0) D) (.var 0)))
def templateState (D t : Term) : Term := .app (.app (templateA D) t) (templateA D)
def templateNext (D t : Term) : Term := substDec 0 (templateA D) (substDec 1 (shift 1 0 t) D)
theorem template_step (D t : Term) :
 weakSteps 2 (templateState D t)=some (templateState D (templateNext D t)) := by
 simp [weakSteps,weakStep,templateState,templateA,templateNext,contract,substDec,substDec_shift]
theorem template_no_count (D : Term) : ∀ n, ∀ t, ¬ Count (templateState D t) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro t hc
  obtain ⟨m,hm,hcm⟩ := weakSteps_clock 2 (template_step D t) hc
  exact ih m (by omega) (templateNext D t) hcm
theorem template_no_nf (D t : Term) (rest : List Term) :
 ¬ HasNormalForm (spine (templateState D t) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact template_no_count D m t hcm
theorem template_reduct {r : Term} (z : Bool) (n : Nat) (D t : Term) (rest : List Term)
 (h : advance n (.app r (input z))=spine (templateState D t) rest) : ¬ Reader r := by
 intro hr
 have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
 rw [h] at red
 exact template_no_nf D t rest ⟨_,red,output_nf z⟩
#print axioms template_reduct
'''
s+='''
def delayA (D : Term) : Term := .lam (.lam (.app (.app (.var 1) (.var 1)) D))
def delayState (D t : Term) : Term := .app (.app (delayA D) (delayA D)) t
def delayNext (D t : Term) : Term := substDec 0 t (substDec 1 (shift 1 0 (delayA D)) D)
theorem delay_step (D t : Term) :
 weakSteps 2 (delayState D t)=some (delayState D (delayNext D t)) := by
 simp [weakSteps,weakStep,delayState,delayA,delayNext,contract,substDec,substDec_shift]
theorem delay_no_count (D : Term) : ∀ n, ∀ t, ¬ Count (delayState D t) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro t hc
  obtain ⟨m,hm,hcm⟩ := weakSteps_clock 2 (delay_step D t) hc
  exact ih m (by omega) (delayNext D t) hcm
theorem delay_no_nf (D t : Term) (rest : List Term) :
 ¬ HasNormalForm (spine (delayState D t) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact delay_no_count D m t hcm
theorem delay_reduct {r : Term} (z : Bool) (n : Nat) (D t : Term) (rest : List Term)
 (h : advance n (.app r (input z))=spine (delayState D t) rest) : ¬ Reader r := by
 intro hr
 have red := betas_preserve_nf (advance_sound n _) (reader_red hr z) (output_nf z)
 rw [h] at red
 exact delay_no_nf D t rest ⟨_,red,output_nf z⟩
#print axioms delay_reduct
'''
raw=json.loads((H/'check-2-0-C-B.json').read_text())['exceptions']
for i,index in enumerate((122,123)):
 r=raw[index];src='(.lam '+lean(tup(r['body']),source=True)+')';z='false' if i==0 else 'true'
 s+=f'\ndef bad{i} : Term := {src}\n'
 s+=f'''theorem bad{i}_not_reader : ¬ Reader bad{i} := by
 intro hr
 have hp : advance 2 (.app bad{i} Z) = spine (payload {z} (.var 0)) [.var 1] := by decide
 have red := betas_preserve_nf (advance_sound 2 (.app bad{i} Z)) hr.zero_red zeroOut_normal
 rw [hp] at red
 exact payload_no_nf {z} (.var 0) [.var 1] ⟨_,red,zeroOut_normal⟩
#print axioms bad{i}_not_reader
'''
s+='\nend Blc.BodyLetSpecial\n'
(H/'Special.lean').write_text(s)
