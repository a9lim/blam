/-
The HeadTowerRatchet (v2) assembly: SPEC.md §5's six-obligation
certificate class formalized, to Codex's round-eight Lean design
(gaslamp blc-conformance) — for loops whose tower argument itself
takes head position (`A Z →ₕ⁺ Z W[Z]`), the shape v1's opacity must
abort on.

New over Blc/Ratchet.lean: SPREAD is a TWO-metavariable obligation
(`Z` and the fresh argument `Q`), so the wrapper needs the
`OnlyMVar 0` gate — under the two-slot environment `envZQ`, a stray
`.mvar 1` inside W would instantiate to Q and `inst ρ W = wrap W Z`
would fail. This is where the Rust verifier's wrapper-ID hardening
(round three) becomes proof-relevant.

The descent is Codex's recursive cost, not the closed form: the rank
step R(m,N) `X_{m+1} X_N →ₕ⁺ X_m X_N` is the literal seven-lemma
composition (SPREAD; PEEL↓N; BASE; BOUNCE; PEEL↓m; BASE; ERASE, each
lifted into its right-spine context), and `descCost`/`cycleCost` are
structural recursions — the quadratic 1 + (9n²+25n)/2 stays a
per-certificate audit fact, never trusted glue.
-/

import Blc.Ratchet

namespace Blc
open Term STerm

/-- Every metavariable in `s` carries id `i`. -/
def OnlyMVar (i : Nat) : STerm → Prop
  | .var _ => True
  | .lam b => OnlyMVar i b
  | .app f a => OnlyMVar i f ∧ OnlyMVar i a
  | .mvar j => j = i

def decOnlyMVar : (i : Nat) → (s : STerm) → Decidable (OnlyMVar i s)
  | _, .var _ => inferInstanceAs (Decidable True)
  | i, .lam b => decOnlyMVar i b
  | i, .app f a =>
      have _hf := decOnlyMVar i f
      have _ha := decOnlyMVar i a
      inferInstanceAs (Decidable (_ ∧ _))
  | i, .mvar j => inferInstanceAs (Decidable (j = i))

instance (i : Nat) (s : STerm) : Decidable (OnlyMVar i s) :=
  decOnlyMVar i s

/-- A single-id symbolic term instantiates through slot 0 alone. -/
theorem inst_of_onlyMVar {ρ : Nat → Term} :
    ∀ {s : STerm}, OnlyMVar 0 s → inst ρ s = wrap s (ρ 0) := by
  intro s
  induction s with
  | var n => intro _; rfl
  | lam b ih =>
      intro h
      simp only [inst, wrap] at *
      rw [ih h]
  | app f a ihf iha =>
      intro h
      simp only [inst, wrap] at *
      rw [ihf h.1, iha h.2]
  | mvar i =>
      intro h
      simp only [OnlyMVar] at h
      subst h
      rfl

/-- The SPREAD environment: slot 0 = the tower layer `Z`, every other
slot = the fresh argument `Q`. -/
def envZQ (z q : Nat → Term) : Nat → Term := fun i => if i = 0 then z i else q i

/-- Two-slot closed environment from two closed terms. -/
def env2 (z q : Term) : Nat → Term
  | 0 => z
  | _ + 1 => q

theorem closedEnv_env2 {z q : Term} (hz : Closed z) (hq : Closed q) :
    ClosedEnv (env2 z q) := by
  intro i
  cases i with
  | zero => exact hz
  | succ _ => exact hq

/-- A v2 HeadTowerRatchet certificate: closed head `A`, wrapper `W`
(all holes id 0), closed tower base `C0`, closed eraser `E`; the six
obligation step counts (BASE may be 0 — it is empty exactly when
`C0 = A`, the forcing family); INIT landing as in v1.2. -/
structure HTRCert where
  A : Term
  W : STerm
  C0 : Term
  E : Term
  kB : Nat
  kO : Nat
  kS : Nat
  kP : Nat
  kBounce : Nat
  kE : Nat
  T : Term
  kI : Nat
  binders : Nat
  n0 : Nat
  trail : List Term

namespace HTRCert

/-- The milestone state `λᵇ.(A Wⁿ[C0] y⃗)` (same shape as v1.2). -/
def state (c : HTRCert) (n : Nat) : Term :=
  lams c.binders (apps (.app c.A (stower c.W c.C0 n)) c.trail)

