import Blc.SelfintClass

namespace Blc.Lean146
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
set_option maxRecDepth 5000
set_option maxHeartbeats 1000000

/-- Local presentation of the weighted hole price. -/
def weightAt (d : Nat) : Term → Nat
  | .var n => if n = d + 1 then 4 * d else n + 2
  | .lam b => 2 + weightAt (d + 1) b
  | .app f a => 2 + weightAt d f + weightAt d a

theorem weightAt_eq (t : Term) (d : Nat) :
    weightAt d t = holeCost (d+1) t + 4 * occDepth (d+1) t +
      4 * d * occ (d+1) t := by
  induction t generalizing d with
  | var n => simp only [weightAt, holeCost, occDepth, occ]; split <;> simp_all
  | lam b ih =>
    simp only [weightAt, holeCost, occDepth, occ, ih, Nat.mul_add, Nat.add_mul]
    omega
  | app f a ihf iha =>
    simp only [weightAt, holeCost, occDepth, occ, ihf, iha, Nat.mul_add]
    omega

abbrev weight (t : Term) := cost t + 4 * depth t

theorem weightAt_zero (t : Term) : weightAt 0 t = weight t := by
  simpa only [Nat.zero_add, Nat.mul_zero, Nat.zero_mul, Nat.add_zero] using weightAt_eq t 0

/-- Deleting an unused local binder can only decrease the weighted price.
    The argument is arbitrary because it is never substituted. -/
theorem absent_subst_weight (t s : Term) (d k : Nat)
    (hkd : k ≤ d) (h : occ k t = 0) :
    weightAt d (substDec k s t) ≤ weightAt (d+1) t := by
  induction t generalizing s d k with
  | var n =>
    have hne : n ≠ k := by intro he; subst n; simp [occ] at h
    simp only [substDec, if_neg hne]
    by_cases hn : k < n
    · simp only [if_pos hn, weightAt]
      split <;> split <;> omega
    · simp only [if_neg hn, weightAt]
      split <;> split <;> omega
  | lam b ih =>
    exact Nat.add_le_add_left (ih (shift 1 0 s) (d+1) (k+1) (by omega) h) 2
  | app f a ihf iha =>
    have hf : occ k f = 0 := by simp only [occ] at h; omega
    have ha : occ k a = 0 := by simp only [occ] at h; omega
    have h1 := ihf s d k hkd hf
    have h2 := iha s d k hkd ha
    simp only [substDec, weightAt]; omega

