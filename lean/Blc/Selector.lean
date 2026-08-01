/-
The SelectorRatchet (v3) assembly: SPEC.md §6, derived by Codex in
round nine from the 35-bit forcing exemplar. The wrapper is a
*selector* — FAN hands control to the fresh argument carrying a
second unary pattern `P[Z]`, and SELECT reduces one wrapper layer
applied to `P[Z]` back to the stored layer, so the tower index drops
through the argument's own contraction with every metavariable
opaque throughout.

New over Blc/HeadTower.lean: SELECT's obligation mentions `W[Q]` —
the wrapper with its holes renamed to the second slot — so the layer
gains `renameMVar01` and its instantiation lemma (a renamed
single-id pattern instantiates through slot 1). The rank step costs
a CONSTANT `kF + kSel` per level, so the descent is plain
multiplication rather than HTR's structural recursion.
-/

import Blc.HeadTower

namespace Blc
open Term STerm

/-- Rename every metavariable id 0 to id 1 (syntactic — done before
any checking, mirroring the Rust `rename_meta`). -/
def renameMVar01 : STerm → STerm
  | .var n => .var n
  | .lam b => .lam (renameMVar01 b)
  | .app f a => .app (renameMVar01 f) (renameMVar01 a)
  | .mvar 0 => .mvar 1
  | .mvar i => .mvar i

/-- A renamed single-id pattern instantiates through slot 1. -/
theorem inst_renameMVar01 {ρ : Nat → Term} :
    ∀ {s : STerm}, OnlyMVar 0 s → inst ρ (renameMVar01 s) = wrap s (ρ 1) := by
  intro s
  induction s with
  | var n => intro _; rfl
  | lam b ih =>
      intro h
      simp only [renameMVar01, inst, wrap] at *
      rw [ih h]
  | app f a ihf iha =>
      intro h
      simp only [renameMVar01, inst, wrap] at *
      rw [ihf h.1, iha h.2]
  | mvar i =>
      intro h
      simp only [OnlyMVar] at h
      subst h
      rfl

/-- A v3 SelectorRatchet certificate: `(A, W, P, C0)` with the four
obligation counts (BASE may be 0) and the v1.2 INIT landing. -/
structure SelCert where
  A : Term
  W : STerm
  P : STerm
  C0 : Term
  kO : Nat
  kF : Nat
  kSel : Nat
  kB : Nat
  T : Term
  kI : Nat
  binders : Nat
  n0 : Nat
  trail : List Term

namespace SelCert

/-- The milestone state `λᵇ.(A Wⁿ[C0] y⃗)` (v1.2 shape). -/
def state (c : SelCert) (n : Nat) : Term :=
  lams c.binders (apps (.app c.A (stower c.W c.C0 n)) c.trail)

/-- OPEN `A Z →ₕ⁺ Z W[Z]`; FAN `W[Z] Q →ₕ⁺ Q P[Z] Q`; SELECT
`W[Q] P[Z] →ₕ⁺ Z`; BASE `C0 Z →ₕ* A Z`. -/
structure Valid (c : SelCert) : Prop where
  kO_pos : 0 < c.kO
  wScoped : SClosed c.W
  wOnly0 : OnlyMVar 0 c.W
  pScoped : SClosed c.P
  pOnly0 : OnlyMVar 0 c.P
  c0Closed : Closed c.C0
  hOpen : symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
      some (.app (.mvar 0) c.W)
  hFan : symStepsApp c.kF (.app c.W (.mvar 1)) =
      some (.app (.app (.mvar 1) c.P) (.mvar 1))
  hSelect : symStepsApp c.kSel (.app (renameMVar01 c.W) c.P) =
      some (.mvar 0)
  hBase : symStepsApp c.kB (.app (ofTerm c.C0) (.mvar 0)) =
      some (.app (ofTerm c.A) (.mvar 0))
  hInit : headSteps c.kI c.T = some (c.state c.n0)

/-- One `decide` per generated proof file. -/
def check (c : SelCert) : Bool :=
  decide (0 < c.kO) && decide (SClosed c.W) && decide (OnlyMVar 0 c.W)
    && decide (SClosed c.P) && decide (OnlyMVar 0 c.P)
    && decide (Closed c.C0)
    && decide (symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
        some (.app (.mvar 0) c.W))
    && decide (symStepsApp c.kF (.app c.W (.mvar 1)) =
        some (.app (.app (.mvar 1) c.P) (.mvar 1)))
    && decide (symStepsApp c.kSel (.app (renameMVar01 c.W) c.P) =
        some (.mvar 0))
    && decide (symStepsApp c.kB (.app (ofTerm c.C0) (.mvar 0)) =
        some (.app (ofTerm c.A) (.mvar 0)))
    && decide (headSteps c.kI c.T = some (c.state c.n0))

