/-
The symbolic checker layer: STerm — terms with metavariables — is the
Lean mirror of the Rust checker's `PTerm` (src/cert.rs, `Meta(id)`).
A ratchet certificate's obligations (OPEN/DESC/BASE) are bounded
symbolic head reductions; here they become `decide`/`rfl` facts about
the executable `symHeadStep`, and the ONE trusted rule — the
commuting square `symHeadStep_sound` — transports each symbolic step
to a concrete `HeadStep` under every closed instantiation.

Design (Codex round five, gaslamp blc-conformance): shift and
substitution leave `meta` opaque; instantiation is capture-permitting
grafting, sound because environments are required closed (`ClosedEnv`)
— exactly the checker's contract, where every metavariable stands for
a closed tower. `LiftReds` packages "every proper source is a
non-abstraction", the side condition for lifting head chains through
application contexts (`HeadStep.appL`); `symStepsApp` is its symbolic
witness — a trace whose sources are all syntactic applications
instantiates to a liftable chain.
-/

import Blc.Step
import Blc.Loop32

namespace Blc
open Term

/-- Symbolic terms: `Term` plus opaque metavariables. -/
inductive STerm : Type where
  | var (n : Nat) : STerm
  | lam (b : STerm) : STerm
  | app (f a : STerm) : STerm
  | mvar (i : Nat) : STerm
deriving Repr, DecidableEq

namespace STerm

/-- Shift free variables ≥ `c` up by `d`; metavariables are opaque
(they stand for closed terms, which shifting misses). -/
def sShift (d c : Nat) : STerm → STerm
  | var n => if n ≥ c then var (n + d) else var n
  | lam b => lam (sShift d (c + 1) b)
  | app f a => app (sShift d c f) (sShift d c a)
  | mvar i => mvar i

/-- One-pass β-substitution, mirroring `Term.substDec`; metavariables
are opaque (substitution misses closed terms). -/
def sSubstDec (j : Nat) (s : STerm) : STerm → STerm
  | var n =>
      if n = j then s
      else if n > j then var (n - 1)
      else var n
  | lam b => lam (sSubstDec (j + 1) (sShift 1 0 s) b)
  | app f a => app (sSubstDec j s f) (sSubstDec j s a)
  | mvar i => mvar i

/-- Symbolic β-contraction of `(λ.b) a`. -/
def sContract (b a : STerm) : STerm := sSubstDec 0 a b

/-- Instantiation: graft `ρ i` in place of `meta i`. No shifting — the
soundness lemmas require `ClosedEnv ρ`, under which grafting is
capture-free. -/
def inst (ρ : Nat → Term) : STerm → Term
  | var n => .var n
  | lam b => .lam (inst ρ b)
  | app f a => .app (inst ρ f) (inst ρ a)
  | mvar i => ρ i

/-- Free-variable bound on the non-meta skeleton (metavariables carry
closed terms, so they impose nothing). -/
def SFreeUnder (k : Nat) : STerm → Prop
  | var n => n < k
  | lam b => SFreeUnder (k + 1) b
  | app f a => SFreeUnder k f ∧ SFreeUnder k a
  | mvar _ => True

def decSFreeUnder : (k : Nat) → (s : STerm) → Decidable (SFreeUnder k s)
  | k, .var n => inferInstanceAs (Decidable (n < k))
  | k, .lam b => decSFreeUnder (k + 1) b
  | k, .app f a =>
      have _hf := decSFreeUnder k f
      have _ha := decSFreeUnder k a
      inferInstanceAs (Decidable (_ ∧ _))
  | _, .mvar _ => inferInstanceAs (Decidable True)

instance (k : Nat) (s : STerm) : Decidable (SFreeUnder k s) :=
  decSFreeUnder k s

/-- Symbolically closed: closed for every closed instantiation. -/
def SClosed (s : STerm) : Prop := SFreeUnder 0 s

instance (s : STerm) : Decidable (SClosed s) := decSFreeUnder 0 s

end STerm

open STerm

/-- Environments assigning a closed term to every metavariable. -/
def ClosedEnv (ρ : Nat → Term) : Prop := ∀ i, Closed (ρ i)