/-- Exactly one syntactically erasing beta contraction, at any source position. -/
inductive Erase : Term → Term → Prop where
  | root (b a : Term) : occ 0 b = 0 → Erase (.app (.lam b) a) (contract b a)
  | lam {b b' : Term} : Erase b b' → Erase (.lam b) (.lam b')
  | appL {f f' : Term} (a : Term) : Erase f f' → Erase (.app f a) (.app f' a)
  | appR {a a' : Term} (f : Term) : Erase a a' → Erase (.app f a) (.app f a')

theorem Erase.beta {t u : Term} (h : Erase t u) : Beta t u := by
  induction h with
  | root b a _ => exact .beta b a
  | lam _ ih => exact .lam ih
  | appL a _ ih => exact .appL a ih
  | appR f _ ih => exact .appR f ih

theorem Erase.occ_le {t u : Term} (h : Erase t u) (j : Nat) : occ j u ≤ occ j t := by
  induction h generalizing j with
  | root b a hz =>
    rw [contract, occ_substDec_ge b a j 0 (by omega)]
    simp [occ, hz]
  | lam _ ih => exact ih (j+1)
  | appL a _ ih => exact Nat.add_le_add_right (ih j) _
  | appR f _ ih => exact Nat.add_le_add_left (ih j) _

theorem Erase.weightAt_lt {t u : Term} (h : Erase t u) (d : Nat) :
    weightAt d u < weightAt d t := by
  induction h generalizing d with
  | root b a hz =>
    have hh := absent_subst_weight b a d 0 (by omega) hz
    simp only [contract, weightAt]; omega
  | lam _ ih => have := ih (d+1); simp only [weightAt]; omega
  | appL a _ ih => have := ih d; simp only [weightAt]; omega
  | appR f _ ih => have := ih d; simp only [weightAt]; omega

theorem Erase.weight_lt {t u : Term} (h : Erase t u) : weight u < weight t := by
  simpa only [weightAt_zero] using h.weightAt_lt 0

/-- An erasing reduct remains a reader with exactly one source hole. -/
theorem Erase.reader_single_hole {t u : Term} (h : Erase t u)
    (hr : Reader t) (hj : occ 1 t = 1) : Reader u ∧ occ 1 u = 1 := by
  have hu := hr.beta h.beta
  have hlo := reader_j hu
  have hhi := h.occ_le 1
  exact ⟨hu, by omega⟩

/-- Weight first, then lambda count. The second component handles zero-delta
    linear contractions without assuming all affine beta steps shrink. -/
structure Minimum (R : Term) : Prop where
  reader : Reader R
  hole : occ 1 R = 1
  minWeight : ∀ U, Reader U → occ 1 U = 1 → weight R ≤ weight U
  minLambdas : ∀ U, Reader U → occ 1 U = 1 → weight U = weight R →
    lamCount R ≤ lamCount U

theorem nat_minimum (P : Nat → Prop) {n : Nat} (hn : P n) :
    ∃ m, P m ∧ ∀ k, P k → m ≤ k := by
  classical
  induction n using Nat.strongRecOn with
  | ind n ih =>
    by_cases h : ∃ k, k < n ∧ P k
    · obtain ⟨k, hk, hp⟩ := h
      exact ih k hk hp
    · exact ⟨n, hn, fun k hp => by
        by_cases hle : n ≤ k
        · exact hle
        · exact (h ⟨k, by omega, hp⟩).elim⟩

theorem exists_minimum (R : Term) (hr : Reader R) (hj : occ 1 R = 1) :
    ∃ M, Minimum M ∧ weight M ≤ weight R := by
  obtain ⟨w, ⟨U, hu, hjU, hwU⟩, hw⟩ := nat_minimum
    (fun w => ∃ U, Reader U ∧ occ 1 U = 1 ∧ weight U = w) ⟨R, hr, hj, rfl⟩
  obtain ⟨l, ⟨M, hm, hjM, hwM, hlM⟩, hl⟩ := nat_minimum
    (fun l => ∃ M, Reader M ∧ occ 1 M = 1 ∧ weight M = w ∧ lamCount M = l)
    ⟨U, hu, hjU, hwU, rfl⟩
  refine ⟨M, ⟨hm, hjM, ?_, ?_⟩, ?_⟩
  · intro V hv hjV
    rw [hwM]
    exact hw _ ⟨V, hv, hjV, rfl⟩
  · intro V hv hjV hwV
    rw [hlM]
    exact hl _ ⟨V, hv, hjV, hwV.trans hwM, rfl⟩
  · rw [hwM]
    exact hw _ ⟨R, hr, hj, rfl⟩

/-- No erasing redex anywhere, including inside arguments and lambdas. -/
theorem Minimum.no_erasing {R : Term} (hm : Minimum R) : ∀ U, ¬ Erase R U := by
  intro U he
  obtain ⟨hu, hj⟩ := he.reader_single_hole hm.reader hm.hole
  have hlo := hm.minWeight U hu hj
  have hhi := he.weight_lt
  omega

theorem counterexample_minimum {bound : Nat} {R : Term}
    (hr : Reader R) (hj : occ 1 R = 1) (hb : weight R < bound) :
    ∃ M, Minimum M ∧ weight M < bound ∧ ∀ U, ¬ Erase M U := by
  obtain ⟨M, hm, hw⟩ := exists_minimum R hr hj
  exact ⟨M, hm, by omega, hm.no_erasing⟩

#print axioms absent_subst_weight
#print axioms Erase.reader_single_hole
#print axioms Minimum.no_erasing
#print axioms counterexample_minimum
end Blc.Lean146
