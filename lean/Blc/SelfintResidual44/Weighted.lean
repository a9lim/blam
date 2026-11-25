import Blc.SelfintResidual44.RegularBase

set_option Elab.async false
namespace Blc.Floor44.Weighted
open Term SelfintLowerBound WeakHeadClock
abbrev Env := Nat → Int
def cons (a : Int) (ρ : Env) : Env | 0 => a | i+1 => ρ i
def ins (j : Nat) (a : Int) (ρ : Env) : Env :=
  fun i => if i < j then ρ i else if i = j then a else ρ (i-1)
theorem ins_zero (a : Int) (ρ : Env) : ins 0 a ρ = cons a ρ := by
  funext i; cases i <;> simp [ins,cons]
theorem ins_cons (j : Nat) (a b : Int) (ρ : Env) :
    ins (j+1) a (cons b ρ) = cons b (ins j a ρ) := by
  funext i; cases i with
  | zero => simp [ins,cons]
  | succ i =>
    cases i <;> cases j <;> simp [ins,cons]
def eval (c : Int) (ρ : Env) : Term → Int
  | .var i => ρ i
  | .lam b => 1 + eval c (cons 0 ρ) b
  | .app f a => max 0 (max (eval c ρ f - 1) (eval c ρ a - c))
def zero : Env := fun _ => 0
def test (c : Int) (j : Nat) (d : Int) : Term → Bool
  | .var i => decide (i≠j ∨ 0≤d)
  | .lam b => test c (j+1) (d-1) b
  | .app f a => test c j (d+1) f && test c j (d+c) a
def ok (c : Int) : Term → Bool
  | .var _ => true
  | .lam b => ok c b && test c 0 (-c) b
  | .app f a => ok c f && ok c a
theorem free_eval {c : Int} (t : Term) {k : Nat} (ht : FreeUnder k t) (ρ σ : Env)
    (he : ∀ i, i < k → ρ i = σ i) : eval c ρ t = eval c σ t := by
  induction t generalizing k ρ σ with
  | var i => exact he i ht
  | app f a hf ha => simp only [eval, hf ht.1 ρ σ he, ha ht.2 ρ σ he]
  | lam b ih =>
    simp only [eval]
    rw [ih ht (cons 0 ρ) (cons 0 σ) (by intro i hi; cases i with
                                       | zero => rfl
                                       | succ i => exact he i (by omega))]
theorem closed_eval {c : Int} {t : Term} (h : Closed t) (ρ : Env) :
    eval c ρ t = eval c zero t := free_eval t h ρ zero (by omega)
theorem eval_sub {c : Int} {a : Term} (ha : Closed a) (t : Term) (j : Nat) (ρ : Env) :
    eval c ρ (substDec j a t) = eval c (ins j (eval c zero a) ρ) t := by
  induction t generalizing j ρ with
  | var i =>
    by_cases hi : i=j
    · subst i; simp [substDec,eval,ins,closed_eval ha]
    · by_cases hl : i<j
      · simp [substDec,eval,ins,hi,hl,show ¬i>j by omega]
      · simp [substDec,eval,ins,hi,hl,show i>j by omega]
  | app f b hf hb => simp only [substDec,eval,hf,hb]
  | lam b ih => simp only [substDec,shift_closed _ _ ha,eval,ih,ins_cons]
theorem bound (c : Int) (t : Term) (j : Nat) (d z : Int) (ρ : Env)
    (h : test c j d t = true) :
    eval c (ins j z ρ) t ≤ max (eval c (ins j 0 ρ) t) (z+d) := by
  induction t generalizing j d ρ with
  | var i =>
    by_cases hi : i=j
    · subst i; have hh : 0≤d := by simpa [test] using h
      simp [eval,ins]; omega
    · simp only [eval,ins,hi,ite_false]; omega
  | lam b ih =>
    have hh := ih (j+1) (d-1) (cons 0 ρ) h
    simp only [ins_cons] at hh
    simp only [eval]; omega
  | app f a hf ha =>
    obtain ⟨h1,h2⟩ := Bool.and_eq_true_iff.mp h
    have h3 := hf j (d+1) ρ h1
    have h4 := ha j (d+c) ρ h2
    simp only [eval]; omega
theorem free_test (c : Int) (t : Term) (j : Nat) (d : Int) (h : FreeUnder j t) :
    test c j d t = true := by
  induction t generalizing j d with
  | var i => have : i<j := h; simp [test,show i≠j by omega]
  | lam b ih => exact ih _ _ h
  | app f a hf ha => simp only [test,hf _ _ h.1,ha _ _ h.2,Bool.and_self]