/-- Instantiation respects the skeleton's free-variable bound. -/
theorem inst_freeUnder {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ {s : STerm} {k : Nat}, SFreeUnder k s → FreeUnder k (inst ρ s) := by
  intro s
  induction s with
  | var n => intro k h; exact h
  | lam b ih => intro k h; exact ih h
  | app f a ihf iha => intro k h; exact ⟨ihf h.1, iha h.2⟩
  | mvar i => intro k _; exact closed_freeUnder (hρ i) k

theorem inst_closed {ρ : Nat → Term} (hρ : ClosedEnv ρ)
    {s : STerm} (hs : SClosed s) : Closed (inst ρ s) :=
  inst_freeUnder hρ hs

/-- Instantiation commutes with shift (metas carry closed terms, which
shift misses). -/
theorem inst_shift {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ (s : STerm) (d c : Nat),
      inst ρ (sShift d c s) = shift d c (inst ρ s) := by
  intro s
  induction s with
  | var n =>
      intro d c
      simp only [sShift, inst, shift]
      split <;> rfl
  | lam b ih =>
      intro d c
      simp only [sShift, inst, shift, ih]
  | app f a ihf iha =>
      intro d c
      simp only [sShift, inst, shift, ihf, iha]
  | mvar i =>
      intro d c
      simp only [sShift, inst]
      exact (shift_closed d c (hρ i)).symm

/-- Instantiation commutes with substitution — the load-bearing lemma
behind the commuting square's beta case. -/
theorem inst_substDec {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ (t : STerm) (j : Nat) (s : STerm),
      inst ρ (sSubstDec j s t) = substDec j (inst ρ s) (inst ρ t) := by
  intro t
  induction t with
  | var n =>
      intro j s
      simp only [sSubstDec, inst, substDec]
      split
      · rfl
      · split <;> rfl
  | lam b ih =>
      intro j s
      simp only [sSubstDec, inst, substDec, ih, inst_shift hρ]
  | app f a ihf iha =>
      intro j s
      simp only [sSubstDec, inst, substDec, ihf, iha]
  | mvar i =>
      intro j s
      simp only [sSubstDec, inst]
      exact (substDec_closed j (inst ρ s) (hρ i)).symm

theorem inst_contract {ρ : Nat → Term} (hρ : ClosedEnv ρ)
    (b a : STerm) :
    inst ρ (sContract b a) = contract (inst ρ b) (inst ρ a) :=
  inst_substDec hρ b 0 a

/-- Executable symbolic head step. `none` means the symbolic layer
cannot proceed — an opaque head (`meta` in head position) aborts,
because the instantiation could be a lambda or not. Soundness is
one-directional: `some` transports; `none` claims nothing. -/
def symHeadStep : STerm → Option STerm
  | .var _ => none
  | .mvar _ => none
  | .lam b => (symHeadStep b).map .lam
  | .app f a =>
      match f with
      | .lam b => some (sContract b a)
      | .app _ _ => (symHeadStep f).map (.app · a)
      | .var _ => none
      | .mvar _ => none

/-- **The commuting square** — the one trusted rule of the symbolic
layer: a symbolic head step instantiates to a concrete head step under
every closed environment. -/
theorem symHeadStep_sound {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ {s u : STerm}, symHeadStep s = some u →
      HeadStep (inst ρ s) (inst ρ u) := by
  intro s
  induction s with
  | var n => intro u h; simp [symHeadStep] at h
  | mvar i => intro u h; simp [symHeadStep] at h
  | lam b ih =>
      intro u h
      simp only [symHeadStep, Option.map_eq_some_iff] at h
      obtain ⟨b', hb, rfl⟩ := h
      exact HeadStep.under (ih hb)
  | app f a ihf _iha =>
      intro u h
      match f with
      | .lam b =>
          simp only [symHeadStep] at h
          cases h
          rw [inst_contract hρ]
          exact HeadStep.beta _ _
      | .var n => simp [symHeadStep] at h
      | .mvar i => simp [symHeadStep] at h
      | .app g x =>
          simp only [symHeadStep, Option.map_eq_some_iff] at h
          obtain ⟨f', hstep, rfl⟩ := h
          exact HeadStep.appL _ (by intro b hb; cases hb) (ihf hstep)

/-- `n` symbolic head steps. -/
def symSteps : Nat → STerm → Option STerm
  | 0, s => some s
  | n + 1, s => (symHeadStep s).bind (symSteps n)

/-- A symbolic trace instantiates to a concrete head reduction of the
same length, under every closed environment. -/
theorem symSteps_sound {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ {n : Nat} {s u : STerm}, symSteps n s = some u →
      HeadReds n (inst ρ s) (inst ρ u) := by
  intro n
  induction n with
  | zero => intro s u h; cases h; exact HeadReds.refl _
  | succ m ih =>
      intro s u h
      simp only [symSteps, Option.bind_eq_some_iff] at h
      obtain ⟨v, hv, hrest⟩ := h
      exact HeadReds.head (symHeadStep_sound hρ hv) (ih hrest)

/-- Head reduction whose every proper source is a non-abstraction —
exactly the side condition for lifting through `HeadStep.appL`
(`docs/classical/certificates/specification.md`'s "proper source states"). -/
inductive LiftReds : Nat → Term → Term → Prop where
  | refl (t : Term) : LiftReds 0 t t
  | head {t u v : Term} {n : Nat}
      (nonlam : ∀ b, t ≠ Term.lam b)
      (h : HeadStep t u) (hs : LiftReds n u v) : LiftReds (n + 1) t v

theorem liftReds_headReds {n : Nat} {t u : Term}
    (h : LiftReds n t u) : HeadReds n t u := by
  induction h with
  | refl t => exact HeadReds.refl t
  | head _ h _ ih => exact HeadReds.head h ih

/-- Application lifting: a liftable chain runs unchanged to the left
of any argument — and stays liftable (applications are never
lambdas). -/
theorem liftReds_appL (y : Term) {n : Nat} {t u : Term}
    (h : LiftReds n t u) : LiftReds n (.app t y) (.app u y) := by
  induction h with
  | refl t => exact LiftReds.refl _
  | head nonlam h _ ih =>
      exact LiftReds.head (fun b hb => by cases hb)
        (HeadStep.appL y nonlam h) ih

theorem liftReds_trans {m n : Nat} {a b c : Term}
    (h₁ : LiftReds m a b) (h₂ : LiftReds n b c) :
    LiftReds (m + n) a c := by
  induction h₁ with
  | refl t => simpa using h₂
  | head nonlam h _ ih =>
      have := LiftReds.head nonlam h (ih h₂)
      simpa [Nat.add_right_comm] using this

/-- Symbolic trace with liftable sources: each stepped state must be a
syntactic application (which instantiates to an application, hence a
non-lambda). -/
def symStepsApp : Nat → STerm → Option STerm
  | 0, s => some s
  | n + 1, .app f a => (symHeadStep (.app f a)).bind (symStepsApp n)
  | _ + 1, _ => none

/-- A liftable symbolic trace instantiates to a liftable concrete
chain. -/
theorem symStepsApp_sound {ρ : Nat → Term} (hρ : ClosedEnv ρ) :
    ∀ {n : Nat} {s u : STerm}, symStepsApp n s = some u →
      LiftReds n (inst ρ s) (inst ρ u) := by
  intro n
  induction n with
  | zero => intro s u h; cases h; exact LiftReds.refl _
  | succ m ih =>
      intro s u h
      cases s with
      | var k => simp [symStepsApp] at h
      | mvar k => simp [symStepsApp] at h
      | lam b => simp [symStepsApp] at h
      | app f a =>
          simp only [symStepsApp, Option.bind_eq_some_iff] at h
          obtain ⟨v, hv, hrest⟩ := h
          exact LiftReds.head (fun b hb => by cases hb)
            (symHeadStep_sound hρ hv) (ih hrest)

/-- Wrapper instantiation: plug one closed term into every hole of a
symbolic wrapper (the checker's `W[z]`, all holes `Meta(0)`). -/
def wrap (Ws : STerm) (z : Term) : Term := inst (fun _ => z) Ws

theorem closedEnv_const {z : Term} (hz : Closed z) :
    ClosedEnv (fun _ => z) := fun _ => hz

/-- Closedness of the wrapped term is DERIVED from the wrapper's
symbolic scopedness — not assumed (Codex round five). -/
theorem wrap_closed {Ws : STerm} (hW : SClosed Ws)
    {z : Term} (hz : Closed z) : Closed (wrap Ws z) :=
  inst_closed (closedEnv_const hz) hW

/-!
Proof of concept: loop32's OPEN obligation through the symbolic
layer. The symbolic trace is a `decide`; the commuting square turns
it into the concrete lemma for every closed argument. (Blc/Loop32.lean
proves the same fact for arbitrary `z` by hand — the symbolic route is
what the certificate translator will emit mechanically.)
-/

/-- `A` as a symbolic term (no holes). -/
private def sA : STerm :=
  .lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))

/-- `W[Z]` with the hole `Meta(0)` — the checker's wrapper shape. -/
private def sW : STerm := .lam (.app (.var 0) (.mvar 0))

/-- OPEN, symbolically: `A Z →ₛ (Z Z) W[Z]` — checked by `decide`. -/
private theorem sym_open :
    symHeadStep (.app sA (.mvar 0)) =
      some (.app (.app (.mvar 0) (.mvar 0)) sW) := by decide

/-- OPEN, transported: for every closed `z`,
`A z →ₕ (z z) W[z]` — no hand computation of the contraction. -/
example {z : Term} (hz : Closed z) :
    HeadStep (.app A z) (.app (.app z z) (wrap sW z)) := by
  have h := symHeadStep_sound (ρ := fun _ => z)
    (closedEnv_const hz) sym_open
  simpa [inst, sA, sW, A, wrap] using h

end Blc
