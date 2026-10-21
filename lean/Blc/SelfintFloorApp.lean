/-
Application-rooted interpreters below 27 bits.

A minimal application-rooted self-interpreter is headed by a redex
`(λx. B') A₁ …` whose argument is closed, so by `minimal_linear_free_count`
its binder is nonlinear. At most 26 bits the exact size identity forces
three abstractions, five leaves and index sum at most two. The shape
analysis then leaves only `(λx. x x) (λr. λq. B)` with `B` a three-leaf
tree over `q, r`; one `r` leads by two head steps to an abstraction-rooted
interpreter with three abstractions (impossible by `lam_rooted_four_lams`),
two `r`s give six concrete terms refuted by finite head reduction. With
`lam_rooted_bound`, strong induction on the wire gives `SelfintSizeBound 27`.
-/
import Blc.SelfintFloorLambda

namespace Blc.SelfintFloor
open Term SelfintLowerBound SelfintNonlinearChain SelfintCapture SelfintWireCost

/-! ### Shape lemmas for terms with few abstractions -/

theorem closed_lamCount_pos (t : Term) (h : FreeUnder 0 t) : 1 ≤ lamCount t := by
  induction t with
  | var n => exact absurd h (Nat.not_lt_zero n)
  | lam b => simp [lamCount]
  | app f a ihf _ => have := ihf h.1; simp only [lamCount]; omega

theorem lamfree_indexSum (t : Term) (h0 : lamCount t = 0) (hf : FreeUnder 1 t) :
    indexSum t = 0 := by
  induction t with
  | var n => have : n < 1 := hf; simp only [indexSum]; omega
  | lam b => simp [lamCount] at h0
  | app f a ihf iha =>
    simp only [lamCount] at h0
    simp only [indexSum, ihf (by omega) hf.1, iha (by omega) hf.2]

theorem lamfree_indexSum_eq_occ1 (t : Term) (h0 : lamCount t = 0) (hf : FreeUnder 2 t) :
    indexSum t = occ 1 t := by
  induction t with
  | var n =>
    have : n < 2 := hf
    simp only [indexSum, occ]
    split <;> omega
  | lam b => simp [lamCount] at h0
  | app f a ihf iha =>
    simp only [lamCount] at h0
    simp only [indexSum, occ, ihf (by omega) hf.1, iha (by omega) hf.2]

theorem lamfree_live (t : Term) (h0 : lamCount t = 0) : live t = 0 := by
  induction t with
  | var n => rfl
  | lam b => simp [lamCount] at h0
  | app f a ihf iha =>
    simp only [lamCount] at h0
    simp only [live, ihf (by omega), iha (by omega)]

theorem lamfree_appBodies (t : Term) (h0 : lamCount t = 0) : AppBodies t := by
  induction t with
  | var n => trivial
  | lam b => simp [lamCount] at h0
  | app f a ihf iha =>
    simp only [lamCount] at h0
    exact ⟨ihf (by omega), iha (by omega)⟩

theorem leafCount_pos (t : Term) : 1 ≤ leafCount t := by
  induction t with
  | var n => simp [leafCount]
  | lam b ih => simpa [leafCount] using ih
  | app f a ihf iha => simp only [leafCount]; omega

theorem lamfree_leaf1 (t : Term) (h0 : lamCount t = 0) (h1 : leafCount t = 1) :
    ∃ n, t = .var n := by
  cases t with
  | var n => exact ⟨n, rfl⟩
  | lam b => simp [lamCount] at h0
  | app f a =>
    exfalso
    simp only [leafCount] at h1
    have hf := leafCount_pos f
    have ha := leafCount_pos a
    omega

theorem lamfree_isApp (t : Term) (h0 : lamCount t = 0) (h2 : 2 ≤ leafCount t) : IsApp t := by
  cases t with
  | var n => simp [leafCount] at h2
  | lam b => simp [lamCount] at h0
  | app f a => trivial

theorem lamfree_leaf2 (t : Term) (h0 : lamCount t = 0) (h2 : leafCount t = 2) :
    ∃ n m, t = .app (.var n) (.var m) := by
  cases t with
  | var n => simp [leafCount] at h2
  | lam b => simp [lamCount] at h0
  | app f a =>
    simp only [lamCount] at h0
    simp only [leafCount] at h2
    have hf := leafCount_pos f
    have ha := leafCount_pos a
    obtain ⟨n, rfl⟩ := lamfree_leaf1 f (by omega) (by omega)
    obtain ⟨m, rfl⟩ := lamfree_leaf1 a (by omega) (by omega)
    exact ⟨n, m, rfl⟩