/-- The six obligations as liftable symbolic traces, plus the gates.
BASE `C0 Z →ₕ* A Z`; OPEN `A Z →ₕ⁺ Z W[Z]`; SPREAD
`W[Z] Q →ₕ⁺ Q E Z Q`; PEEL `W[Z] E →ₕ⁺ Z E`; BOUNCE
`A E Z →ₕ⁺ Z E E Z`; ERASE `A E E Z →ₕ⁺ Z`. -/
structure Valid (c : HTRCert) : Prop where
  kO_pos : 0 < c.kO
  wScoped : SClosed c.W
  wOnly0 : OnlyMVar 0 c.W
  c0Closed : Closed c.C0
  eClosed : Closed c.E
  hBase : symStepsApp c.kB (.app (ofTerm c.C0) (.mvar 0)) =
      some (.app (ofTerm c.A) (.mvar 0))
  hOpen : symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
      some (.app (.mvar 0) c.W)
  hSpread : symStepsApp c.kS (.app c.W (.mvar 1)) =
      some (.app (.app (.app (.mvar 1) (ofTerm c.E)) (.mvar 0)) (.mvar 1))
  hPeel : symStepsApp c.kP (.app c.W (ofTerm c.E)) =
      some (.app (.mvar 0) (ofTerm c.E))
  hBounce : symStepsApp c.kBounce
      (.app (.app (ofTerm c.A) (ofTerm c.E)) (.mvar 0)) =
      some (.app (.app (.app (.mvar 0) (ofTerm c.E)) (ofTerm c.E)) (.mvar 0))
  hErase : symStepsApp c.kE
      (.app (.app (.app (ofTerm c.A) (ofTerm c.E)) (ofTerm c.E)) (.mvar 0)) =
      some (.mvar 0)
  hInit : headSteps c.kI c.T = some (c.state c.n0)

/-- The whole certificate as one boolean (one `decide` per generated
proof file). -/
def check (c : HTRCert) : Bool :=
  decide (0 < c.kO) && decide (SClosed c.W) && decide (OnlyMVar 0 c.W)
    && decide (Closed c.C0) && decide (Closed c.E)
    && decide (symStepsApp c.kB (.app (ofTerm c.C0) (.mvar 0)) =
        some (.app (ofTerm c.A) (.mvar 0)))
    && decide (symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
        some (.app (.mvar 0) c.W))
    && decide (symStepsApp c.kS (.app c.W (.mvar 1)) =
        some (.app (.app (.app (.mvar 1) (ofTerm c.E)) (.mvar 0)) (.mvar 1)))
    && decide (symStepsApp c.kP (.app c.W (ofTerm c.E)) =
        some (.app (.mvar 0) (ofTerm c.E)))
    && decide (symStepsApp c.kBounce
        (.app (.app (ofTerm c.A) (ofTerm c.E)) (.mvar 0)) =
        some (.app (.app (.app (.mvar 0) (ofTerm c.E)) (ofTerm c.E)) (.mvar 0)))
    && decide (symStepsApp c.kE
        (.app (.app (.app (ofTerm c.A) (ofTerm c.E)) (ofTerm c.E)) (.mvar 0)) =
        some (.mvar 0))
    && decide (headSteps c.kI c.T = some (c.state c.n0))

theorem valid_of_check {c : HTRCert} (h : c.check = true) : c.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1.1.1.1.1.1.1.1, h.1.1.1.1.1.1.1.1.1.1.2,
    h.1.1.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.1.1.2, h.1.1.1.1.1.1.1.2,
    h.1.1.1.1.1.1.2, h.1.1.1.1.1.2, h.1.1.1.1.2, h.1.1.1.2, h.1.1.2,
    h.1.2, h.2⟩

variable {c : HTRCert}

/-- `X n` in the proofs below. -/
private def X (c : HTRCert) (n : Nat) : Term := stower c.W c.C0 n

private theorem X_closed (v : c.Valid) (n : Nat) : Closed (c.X n) :=
  stower_closed v.wScoped v.c0Closed n

/- The six replay lemmas: each symbolic obligation, instantiated and
shaped. -/