theorem valid_of_check {c : SelCert} (h : c.check = true) : c.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1.1.1.1.1.1.1, h.1.1.1.1.1.1.1.1.1.2,
    h.1.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.2,
    h.1.1.1.1.1.2, h.1.1.1.1.2, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

variable {c : SelCert}

private def X (c : SelCert) (n : Nat) : Term := stower c.W c.C0 n

private theorem X_closed (v : c.Valid) (n : Nat) : Closed (c.X n) :=
  stower_closed v.wScoped v.c0Closed n

theorem open_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kO (.app c.A z) (.app z (wrap c.W z)) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hOpen
  simpa [inst, inst_ofTerm, wrap] using h

theorem fan_reds (v : c.Valid) {z q : Term}
    (hz : Closed z) (hq : Closed q) :
    LiftReds c.kF (.app (wrap c.W z) q)
      (.app (.app q (wrap c.P z)) q) := by
  have h := symStepsApp_sound (ρ := env2 z q) (closedEnv_env2 hz hq) v.hFan
  have hw : inst (env2 z q) c.W = wrap c.W z := inst_of_onlyMVar v.wOnly0
  have hp : inst (env2 z q) c.P = wrap c.P z := inst_of_onlyMVar v.pOnly0
  simpa [inst, hw, hp, env2] using h

theorem select_reds (v : c.Valid) {z q : Term}
    (hz : Closed z) (hq : Closed q) :
    LiftReds c.kSel (.app (wrap c.W q) (wrap c.P z)) z := by
  have h := symStepsApp_sound (ρ := env2 z q) (closedEnv_env2 hz hq) v.hSelect
  have hw : inst (env2 z q) (renameMVar01 c.W) = wrap c.W q :=
    inst_renameMVar01 v.wOnly0
  have hp : inst (env2 z q) c.P = wrap c.P z := inst_of_onlyMVar v.pOnly0
  simpa [inst, hw, hp, env2] using h

theorem base_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kB (.app c.C0 z) (.app c.A z) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hBase
  simpa [inst, inst_ofTerm] using h

/-- The rank step: `Xₘ₊₁ X_N₊₁ →ₕ⁺ Xₘ X_N₊₁` — FAN at the top level,
then SELECT inside `□ X_N₊₁` (the left factor after FAN is literally
`W[X_N] P[Xₘ]`). Constant cost per level. -/
theorem rank_reds (v : c.Valid) (m N : Nat) :
    LiftReds (c.kF + c.kSel)
      (.app (c.X (m + 1)) (c.X (N + 1))) (.app (c.X m) (c.X (N + 1))) :=
  liftReds_trans (fan_reds v (X_closed v m) (X_closed v (N + 1)))
    (liftReds_appL _ (select_reds v (X_closed v m) (X_closed v N)))

/-- The descent: n rank steps at constant cost. -/
theorem descend (v : c.Valid) : ∀ (n N : Nat),
    LiftReds ((c.kF + c.kSel) * n)
      (.app (c.X n) (c.X (N + 1))) (.app (c.X 0) (c.X (N + 1)))
  | 0, _ => LiftReds.refl _
  | n + 1, N => by
      have chain := liftReds_trans (rank_reds v n N) (descend v n N)
      have harith : (c.kF + c.kSel) + (c.kF + c.kSel) * n =
          (c.kF + c.kSel) * (n + 1) := by
        rw [Nat.mul_succ, Nat.add_comm]
      exact harith ▸ chain

def cycleCost (c : SelCert) (n : Nat) : Nat :=
  c.kO + (c.kF + c.kSel) * n + c.kB

theorem cycle_reds (v : c.Valid) (n : Nat) :
    LiftReds (c.cycleCost n) (.app c.A (c.X n)) (.app c.A (c.X (n + 1))) := by
  have s1 : LiftReds c.kO (.app c.A (c.X n)) (.app (c.X n) (c.X (n + 1))) :=
    open_reds v (X_closed v n)
  have s2 := descend v n n
  have s3 : LiftReds c.kB (.app (c.X 0) (c.X (n + 1)))
      (.app c.A (c.X (n + 1))) :=
    base_reds v (X_closed v (n + 1))
  have chain := liftReds_trans s1 (liftReds_trans s2 s3)
  have harith : c.kO + ((c.kF + c.kSel) * n + c.kB) = c.cycleCost n := by
    simp only [cycleCost]; omega
  exact harith ▸ chain

theorem state_cycle (v : c.Valid) (n : Nat) :
    HeadReds (c.cycleCost n) (c.state n) (c.state (n + 1)) :=
  headReds_lams c.binders
    (liftReds_headReds (liftReds_apps c.trail (cycle_reds v n)))

def rpos (c : SelCert) : Nat → Nat
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
      have hk := v.kO_pos
      have hc : c.cycleCost (c.n0 + n) =
          c.kO + (c.kF + c.kSel) * (c.n0 + n) + c.kB := rfl
      simp only [rpos]
      omega

/-- **The v3 glue theorem**: a valid SelectorRatchet's target
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

end SelCert
end Blc
