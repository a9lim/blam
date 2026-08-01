/-
The generic v1.2 ratchet assembly: a certificate record whose
obligations are DECIDABLE facts (symbolic traces via `symStepsApp`,
one concrete INIT trace via `headSteps`), and the glue theorem turning
any valid certificate into `HeadDiverges` — then `¬ HasNormalForm`
through the general bridge (Blc/Factor.lean).

This is tools/cert/SPEC.md §3 formalized, including both extensions:
under-binder (v1.1, the `binders` field) and trailing-vector (v1.2,
the `trail` field — arguments may be open; they are lifted past, never
inspected). The glue proof is Blc/Loop32.lean's cycle argument run
generically: OPEN enters the descent, DESC peels one tower layer per
round inside the left spine, BASE relights the engine, and every
proper source state is an application, so the whole chain lifts
through the trailing vector and under the leading binders.

A certificate file emitted by the translator is one `RatchetCert`
literal plus `valid_of_check (by decide)` — the kernel replays every
obligation; nothing else is trusted.
-/

import Blc.Sym
import Blc.Factor

namespace Blc
open Term STerm

/-- Embed a concrete term as a hole-free symbolic term. -/
def ofTerm : Term → STerm
  | .var n => .var n
  | .lam b => .lam (ofTerm b)
  | .app f a => .app (ofTerm f) (ofTerm a)

theorem inst_ofTerm (ρ : Nat → Term) : ∀ t, inst ρ (ofTerm t) = t := by
  intro t
  induction t with
  | var n => rfl
  | lam b ih => simp [ofTerm, inst, ih]
  | app f a ihf iha => simp [ofTerm, inst, ihf, iha]

/-- The tower `Wⁿ[C0]`: iterate the symbolic wrapper over the base. -/
def stower (W : STerm) (C0 : Term) : Nat → Term
  | 0 => C0
  | n + 1 => wrap W (stower W C0 n)

theorem stower_closed {W : STerm} {C0 : Term}
    (hW : SClosed W) (hC0 : Closed C0) : ∀ n, Closed (stower W C0 n)
  | 0 => hC0
  | n + 1 => wrap_closed hW (stower_closed hW hC0 n)

/-- Left-associated application spine `t y₁ … yⱼ`. -/
def apps : Term → List Term → Term
  | t, [] => t
  | t, y :: ys => apps (.app t y) ys

/-- `k` leading lambdas. -/
def lams : Nat → Term → Term
  | 0, t => t
  | k + 1, t => .lam (lams k t)

/-- A liftable chain lifts through a whole trailing vector (the
arguments are never inspected — they may be open). -/
theorem liftReds_apps (ys : List Term) {n : Nat} {t u : Term}
    (h : LiftReds n t u) : LiftReds n (apps t ys) (apps u ys) := by
  induction ys generalizing t u with
  | nil => exact h
  | cons y ys ih => exact ih (liftReds_appL y h)

theorem headReds_under {n : Nat} {t u : Term}
    (h : HeadReds n t u) : HeadReds n (.lam t) (.lam u) := by
  induction h with
  | refl t => exact HeadReds.refl _
  | head hstep _ ih => exact HeadReds.head (HeadStep.under hstep) ih

/-- Head reduction runs under any prefix of leading binders. -/
theorem headReds_lams (k : Nat) {n : Nat} {t u : Term}
    (h : HeadReds n t u) : HeadReds n (lams k t) (lams k u) := by
  induction k with
  | zero => exact h
  | succ m ih => exact headReds_under ih

/-- A v1.2 ratchet certificate: the triple `(A, W, C0)`, the three
obligation step counts, and the INIT landing data — the killed term
`T` reaches `λᵇ.(A Wⁿ⁰[C0] y⃗)` in `kI` head steps. -/
structure RatchetCert where
  A : Term
  W : STerm
  C0 : Term
  kO : Nat
  kD : Nat
  kB : Nat
  T : Term
  kI : Nat
  binders : Nat
  n0 : Nat
  trail : List Term

namespace RatchetCert

/-- The milestone state `λᵇ.(A Wⁿ[C0] y⃗)`. -/
def state (c : RatchetCert) (n : Nat) : Term :=
  lams c.binders (apps (.app c.A (stower c.W c.C0 n)) c.trail)