theorem base_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kB (.app c.C0 z) (.app c.A z) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hBase
  simpa [inst, inst_ofTerm] using h

theorem open_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kO (.app c.A z) (.app z (wrap c.W z)) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hOpen
  simpa [inst, inst_ofTerm, wrap] using h

theorem spread_reds (v : c.Valid) {z q : Term}
    (hz : Closed z) (hq : Closed q) :
    LiftReds c.kS (.app (wrap c.W z) q)
      (.app (.app (.app q c.E) z) q) := by
  have h := symStepsApp_sound (ρ := env2 z q) (closedEnv_env2 hz hq) v.hSpread
  have hw : inst (env2 z q) c.W = wrap c.W z := inst_of_onlyMVar v.wOnly0
  simpa [inst, inst_ofTerm, hw, env2] using h

theorem peel_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kP (.app (wrap c.W z) c.E) (.app z c.E) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hPeel
  simpa [inst, inst_ofTerm, wrap] using h

theorem bounce_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kBounce (.app (.app c.A c.E) z)
      (.app (.app (.app z c.E) c.E) z) := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hBounce
  simpa [inst, inst_ofTerm] using h

theorem erase_reds (v : c.Valid) {z : Term} (hz : Closed z) :
    LiftReds c.kE (.app (.app (.app c.A c.E) c.E) z) z := by
  have h := symStepsApp_sound (ρ := fun _ => z) (closedEnv_const hz) v.hErase
  simpa [inst, inst_ofTerm] using h

/-- PEEL, iterated: `Xₙ E →ₕ* C0 E`, cost `kP·n`. -/
theorem peelTo (v : c.Valid) : ∀ n : Nat,
    LiftReds (c.kP * n) (.app (c.X n) c.E) (.app (c.X 0) c.E)
  | 0 => LiftReds.refl _
  | n + 1 => by
      have step := peel_reds v (X_closed v n)
      have chain := liftReds_trans step (peelTo v n)
      have harith : c.kP + c.kP * n = c.kP * (n + 1) := by
        rw [Nat.mul_succ, Nat.add_comm]
      exact harith ▸ chain

/-- One rank step's cost (left-associated; the chain below is cast
into it). -/
def rankCost (c : HTRCert) (m N : Nat) : Nat :=
  c.kS + c.kP * N + c.kB + c.kBounce + c.kP * m + c.kB + c.kE

/-- The rank step `R(m,N) : X_{m+1} X_N →ₕ⁺ X_m X_N` — the literal
seven-lemma composition, each piece lifted into its right-spine
context. -/
theorem rank_reds (v : c.Valid) (m N : Nat) :
    LiftReds (c.rankCost m N)
      (.app (c.X (m + 1)) (c.X N)) (.app (c.X m) (c.X N)) := by
  have hm := X_closed v m
  have hN := X_closed v N
  -- SPREAD (z := Xₘ, q := X_N):  X_{m+1} X_N → (X_N E) Xₘ X_N
  have s1 : LiftReds c.kS (.app (c.X (m + 1)) (c.X N))
      (.app (.app (.app (c.X N) c.E) (c.X m)) (c.X N)) :=
    spread_reds v hm hN
  -- PEEL↓N lifted through · Xₘ · X_N:  → (C0 E) Xₘ X_N
  have s2 : LiftReds (c.kP * N)
      (.app (.app (.app (c.X N) c.E) (c.X m)) (c.X N))
      (.app (.app (.app (c.X 0) c.E) (c.X m)) (c.X N)) :=
    liftReds_appL _ (liftReds_appL _ (peelTo v N))
  -- BASE (z := E) lifted:  → (A E) Xₘ X_N
  have s3 : LiftReds c.kB
      (.app (.app (.app (c.X 0) c.E) (c.X m)) (c.X N))
      (.app (.app (.app c.A c.E) (c.X m)) (c.X N)) :=
    liftReds_appL _ (liftReds_appL _ (base_reds v v.eClosed))
  -- BOUNCE (z := Xₘ) lifted through · X_N:  → ((Xₘ E) E Xₘ) X_N
  have s4 : LiftReds c.kBounce
      (.app (.app (.app c.A c.E) (c.X m)) (c.X N))
      (.app (.app (.app (.app (c.X m) c.E) c.E) (c.X m)) (c.X N)) :=
    liftReds_appL _ (bounce_reds v hm)
  -- PEEL↓m lifted through · E · Xₘ · X_N:  → ((C0 E) E Xₘ) X_N
  have s5 : LiftReds (c.kP * m)
      (.app (.app (.app (.app (c.X m) c.E) c.E) (c.X m)) (c.X N))
      (.app (.app (.app (.app (c.X 0) c.E) c.E) (c.X m)) (c.X N)) :=
    liftReds_appL _ (liftReds_appL _ (liftReds_appL _ (peelTo v m)))
  -- BASE (z := E) lifted:  → ((A E) E Xₘ) X_N
  have s6 : LiftReds c.kB
      (.app (.app (.app (.app (c.X 0) c.E) c.E) (c.X m)) (c.X N))
      (.app (.app (.app (.app c.A c.E) c.E) (c.X m)) (c.X N)) :=
    liftReds_appL _ (liftReds_appL _ (liftReds_appL _ (base_reds v v.eClosed)))
  -- ERASE (z := Xₘ) lifted through · X_N:  → Xₘ X_N
  have s7 : LiftReds c.kE
      (.app (.app (.app (.app c.A c.E) c.E) (c.X m)) (c.X N))
      (.app (c.X m) (c.X N)) :=
    liftReds_appL _ (erase_reds v hm)
  have chain := liftReds_trans s1 (liftReds_trans s2 (liftReds_trans s3
    (liftReds_trans s4 (liftReds_trans s5 (liftReds_trans s6 s7)))))
  have harith : c.kS + (c.kP * N + (c.kB + (c.kBounce +
      (c.kP * m + (c.kB + c.kE))))) = c.rankCost m N := by
    simp only [rankCost]; omega
  exact harith ▸ chain

