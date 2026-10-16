/- The 35-bit Church exponent champion, without constructing its enormous NF. -/
import Blc.Confluence
import Blc.Wire

namespace Blc.BB35Church
open Term
set_option maxRecDepth 10000

def iter (f : Term) : Nat → Term → Term
  | 0, x => x
  | n + 1, x => .app f (iter f n x)

def church (n : Nat) : Term := .lam (.lam (iter (.var 1) n (.var 0)))
def power (n i : Nat) : Term := .lam (iter (.var (i+1)) n (.var 0))

theorem iter_shift (n d c : Nat) (f x : Term) :
    shift d c (iter f n x) = iter (shift d c f) n (shift d c x) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [iter, shift, ih]

theorem iter_subst (n j : Nat) (s f x : Term) :
    substDec j s (iter f n x) = iter (substDec j s f) n (substDec j s x) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [iter, substDec, ih]

theorem power_shift (n i : Nat) : shift 1 0 (power n i) = power n (i+1) := by
  simp [power, shift, iter_shift, Nat.add_assoc]

theorem power_apply (n i : Nat) (x : Term) :
    Betas (.app (power n i) x) (iter (.var i) n x) := by
  have heq : contract (iter (.var (i+1)) n (.var 0)) x = iter (.var i) n x := by
    simp [contract, iter_subst, substDec]
  exact .head (heq ▸ Beta.beta _ _) (.refl _)

theorem iter_add (f x : Term) (m n : Nat) :
    iter f m (iter f n x) = iter f (m+n) x := by
  induction m with
  | zero => simp [iter]
  | succ m ih => simp only [iter, ih, Nat.succ_add]

theorem iter_power (n m i : Nat) (x : Term) :
    Betas (iter (power m i) n x) (iter (.var i) (m*n) x) := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
      have h := betas_trans (betas_appR (power m i) ih)
        (power_apply m i (iter (.var i) (m*n) x))
      simpa only [iter, iter_add, Nat.mul_succ, Nat.add_comm] using h

theorem church_apply_var (n i : Nat) :
    Betas (.app (church n) (.var i)) (power n i) := by
  have heq : contract (.lam (iter (.var 1) n (.var 0))) (.var i) = power n i := by
    simp [contract, substDec, iter_subst, shift, power]
  exact .head (heq ▸ Beta.beta _ _) (.refl _)

theorem church_apply_power (n m i : Nat) :
    Betas (.app (church n) (power m i)) (power (m*n) i) := by
  have heq : contract (.lam (iter (.var 1) n (.var 0))) (power m i) =
      .lam (iter (power m (i+1)) n (.var 0)) := by
    simp [contract, substDec, iter_subst, power_shift]
  exact .head (heq ▸ Beta.beta _ _) (betas_lam (iter_power n m (i+1) (.var 0)))

theorem iter_church (n m i : Nat) :
    Betas (iter (church m) (n+1) (.var i)) (power (m^(n+1)) i) := by
  induction n with
  | zero => simpa [iter] using church_apply_var m i
  | succ n ih =>
      have h := betas_trans (betas_appR (church m) ih)
        (church_apply_power m (m^(n+1)) i)
      simpa only [iter, Nat.pow_succ] using h

theorem church_closed (n : Nat) : Closed (church n) := by
  unfold Closed church
  simp only [FreeUnder]
  induction n with
  | zero => decide
  | succ n ih => exact ⟨by decide, ih⟩

theorem church_exp (n m : Nat) :
    Betas (.app (church (n+1)) (church m)) (church (m^(n+1))) := by
  have heq : contract (.lam (iter (.var 1) (n+1) (.var 0))) (church m) =
      .lam (iter (church m) (n+1) (.var 0)) := by
    simp [contract, substDec, iter_subst, shift_closed 1 0 (church_closed m)]
  exact .head (heq ▸ Beta.beta _ _) (betas_lam (iter_church n m 0))

theorem church_nf (n : Nat) : NormalForm (church n) := by
  have h : NFt (iter (.var 1) n (.var 0)) := by
    induction n with
    | zero => trivial
    | succ n ih => exact ⟨by intro h; exact h, trivial, ih⟩
  exact fun _ hb => nft_no_beta (t := church n) h hb

theorem church_size (n : Nat) : (blcCode (church n)).length = 5*n+6 := by
  have h : (blcCode (iter (.var 1) n (.var 0))).length = 5*n+2 := by
    induction n with
    | zero => rfl
    | succ n ih => simp [iter, blcCode, ih, Nat.mul_succ]
  simp only [church, blcCode, List.length_cons]
  omega

def term : Term := .app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (church 3)

theorem reduces : Betas term (church (3^27)) := by
  have h0 : Betas term (.app (.app (church 3) (church 3)) (church 3)) :=
    .head (Beta.beta _ _) (.refl _)
  exact betas_trans h0 (betas_trans (betas_appL _ (church_exp 2 3)) (church_exp 26 3))

theorem normalizes : HasNormalForm term := ⟨_, reduces, church_nf _⟩
theorem normalFormSize {nf : Term} (hr : Betas term nf) (hn : NormalForm nf) :
    (blcCode nf).length = 38127987424941 := by
  have heq := normalForm_unique hr reduces hn (church_nf _)
  rw [heq, church_size]

end Blc.BB35Church
