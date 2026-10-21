/-
Exact BLC wire-length accounting for capture-avoiding beta substitution.
The identity separates copied argument code, movement under local binders,
and decrementing references to binders outside the contracted abstraction.
It is a local cost theorem, not a numerical self-interpreter lower bound.
-/
import Blc.SelfintLowerBound

namespace Blc
open Term
namespace SelfintWireCost
open SelfintLowerBound

/-- BLC wire length, including the unary de Bruijn indices. -/
def wire (t : Term) : Nat := (blcCode t).length

@[simp] theorem wire_var (n : Nat) : wire (.var n) = n + 2 := by
  simp [wire, blcCode]

@[simp] theorem wire_lam (b : Term) : wire (.lam b) = wire b + 2 := by
  simp [wire, blcCode]

@[simp] theorem wire_app (f a : Term) : wire (.app f a) = wire f + wire a + 2 := by
  simp [wire, blcCode, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]

/-- Each shifted free occurrence gains exactly `d` unary index bits. -/
theorem wire_shift (t : Term) (d c : Nat) :
    wire (shift d c t) = wire t + d * freeLeaves c t := by
  induction t generalizing c with
  | var n =>
    simp only [shift, freeLeaves]
    split <;> simp_all <;> omega
  | lam b ih => simp only [shift, wire_lam, freeLeaves, ih]; omega
  | app f a ihf iha =>
    simp only [shift, wire_app, freeLeaves, ihf, iha, Nat.mul_add]
    omega

theorem freeLeaves_shift (t : Term) (d c k : Nat) (h : k ≤ c) :
    freeLeaves k (shift d c t) = freeLeaves k t := by
  induction t generalizing c k with
  | var n =>
    simp only [shift, freeLeaves]
    repeat' first | split | simp_all [freeLeaves] | omega
  | lam b ih =>
    simp only [shift, freeLeaves]
    exact ih (c + 1) (k + 1) (by omega)
  | app f a ihf iha => simp only [shift, freeLeaves, ihf c k h, iha c k h]

/-- Sum of the numbers of local lambdas above the occurrences of free
variable `j`. The variable index increments when traversing a lambda. -/
def occDepth (j : Nat) : Term → Nat
  | .var _ => 0
  | .lam b => occDepth (j + 1) b + occ (j + 1) b
  | .app f a => occDepth j f + occDepth j a

/-- Exact substitution accounting, balanced over natural numbers.
`freeLeaves (j+1) t` counts precisely the old outer references whose
indices decrement. `occDepth` charges the argument's movement under
local binders, net of the old substituted occurrence's own index bits. -/
theorem wire_subst (t s : Term) (j : Nat) :
    wire (substDec j s t) + (j + 2) * occ j t + occDepth j t +
        freeLeaves (j + 1) t =
      wire t + occ j t * wire s + freeLeaves 0 s * occDepth j t := by
  induction t generalizing s j with
  | var n =>
    by_cases hn : n = j
    · subst n
      have hh : ¬ j + 1 ≤ j := by omega
      simp [substDec, occ, occDepth, freeLeaves, hh, Nat.add_comm]
    · by_cases hj : j < n
      · have hh : j + 1 ≤ n := by omega
        simp only [substDec, if_neg hn, if_pos hj, occ, occDepth,
          freeLeaves, if_pos hh, wire_var, Nat.mul_zero, Nat.add_zero]
        omega
      · have hh : ¬ j + 1 ≤ n := by omega
        simp only [substDec, if_neg hn, if_neg hj, occ, occDepth,
          freeLeaves, if_neg hh, wire_var, Nat.mul_zero, Nat.zero_mul, Nat.add_zero]
  | lam b ih =>
    have hb := ih (shift 1 0 s) (j + 1)
    rw [wire_shift, freeLeaves_shift s 1 0 0 (by omega)] at hb
    simp only [substDec, wire_lam, occ, occDepth, freeLeaves]
    simp only [Nat.add_mul, Nat.mul_add, Nat.one_mul] at hb ⊢
    rw [Nat.mul_comm (occ (j + 1) b) (freeLeaves 0 s)] at hb
    omega
  | app f a ihf iha =>
    have hf := ihf s j
    have ha := iha s j
    simp only [substDec, wire_app, occ, occDepth, freeLeaves,
      Nat.add_mul, Nat.mul_add]
    simp only [Nat.add_mul] at hf ha
    omega