-- Only surviving binders below the substitution site need a guard.
theorem test_sub (c : Int) (t a : Term) (ha : Closed a) {i j : Nat} (hij : i<j)
    (d : Int) : test c i d (substDec j a t) = test c i d t := by
  induction t generalizing i j d with
  | var n =>
    by_cases h : n=j
    · subst n; simp [substDec,free_test c a i d (closed_freeUnder ha i),test,show j≠i by omega]
    · by_cases hn : n>j
      · simp [substDec,h,hn,test,show n-1≠i by omega,show n≠i by omega]
      · simp [substDec,h,hn]
  | lam b ih => simp only [substDec,shift_closed _ _ ha,test,ih (Nat.succ_lt_succ hij)]
  | app f b hf hb => simp only [substDec,test,hf hij,hb hij]
theorem ok_sub (c : Int) (t a : Term) (ha : Closed a) (hg : ok c a = true)
    (j : Nat) (h : ok c t = true) : ok c (substDec j a t) = true := by
  induction t generalizing j with
  | var i => simp only [substDec]; split <;> first | exact hg | split <;> rfl
  | lam b ih =>
    obtain ⟨hh,ht⟩ := Bool.and_eq_true_iff.mp h
    simp only [substDec,shift_closed _ _ ha,ok,ih _ hh,
      test_sub c b a ha (Nat.zero_lt_succ j),ht,Bool.and_self]
  | app f b hf hb =>
    obtain ⟨h1,h2⟩ := Bool.and_eq_true_iff.mp h
    simp only [substDec,ok,hf _ h1,hb _ h2,Bool.and_self]
theorem weak_ok (c : Int) {t u : Term} (hc : Closed t) (hg : ok c t = true)
    (w : weakStep t = some u) :
    ok c u = true ∧ eval c zero u ≤ eval c zero t := by
  induction t generalizing u with
  | var i => cases w
  | lam b => cases w
  | app f a hf _ =>
    obtain ⟨hg1,hg2⟩ := Bool.and_eq_true_iff.mp hg
    cases f with
    | var i => cases w
    | lam b =>
      simp only [weakStep,Option.some.injEq] at w; subst u
      obtain ⟨hgb,ht⟩ := Bool.and_eq_true_iff.mp hg1
      refine ⟨ok_sub c b a hc.2 hg2 0 hgb, ?_⟩
      have hh := bound c b 0 (-c) (eval c zero a) zero ht
      simp only [contract,eval_sub hc.2,eval,ins_zero] at *
      omega
    | app f b =>
      obtain ⟨v,hh,rfl⟩ := Option.map_eq_some_iff.mp w
      obtain ⟨hv,he⟩ := hf hc.1 hg1 hh
      refine ⟨Bool.and_eq_true_iff.mpr ⟨hv,hg2⟩,?_⟩
      simp only [eval] at *; omega
theorem nonneg (c : Int) (t : Term) (ρ : Env) (h : ∀ i, 0 ≤ ρ i) : 0 ≤ eval c ρ t := by
  induction t generalizing ρ with
  | var i => exact h i
  | app f a _ _ => simp only [eval]; omega
  | lam b ih =>
    have hh := ih (cons 0 ρ) (by intro i; cases i with | zero => exact Int.le_refl 0 | succ i => exact h i)
    simp only [eval]; omega
theorem no_clock (c : Int) {t : Term} (hc : Closed t) (hg : ok c t = true)
    (hz : eval c zero t < 1) {n : Nat} : ¬ Count t n := by
  intro hn
  induction hn with
  | @step t u n hw hn ih =>
    obtain ⟨h1,h2⟩ := weak_ok c hc hg hw
    exact ih (SelfintProbe.betas_scope (.head (weakStep_beta hw) (.refl _)) 0 hc) h1 (by omega)
  | @stop t hw =>
    cases t with
    | var i => exact Nat.not_lt_zero i hc
    | lam b =>
      have h := nonneg c b (cons 0 zero) (by intro i; cases i <;> exact Int.le_refl 0)
      simp only [eval] at hz; omega
    | app f a =>
      have hr := weakStep_none_rigid hw (fun h => h)
      have hbad {v : Term} (hv : Rigid v) : ¬ Closed v := by
        induction hv with
        | var i => exact Nat.not_lt_zero i
        | app a h ih => exact fun q => ih q.1
      exact hbad hr hc
#print axioms no_clock
end Blc.Floor44.Weighted
