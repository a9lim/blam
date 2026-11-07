/-
Round 3's role algebra, copied unchanged apart from its namespace from
data/self-interpreter/reasoning_162/floor/RoleAlgebra.lean. Two unary Scott
streams applied to each other reduce to the constant suffix, the identity, or
N applied to a unary stream, at every pair of lengths (`unary_cross`). Every
application-only expression over the stream, the false bit, c and rigid
parameters reduces, at every length of at least its application count plus
two, to a value in a small closed class whose function values mention no free
variable but N (`expr_value`, `expr_function_barrier`). The closing price
lemmas are arithmetic only; their semantic premises are round 3's
handwritten argument. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based: the suffix N=0, c=1.
-/
import Blc.SelfintProof
namespace Blc.SelfintRoleAlgebra
open Term
set_option maxRecDepth 10000
set_option maxHeartbeats 1000000

def suffix : Term := .var 0
def cont : Term := .var 1
def ident : Term := .lam (.var 0)
def constant : Term := .lam (.var 1)
def unary (n : Nat) : Term := streamOf (vbits n) suffix

theorem ident_apply (a : Term) : Betas (.app ident a) a := by
  simpa [ident, contract, substDec] using
    (Betas.head (Beta.beta (.var 0) a) (Betas.refl (contract (.var 0) a)))

theorem false_apply (a : Term) : Betas (.app churchFalse a) ident := by
  simpa [churchFalse, ident, contract, substDec] using
    (Betas.head (Beta.beta (.lam (.var 0)) a)
      (Betas.refl (contract (.lam (.var 0)) a)))

theorem constant_apply (a : Term) : Betas (.app constant a) suffix := by
  simpa [constant, suffix, contract, substDec] using
    (Betas.head (Beta.beta (.var 1) a) (Betas.refl (contract (.var 1) a)))

theorem unary_succ (n : Nat) :
    unary (n+1) = pairT churchFalse (unary n) := stream_vbits_succ n suffix

theorem unary_zero : unary 0 = pairT churchTrue suffix := rfl

theorem unary_callback (n : Nat) (a : Term) :
    Betas (.app (unary (n+1)) a) (.app (.app a churchFalse) (unary n)) := by
  rw [unary_succ]
  exact betas_of_spineReds (spine_pairT _ _ _)

theorem unary_false (n : Nat) :
    Betas (.app (unary (n+1)) churchFalse) (unary n) :=
  betas_trans (unary_callback n _) (betas_of_spineReds (spine_false2 _ _))

theorem unary_ident (n : Nat) :
    Betas (.app (unary (n+1)) ident) ident :=
  betas_trans (unary_callback n _)
    (betas_trans (betas_appL _ (ident_apply _)) (false_apply _))

theorem unary_constant (n : Nat) :
    Betas (.app (unary (n+1)) constant) (.app suffix (unary n)) :=
  betas_trans (unary_callback n _) (betas_appL _ (constant_apply _))

theorem cross_zero_zero : Betas (.app (unary 0) (unary 0)) constant := by
  exact betas_of_spineReds (skip_self 0 suffix)

theorem cross_zero_succ (b : Nat) :
    Betas (.app (unary 0) (unary (b+1))) ident := by
  rw [unary_zero]
  refine betas_trans (betas_of_spineReds (spine_pairT _ _ _)) ?_
  refine betas_trans (betas_appL _ (unary_callback b churchTrue)) ?_
  refine betas_trans (betas_appL _ (betas_of_spineReds (spine_true2 _ _))) ?_
  exact false_apply _

theorem cross_succ_zero (a : Nat) :
    Betas (.app (unary (a+1)) (unary 0)) (.app suffix (unary a)) := by
  refine betas_trans (unary_callback a _) ?_
  rw [unary_zero]
  refine betas_trans (betas_appL _ (betas_of_spineReds (spine_pairT _ _ _))) ?_
  exact betas_appL _ (betas_of_spineReds (spine_false2 _ _))

theorem cross_succ_succ (a b : Nat) :
    Betas (.app (unary (a+1)) (unary (b+1))) (.app (unary b) (unary a)) :=
  betas_trans (unary_callback a _) (betas_appL _ (unary_false b))