/-- A closed term with exactly one abstraction is that abstraction over an
abstraction-free body. -/
theorem closed_lam_one (t : Term) (hc : FreeUnder 0 t) (h1 : lamCount t = 1) :
    ∃ T, t = .lam T ∧ lamCount T = 0 := by
  cases t with
  | var n => exact absurd hc (Nat.not_lt_zero n)
  | lam b => exact ⟨b, rfl, by simp [lamCount] at h1; omega⟩
  | app f a =>
    exfalso
    have hf := closed_lamCount_pos f hc.1
    have ha := closed_lamCount_pos a hc.2
    simp only [lamCount] at h1
    omega

/-- A term with exactly one abstraction and free variables below 1: either
every body is an application, or all indices are zero, or the abstraction is
vacuous. -/
theorem single_lam_shape (t : Term) (h1 : lamCount t = 1) (hf : FreeUnder 1 t) :
    AppBodies t ∨ indexSum t = 0 ∨ live t = 0 := by
  induction t with
  | var n => simp [lamCount] at h1
  | lam b _ =>
    have hb : lamCount b = 0 := by simp [lamCount] at h1; omega
    have hfb : FreeUnder 2 b := hf
    cases b with
    | var m =>
      have hm : m < 2 := hfb
      by_cases hm0 : m = 0
      · subst hm0
        exact Or.inr (Or.inl rfl)
      · have hm1 : m = 1 := by omega
        subst hm1
        right; right
        simp [live, occ]
    | lam b' => simp [lamCount] at hb
    | app g h => exact Or.inl ⟨trivial, lamfree_appBodies _ hb⟩
  | app f a ihf iha =>
    simp only [lamCount] at h1
    by_cases hlf : lamCount f = 1
    · have ha0 : lamCount a = 0 := by omega
      rcases ihf hlf hf.1 with h | h | h
      · exact Or.inl ⟨h, lamfree_appBodies a ha0⟩
      · right; left
        simp only [indexSum, h, lamfree_indexSum a ha0 hf.2]
      · right; right
        simp only [live, h, lamfree_live a ha0]
    · have hf0 : lamCount f = 0 := by omega
      have hla : lamCount a = 1 := by omega
      rcases iha hla hf.2 with h | h | h
      · exact Or.inl ⟨lamfree_appBodies f hf0, h⟩
      · right; left
        simp only [indexSum, h, lamfree_indexSum f hf0 hf.1]
      · right; right
        simp only [live, h, lamfree_live f hf0]

theorem lamCount_shift (t : Term) (d c : Nat) : lamCount (shift d c t) = lamCount t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih => simp [shift, lamCount, ih]
  | app f a ihf iha => simp [shift, lamCount, ihf, iha]

theorem lamCount_subst (t s : Term) (j : Nat) :
    lamCount (substDec j s t) = lamCount t + occ j t * lamCount s := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec, occ, lamCount]
    split <;> simp_all
    split <;> simp [lamCount]
  | lam b ih =>
    simp only [substDec, lamCount, occ, ih, lamCount_shift]
    omega
  | app f a ihf iha =>
    simp only [substDec, lamCount, occ, ihf, iha, Nat.add_mul]
    omega

theorem occ_le_leafCount (t : Term) (j : Nat) : occ j t ≤ leafCount t := by
  induction t generalizing j with
  | var n => simp only [occ, leafCount]; split <;> omega
  | lam b ih => exact ih (j + 1)
  | app f a ihf iha => simp only [occ, leafCount]; have := ihf j; have := iha j; omega

theorem lamfree_leafCount_eq (t : Term) (h0 : lamCount t = 0) (hf : FreeUnder 2 t) :
    leafCount t = occ 0 t + occ 1 t := by
  induction t with
  | var n =>
    have : n < 2 := hf
    simp only [leafCount, occ]
    split <;> split <;> omega
  | lam b => simp [lamCount] at h0
  | app f a ihf iha =>
    simp only [lamCount] at h0
    simp only [leafCount, occ, ihf (by omega) hf.1, iha (by omega) hf.2]
    omega

theorem lamfree_nonlinear (t : Term) (h0 : lamCount t = 0) : nonlinear t = 0 := by
  have := nonlinear_le_lamCount t
  omega

theorem chain_of_le_one (t : Term) (h : nonlinear t ≤ 1) : Chain t := by
  apply Classical.byContradiction
  intro hc
  have := not_chain_two_nonlinear t hc
  omega

theorem freeLeaves_closed (t : Term) (c : Nat) (h : FreeUnder c t) : freeLeaves c t = 0 := by
  induction t generalizing c with
  | var n => have : n < c := h; simp only [freeLeaves]; split <;> omega
  | lam b ih => exact ih (c + 1) h
  | app f a ihf iha => simp only [freeLeaves, ihf c h.1, iha c h.2]

