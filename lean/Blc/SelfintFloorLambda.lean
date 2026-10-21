/-
Abstraction-rooted interpreters have at least
four abstractions and 27 bits.

Exact accounting: `wire t + 2 = 2·lamCount t + 4·leafCount t + indexSum t`
for every term. A term with two incomparable nonlinear binders and an
abstraction whose body is not an application has at least three
abstractions (`not_chain_nonAppBody_three_lams`). For `E = λy. B` with `B`
an application, the non-application body of `selfInterpreter_hasNonAppBody`
lies inside `B`, so `E` has at least four abstractions; with five leaves and
one index unit this is 27 bits. The two other abstraction-rooted shapes are
the identity (not an interpreter) and the literal interface (31 bits).

For application-rooted interpreters the head is a redex whose binder is
nonlinear when the interpreter is minimal: the argument is closed, so an
affine head redex would shrink the wire.
-/
import Blc.SelfintFloorLiteral
import Blc.SelfintFloorEmerge
import Blc.SelfintControl

namespace Blc.SelfintFloor
open Term SelfintLowerBound SelfintNonlinearChain SelfintCapture SelfintWireCost

def lamCount : Term → Nat
  | .var _ => 0
  | .lam b => lamCount b + 1
  | .app f a => lamCount f + lamCount a

def leafCount : Term → Nat
  | .var _ => 1
  | .lam b => leafCount b
  | .app f a => leafCount f + leafCount a

/-- The BLC size identity for arbitrary terms. -/
theorem wire_identity (t : Term) :
    wire t + 2 = 2 * lamCount t + 4 * leafCount t + indexSum t := by
  induction t with
  | var n => simp [lamCount, leafCount, indexSum]; omega
  | lam b ih => simp only [wire_lam, lamCount, leafCount, indexSum]; omega
  | app f a ihf iha => simp only [wire_app, lamCount, leafCount, indexSum]; omega

theorem live_le_lamCount (t : Term) : live t ≤ lamCount t := by
  induction t with
  | var n => simp [live, lamCount]
  | lam b ih => simp only [live, lamCount]; split <;> omega
  | app f a ihf iha => simp only [live, lamCount]; omega

/-- Every live binder owns a leaf, a nonlinear one owns two. -/
theorem leaves_bound (t : Term) :
    nonlinear t + live t + freeLeaves 0 t ≤ leafCount t := by
  induction t with
  | var n => simp [nonlinear, live, freeLeaves, leafCount]
  | lam b ih =>
    have hs := freeLeaves_split b 0
    simp only [nonlinear, live, freeLeaves, leafCount]
    split <;> split <;> omega
  | app f a ihf iha =>
    simp only [nonlinear, live, freeLeaves, leafCount]
    omega

/-- Some abstraction body is itself an abstraction. -/
def HasLamBody : Term → Prop
  | .var _ => False
  | .lam b => IsLam b ∨ HasLamBody b
  | .app f a => HasLamBody f ∨ HasLamBody a

/-- Some abstraction body is a variable. -/
def HasVarBody : Term → Prop
  | .var _ => False
  | .lam b => (∃ n, b = .var n) ∨ HasVarBody b
  | .app f a => HasVarBody f ∨ HasVarBody a

