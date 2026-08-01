/-
The flagship: loop32 has NO normal form — under arbitrary β-reduction,
not merely head reduction.

No standardization theorem is needed, because the ratchet is
syntactically orthogonal: A, F, C0, and every tower Wⁿ[C0] are
themselves β-normal, so every state reachable from loop32 carries
EXACTLY ONE redex — the head redex. β-reduction from loop32 is
therefore deterministic and coincides with the trusted checker's head
stepper; the state family `St` below is closed under it and every
member steps, so no reduction sequence can end.

The argument formalizes why the certificate works at all: the ratchet
is not just head-divergent, it is a one-way street.
-/

import Blc.Beta
import Blc.Loop32

namespace Blc
open Term

/-- The tower family `Wⁿ[C0]`, as a predicate closed under wrapping. -/
inductive Tw : Term → Prop where
  | c0 : Tw C0
  | w {z : Term} (h : Tw z) : Tw (W z)

theorem tw_closed : ∀ {z : Term}, Tw z → Closed z
  | _, .c0 => C0_closed
  | _, .w h => W_closed (tw_closed h)

theorem nft_A : NFt A := by decide

theorem nft_C0 : NFt C0 := by decide

/-- Towers are β-normal (the wrapper stores its layer under a binder,
behind a head variable — no redex anywhere). -/
theorem tw_nft : ∀ {z : Term}, Tw z → NFt z
  | _, .c0 => nft_C0
  | _, .w h => by
      show NFt (.lam (.app (.var 0) (shift 1 0 _)))
      rw [shift_closed 1 0 (tw_closed h)]
      exact ⟨fun hl => hl, trivial, tw_nft h⟩

/-- Towers are lambdas (so tower-tower applications are head redexes). -/
theorem tw_isLam : ∀ {z : Term}, Tw z → ∃ b, z = .lam b
  | _, .c0 => ⟨_, rfl⟩
  | _, .w _ => ⟨_, rfl⟩

/-- Every state β-reachable from loop32: the initial term, the engine
applied to a tower, and the descending tower-tower spine states. -/
inductive St : Term → Prop where
  | init : St loop32
  | engine {T : Term} (h : Tw T) : St (.app A T)
  | desc {X X' Y : Term} (hx : Tw X) (hx' : Tw X') (hy : Tw Y) :
      St (.app (.app X X') Y)

/-- Every state takes a head step — to another state. (This is the
ratchet cycle, replayed as an invariant instead of a trace: INIT feeds
the engine, OPEN opens into a descent, DESC hands down one layer, BASE
returns to the engine one tower taller.) -/
theorem st_step : ∀ {t : Term}, St t → ∃ u, HeadStep t u ∧ St u := by
  intro t h
  cases h with
  | init => exact ⟨_, init_step, St.engine Tw.c0⟩
  | engine hT => exact ⟨_, open_step _, St.desc hT hT (Tw.w hT)⟩
  | desc hx hx' hy =>
      cases hx with
      | c0 =>
          exact ⟨_, HeadStep.appL _ (app_ne_lam _ _) (base_step _),
            St.engine hy⟩
      | w hz =>
          exact ⟨_, HeadStep.appL _ (app_ne_lam _ _)
              (wrapper_step (tw_closed hz) _),
            St.desc hx' hz hy⟩

/-- Every state is a single-redex spine: off the head path everything
is β-normal. -/
theorem st_spine : ∀ {t : Term}, St t → Spine t := by
  intro t h
  cases h with
  | init => exact Spine.redex (by decide) (by decide)
  | engine hT => exact Spine.redex (by decide) (tw_nft hT)
  | desc hx hx' hy =>
      obtain ⟨b, hb⟩ := tw_isLam hx
      refine Spine.appL _ (app_ne_lam _ _) ?_ (tw_nft hy)
      subst hb
      have hnb : NFt (Term.lam b) := tw_nft hx
      exact Spine.redex hnb (tw_nft hx')

/-- β-closure: on states, an arbitrary β step IS the head step (the
single-redex discipline), and the head step stays in the family. -/
theorem st_beta : ∀ {t u : Term}, St t → Beta t u → St u := by
  intro t u h hb
  have hh := spine_beta_head (st_spine h) hb
  obtain ⟨v, hv, hst⟩ := st_step h
  have : u = v := headStep_det hh hv
  subst this
  exact hst

theorem st_betas : ∀ {t u : Term}, St t → Betas t u → St u := by
  intro t u h hred
  induction hred with
  | refl t => exact h
  | head hb _ ih => exact ih (st_beta h hb)

/-- **The theorem**: loop32 has no normal form under full β-reduction.
Every β-reduct is a ratchet state, and every ratchet state still has a
redex. This mechanically discharges the hand exclusion in the
reference busy-beaver ledger at full generality. -/
theorem loop32_noNormalForm : ¬ HasNormalForm loop32 := by
  rintro ⟨n, hred, hnf⟩
  have hst := st_betas St.init hred
  obtain ⟨v, hv, _⟩ := st_step hst
  exact hnf v (beta_of_headStep hv)

end Blc