/-- The head redex of a minimal application-rooted interpreter is nonlinear:
its argument is closed, so an affine contraction would shrink the wire. -/
theorem minimal_head_nonlinear {B' A : Term} (hm : MinimalInterpreter (.app (.lam B') A))
    (hA : Closed A) : 2 ≤ occ 0 B' := by
  have h1 := minimal_no_erasing Context.hole B' A hm
  by_cases h : occ 0 B' = 1
  · have h2 := minimal_linear_free_count Context.hole B' A hm h
    rw [freeLeaves_closed A 0 hA] at h2
    omega
  · omega

/-- The three-leaf abstraction-free trees over `q = var 0` (once) and
`r = var 1` (twice). -/
theorem three_leaf_enum (t : Term) (h0 : lamCount t = 0) (hf : FreeUnder 2 t)
    (h3 : leafCount t = 3) (h1 : occ 1 t = 2) (hq : occ 0 t = 1) :
    t = .app (.app (.var 1) (.var 1)) (.var 0) ∨ t = .app (.var 1) (.app (.var 1) (.var 0)) ∨
    t = .app (.app (.var 1) (.var 0)) (.var 1) ∨ t = .app (.var 1) (.app (.var 0) (.var 1)) ∨
    t = .app (.app (.var 0) (.var 1)) (.var 1) ∨ t = .app (.var 0) (.app (.var 1) (.var 1)) := by
  cases t with
  | var n => simp [leafCount] at h3
  | lam b => simp [lamCount] at h0
  | app f a =>
    simp only [lamCount] at h0
    simp only [leafCount] at h3
    have hpf := leafCount_pos f
    have hpa := leafCount_pos a
    by_cases hf1 : leafCount f = 1
    · obtain ⟨n, rfl⟩ := lamfree_leaf1 f (by omega) hf1
      obtain ⟨m, k, rfl⟩ := lamfree_leaf2 a (by omega) (by omega)
      have hn : n < 2 := hf.1
      have hm : m < 2 := hf.2.1
      have hk : k < 2 := hf.2.2
      have hn' : n = 0 ∨ n = 1 := by omega
      have hm' : m = 0 ∨ m = 1 := by omega
      have hk' : k = 0 ∨ k = 1 := by omega
      rcases hn' with rfl | rfl <;> rcases hm' with rfl | rfl <;> rcases hk' with rfl | rfl <;>
        first | decide | (simp [occ] at h1 hq)
    · have hf2 : leafCount f = 2 := by omega
      obtain ⟨n, m, rfl⟩ := lamfree_leaf2 f (by omega) hf2
      obtain ⟨k, rfl⟩ := lamfree_leaf1 a (by omega) (by omega)
      have hn : n < 2 := hf.1.1
      have hm : m < 2 := hf.1.2
      have hk : k < 2 := hf.2
      have hn' : n = 0 ∨ n = 1 := by omega
      have hm' : m = 0 ∨ m = 1 := by omega
      have hk' : k = 0 ∨ k = 1 := by omega
      rcases hn' with rfl | rfl <;> rcases hm' with rfl | rfl <;> rcases hk' with rfl | rfl <;>
        first | decide | (simp [occ] at h1 hq)

/-! ### Finite refutation tools -/

/-- The identity-source invocation of `E`. -/
def idCall (E : Term) : Term :=
  .app (.app E (.var 0)) (streamOf (blcCode (.lam (.var 0))) (.var 1))

theorem interpreter_idCall_betas {E : Term} (hE : IsSelfInterpreter E) :
    Betas (idCall E) idOutput := by
  obtain ⟨w, hw, ho⟩ := hE.2 (.lam (.var 0)) (by decide)
  have heq := normalForm_betas_eq idOutput_normal ho
  subst heq
  exact hw

theorem interpreter_landing {E s : Term} {k : Nat} (hE : IsSelfInterpreter E)
    (hs : headSteps k (idCall E) = some s) (hsn : headStep s = none) : Betas s idOutput :=
  headLanding_nf hs hsn (interpreter_idCall_betas hE) idOutput_normal

theorem var_betas_eq {n : Nat} {g : Term} (h : Betas (.var n) g) : g = .var n :=
  normalForm_betas_eq (fun _ hb => nft_no_beta (show NFt (.var n) from trivial) hb) h

/-- A rigid landing with one argument cannot reach the two-argument output. -/
theorem no_one_arg (U : Term) (h : Betas (.app (.var 0) U) idOutput) : False := by
  obtain ⟨g, b, he, hg, _⟩ := rigid_betas_shape (Rigid.var 0) h
  have := var_betas_eq hg
  subst this
  simp [idOutput] at he