/-- Descent cost, structurally (never the quadratic closed form). -/
def descCost (c : HTRCert) : Nat → Nat → Nat
  | 0, _ => 0
  | m + 1, N => c.rankCost m N + c.descCost m N

/-- The full descent `Xₙ X_N →ₕ* C0 X_N` by iterated rank steps. -/
theorem descend (v : c.Valid) : ∀ (n N : Nat),
    LiftReds (c.descCost n N) (.app (c.X n) (c.X N)) (.app (c.X 0) (c.X N))
  | 0, _ => LiftReds.refl _
  | n + 1, N => liftReds_trans (rank_reds v n N) (descend v n N)

/-- The productive cycle `A Xₙ →ₕ⁺ A Xₙ₊₁`. -/
def cycleCost (c : HTRCert) (n : Nat) : Nat :=
  c.kO + c.descCost n (n + 1) + c.kB

theorem cycle_reds (v : c.Valid) (n : Nat) :
    LiftReds (c.cycleCost n) (.app c.A (c.X n)) (.app c.A (c.X (n + 1))) := by
  -- OPEN (z := Xₙ): A Xₙ → Xₙ X_{n+1}  (wrap W Xₙ IS X_{n+1})
  have s1 : LiftReds c.kO (.app c.A (c.X n))
      (.app (c.X n) (c.X (n + 1))) :=
    open_reds v (X_closed v n)
  have s2 := descend v n (n + 1)
  have s3 : LiftReds c.kB (.app (c.X 0) (c.X (n + 1)))
      (.app c.A (c.X (n + 1))) :=
    base_reds v (X_closed v (n + 1))
  have chain := liftReds_trans s1 (liftReds_trans s2 s3)
  have harith : c.kO + (c.descCost n (n + 1) + c.kB) = c.cycleCost n := by
    simp only [cycleCost]; omega
  exact harith ▸ chain

/-- The cycle at the milestone state (trail, then binders). -/
theorem state_cycle (v : c.Valid) (n : Nat) :
    HeadReds (c.cycleCost n) (c.state n) (c.state (n + 1)) :=
  headReds_lams c.binders
    (liftReds_headReds (liftReds_apps c.trail (cycle_reds v n)))

def rpos (c : HTRCert) : Nat → Nat
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
          c.kO + c.descCost (c.n0 + n) (c.n0 + n + 1) + c.kB := rfl
      simp only [rpos]
      omega

/-- **The v2 glue theorem**: a valid HeadTowerRatchet's target
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

end HTRCert
end Blc