/-- Certificate validity — every field is decidable for concrete
data; `check`/`valid_of_check` below package them into one `decide`.

`hOpen`/`hDesc`/`hBase` are the SPEC's obligations as symbolic traces
with liftable sources (`symStepsApp`): OPEN `A Z →ₕ⁺ (Z Z) W[Z]`,
DESC `W[Z] W[Z] →ₕ⁺ Z Z`, BASE `C0 C0 →ₕ⁺ A`. -/
structure Valid (c : RatchetCert) : Prop where
  kO_pos : 0 < c.kO
  wScoped : SClosed c.W
  c0Closed : Closed c.C0
  hOpen : symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
      some (.app (.app (.mvar 0) (.mvar 0)) c.W)
  hDesc : symStepsApp c.kD (.app c.W c.W) = some (.app (.mvar 0) (.mvar 0))
  hBase : symStepsApp c.kB (.app (ofTerm c.C0) (ofTerm c.C0)) =
      some (ofTerm c.A)
  hInit : headSteps c.kI c.T = some (c.state c.n0)

/-- The whole certificate as one boolean — what a generated proof file
discharges with a single `decide`. -/
def check (c : RatchetCert) : Bool :=
  decide (0 < c.kO) && decide (SClosed c.W) && decide (Closed c.C0)
    && decide (symStepsApp c.kO (.app (ofTerm c.A) (.mvar 0)) =
        some (.app (.app (.mvar 0) (.mvar 0)) c.W))
    && decide (symStepsApp c.kD (.app c.W c.W) =
        some (.app (.mvar 0) (.mvar 0)))
    && decide (symStepsApp c.kB (.app (ofTerm c.C0) (ofTerm c.C0)) =
        some (ofTerm c.A))
    && decide (headSteps c.kI c.T = some (c.state c.n0))

theorem valid_of_check {c : RatchetCert} (h : c.check = true) : c.Valid := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1.1.1.1.1, h.1.1.1.1.1.2, h.1.1.1.1.2,
    h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

variable {c : RatchetCert}

/-- OPEN, instantiated at `Z := Wⁿ[C0]`: the engine opens the descent
and mints the next tower layer. -/
theorem open_reds (v : c.Valid) (n : Nat) :
    LiftReds c.kO (.app c.A (stower c.W c.C0 n))
      (.app (.app (stower c.W c.C0 n) (stower c.W c.C0 n))
        (stower c.W c.C0 (n + 1))) := by
  have hρ : ClosedEnv (fun _ => stower c.W c.C0 n) :=
    closedEnv_const (stower_closed v.wScoped v.c0Closed n)
  have h := symStepsApp_sound hρ v.hOpen
  simpa [inst, inst_ofTerm, stower, wrap] using h