/-- A rigid landing with three arguments cannot reach the two-argument output. -/
theorem no_three_args (U₁ U₂ U₃ : Term)
    (h : Betas (.app (.app (.app (.var 0) U₁) U₂) U₃) idOutput) : False := by
  obtain ⟨g, b, he, hg, _⟩ := rigid_betas_shape (Rigid.app _ (Rigid.app _ (Rigid.var 0))) h
  simp only [idOutput, Term.app.injEq] at he
  obtain ⟨he1, _⟩ := he
  rw [← he1] at hg
  obtain ⟨g', b', he', hg', _⟩ := rigid_betas_shape (Rigid.app _ (Rigid.var 0)) hg
  simp only [Term.app.injEq] at he'
  obtain ⟨he1', _⟩ := he'
  rw [← he1'] at hg'
  obtain ⟨g'', b'', he'', _, _⟩ := rigid_betas_shape (Rigid.var 0) hg'
  cases he''

/-- With two arguments, the first must reduce to the quoted identity's value. -/
theorem two_args_first (U₁ U₂ : Term) (h : Betas (.app (.app (.var 0) U₁) U₂) idOutput) :
    Betas U₁ (.lam (.lam (.var 0))) := by
  obtain ⟨g, b, he, hg, _⟩ := rigid_betas_shape (Rigid.app _ (Rigid.var 0)) h
  simp only [idOutput, Term.app.injEq] at he
  obtain ⟨he1, _⟩ := he
  rw [← he1] at hg
  obtain ⟨g', b', he', _, hb'⟩ := rigid_betas_shape (Rigid.var 0) hg
  simp only [Term.app.injEq] at he'
  obtain ⟨_, rfl⟩ := he'
  exact hb'

theorem headSteps_comp {a b : Nat} {t u v : Term} (h1 : headSteps a t = some u)
    (h2 : headSteps b u = some v) : headSteps (a + b) t = some v :=
  headSteps_of_headReds (headReds_trans (headReds_of_headSteps a h1) (headReds_of_headSteps b h2))

theorem cycle_diverges {m p : Nat} {t u : Term} (hm : headSteps m t = some u)
    (hp : headSteps p u = some u) (hp0 : 0 < p) : HeadDiverges t := by
  apply headDiverges_of_unbounded
  intro n
  have hiter : ∀ i, headSteps (p * i) u = some u := by
    intro i
    induction i with
    | zero => rfl
    | succ i ih => rw [Nat.mul_succ]; exact headSteps_comp ih hp
  refine ⟨m + p * (n + 1), u, ?_, headSteps_comp hm (hiter (n + 1))⟩
  have : 1 * (n + 1) ≤ p * (n + 1) := Nat.mul_le_mul_right (n + 1) hp0
  omega

/-- Executable shape probes, so that `decide` can certify a landing. -/
def headShape : Term → Option (Nat × Nat)
  | .var n => some (n, 0)
  | .app f _ => (headShape f).map fun p => (p.1, p.2 + 1)
  | .lam _ => none

theorem headShape_one {s : Term} (h : headShape s = some (0, 1)) : ∃ U, s = .app (.var 0) U := by
  cases s with
  | var n => simp [headShape] at h
  | lam b => simp [headShape] at h
  | app f a =>
    cases f with
    | var n =>
      simp [headShape] at h
      obtain ⟨rfl, _⟩ := h
      exact ⟨a, rfl⟩
    | lam b => simp [headShape] at h
    | app g x =>
      simp only [headShape, Option.map_map, Option.map_eq_some_iff] at h
      obtain ⟨p, _, hp⟩ := h
      simp at hp

theorem headShape_two {s : Term} (h : headShape s = some (0, 2)) :
    ∃ U₁ U₂, s = .app (.app (.var 0) U₁) U₂ := by
  cases s with
  | var n => simp [headShape] at h
  | lam b => simp [headShape] at h
  | app f a =>
    simp only [headShape, Option.map_eq_some_iff] at h
    obtain ⟨p, hp, hpe⟩ := h
    have : p = (0, 1) := by
      cases p; simp at hpe; obtain ⟨h1, h2⟩ := hpe; simp [h1]; omega
    subst this
    obtain ⟨U, rfl⟩ := headShape_one hp
    exact ⟨U, a, rfl⟩

theorem headShape_three {s : Term} (h : headShape s = some (0, 3)) :
    ∃ U₁ U₂ U₃, s = .app (.app (.app (.var 0) U₁) U₂) U₃ := by
  cases s with
  | var n => simp [headShape] at h
  | lam b => simp [headShape] at h
  | app f a =>
    simp only [headShape, Option.map_eq_some_iff] at h
    obtain ⟨p, hp, hpe⟩ := h
    have : p = (0, 2) := by
      cases p; simp at hpe; obtain ⟨h1, h2⟩ := hpe; simp [h1]; omega
    subst this
    obtain ⟨U₁, U₂, rfl⟩ := headShape_two hp
    exact ⟨U₁, U₂, a, rfl⟩

def firstArg : Term → Option Term
  | .app (.app (.var 0) u) _ => some u
  | _ => none

theorem firstArg_some {s u : Term} (h : firstArg s = some u) : ∃ U₂, s = .app (.app (.var 0) u) U₂ := by
  cases s with
  | var n => simp [firstArg] at h
  | lam b => simp [firstArg] at h
  | app f a =>
    cases f with
    | var n => simp [firstArg] at h
    | lam b => simp [firstArg] at h
    | app g x =>
      cases g with
      | var n =>
        cases n with
        | zero => simp [firstArg] at h; subst h; exact ⟨a, rfl⟩
        | succ n => simp [firstArg] at h
      | lam b => simp [firstArg] at h
      | app _ _ => simp [firstArg] at h

/-- Landing certificate: `k` head steps land on a head-normal form of the given shape. -/
theorem landing_shape (E : Term) (k : Nat) (hv : Nat)
    (hs : ((headSteps k (idCall E)).bind fun s => if headStep s = none then headShape s else none) =
      some (0, hv)) :
    ∃ s, headSteps k (idCall E) = some s ∧ headStep s = none ∧ headShape s = some (0, hv) := by
  cases h : headSteps k (idCall E) with
  | none => simp [h] at hs
  | some s =>
    simp only [h, Option.bind_some] at hs
    split at hs
    · exact ⟨s, rfl, by assumption, hs⟩
    · simp at hs

/-! ### The six concrete 26-bit candidates -/

def cand (B : Term) : Term := .app (.lam (.app (.var 0) (.var 0))) (.lam (.lam B))

def cycleCheck (t : Term) (m p : Nat) : Bool :=
  match headSteps m t with
  | some u => decide (headSteps p u = some u)
  | none => false

theorem cycleCheck_spec {t : Term} {m p : Nat} (h : cycleCheck t m p = true) :
    ∃ u, headSteps m t = some u ∧ headSteps p u = some u := by
  unfold cycleCheck at h
  split at h
  · rename_i u hu
    exact ⟨u, hu, of_decide_eq_true h⟩
  · exact absurd h (by simp)

theorem refute_cycle : ¬ IsSelfInterpreter (cand (.app (.app (.var 1) (.var 1)) (.var 0))) := by
  intro hE
  have hb := interpreter_idCall_betas hE
  obtain ⟨u, hu, hcyc⟩ := cycleCheck_spec
    (t := idCall (cand (.app (.app (.var 1) (.var 1)) (.var 0)))) (m := 1) (p := 2) (by decide)
  have hdiv := cycle_diverges hu hcyc (by decide)
  exact headDiverges_not_hasNormalForm hdiv ⟨_, hb, idOutput_normal⟩

theorem refute_one_arg : ¬ IsSelfInterpreter (cand (.app (.var 1) (.app (.var 1) (.var 0)))) := by
  intro hE
  obtain ⟨s, hs, hsn, hsh⟩ := landing_shape (cand (.app (.var 1) (.app (.var 1) (.var 0)))) 7 1 (by decide)
  obtain ⟨U, rfl⟩ := headShape_one hsh
  exact no_one_arg U (interpreter_landing hE hs hsn)

theorem refute_three_args_a : ¬ IsSelfInterpreter (cand (.app (.app (.var 1) (.var 0)) (.var 1))) := by
  intro hE
  obtain ⟨s, hs, hsn, hsh⟩ := landing_shape (cand (.app (.app (.var 1) (.var 0)) (.var 1))) 5 3 (by decide)
  obtain ⟨U₁, U₂, U₃, rfl⟩ := headShape_three hsh
  exact no_three_args U₁ U₂ U₃ (interpreter_landing hE hs hsn)

theorem refute_three_args_b : ¬ IsSelfInterpreter (cand (.app (.app (.var 0) (.var 1)) (.var 1))) := by
  intro hE
  obtain ⟨s, hs, hsn, hsh⟩ := landing_shape (cand (.app (.app (.var 0) (.var 1)) (.var 1))) 3 3 (by decide)
  obtain ⟨U₁, U₂, U₃, rfl⟩ := headShape_three hsh
  exact no_three_args U₁ U₂ U₃ (interpreter_landing hE hs hsn)

theorem refute_normal_first : ¬ IsSelfInterpreter (cand (.app (.var 1) (.app (.var 0) (.var 1)))) := by
  intro hE
  have hfa : ((headSteps 5 (idCall (cand (.app (.var 1) (.app (.var 0) (.var 1)))))).bind
      fun s => if headStep s = none then firstArg s else none) =
      some (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) := by decide
  cases h : headSteps 5 (idCall (cand (.app (.var 1) (.app (.var 0) (.var 1))))) with
  | none => simp [h] at hfa
  | some s =>
    simp only [h, Option.bind_some] at hfa
    split at hfa
    · rename_i hsn
      obtain ⟨U₂, rfl⟩ := firstArg_some hfa
      have hb := two_args_first _ U₂ (interpreter_landing hE h hsn)
      have := normalForm_betas_eq (fun _ hb => nft_no_beta (by decide) hb) hb
      cases this
    · simp at hfa

theorem refute_redex_first : ¬ IsSelfInterpreter (cand (.app (.var 0) (.app (.var 1) (.var 1)))) := by
  intro hE
  have hfa : ((headSteps 3 (idCall (cand (.app (.var 0) (.app (.var 1) (.var 1)))))).bind
      fun s => if headStep s = none then firstArg s else none) =
      some (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))
        (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) := by decide
  cases h : headSteps 3 (idCall (cand (.app (.var 0) (.app (.var 1) (.var 1))))) with
  | none => simp [h] at hfa
  | some s =>
    simp only [h, Option.bind_some] at hfa
    split at hfa
    · rename_i hsn
      obtain ⟨U₂, rfl⟩ := firstArg_some hfa
      have hb := two_args_first _ U₂ (interpreter_landing hE h hsn)
      -- the first argument is a redex whose only reduct is `λq. q (A A)`, rigid under the lambda
      have hstep : Beta (Term.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))
          (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))))
          (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))
            (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))))) := by
        have := Beta.beta (.lam (.app (.var 0) (.app (.var 1) (.var 1))))
          (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))
        simpa [contract, substDec, shift] using this
      have hjoin := betas_preserve_nf (Betas.head hstep (Betas.refl _)) hb
        (fun _ hb => nft_no_beta (by decide) hb)
      obtain ⟨n, hn, hbody⟩ := lam_betas_shape hjoin
      cases hn
      obtain ⟨g, b, he, _, _⟩ := rigid_betas_shape (Rigid.var 0) hbody
      cases he
    · simp at hfa