/-- Exact beta wire-length change over integers. The four terms charge
argument copying, index movement, deleted occurrences/redex, and outer
index decrements, respectively. -/
theorem wire_beta_delta (b a : Term) :
    (wire (contract b a) : Int) - wire (.app (.lam b) a) =
      ((occ 0 b : Int) - 1) * wire a +
      ((freeLeaves 0 a : Int) - 1) * occDepth 0 b -
      2 * occ 0 b - 4 - freeLeaves 1 b := by
  have h := wire_subst b a 0
  simp only [Nat.zero_add] at h
  simp only [contract, wire_app, wire_lam]
  have hz := congrArg (fun n : Nat => (n : Int)) h
  simp only [Int.natCast_add, Int.natCast_mul,
    Int.sub_mul, Int.one_mul] at hz ⊢
  omega

theorem occDepth_zero {t : Term} {j : Nat} (h : occ j t = 0) :
    occDepth j t = 0 := by
  induction t generalizing j with
  | var n => rfl
  | lam b ih =>
    simp only [occ] at h
    simp only [occDepth, h, ih h, Nat.add_zero]
  | app f a ihf iha =>
    simp only [occ] at h
    have hf : occ j f = 0 := by omega
    have ha : occ j a = 0 := by omega
    simp only [occDepth, ihf hf, iha ha, Nat.add_zero]

/-- A syntactically erasing beta redex always shortens its wire. -/
theorem erasing_beta_shrinks (b a : Term) (h : occ 0 b = 0) :
    wire (contract b a) < wire (.app (.lam b) a) := by
  have hw := wire_subst b a 0
  simp only [h, occDepth_zero h, Nat.mul_zero, Nat.add_zero] at hw
  simp only [contract, wire_app, wire_lam]
  omega

/-- A linear beta redex whose argument has at most one free occurrence
always shortens its wire, however deep the unique substituted occurrence. -/
theorem linear_small_free_beta_shrinks (b a : Term) (h : occ 0 b = 1)
    (hf : freeLeaves 0 a ≤ 1) :
    wire (contract b a) < wire (.app (.lam b) a) := by
  have hw := wire_subst b a 0
  have hd := Nat.mul_le_mul_right (occDepth 0 b) hf
  simp only [h, Nat.mul_one, Nat.one_mul] at hw hd
  simp only [contract, wire_app, wire_lam]
  omega

/-- In the linear case only index movement can offset the six bits
removed by the application, lambda, and substituted variable. -/
theorem linear_beta_delta (b a : Term) (h : occ 0 b = 1) :
    (wire (contract b a) : Int) - wire (.app (.lam b) a) =
      ((freeLeaves 0 a : Int) - 1) * occDepth 0 b -
        6 - freeLeaves 1 b := by
  have hw := wire_beta_delta b a
  simp only [h] at hw
  omega

private theorem shift_freeUnder (t : Term) (d c k : Nat)
    (h : FreeUnder k t) : FreeUnder (k + d) (shift d c t) := by
  induction t generalizing c k with
  | var n =>
    simp only [shift]
    split <;> simp only [FreeUnder] at h ⊢ <;> omega
  | lam b ih =>
    simp only [shift, FreeUnder] at h ⊢
    have hb := ih (c + 1) (k + 1) h
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hb
  | app f a ihf iha =>
    exact ⟨ihf c k h.1, iha c k h.2⟩

private theorem subst_freeUnder (t s : Term) (j k : Nat) (hjk : j ≤ k)
    (ht : FreeUnder (k + 1) t) (hs : FreeUnder k s) :
    FreeUnder k (substDec j s t) := by
  induction t generalizing s j k with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> simp only [FreeUnder] at ht ⊢ <;> omega
  | lam b ih =>
    simp only [substDec, FreeUnder] at ht ⊢
    exact ih (shift 1 0 s) (j + 1) (k + 1) (by omega) ht
      (shift_freeUnder s 1 0 k hs)
  | app f a ihf iha =>
    exact ⟨ihf s j k hjk ht.1 hs, iha s j k hjk ht.2 hs⟩

theorem beta_freeUnder {t u : Term} (h : Beta t u) (k : Nat)
    (ht : FreeUnder k t) : FreeUnder k u := by
  induction h generalizing k with
  | beta b a => exact subst_freeUnder b a 0 k (by omega) ht.1 ht.2
  | lam h ih => exact ih (k + 1) ht
  | appL a h ih => exact ⟨ih k ht.1, ht.2⟩
  | appR f h ih => exact ⟨ht.1, ih k ht.2⟩