/-- DESC, iterated and lifted: the self-applied tower collapses to the
self-applied base inside any right-spine context. -/
theorem desc_reds (v : c.Valid) : ∀ (n : Nat) (Y : Term),
    LiftReds (c.kD * n)
      (.app (.app (stower c.W c.C0 n) (stower c.W c.C0 n)) Y)
      (.app (.app c.C0 c.C0) Y)
  | 0, _ => LiftReds.refl _
  | n + 1, Y => by
      have hρ : ClosedEnv (fun _ => stower c.W c.C0 n) :=
        closedEnv_const (stower_closed v.wScoped v.c0Closed n)
      have h' : LiftReds c.kD
          (.app (stower c.W c.C0 (n + 1)) (stower c.W c.C0 (n + 1)))
          (.app (stower c.W c.C0 n) (stower c.W c.C0 n)) := by
        have h := symStepsApp_sound hρ v.hDesc
        simpa [inst, stower, wrap] using h
      have chain :=
        liftReds_trans (liftReds_appL Y h') (desc_reds v n Y)
      have harith : c.kD + c.kD * n = c.kD * (n + 1) := by
        rw [Nat.mul_succ, Nat.add_comm]
      exact harith ▸ chain

/-- BASE, lifted: the collapsed base relights the engine next to the
freshly minted tower. -/
theorem base_reds (v : c.Valid) (Y : Term) :
    LiftReds c.kB (.app (.app c.C0 c.C0) Y) (.app c.A Y) := by
  have hρ : ClosedEnv (fun _ => c.C0) := closedEnv_const v.c0Closed
  have h' : LiftReds c.kB (.app c.C0 c.C0) c.A := by
    have h := symStepsApp_sound hρ v.hBase
    simpa [inst, inst_ofTerm] using h
  exact liftReds_appL Y h'

/-- The ratchet cycle at the core: `A Wⁿ[C0] →ₕ⁺ A Wⁿ⁺¹[C0]`. -/
theorem cycle_reds (v : c.Valid) (n : Nat) :
    LiftReds (c.kO + c.kD * n + c.kB)
      (.app c.A (stower c.W c.C0 n))
      (.app c.A (stower c.W c.C0 (n + 1))) := by
  have chain := liftReds_trans (open_reds v n)
    (liftReds_trans (desc_reds v n (stower c.W c.C0 (n + 1)))
      (base_reds v (stower c.W c.C0 (n + 1))))
  have harith : c.kO + (c.kD * n + c.kB) = c.kO + c.kD * n + c.kB :=
    (Nat.add_assoc _ _ _).symm
  exact harith ▸ chain

/-- The cycle at the milestone state: lifted through the trailing
vector, then under the leading binders. -/
theorem state_cycle (v : c.Valid) (n : Nat) :
    HeadReds (c.kO + c.kD * n + c.kB) (c.state n) (c.state (n + 1)) :=
  headReds_lams c.binders
    (liftReds_headReds (liftReds_apps c.trail (cycle_reds v n)))

/-- Cumulative positions: INIT, then the growing cycles. -/
def rpos (c : RatchetCert) : Nat → Nat
  | 0 => c.kI
  | n + 1 => c.rpos n + (c.kO + c.kD * (c.n0 + n) + c.kB)

theorem reach (v : c.Valid) : ∀ n : Nat,
    HeadReds (c.rpos n) c.T (c.state (c.n0 + n))
  | 0 => headReds_of_headSteps c.kI v.hInit
  | n + 1 => headReds_trans (reach v n) (state_cycle v (c.n0 + n))

theorem le_rpos (v : c.Valid) : ∀ n : Nat, n ≤ c.rpos n
  | 0 => Nat.zero_le _
  | n + 1 => by
      have ih := le_rpos v n
      have hk := v.kO_pos
      simp only [rpos]
      omega

/-- **The glue theorem**: a valid ratchet certificate's target
head-diverges. -/
theorem headDiverges (v : c.Valid) : HeadDiverges c.T := by
  apply headDiverges_of_unbounded
  intro n
  refine ⟨c.rpos (n + 1), c.state (c.n0 + (n + 1)), ?_,
    headSteps_of_headReds (reach v (n + 1))⟩
  have := le_rpos v (n + 1)
  omega

/-- …and hence has no β-normal form, through the general bridge. -/
theorem noNormalForm (v : c.Valid) : ¬ HasNormalForm c.T :=
  headDiverges_not_hasNormalForm (headDiverges v)

end RatchetCert

/-!
Proof of concept: loop32's certificate as pure data, every obligation
replayed by the kernel in one `decide`. This is the file shape the
translator emits for each line of tools/cert/ratchet_kills.txt.
-/

/-- loop32's ratchet: `A = λx.x x (λy.y x)`, `W[Z] = λy.y Z`,
`C0 = λ_.A`; OPEN 1 step, DESC 2, BASE 1; INIT lands at `A C0`
(tower height 0, no binders, no trail) in 1 step. -/
def loop32Cert : RatchetCert :=
  { A := A, W := .lam (.app (.var 0) (.mvar 0)), C0 := C0,
    kO := 1, kD := 2, kB := 1,
    T := loop32, kI := 1, binders := 0, n0 := 0, trail := [] }

theorem loop32Cert_valid : loop32Cert.Valid :=
  RatchetCert.valid_of_check (by decide)

/-- The flagship, third derivation — this time from certificate DATA
through the generic assembly (cf. the bespoke invariant proof in
Blc/NoNf.lean and the bridge corollary in Blc/Factor.lean). -/
theorem loop32_noNormalForm'' : ¬ HasNormalForm loop32 :=
  loop32Cert.noNormalForm loop32Cert_valid

end Blc
