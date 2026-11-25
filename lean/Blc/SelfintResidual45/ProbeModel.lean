import Blc.SelfintFiniteChain
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.SelfintFiniteChain
open Blc.Floor45
open Term SelfintLowerBound SelfintControl Round3Floor38
variable {n : Nat}
local notation "F" => Fin (n+1)
def upper (G : Algebra n) (e : Env n) : Term → F → Bool
  | .var j,k => decide (e j ≤ k)
  | .lam b,k => k.val == n || (decide (G.floor ≤ k) && (List.finRange (n+1)).all (fun a => upper G (push a e) b (G.ap k a)))
  | .app f a,k => k.val == n || (List.finRange (n+1)).any (fun i =>
      (List.finRange (n+1)).any (fun j => decide (G.ap i j ≤ k) && upper G e a j && upper G e f i))
private theorem top (G : Algebra n) (e : Env n) (k : F) (t : Term) (h : k.val = n) : Typed G e t k :=
    (typed_eval t e).weaken _ (by have := (eval G e t).isLt; change _ ≤ k.val; omega)
theorem upper_sound (G : Algebra n) (t : Term) (e : Env n) (k : F) :
    upper G e t k = true → Typed G e t k := by
  induction t generalizing e k with
  | var j => intro h; exact .var _ _ (by simpa [upper] using h)
  | lam b ih =>
    simp only [upper, Bool.or_eq_true, beq_iff_eq, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true]
    rintro (h | ⟨h, hh⟩)
    · exact top _ _ _ _ h
    · exact .lam h (fun a => ih _ _ (hh a (by simp)))
  | app f a ih jh =>
    simp only [upper, Bool.or_eq_true, beq_iff_eq, List.any_eq_true, Bool.and_eq_true, decide_eq_true_eq]
    rintro (h | ⟨i,_,j,_,⟨hle,ha⟩,hf⟩)
    · exact top _ _ _ _ h
    · exact .app (ih _ _ hf) (jh _ _ ha) hle

theorem afterCut (G : Algebra n) {e c m r t u : Term} {aa : List Term} {x y z : F}
    (hm : Closed m) (hp : Betas (call e c m r aa) t) (hq : Betas (want c m r aa) u)
    (hn : NFt u) (ht : upper G (rho x y) t z = true) (hu : ¬ eval G (rho x y) u ≤ z) :
    ¬ IsSelfInterpreter e := by
  intro he
  exact hu (eval_le (typed_betas (expected he hm hp hq hn) (upper_sound G t _ z ht)))
end Blc.SelfintFiniteChain
