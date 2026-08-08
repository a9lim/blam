/-
The PassengerDiagonalRatchet (v4) assembly: SPEC.md §8.1, forced by
the 36-bit exemplar. OPEN opens to `Z (Z P[Z]) W[Z]` — an interleaved
spine argument `Z P[Z]`, metavariable-bearing and consumed by the
tower head, *controls* the descent. The rank step is UNWRAP at the
top, UNWRAP and DROP lifted through one trailing argument, then
UNWRAP again; diagonal descent is UNWRAP twice per level; the cycle
closes with SEED at `Q := C0`, and the n = 0 cycle exceptionally by
SEED at `Q := X₀ P₀` (an application instance — closed, so the
commuting square is indifferent).

New over Blc/Selector.lean: nothing in the trusted layer. No
obligation mentions a renamed wrapper, so `renameMVar01` is not
needed; UNWRAP and DROP instantiate through `env2`, OPEN and SEED
through constant environments. The per-cycle cost is non-uniform (the
base cycle skips the rank machinery), so `leftCost` is a `Nat` match
rather than v3's flat product.

Like Ratchet and Selector, `Valid` does not require `Closed A`: the
glue never instantiates into `A`, so Lean proves a strict
generalization of what the Rust verifier (which keeps the stronger
shape gate) accepts.
-/

import Blc.Selector

namespace Blc
open Term STerm

/-- A v4 PassengerDiagonalRatchet certificate: `(A, W, P, C0)` with
the four obligation counts (all ≥ 1) and the v1.2 INIT landing. -/
structure PdrCert where
  A : Term
  W : STerm
  P : STerm
  C0 : Term
  kO : Nat
  kU : Nat
  kD : Nat
  kS : Nat
  T : Term
  kI : Nat
  binders : Nat
  n0 : Nat
  trail : List Term

namespace PdrCert

/-- The milestone state `λᵇ.(A Wⁿ[C0] y⃗)` (v1.2 shape). -/
def state (c : PdrCert) (n : Nat) : Term :=
  lams c.binders (apps (.app c.A (stower c.W c.C0 n)) c.trail)

/-- OPEN `A Z →ₕ⁺ Z (Z P[Z]) W[Z]`; UNWRAP `W[Z] Q →ₕ⁺ Q Z`; DROP
`P[Z] Q →ₕ⁺ Z`; SEED `C0 Q →ₕ⁺ A`. -/
structure Valid (c : PdrCert) : Prop where
  kO_pos : 0 < c.kO
  wScoped : SClosed c.W
  wOnly0 : OnlyMVar 0 c.W
  pScoped : SClosed c.P
  pOnly0 : OnlyMVar 0 c.P
  c0Closed : Closed c.C0
  hOpen : symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
      some (.app (.app (.mvar 0) (.app (.mvar 0) c.P)) c.W)
  hUnwrap : symStepsApp c.kU (.app c.W (.mvar 1)) =
      some (.app (.mvar 1) (.mvar 0))
  hDrop : symStepsApp c.kD (.app c.P (.mvar 1)) = some (.mvar 0)
  hSeed : symStepsApp c.kS (.app (ofTerm c.C0) (.mvar 1)) =
      some (ofTerm c.A)
  hInit : headSteps c.kI c.T = some (c.state c.n0)

/-- One `decide` per generated proof file. -/
def check (c : PdrCert) : Bool :=
  decide (0 < c.kO) && decide (SClosed c.W) && decide (OnlyMVar 0 c.W)
    && decide (SClosed c.P) && decide (OnlyMVar 0 c.P)
    && decide (Closed c.C0)
    && decide (symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
        some (.app (.app (.mvar 0) (.app (.mvar 0) c.P)) c.W))
    && decide (symStepsApp c.kU (.app c.W (.mvar 1)) =
        some (.app (.mvar 1) (.mvar 0)))
    && decide (symStepsApp c.kD (.app c.P (.mvar 1)) = some (.mvar 0))
    && decide (symStepsApp c.kS (.app (ofTerm c.C0) (.mvar 1)) =
        some (ofTerm c.A))
    && decide (headSteps c.kI c.T = some (c.state c.n0))