/-- The full closed-source beta-join contract survives arbitrary beta
reduction of the interpreter's syntax, including under abstractions. -/
theorem selfInterpreter_beta {E E' : Term} (hE : IsSelfInterpreter E)
    (h : Beta E E') : IsSelfInterpreter E' := by
  refine ⟨beta_freeUnder h 0 hE.1, ?_⟩
  intro M hM
  obtain ⟨w, hw, ho⟩ := hE.2 M hM
  have hs : Betas
      (.app (.app E (.var 0)) (streamOf (blcCode M) (.var 1)))
      (.app (.app E' (.var 0)) (streamOf (blcCode M) (.var 1))) :=
    .head (.appL _ (.appL _ h)) (.refl _)
  obtain ⟨v, hv, hwv⟩ := betas_confluent hs hw
  exact ⟨v, hv, betas_trans ho hwv⟩

/-- Minimality is global among all closed self-interpreters, with no
parser or reduction-strategy hypothesis. -/
def MinimalInterpreter (E : Term) : Prop :=
  IsSelfInterpreter E ∧ ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'

/-- Every one-step reduct of a globally minimum interpreter costs at
least as many bits. Together with `wire_beta_delta`, this applies a
necessary cost inequality to every selected redex in every context. -/
theorem minimal_beta_nonshrinking {E E' : Term} (hm : MinimalInterpreter E)
    (h : Beta E E') : wire E ≤ wire E' :=
  hm.2 E' (selfInterpreter_beta hm.1 h)

/-- A syntactic one-hole context. Filling below a lambda uses the local
de Bruijn indices already belonging to that occurrence of the subterm. -/
inductive Context where
  | hole
  | lam (C : Context)
  | appL (C : Context) (a : Term)
  | appR (f : Term) (C : Context)

def Context.fill : Context → Term → Term
  | .hole, t => t
  | .lam C, t => .lam (C.fill t)
  | .appL C a, t => .app (C.fill t) a
  | .appR f C, t => .app f (C.fill t)

def Context.cost : Context → Nat
  | .hole => 0
  | .lam C => C.cost + 2
  | .appL C a => C.cost + wire a + 2
  | .appR f C => wire f + C.cost + 2

theorem wire_fill (C : Context) (t : Term) :
    wire (C.fill t) = wire t + C.cost := by
  induction C with
  | hole => simp [Context.fill, Context.cost]
  | lam C ih => simp only [Context.fill, Context.cost, wire_lam, ih]; omega
  | appL C a ih => simp only [Context.fill, Context.cost, wire_app, ih]; omega
  | appR f C ih => simp only [Context.fill, Context.cost, wire_app, ih]; omega

theorem beta_fill (C : Context) {t u : Term} (h : Beta t u) :
    Beta (C.fill t) (C.fill u) := by
  induction C with
  | hole => exact h
  | lam C ih => exact .lam ih
  | appL C a ih => exact .appL a ih
  | appR f C ih => exact .appR f ih

/-- A selected redex in any syntactic position of a minimum interpreter
must be nonshrinking. Outer context costs cancel exactly. -/
theorem minimal_redex_nonshrinking (C : Context) (b a : Term)
    (hm : MinimalInterpreter (C.fill (.app (.lam b) a))) :
    wire (.app (.lam b) a) ≤ wire (contract b a) := by
  have h := minimal_beta_nonshrinking hm (beta_fill C (.beta b a))
  simp only [wire_fill] at h
  omega

theorem minimal_no_erasing (C : Context) (b a : Term)
    (hm : MinimalInterpreter (C.fill (.app (.lam b) a))) : 0 < occ 0 b := by
  have hw := minimal_redex_nonshrinking C b a hm
  by_cases h : occ 0 b = 0
  · have hs := erasing_beta_shrinks b a h
    omega
  · omega

theorem minimal_linear_free_count (C : Context) (b a : Term)
    (hm : MinimalInterpreter (C.fill (.app (.lam b) a)))
    (h : occ 0 b = 1) : 2 ≤ freeLeaves 0 a := by
  have hw := minimal_redex_nonshrinking C b a hm
  by_cases hf : freeLeaves 0 a ≤ 1
  · have hs := linear_small_free_beta_shrinks b a h hf
    omega
  · omega

/-- Every linear redex remaining in a minimum interpreter must save at
least six bits plus the outer-reference decrements through index hoisting. -/
theorem minimal_linear_index_charge (C : Context) (b a : Term)
    (hm : MinimalInterpreter (C.fill (.app (.lam b) a)))
    (h : occ 0 b = 1) :
    (6 + freeLeaves 1 b : Int) ≤
      ((freeLeaves 0 a : Int) - 1) * occDepth 0 b := by
  have hw := minimal_redex_nonshrinking C b a hm
  have hd := linear_beta_delta b a h
  omega

end SelfintWireCost
end Blc
