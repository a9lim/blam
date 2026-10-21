/-
The stream must be consumed by an emerging
abstraction, so some abstraction body of every self-interpreter is not an
application.

`E C (⌜I⌝ ++ N)` reduces to the normal rigid form `C (λz.I) N`. Head
factorization lands on a head-normal form reducing to it; that form is not
an abstraction, so every head step along the way is a weak-head step on an
application-rooted term. If `E C` never head-reduces to an abstraction, all
those steps happen inside `E C`, the landing is `R Q` with `R` rigid, and
the Scott cell `Q` would have to reduce to the variable `N`. Hence
`E C` head-reduces to an abstraction.

If every abstraction body in `E` is an application (`AppBodies`), weak-head
steps preserve that and keep the root an application: contracting
`(λx.B) A` yields `B[x := A]`, whose root is `B`'s application root. So no
abstraction can emerge and `E` is not a self-interpreter. Consequently a
self-interpreter contains an abstraction whose body is an abstraction or a
variable (`HasNonAppBody`).
-/
import Blc.SelfintProof
import Blc.Confluence
import Blc.NormalOrder

namespace Blc.SelfintFloor
open Term

def IsApp : Term → Prop
  | .app _ _ => True
  | _ => False

/-- Every abstraction body is an application. -/
def AppBodies : Term → Prop
  | .var _ => True
  | .lam b => IsApp b ∧ AppBodies b
  | .app f a => AppBodies f ∧ AppBodies a

theorem isApp_shift (t : Term) (d c : Nat) (h : IsApp t) : IsApp (shift d c t) := by
  cases t with
  | app f a => trivial
  | var n => exact h.elim
  | lam b => exact h.elim

theorem isApp_substDec (t s : Term) (j : Nat) (h : IsApp t) : IsApp (substDec j s t) := by
  cases t with
  | app f a => trivial
  | var n => exact h.elim
  | lam b => exact h.elim