theorem valid_of_check {c : PdrCert} (h : c.check = true) : c.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1.1.1.1.1.1.1, h.1.1.1.1.1.1.1.1.1.2,
    h.1.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.2,
    h.1.1.1.1.1.2, h.1.1.1.1.2, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

variable {c : PdrCert}

private def X (c : PdrCert) (n : Nat) : Term := stower c.W c.C0 n

private theorem X_closed (v : c.Valid) (n : Nat) : Closed (c.X n) :=
  stower_closed v.wScoped v.c0Closed n

/-- The passenger at level n: `Pₙ = P[Xₙ]`. -/
private def Pn (c : PdrCert) (n : Nat) : Term := wrap c.P (c.X n)

private theorem Pn_closed (v : c.Valid) (n : Nat) : Closed (c.Pn n) :=
  wrap_closed v.pScoped (X_closed v n)

theorem open_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kO (.app c.A z)
      (.app (.app z (.app z (wrap c.P z))) (wrap c.W z)) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hOpen
  simpa [inst, inst_ofTerm, wrap] using h

theorem unwrap_reds (v : c.Valid) {z q : Term}
    (hz : Closed z) (hq : Closed q) :
    LiftReds c.kU (.app (wrap c.W z) q) (.app q z) := by
  have h := symStepsApp_sound (ρ := env2 z q) (closedEnv_env2 hz hq) v.hUnwrap
  have hw : inst (env2 z q) c.W = wrap c.W z := inst_of_onlyMVar v.wOnly0
  simpa [inst, hw, env2] using h

theorem drop_reds (v : c.Valid) {z q : Term}
    (hz : Closed z) (hq : Closed q) :
    LiftReds c.kD (.app (wrap c.P z) q) z := by
  have h := symStepsApp_sound (ρ := env2 z q) (closedEnv_env2 hz hq) v.hDrop
  have hp : inst (env2 z q) c.P = wrap c.P z := inst_of_onlyMVar v.pOnly0
  simpa [inst, hp, env2] using h

theorem seed_reds (v : c.Valid) {q : Term} (hq : Closed q) :
    LiftReds c.kS (.app c.C0 q) c.A := by
  have h := symStepsApp_sound (ρ := fun _ => q) (closedEnv_const hq) v.hSeed
  simpa [inst, inst_ofTerm] using h

/-- The rank step: `Xₘ₊₁ (Xₘ₊₁ Pₘ₊₁) →ₕ⁺ Xₘ Xₘ` — UNWRAP at the top
(the composite argument is the fresh Q), UNWRAP and DROP lifted
through the trailing `Xₘ`, then UNWRAP again. -/
theorem rank_reds (v : c.Valid) (m : Nat) :
    LiftReds (c.kU + (c.kU + (c.kD + c.kU)))
      (.app (c.X (m + 1)) (.app (c.X (m + 1)) (c.Pn (m + 1))))
      (.app (c.X m) (c.X m)) :=
  liftReds_trans
    (unwrap_reds v (X_closed v m)
      ⟨X_closed v (m + 1), Pn_closed v (m + 1)⟩)
    (liftReds_trans
      (liftReds_appL _ (unwrap_reds v (X_closed v m) (Pn_closed v (m + 1))))
      (liftReds_trans
        (liftReds_appL _ (drop_reds v (X_closed v (m + 1)) (X_closed v m)))
        (unwrap_reds v (X_closed v m) (X_closed v m))))

/-- Diagonal descent, one level: `Xₘ₊₁ Xₘ₊₁ →ₕ⁺ Xₘ Xₘ` — UNWRAP
twice. -/
theorem diag_reds (v : c.Valid) (m : Nat) :
    LiftReds (c.kU + c.kU)
      (.app (c.X (m + 1)) (c.X (m + 1))) (.app (c.X m) (c.X m)) :=
  liftReds_trans
    (unwrap_reds v (X_closed v m) (X_closed v (m + 1)))
    (unwrap_reds v (X_closed v m) (X_closed v m))