/-! ### The classification of minimal application-rooted interpreters below 27 bits -/

/-- Shared descent step: `(λx. B') A →β B'[x := A]` keeps the interpreter contract. -/
theorem descend_interpreter {B' A : Term} (hE : IsSelfInterpreter (.app (.lam B') A)) :
    IsSelfInterpreter (contract B' A) :=
  selfInterpreter_beta hE (Beta.beta B' A)

theorem contract_lam_closed (B A : Term) (hA : Closed A) :
    contract (.lam B) A = .lam (substDec 1 A B) := by
  simp only [contract, substDec, shift_closed 1 0 hA]

theorem contract_self (A : Term) : contract (.app (.var 0) (.var 0)) A = .app A A := by
  simp [contract, substDec]

/-- A minimal application-rooted self-interpreter has at least 27 bits. -/
theorem app_rooted_min_bound {f a : Term} (hm : MinimalInterpreter (.app f a)) :
    27 ≤ wire (.app f a) := by
  have hE := hm.1
  have hclosed : FreeUnder 0 (Term.app f a) := hE.1
  have hL := live_le_lamCount (Term.app f a)
  have hV := leaves_bound (Term.app f a)
  have hfl : freeLeaves 0 (Term.app f a) = 0 := freeLeaves_closed _ 0 hclosed
  have hn := selfInterpreter_two_nonlinear hE
  have hl := selfInterpreter_three_live hE
  have hx := selfinterpreter_indexSum_pos _ hE
  have hw := wire_identity (Term.app f a)
  apply Classical.byContradiction
  intro hlt
  have hL3 : lamCount (Term.app f a) = 3 := by omega
  have hV5 : leafCount (Term.app f a) = 5 := by omega
  have hX2 : indexSum (Term.app f a) ≤ 2 := by omega
  cases f with
  | var n => exact absurd hclosed.1 (Nat.not_lt_zero n)
  | app f₂ a₂ =>
    cases f₂ with
    | var n => exact absurd hclosed.1.1 (Nat.not_lt_zero n)
    | app f₃ a₃ =>
      have h1 := closed_lamCount_pos f₃ hclosed.1.1.1
      have h2 := closed_lamCount_pos a₃ hclosed.1.1.2
      have h3 := closed_lamCount_pos a₂ hclosed.1.2
      have h4 := closed_lamCount_pos a hclosed.2
      simp only [lamCount] at hL3
      omega
    | lam B' =>
      have h3 := closed_lamCount_pos a₂ hclosed.1.2
      have h4 := closed_lamCount_pos a hclosed.2
      simp only [lamCount] at hL3
      have hB0 : lamCount B' = 0 := by omega
      obtain ⟨T₂, rfl, hT₂⟩ := closed_lam_one a₂ hclosed.1.2 (by omega)
      obtain ⟨T, rfl, hT⟩ := closed_lam_one a hclosed.2 (by omega)
      have hfB : FreeUnder 1 B' := hclosed.1.1
      have hfT₂ : FreeUnder 1 T₂ := hclosed.1.2
      have hfT : FreeUnder 1 T := hclosed.2
      have hz : indexSum (Term.app (Term.app (Term.lam B') (Term.lam T₂)) (Term.lam T)) = 0 := by
        simp only [indexSum, lamfree_indexSum B' hB0 hfB, lamfree_indexSum T₂ hT₂ hfT₂,
          lamfree_indexSum T hT hfT]
      omega
  | lam B' =>
    have hfB : FreeUnder 1 B' := hclosed.1
    have hca : Closed a := hclosed.2
    have hocc : 2 ≤ occ 0 B' := minimal_head_nonlinear hm hca
    have ha1 := closed_lamCount_pos a hca
    simp only [lamCount] at hL3
    have hc := selfInterpreter_not_chain hE
    by_cases hB0 : lamCount B' = 0
    · -- the body of the head redex is abstraction-free: `(λx. x x) A` with `A` two abstractions
      have ha2 : lamCount a = 2 := by omega
      have hliveB : live B' = 0 := lamfree_live B' hB0
      have hnlB : nonlinear B' = 0 := lamfree_nonlinear B' hB0
      have hlE : live (Term.app (Term.lam B') a) = 1 + live a := by
        simp only [live, hliveB, if_pos (show 0 < occ 0 B' by omega)]
      have hla := live_le_lamCount a
      have hlive_a : live a = 2 := by omega
      have hna : 1 ≤ nonlinear a := by
        by_cases h : nonlinear a = 0
        · exfalso
          exact hc ⟨chain_of_affine B' hnlB, chain_of_affine a h, Or.inr h⟩
        · omega
      have hfa : freeLeaves 0 a = 0 := freeLeaves_closed a 0 hca
      have hVa := leaves_bound a
      have hleafB : leafCount B' ≤ 2 := by simp only [leafCount] at hV5; omega
      have hoccle := occ_le_leafCount B' 0
      obtain ⟨n, m, rfl⟩ := lamfree_leaf2 B' hB0 (by omega)
      have hn0 : n = 0 := by have : n < 1 := hfB.1; omega
      have hm0 : m = 0 := by have : m < 1 := hfB.2; omega
      subst hn0 hm0
      have hleafa : leafCount a = 3 := by simp only [leafCount] at hV5; omega
      have hXa : indexSum a ≤ 2 := by simp only [indexSum] at hX2; omega
      have hXa1 : 1 ≤ indexSum a := by simp only [indexSum] at hx; omega
      cases a with
      | var n => exact absurd hca (Nat.not_lt_zero n)
      | app g h =>
        have hg := closed_lamCount_pos g hca.1
        have hh := closed_lamCount_pos h hca.2
        simp only [lamCount] at ha2
        obtain ⟨Tg, rfl, hTg⟩ := closed_lam_one g hca.1 (by omega)
        obtain ⟨Th, rfl, hTh⟩ := closed_lam_one h hca.2 (by omega)
        have hz : indexSum (Term.app (Term.lam Tg) (Term.lam Th)) = 0 := by
          simp only [indexSum, lamfree_indexSum Tg hTg hca.1, lamfree_indexSum Th hTh hca.2]
        omega
      | lam B_r =>
        have hfr : FreeUnder 1 B_r := hca
        have hBr1 : lamCount B_r = 1 := by simp only [lamCount] at ha2; omega
        have hliveBr := live_le_lamCount B_r
        have hBr_live : live B_r = 1 ∧ 0 < occ 0 B_r := by
          simp only [live] at hlive_a
          split at hlive_a <;> omega
        cases B_r with
        | var n => simp [lamCount] at hBr1
        | app g h =>
          rcases single_lam_shape _ hBr1 hfr with hA | hX0 | hl0
          · exact appBodies_not_selfInterpreter
              (Term.app (Term.lam (Term.app (Term.var 0) (Term.var 0))) (Term.lam (Term.app g h)))
              ⟨⟨trivial, trivial, trivial⟩, trivial, hA⟩ hE
          · simp only [indexSum] at hX0 hXa1
            omega
          · omega
        | lam B_q =>
          have hBq0 : lamCount B_q = 0 := by simp only [lamCount] at hBr1; omega
          have hfq : FreeUnder 2 B_q := hfr
          have hleafq : leafCount B_q = 3 := by simpa [leafCount] using hleafa
          have hr : 0 < occ 1 B_q := hBr_live.2
          have hq : 0 < occ 0 B_q := by
            have := hBr_live.1
            simp only [live, lamfree_live B_q hBq0] at this
            split at this <;> omega
          have hXq : indexSum B_q = occ 1 B_q := lamfree_indexSum_eq_occ1 B_q hBq0 hfq
          have hsum := lamfree_leafCount_eq B_q hBq0 hfq
          simp only [indexSum, hXq] at hXa hXa1
          by_cases h1 : occ 1 B_q = 1
          · -- two head steps reach an abstraction-rooted interpreter with three abstractions
            have hs1 := descend_interpreter hE
            rw [contract_self] at hs1
            have hs2 := descend_interpreter hs1
            rw [contract_lam_closed _ _ hca] at hs2
            have h4 := lam_rooted_four_lams hs2
            simp only [lamCount, lamCount_subst, hBq0, h1] at h4
            omega
          · have h2 : occ 1 B_q = 2 := by omega
            have hq1 : occ 0 B_q = 1 := by omega
            rcases three_leaf_enum B_q hBq0 hfq hleafq h2 hq1 with rfl | rfl | rfl | rfl | rfl | rfl
            · exact refute_cycle hE
            · exact refute_one_arg hE
            · exact refute_three_args_a hE
            · exact refute_normal_first hE
            · exact refute_three_args_b hE
            · exact refute_redex_first hE
    · -- one abstraction in the body, one in the closed argument
      have hB1 : lamCount B' = 1 := by omega
      have ha1' : lamCount a = 1 := by omega
      obtain ⟨Tw, rfl, hTw⟩ := closed_lam_one a hca ha1'
      have hfw : FreeUnder 1 Tw := hca
      have hna : 2 ≤ occ 0 Tw := by
        apply Classical.byContradiction
        intro hlt2
        apply hc
        have hnlTw : nonlinear Tw = 0 := lamfree_nonlinear Tw hTw
        have hnla : nonlinear (Term.lam Tw) = 0 := by
          simp only [nonlinear, hnlTw]
          split <;> omega
        exact ⟨chain_of_le_one B' (by have := nonlinear_le_lamCount B'; omega),
          chain_of_affine _ hnla, Or.inr hnla⟩
      have hleafTw : 2 ≤ leafCount Tw := Nat.le_trans hna (occ_le_leafCount Tw 0)
      have hleafB : leafCount B' ≤ 3 := by simp only [leafCount] at hV5; omega
      have hliveE : live (Term.app (Term.lam B') (Term.lam Tw)) = live B' + 2 := by
        simp only [live, lamfree_live Tw hTw, if_pos (show 0 < occ 0 B' by omega),
          if_pos (show 0 < occ 0 Tw by omega)]
      have hliveB : live B' = 1 := by have := live_le_lamCount B'; omega
      cases B' with
      | var n => simp [lamCount] at hB1
      | lam T =>
        have hT0 : lamCount T = 0 := by simp only [lamCount] at hB1; omega
        have hfT : FreeUnder 2 T := hfB
        have hoccT : 2 ≤ occ 1 T := hocc
        have hliveT : 0 < occ 0 T := by
          have := hliveB
          simp only [live, lamfree_live T hT0] at this
          split at this <;> omega
        have hleafT := lamfree_leafCount_eq T hT0 hfT
        have hleafT3 : leafCount T ≤ 3 := by simpa [leafCount] using hleafB
        have hT1 : occ 1 T = 2 := by omega
        have hs := descend_interpreter hE
        rw [contract_lam_closed _ _ hca] at hs
        have h4 := lam_rooted_four_lams hs
        simp only [lamCount, lamCount_subst, hT0, hT1, hTw] at h4
        omega
      | app g h =>
        rcases single_lam_shape _ hB1 hfB with hA | hX0 | hl0
        · exact appBodies_not_selfInterpreter (Term.app (Term.lam (Term.app g h)) (Term.lam Tw))
            ⟨⟨trivial, hA⟩, lamfree_isApp Tw hTw hleafTw, lamfree_appBodies Tw hTw⟩ hE
        · have hz : indexSum (Term.app (Term.lam (Term.app g h)) (Term.lam Tw)) = 0 := by
            simp only [indexSum, lamfree_indexSum Tw hTw hfw] at hX0 ⊢
            omega
          omega
        · omega

/-- Every minimal self-interpreter has at least 27 bits. -/
theorem minimal_bound {E : Term} (hm : MinimalInterpreter E) : 27 ≤ wire E := by
  cases E with
  | var n => exact absurd hm.1.1 (Nat.not_lt_zero n)
  | lam B => exact lam_rooted_bound hm.1
  | app f a => exact app_rooted_min_bound hm

/-- Every self-interpreter has at least 27 bits: a smaller one would contain
a minimal one, which the shape analysis excludes. -/
theorem selfintSizeBound_27 : SelfintSizeBound 27 := by
  have key : ∀ n, ∀ E : Term, IsSelfInterpreter E → wire E = n → 27 ≤ n := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
      intro E hE hn
      by_cases hmin : ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'
      · have := minimal_bound ⟨hE, hmin⟩
        omega
      · apply Classical.byContradiction
        intro hlt
        have : ∃ E', IsSelfInterpreter E' ∧ wire E' < wire E := by
          apply Classical.byContradiction
          intro hno
          apply hmin
          intro E' hE'
          apply Classical.byContradiction
          intro hle
          exact hno ⟨E', hE', by omega⟩
        obtain ⟨E', hE', hlt'⟩ := this
        have := ih (wire E') (by omega) E' hE' rfl
        omega
  intro E hE
  exact key _ E hE rfl

end Blc.SelfintFloor