/-- Unequal lengths may alternate between I and a suffix-headed neutral;
    this theorem does not discard either outcome or use a length cutoff. -/
theorem unary_cross (a b : Nat) :
    ∃ t, Betas (.app (unary a) (unary b)) t ∧
      (t = constant ∨ t = ident ∨ ∃ q, t = .app suffix (unary q)) := by
  cases a with
  | zero =>
      cases b with
      | zero => exact ⟨_, cross_zero_zero, Or.inl rfl⟩
      | succ b => exact ⟨_, cross_zero_succ b, Or.inr (Or.inl rfl)⟩
  | succ a =>
      cases b with
      | zero => exact ⟨_, cross_succ_zero a, Or.inr (Or.inr ⟨a, rfl⟩)⟩
      | succ b =>
          obtain ⟨t, ht, hc⟩ := unary_cross b a
          exact ⟨t, betas_trans (cross_succ_succ a b) ht, hc⟩
termination_by a+b
decreasing_by omega

inductive Neutral : Term → Prop
  | suffix : Neutral SelfintRoleAlgebra.suffix
  | cont : Neutral SelfintRoleAlgebra.cont
  | param (k : Nat) : Neutral (.var k)
  | app {f : Term} (a : Term) : Neutral f → Neutral (.app f a)

theorem neutral_not_lam {t : Term} (h : Neutral t) : ¬ IsLam t := by
  cases h <;> simp [suffix, cont, IsLam]

/-- The stream offset is bounded by the source application budget.
    Neutral arguments may be arbitrary; their rigid head is permanent. -/
inductive Value (n budget : Nat) : Term → Prop
  | stream (k : Nat) (hk : k ≤ budget) : Value n budget (unary (n-k))
  | bit : Value n budget churchFalse
  | id : Value n budget ident
  | const : Value n budget constant
  | neutral {t : Term} : Neutral t → Value n budget t

theorem value_mono {n a b : Nat} {t : Term} (h : Value n a t) (hab : a ≤ b) :
    Value n b t := by
  cases h with
  | stream k hk => exact .stream k (by omega)
  | bit => exact .bit
  | id => exact .id
  | const => exact .const
  | neutral hn => exact .neutral hn

theorem value_apply {n a b : Nat} {f x : Term}
    (hf : Value n a f) (hx : Value n b x) (hn : a+b+3 ≤ n) :
    ∃ t, Betas (.app f x) t ∧ Value n (a+b+1) t := by
  cases hf with
  | stream k hk =>
      have hp : 0 < n-k := by omega
      obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
      cases hx with
      | stream q hq =>
          obtain ⟨t, ht, hcase⟩ := unary_cross (n-k) (n-q)
          refine ⟨t, ht, ?_⟩
          rcases hcase with hcase | hcase | ⟨r, hcase⟩
          · subst t; exact .const
          · subst t; exact .id
          · subst t; exact .neutral (.app _ .suffix)
      | bit =>
          have he : n-(k+1) = m := by omega
          refine ⟨unary m, ?_, ?_⟩
          · rw [hm]; exact unary_false m
          · rw [← he]; exact .stream (k+1) (by omega)
      | id =>
          refine ⟨ident, ?_, .id⟩
          rw [hm]; exact unary_ident m
      | const =>
          refine ⟨.app suffix (unary m), ?_, .neutral (.app _ .suffix)⟩
          rw [hm]; exact unary_constant m
      | neutral hneut =>
          refine ⟨.app (.app x churchFalse) (unary m), ?_,
            .neutral (.app _ (.app _ hneut))⟩
          rw [hm]; exact unary_callback m x
  | bit => exact ⟨ident, false_apply x, .id⟩
  | id => exact ⟨x, ident_apply x, value_mono hx (by omega)⟩
  | const => exact ⟨suffix, constant_apply x, .neutral .suffix⟩
  | neutral hf => exact ⟨_, .refl _, .neutral (.app x hf)⟩

/-- No source lambdas: a flat callback body after its argument is F. -/
inductive Expr
  | stream | bit | cont
  | param : Nat → Expr
  | app : Expr → Expr → Expr