/-- Diagonal descent, iterated to the tower bottom. -/
theorem descend (v : c.Valid) : ∀ n : Nat,
    LiftReds ((c.kU + c.kU) * n)
      (.app (c.X n) (c.X n)) (.app (c.X 0) (c.X 0))
  | 0 => LiftReds.refl _
  | n + 1 => by
      have chain := liftReds_trans (diag_reds v n) (descend v n)
      have harith : (c.kU + c.kU) + (c.kU + c.kU) * n =
          (c.kU + c.kU) * (n + 1) := by
        rw [Nat.mul_succ, Nat.add_comm]
      exact harith ▸ chain

/-- Cost of collapsing the opened left factor `Xₙ (Xₙ Pₙ)` to `A`:
the base cycle is SEED alone (at `Q := X₀ P₀`); above it, one rank
step, m diagonal levels, then SEED at `Q := C0`. -/
def leftCost (c : PdrCert) : Nat → Nat
  | 0 => c.kS
  | m + 1 => (c.kU + (c.kU + (c.kD + c.kU))) + (c.kU + c.kU) * m + c.kS

/-- The opened left factor collapses to `A` at every rank. -/
theorem left_to_A (v : c.Valid) : ∀ n : Nat,
    LiftReds (c.leftCost n)
      (.app (c.X n) (.app (c.X n) (c.Pn n))) c.A
  | 0 => seed_reds v ⟨X_closed v 0, Pn_closed v 0⟩
  | m + 1 => by
      have chain := liftReds_trans (rank_reds v m)
        (liftReds_trans (descend v m) (seed_reds v (X_closed v 0)))
      have harith : (c.kU + (c.kU + (c.kD + c.kU))) +
          ((c.kU + c.kU) * m + c.kS) = c.leftCost (m + 1) := by
        simp only [leftCost]; omega
      exact harith ▸ chain

def cycleCost (c : PdrCert) (n : Nat) : Nat := c.kO + c.leftCost n

theorem cycleCost_pos (v : c.Valid) (n : Nat) : 0 < c.cycleCost n :=
  Nat.lt_of_lt_of_le v.kO_pos (Nat.le_add_right _ _)

theorem cycle_reds (v : c.Valid) (n : Nat) :
    LiftReds (c.cycleCost n) (.app c.A (c.X n)) (.app c.A (c.X (n + 1))) :=
  liftReds_trans (open_reds v (X_closed v n))
    (liftReds_appL _ (left_to_A v n))

theorem state_cycle (v : c.Valid) (n : Nat) :
    HeadReds (c.cycleCost n) (c.state n) (c.state (n + 1)) :=
  headReds_lams c.binders
    (liftReds_headReds (liftReds_apps c.trail (cycle_reds v n)))

def rpos (c : PdrCert) : Nat → Nat
  | 0 => c.kI
  | n + 1 => c.rpos n + c.cycleCost (c.n0 + n)

theorem reach (v : c.Valid) : ∀ n : Nat,
    HeadReds (c.rpos n) c.T (c.state (c.n0 + n))
  | 0 => headReds_of_headSteps c.kI v.hInit
  | n + 1 => headReds_trans (reach v n) (state_cycle v (c.n0 + n))

theorem le_rpos (v : c.Valid) : ∀ n : Nat, n ≤ c.rpos n
  | 0 => Nat.zero_le _
  | n + 1 => by
      have ih := le_rpos v n
      have hc := cycleCost_pos v (c.n0 + n)
      simp only [rpos]
      omega

/-- **The v4 glue theorem**: a valid PassengerDiagonalRatchet's target
head-diverges… -/
theorem headDiverges (v : c.Valid) : HeadDiverges c.T := by
  apply headDiverges_of_unbounded
  intro n
  refine ⟨c.rpos (n + 1), c.state (c.n0 + (n + 1)), ?_,
    headSteps_of_headReds (reach v (n + 1))⟩
  have := le_rpos v (n + 1)
  omega

/-- …and has no β-normal form, through the general bridge. -/
theorem noNormalForm (v : c.Valid) : ¬ HasNormalForm c.T :=
  headDiverges_not_hasNormalForm (headDiverges v)

end PdrCert
end Blc