theorem appBodies_shift (t : Term) (d c : Nat) (h : AppBodies t) :
    AppBodies (shift d c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | lam b ih => exact ⟨isApp_shift b d (c + 1) h.1, ih (c + 1) h.2⟩
  | app f a ihf iha => exact ⟨ihf c h.1, iha c h.2⟩

theorem appBodies_substDec (t s : Term) (j : Nat) (ht : AppBodies t) (hs : AppBodies s) :
    AppBodies (substDec j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> trivial
  | lam b ih =>
    exact ⟨isApp_substDec b _ _ ht.1, ih (shift 1 0 s) (j + 1) ht.2 (appBodies_shift s 1 0 hs)⟩
  | app f a ihf iha => exact ⟨ihf s j ht.1 hs, iha s j ht.2 hs⟩

/-- A weak-head step on an application-rooted term with application bodies
yields an application-rooted term with application bodies. -/
theorem appBodies_headStep {t u : Term} (ht : AppBodies t) (hi : IsApp t)
    (h : headStep t = some u) : AppBodies u ∧ IsApp u := by
  induction t generalizing u with
  | var n => exact hi.elim
  | lam b ih => exact hi.elim
  | app f a ihf iha =>
    cases f with
    | lam b =>
      simp only [headStep, Option.some.injEq] at h
      subst h
      exact ⟨appBodies_substDec b a 0 ht.1.2 ht.2, isApp_substDec b a 0 ht.1.1⟩
    | var n => simp [headStep] at h
    | app g x =>
      simp only [headStep, Option.map_eq_some_iff] at h
      obtain ⟨f', hf', rfl⟩ := h
      obtain ⟨hA, hI⟩ := ihf ht.1 trivial hf'
      exact ⟨⟨hA, ht.2⟩, trivial⟩

theorem appBodies_headSteps (k : Nat) {t u : Term} (ht : AppBodies t) (hi : IsApp t)
    (h : headSteps k t = some u) : AppBodies u ∧ IsApp u := by
  induction k generalizing t with
  | zero =>
    simp only [headSteps, Option.some.injEq] at h
    subst h
    exact ⟨ht, hi⟩
  | succ k ih =>
    simp only [headSteps, Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hrest⟩ := h
    obtain ⟨hA, hI⟩ := appBodies_headStep ht hi hv
    exact ih hA hI hrest

/-- While the function never becomes an abstraction, head steps of `f a`
are head steps of `f`. -/
theorem headSteps_app_of_noLam (k : Nat) (f a p : Term)
    (hno : ∀ j f', headSteps j f = some f' → ¬ IsLam f')
    (h : headSteps k (.app f a) = some p) :
    ∃ f', headSteps k f = some f' ∧ p = .app f' a := by
  induction k generalizing f with
  | zero =>
    simp only [headSteps, Option.some.injEq] at h
    exact ⟨f, rfl, h.symm⟩
  | succ k ih =>
    simp only [headSteps, Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hrest⟩ := h
    have hfl : ¬ IsLam f := hno 0 f rfl
    have hstep : ∃ f₁, headStep f = some f₁ ∧ v = .app f₁ a := by
      cases f with
      | lam b => exact (hfl trivial).elim
      | var n => simp [headStep] at hv
      | app g x =>
        simp only [headStep, Option.map_eq_some_iff] at hv
        obtain ⟨f₁, hf₁, rfl⟩ := hv
        exact ⟨f₁, hf₁, rfl⟩
    obtain ⟨f₁, hf₁, rfl⟩ := hstep
    have hno' : ∀ j f', headSteps j f₁ = some f' → ¬ IsLam f' := by
      intro j f' hj
      apply hno (j + 1) f'
      simp [headSteps, hf₁, hj]
    obtain ⟨f', hf', rfl⟩ := ih f₁ hno' hrest
    refine ⟨f', ?_, rfl⟩
    simp [headSteps, hf₁, hf']

theorem rigid_of_headStep_none {t : Term} (h : headStep t = none) (hl : ¬ IsLam t) :
    Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b ih => exact (hl trivial).elim
  | app f a ihf iha =>
    apply Rigid.app a
    cases f with
    | var n => exact .var n
    | lam b => simp [headStep] at h
    | app g x =>
      apply ihf
      · simpa only [headStep, Option.map_eq_none_iff] using h
      · exact fun h => h

/-- The stream argument of the identity's quotation is a Scott cell. -/
theorem quoteI_cell (R : Term) : ∃ b', streamOf (blcCode (.lam (.var 0))) R = .lam b' := by
  rw [show blcCode (.lam (.var 0)) = false :: false :: blcCode (.var 0) from rfl, streamOf_cons]
  exact ⟨_, rfl⟩

/-- The required output for the identity. -/
def idOutput : Term := .app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)

theorem idOutput_normal : NormalForm idOutput :=
  fun _ hb => nft_no_beta (by decide : NFt idOutput) hb

/-- `E C` head-reduces to an abstraction: the public stream must be consumed
by an emerging binder, since a rigid `E C` would leave the Scott cell pending
where the rigid output carries the variable `N`. -/
theorem selfInterpreter_stream_consumed {E : Term} (hE : IsSelfInterpreter E) :
    ∃ k f', headSteps k (.app E (.var 0)) = some f' ∧ IsLam f' := by
  apply Classical.byContradiction
  intro hcon
  have hno : ∀ j f', headSteps j (.app E (.var 0)) = some f' → ¬ IsLam f' := by
    intro j f' hj hl
    exact hcon ⟨j, f', hj, hl⟩
  obtain ⟨w, hsource, htarget⟩ := hE.2 (.lam (.var 0)) (by decide)
  have heq : w = idOutput := normalForm_betas_eq idOutput_normal htarget
  subst heq
  obtain ⟨k, p, hk, hpn, hp⟩ := headFactorizes_nf hsource idOutput_normal
  obtain ⟨f', hf', rfl⟩ := headSteps_app_of_noLam k _ _ p hno hk
  have hfl : ¬ IsLam f' := hno k f' hf'
  have hrig : Rigid f' := by
    apply rigid_of_headStep_none _ hfl
    cases f' with
    | lam b => exact (hfl trivial).elim
    | var n => rfl
    | app g x =>
      simpa only [headStep, Option.map_eq_none_iff] using hpn
  obtain ⟨g, b, hout, _, hQ⟩ := rigid_betas_shape hrig hp
  simp only [idOutput, Term.app.injEq] at hout
  obtain ⟨_, rfl⟩ := hout
  obtain ⟨b', hb'⟩ := quoteI_cell (.var 1)
  rw [hb'] at hQ
  obtain ⟨n, hn, _⟩ := lam_betas_shape hQ
  cases hn

/-- If every abstraction body is an application, no abstraction can emerge
at the root under weak-head reduction, so the stream is never consumed. -/
theorem appBodies_not_selfInterpreter (E : Term) (hA : AppBodies E) :
    ¬ IsSelfInterpreter E := by
  intro hE
  obtain ⟨k, f', hk, hl⟩ := selfInterpreter_stream_consumed hE
  have h := appBodies_headSteps k (t := .app E (.var 0)) ⟨hA, trivial⟩ trivial hk
  cases f' with
  | lam b => exact h.2
  | var n => exact hl
  | app f a => exact hl

/-- Witness form: some abstraction body is a variable or an abstraction. -/
def HasNonAppBody : Term → Prop
  | .var _ => False
  | .lam b => ¬ IsApp b ∨ HasNonAppBody b
  | .app f a => HasNonAppBody f ∨ HasNonAppBody a

theorem hasNonAppBody_of_not_appBodies (t : Term) (h : ¬ AppBodies t) :
    HasNonAppBody t := by
  induction t with
  | var n => exact (h trivial).elim
  | lam b ih =>
    by_cases hb : IsApp b
    · exact Or.inr (ih (fun hA => h ⟨hb, hA⟩))
    · exact Or.inl hb
  | app f a ihf iha =>
    by_cases hf : AppBodies f
    · exact Or.inr (iha (fun ha => h ⟨hf, ha⟩))
    · exact Or.inl (ihf hf)

/-- Every self-interpreter has an abstraction whose body is an abstraction
or a variable: a literal two-lambda interface, an identity, or an inner
`λx. λy. …` from which the stream binder can emerge. -/
theorem selfInterpreter_hasNonAppBody {E : Term} (hE : IsSelfInterpreter E) :
    HasNonAppBody E :=
  hasNonAppBody_of_not_appBodies E (fun hA => appBodies_not_selfInterpreter E hA hE)

end Blc.SelfintFloor