def Expr.apps : Expr → Nat
  | .stream | .bit | .cont | .param _ => 0
  | .app f a => f.apps + a.apps + 1

def Expr.eval (n : Nat) : Expr → Term
  | .stream => unary n
  | .bit => churchFalse
  | .cont => SelfintRoleAlgebra.cont
  | .param k => .var k
  | .app f a => .app (f.eval n) (a.eval n)

/-- A structural theorem for all application trees and every n above the
    explicit source-dependent threshold, rather than bounded probing. -/
theorem expr_value (e : Expr) (n : Nat) (hn : e.apps+2 ≤ n) :
    ∃ t, Betas (e.eval n) t ∧ Value n e.apps t := by
  induction e with
  | stream => exact ⟨_, .refl _, .stream 0 (by omega)⟩
  | bit => exact ⟨_, .refl _, .bit⟩
  | cont => exact ⟨_, .refl _, .neutral .cont⟩
  | param k => exact ⟨_, .refl _, .neutral (.param k)⟩
  | app f a ihf iha =>
      have hn' : f.apps+a.apps+3 ≤ n := hn
      obtain ⟨fv, hfr, hfv⟩ := ihf (by omega)
      obtain ⟨av, har, hav⟩ := iha (by omega)
      obtain ⟨t, hred, ht⟩ := value_apply hfv hav hn'
      exact ⟨t, betas_trans (betas_app hfr har) hred, ht⟩

private theorem shift_scope (t : Term) (k c : Nat) (h : FreeUnder k t) :
    FreeUnder (k+1) (shift 1 c t) := by
  induction t generalizing k c with
  | var v => simp only [shift]; split <;> simp only [FreeUnder] at h ⊢ <;> omega
  | lam b ih =>
      have hb := ih (k+1) (c+1) h
      simpa only [shift, FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hb
  | app f a ihf iha => exact ⟨ihf k c h.1, iha k c h.2⟩

theorem unary_scope (m : Nat) : FreeUnder 1 (unary m) := by
  have pair_scope (A P : Term) (ha : FreeUnder 1 A) (hp : FreeUnder 1 P) :
      FreeUnder 1 (pairT A P) := by
    exact ⟨⟨by decide, shift_scope A 1 0 ha⟩, shift_scope P 1 0 hp⟩
  induction m with
  | zero => rw [unary_zero]; exact pair_scope _ _ (by decide) (by decide)
  | succ m ih => rw [unary_succ]; exact pair_scope _ _ (by decide) ih

/-- In the computed representative, a surviving function cannot contain c
    (c is free index 1; suffix N is free index 0). -/
theorem value_function_scope {n b : Nat} {t : Term}
    (hv : Value n b t) (hl : IsLam t) : FreeUnder 1 t := by
  cases hv with
  | stream k hk => exact unary_scope _
  | bit => decide
  | id => decide
  | const => decide
  | neutral hn => exact False.elim (neutral_not_lam hn hl)

theorem expr_function_barrier (e : Expr) (n : Nat) (hn : e.apps+2 ≤ n) :
    ∃ t, Betas (e.eval n) t ∧ Value n e.apps t ∧
      (IsLam t → FreeUnder 1 t) := by
  obtain ⟨t, ht, hv⟩ := expr_value e n hn
  exact ⟨t, ht, hv, value_function_scope hv⟩

/-- Arithmetic only; the hypotheses' semantic derivation is handwritten. -/
theorem two_lambda_arm_price (apps tax : Nat) (ha : 4 ≤ apps)
    (hx : 2 ≤ tax) (hfour : apps = 4 → 6 ≤ tax) :
    28 ≤ 6 + 4*apps + tax := by
  by_cases h : apps = 4
  · have := hfour h; omega
  · omega

theorem serial_reader_price (selector arm cost weight : Nat)
    (hd : 4 ≤ selector) (he : 28 ≤ arm)
    (hc : cost = 10+selector+arm) (hw : weight = cost+4) :
    46 ≤ weight := by omega

theorem hoisted_serial_price (weight f : Nat)
    (hw : 46 ≤ weight) (hf : 1 ≤ f) :
    50 ≤ weight+3+f := by omega

end Blc.SelfintRoleAlgebra
