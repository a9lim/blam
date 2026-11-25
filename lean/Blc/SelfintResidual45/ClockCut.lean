import Blc.SelfintResidual45.ProbeModel

set_option Elab.async false
namespace Blc.SelfintFiniteChain
open Term SelfintControl SelfintLowerBound WeakHeadClock
variable {n : Nat}
local notation "F" => Fin (n+1)
def allTop : Env n := fun _ => ⟨n,by omega⟩
theorem rigidTop (G : Algebra n) {t : Term} (h : Rigid t) :
    eval G allTop t = ⟨n,by omega⟩ := by
  induction h with
  | var => rfl
  | app a h ih => simp only [eval,ih,G.top]
theorem clockBound (G : Algebra n) {t j} (h : Count t j) :
    G.floor ≤ eval G allTop t := by
  induction h with
  | @stop t hs =>
    cases t with
    | lam b => have hf := pick_fits G (fun a => eval G (push a allTop) b)
               simp only [fits,Bool.and_eq_true,decide_eq_true_eq] at hf
               exact hf.1
    | var i => change _ ≤ n; have := G.floor.isLt; omega
    | app f a =>
      rw [rigidTop G (weakStep_none_rigid hs (fun h => h))]
      change _ ≤ n; have := G.floor.isLt; omega
  | @step t u j hs hc ih =>
    exact Nat.le_trans ih (reduct_le G _ (.head (weakStep_beta hs) (.refl _)))
theorem clockCut (G : Algebra n) {t u : Term} {z : F} (hz : z < G.floor)
    (hp : Betas t u) (ht : upper G allTop u z = true) (hc : ∃ k, Count t k) : False := by
  obtain ⟨k,hk⟩ := hc
  obtain ⟨_,_,hh⟩ := count_reduct k hk hp
  exact Nat.not_lt_of_ge (Nat.le_trans (clockBound G hh) (eval_le (upper_sound G u _ z ht))) hz
end Blc.SelfintFiniteChain
