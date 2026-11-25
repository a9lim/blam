import Blc.SelfintResidual45.RegularBase

set_option Elab.async false
namespace Blc.Floor45.Observe
open Term SelfintControl SelfintLowerBound SelfintRegularSoundness SelfintSourceCost WeakHeadClock SelfintProbe
inductive View
 | lambda
 | rigid (i arity : Nat)
 deriving DecidableEq, Repr
def more : Option View → Option View
 | some (.rigid i k) => some (.rigid i (k+1))
 | _ => none
def tag : Term → Option View
 | .var i => some (.rigid i 0)
 | .lam _ => some .lambda
 | .app f _ => more (tag f)
theorem tag_beta {t u v} (h : Beta t u) (hv : tag t = some v) : tag u = some v := by
 induction h generalizing v with
 | beta => simp [tag,more] at hv
 | lam => exact hv
 | appR => exact hv
 | @appL f g a h ih =>
   cases eq : tag f with
   | none => simp [tag,eq,more] at hv
   | some x => rw [tag,ih eq]; exact hv ▸ (by simp [tag,eq])
theorem tag_betas {t u v} (h : Betas t u) (hv : tag t = some v) : tag u = some v := by
 induction h with
 | refl => exact hv
 | head h _ ih => exact ih (tag_beta h hv)
inductive Cl where | mk (t : Term) (env : List Cl)
def value : Cl → Term | .mk t es => instN (es.map value) 0 t
def term (c : Cl) (st : List Cl) := spine (value c) (st.map value)
def run : Nat → Cl → List Cl → Option View
 | 0,_,_ => none
 | n+1,.mk (.app f a) es,st => run n (.mk f es) (.mk a es :: st)
 | n+1,.mk (.lam b) _,[] => some .lambda
 | n+1,.mk (.lam b) es,a::st => run n (.mk b (a::es)) st
 | n+1,.mk (.var i) es,st => match es[i]? with
   | some c => run n c st
   | none => some (.rigid (i-es.length) st.length)
theorem outside (es : List Term) (d i : Nat) (hi : d+es.length≤i) :
    instN es d (.var i) = .var (i-es.length) := by
 induction es generalizing d with
 | nil => rfl
 | cons x es ih =>
   have hsub := ih (d+1) (by simp at hi; omega)
   simp only [instN,hsub,substDec,if_neg (show i-es.length≠d by simp at hi;omega),
      if_pos (show i-es.length>d by simp at hi;omega), List.length_cons]
   congr 1
theorem taggedSpine (a : List Term) {t i k} (h : tag t = some (.rigid i k)) :
    tag (spine t a) = some (.rigid i (k+a.length)) := by
 induction a generalizing t k with
 | nil => simpa [spine] using h
 | cons x xs ih =>
   have hh : tag (.app t x) = some (.rigid i (k+1)) := by simp [tag,more,h]
   simpa [spine,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using ih hh
theorem sound (n : Nat) (c : Cl) (st : List Cl) {v} (h : run n c st = some v) :
    ∃ t, Betas (term c st) t ∧ tag t = some v := by
 induction n generalizing c st with
 | zero => simp [run] at h
 | succ n ih =>
   cases c with | mk t es =>
    cases t with
    | var i =>
      cases eq : es[i]? with
      | none =>
        simp only [run,eq,Option.some.injEq] at h
        subst v
        refine ⟨_,.refl _,?_⟩
        have hn := List.getElem?_eq_none_iff.mp eq
        have he := outside (es.map value) 0 i (by simpa using hn)
        simpa [term,value,he] using taggedSpine (st.map value) (t := .var (i-es.length)) (i := i-es.length) (k := 0) rfl
      | some c =>
        have hh := ih c st (by simpa [run,eq] using h)
        have ee : (es.map value)[i]?=some (value c) := by simp [List.getElem?_map,eq]
        have he := instN_var_lookup (es.map value) 0 i (value c) ee
        simpa [term,value,show instN (es.map value) 0 (.var i)=value c by simpa [shift_zero] using he] using hh
    | app f a =>
      have hh := ih (.mk f es) (.mk a es :: st) h
      simpa [term,value,spine,instN_app] using hh
    | lam b =>
      cases st with
      | nil =>
        refine ⟨_,.refl _,?_⟩
        simpa [term,value,spine,instN_lam,tag,run] using h
      | cons a st =>
        obtain ⟨t,ht,hs⟩ := ih (.mk b (a::es)) st h
        refine ⟨t,.head (weakStep_beta ?_) ht,hs⟩
        simpa only [term,value,List.map_cons,instN,instN_lam,spine,shift_zero,contract] using
          beta_spine (instN (es.map value) 1 b) (value a) (st.map value)
def observe (n : Nat) (t : Term) := run n (.mk t []) []
theorem excluded {e c m r} {aa : List Term} {i j : Nat} {a b : View} (hm : Closed m)
    (ha : observe i (call e c m r aa) = some a) (hb : observe j (want c m r aa) = some b)
    (hab : a≠b) : ¬ IsSelfInterpreter e := by
 intro he
 obtain ⟨t,ht,hs⟩ := sound i _ _ ha
 obtain ⟨u,hu,hv⟩ := sound j _ _ hb
 simp only [term,value,List.map_nil,spine,instN] at ht hu
 obtain ⟨v,h1,h2⟩ := join_trans (join_after_betas ht (joinArgs (contract_join he hm c r) aa)) (join_of_betas hu)
 exact hab (Option.some.inj ((tag_betas h1 hs).symm.trans (tag_betas h2 hv)))
end Blc.Floor45.Observe