theorem hasNonAppBody_split (t : Term) (h : HasNonAppBody t) : HasLamBody t ∨ HasVarBody t := by
  induction t with
  | var n => exact h.elim
  | lam b ih =>
    rcases h with h | h
    · cases b with
      | var n => exact Or.inr (Or.inl ⟨n, rfl⟩)
      | lam b' => exact Or.inl (Or.inl trivial)
      | app f a => exact (h trivial).elim
    · rcases ih h with h' | h'
      · exact Or.inl (Or.inr h')
      · exact Or.inr (Or.inr h')
  | app f a ihf iha =>
    rcases h with h | h
    · rcases ihf h with h' | h'
      · exact Or.inl (Or.inl h')
      · exact Or.inr (Or.inl h')
    · rcases iha h with h' | h'
      · exact Or.inl (Or.inr h')
      · exact Or.inr (Or.inr h')

theorem hasLamBody_two (t : Term) (h : HasLamBody t) : 2 ≤ lamCount t := by
  induction t with
  | var n => exact h.elim
  | lam b ih =>
    rcases h with h | h
    · cases b with
      | lam b' => simp only [lamCount]; omega
      | var n => exact h.elim
      | app f a => exact h.elim
    · have := ih h; simp only [lamCount]; omega
  | app f a ihf iha =>
    rcases h with h | h
    · have := ihf h; simp only [lamCount]; omega
    · have := iha h; simp only [lamCount]; omega

theorem nonlinear_le_lamCount (t : Term) : nonlinear t ≤ lamCount t :=
  Nat.le_trans (nonlinear_le_live t) (live_le_lamCount t)

/-- A variable-bodied abstraction is affine, so it is an extra abstraction
beyond the nonlinear ones. -/
theorem hasVarBody_extra (t : Term) (h : HasVarBody t) : nonlinear t + 1 ≤ lamCount t := by
  induction t with
  | var n => exact h.elim
  | lam b ih =>
    rcases h with ⟨n, rfl⟩ | h
    · simp only [nonlinear, lamCount, occ]
      split <;> split <;> omega
    · have := ih h
      simp only [nonlinear, lamCount]
      split <;> omega
  | app f a ihf iha =>
    have hf := nonlinear_le_lamCount f
    have ha := nonlinear_le_lamCount a
    rcases h with h | h
    · have := ihf h; simp only [nonlinear, lamCount]; omega
    · have := iha h; simp only [nonlinear, lamCount]; omega

/-- Two incomparable nonlinear binders cannot both lie on one nested pair
`λx. λy. …`, so a lambda-bodied abstraction forces a third abstraction. -/
theorem not_chain_hasLamBody_three (t : Term) (hc : ¬ Chain t) (h : HasLamBody t) :
    3 ≤ lamCount t := by
  induction t with
  | var n => exact h.elim
  | lam b ih =>
    rcases h with h | h
    · cases b with
      | lam b' =>
        have h2 := not_chain_two_nonlinear b' hc
        have h3 := nonlinear_le_lamCount b'
        simp only [lamCount]
        omega
      | var n => exact h.elim
      | app f a => exact h.elim
    · have := ih hc h
      simp only [lamCount]
      omega
  | app f a ihf iha =>
    have hnf := nonlinear_le_lamCount f
    have hna := nonlinear_le_lamCount a
    by_cases hcf : Chain f
    · by_cases hca : Chain a
      · have hz : ¬ (nonlinear f = 0 ∨ nonlinear a = 0) := fun hz => hc ⟨hcf, hca, hz⟩
        rcases h with h | h
        · have := hasLamBody_two f h; simp only [lamCount]; omega
        · have := hasLamBody_two a h; simp only [lamCount]; omega
      · have h2 := not_chain_two_nonlinear a hca
        rcases h with h | h
        · have := hasLamBody_two f h; simp only [lamCount]; omega
        · have := iha hca h; simp only [lamCount]; omega
    · have h2 := not_chain_two_nonlinear f hcf
      rcases h with h | h
      · have := ihf hcf h; simp only [lamCount]; omega
      · have := hasLamBody_two a h; simp only [lamCount]; omega

theorem not_chain_nonAppBody_three_lams (t : Term) (hc : ¬ Chain t) (h : HasNonAppBody t) :
    3 ≤ lamCount t := by
  rcases hasNonAppBody_split t h with h | h
  · exact not_chain_hasLamBody_three t hc h
  · have := hasVarBody_extra t h
    have := not_chain_two_nonlinear t hc
    omega

/-- The identity is not a self-interpreter: `I C Q` is rigid with one
argument where the output has two. -/
theorem identity_not_selfInterpreter : ¬ IsSelfInterpreter (.lam (.var 0)) := by
  intro hE
  obtain ⟨w, hw, ho⟩ := hE.2 (.lam (.var 0)) (by decide)
  have hred : Betas (.app (.app (.lam (.var 0)) (.var 0))
      (streamOf (blcCode (.lam (.var 0))) (.var 1)))
      (.app (.var 0) (streamOf (blcCode (.lam (.var 0))) (.var 1))) :=
    Betas.head (Beta.appL _ (Beta.beta (.var 0) (.var 0))) (Betas.refl _)
  obtain ⟨v, hv, hwv⟩ := betas_confluent hred hw
  have hout := betas_trans ho hwv
  obtain ⟨g, b, hv', hg, _⟩ := rigid_betas_shape (Rigid.var 0) hv
  subst hv'
  have hg0 : g = .var 0 :=
    normalForm_betas_eq (fun _ hb => nft_no_beta (show NFt (.var 0) from trivial) hb) hg
  subst hg0
  obtain ⟨g', b', he, hg', _⟩ := rigid_betas_shape (Rigid.app _ (Rigid.var 0)) hout
  simp only [Term.app.injEq] at he
  obtain ⟨he1, _⟩ := he
  obtain ⟨g'', b'', he'', _, _⟩ := rigid_betas_shape (Rigid.var 0) hg'
  rw [← he1] at he''
  cases he''

/-- An abstraction-rooted self-interpreter has at least four abstractions. -/
theorem lam_rooted_four_lams {B : Term} (hE : IsSelfInterpreter (.lam B)) :
    4 ≤ lamCount (.lam B) := by
  cases B with
  | var n =>
    have hc : FreeUnder 1 (Term.var n) := hE.1
    have hn : n = 0 := by
      have : n < 1 := hc
      omega
    subst hn
    exact (identity_not_selfInterpreter hE).elim
  | lam B' =>
    have hc : ¬ Chain B' := selfInterpreter_body_not_chain hE
    have h2 := not_chain_two_nonlinear B' hc
    have h3 := nonlinear_le_lamCount B'
    simp only [lamCount]
    omega
  | app f a =>
    have hn := selfInterpreter_hasNonAppBody hE
    have hb : HasNonAppBody (.app f a) := by
      rcases hn with hn | hn
      · exact (hn trivial).elim
      · exact hn
    have hc : ¬ Chain (.app f a) := selfInterpreter_not_chain (E := .lam (.app f a)) hE
    have := not_chain_nonAppBody_three_lams _ hc hb
    simp only [lamCount] at this ⊢
    omega

/-- Abstraction-rooted self-interpreters have at least 27 bits. -/
theorem lam_rooted_bound {B : Term} (hE : IsSelfInterpreter (.lam B)) :
    27 ≤ wire (.lam B) := by
  have hL := lam_rooted_four_lams hE
  have hV := leaves_bound (.lam B)
  have hn := selfInterpreter_two_nonlinear hE
  have hl := selfInterpreter_three_live hE
  have hx := selfinterpreter_indexSum_pos _ hE
  have hw := wire_identity (.lam B)
  omega

/-- Leftmost leaf of the application spine. -/
def spineHead : Term → Term
  | .app f _ => spineHead f
  | t => t

theorem rigid_of_spineHead_var (t : Term) (n : Nat) (h : spineHead t = .var n) : Rigid t := by
  induction t with
  | var m => simp only [spineHead] at h; cases h; exact .var n
  | lam b => simp [spineHead] at h
  | app f a ih => exact .app a (ih h)

theorem rigid_headSteps (k : Nat) {t u : Term} (hr : Rigid t) (h : headSteps k t = some u) :
    Rigid u := by
  induction k generalizing t with
  | zero => simp only [headSteps, Option.some.injEq] at h; subst h; exact hr
  | succ k ih =>
    simp only [headSteps, Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hrest⟩ := h
    exact ih (rigid_beta hr (beta_of_headStep (headStep_sound hv))) hrest

/-- A self-interpreter itself head-reduces to an abstraction. -/
theorem selfInterpreter_headsToLam {E : Term} (hE : IsSelfInterpreter E) :
    ∃ k f', headSteps k E = some f' ∧ IsLam f' := by
  apply Classical.byContradiction
  intro hcon
  have hno : ∀ j f', headSteps j E = some f' → ¬ IsLam f' := by
    intro j f' hj hl
    exact hcon ⟨j, f', hj, hl⟩
  obtain ⟨k, f', hk, hl⟩ := selfInterpreter_stream_consumed hE
  obtain ⟨g, _, rfl⟩ := headSteps_app_of_noLam k E (.var 0) f' hno hk
  exact hl

/-- An application-rooted self-interpreter is headed by a redex. -/
theorem app_rooted_head_redex {f a : Term} (hE : IsSelfInterpreter (.app f a)) :
    ∃ B', spineHead (.app f a) = .lam B' := by
  cases hs : spineHead (.app f a) with
  | lam B' => exact ⟨B', rfl⟩
  | var n =>
    exfalso
    have hr := rigid_of_spineHead_var _ n hs
    obtain ⟨k, f', hk, hl⟩ := selfInterpreter_headsToLam hE
    have := rigid_headSteps k hr hk
    cases f' with
    | lam b => cases this
    | var m => exact hl
    | app g x => exact hl
  | app g x =>
    exfalso
    have : ∀ t, ¬ ∃ g x, spineHead t = .app g x := by
      intro t
      induction t with
      | var n => rintro ⟨g, x, h⟩; simp [spineHead] at h
      | lam b => rintro ⟨g, x, h⟩; simp [spineHead] at h
      | app f a ih => rintro ⟨g, x, h⟩; exact ih ⟨g, x, h⟩
    exact this _ ⟨g, x, hs⟩

end Blc.SelfintFloor
