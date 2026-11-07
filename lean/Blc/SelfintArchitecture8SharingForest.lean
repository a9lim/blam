/-
Arbitrarily many independent shared substitutions in NEXT.

The previous one-let theorem counted exactly one designated source let.
`Forest` allows any finite number at disjoint source positions, under
arbitrary applications, abstractions, and Boolean choices. Each designated
let has Plain body and argument projections; designated lets do not nest
inside one another. The final two projections must be normal.

With n designated lets, the source costs at least 92 + 6*n bits. Empty
forests also satisfy the original four-capture bound. Thus the entire
family clears the unrestricted NEXT price frontier.
The proof is structural; evaluation checks only four fixed target pairs.
Nested computational sharing is not covered.
-/
import Blc.SelfintWiden

namespace Blc.SelfintArchitecture8SharingForest
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintWiden.OneLet

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Any number of designated lets in disjoint source subtrees. The index
counts source lets, including ones erased by a Boolean choice. -/
inductive Forest : Nat → Nat → Term → Term → Term → Prop
  | plain {j t u v} : Plain j t u v → Forest 0 j t u v
  | letNode {j b b0 b1 a a0 a1} : Plain (j+1) b b0 b1 → Plain j a a0 a1 →
      Forest 1 j (.app (.lam b) a) (contract b0 a0) (contract b1 a1)
  | lam {n j b u v} : Forest n (j+1) b u v →
      Forest n j (.lam b) (.lam u) (.lam v)
  | app {n m j f f0 f1 a a0 a1} : Forest n j f f0 f1 → Forest m j a a0 a1 →
      Forest (n+m) j (.app f a) (.app f0 a0) (.app f1 a1)
  | select {n m j s s0 s1 t t0 t1} : Forest n j s s0 s1 → Forest m j t t0 t1 →
      Forest (n+m) j (.app (.app (.var j) s) t) s0 t1

theorem Forest.absent {n j : Nat} {t u v : Term} (h : Forest n j t u v) :
    occ j u = 0 ∧ occ j v = 0 := by
  induction h with
  | plain hp => exact hp.absent
  | letNode hb ha => exact (Once.letNode hb ha).absent
  | lam h ih => exact ih
  | app hf ha ihf iha => simp [occ, ihf.1, ihf.2, iha.1, iha.2]
  | select hs ht ihs iht => exact ⟨ihs.1, iht.2⟩

theorem Forest.semantic (first : Bool) {n j : Nat} {t u v : Term}
    (h : Forest n j t u v) :
    Betas (substDec j (tagValue first) t)
      (substDec j churchTrue (if first then u else v)) := by
  induction h with
  | plain hp => exact hp.semantic first
  | letNode hb ha => exact (Once.letNode hb ha).semantic first
  | lam h ih =>
      cases first <;>
        simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift,
          shift_churchTrue] using betas_lam ih
  | app hf ha ihf iha => cases first <;> exact betas_app ihf iha
  | select hs ht ihs iht =>
      rename_i n m j s s0 s1 t t0 t1
      have hh := select_beta first (substDec j (tagValue first) s)
        (substDec j (tagValue first) t)
      simp only [substDec, ↓reduceIte]
      cases first
      · exact betas_trans hh iht
      · exact betas_trans hh ihs

theorem Forest.zero_plain {n j : Nat} {t u v : Term}
    (h : Forest n j t u v) (hz : n = 0) : Plain j t u v := by
  induction h with
  | plain hp => exact hp
  | letNode => omega
  | lam h ih => exact .lam (ih hz)
  | app hf ha ihf iha => exact .app (ihf (by omega)) (iha (by omega))
  | select hs ht ihs iht => exact .select (ihs (by omega)) (iht (by omega))

/-- A source let costs at least eight bits before its context. -/
private theorem base_six (t : Term) : 6 ≤ singleBase t := by
  have hm : ∀ (xs : List Nat) (b : Nat), 6 ≤ b → (∀ x ∈ xs, 6 ≤ x) →
      6 ≤ minOver b xs := by
    intro xs
    induction xs with
    | nil => intro b hb _; exact hb
    | cons a as ih =>
        intro b hb hall
        exact Nat.le_min.mpr ⟨hall a (by simp), ih b hb (fun x hx => hall x (by simp [hx]))⟩
  apply hm
  · omega
  · intro x hx
    obtain ⟨⟨a,b⟩,_,rfl⟩ := List.mem_map.mp hx
    have ha := wire_two a
    have hb := wire_two b
    change 6 ≤ 4 + wire a + wire b
    omega

private theorem merge_two (j : Nat) (t u : Term) : 2 ≤ merge true j t u := by
  cases t <;> cases u <;>
    simp only [merge,choicePrice,tagCharge,SelfintClassNext.measure,if_true,nodeCharge]
  all_goals first
    | (split <;> simp only [Nat.le_min,wire_var] <;> omega)
    | ((try simp only [Nat.le_min]); omega)

private theorem root_six (j : Nat) (t u : Term) : 6 ≤ root j t u := by
  have hm : ∀ (xs : List Nat) (b : Nat), 6 ≤ b → (∀ x ∈ xs, 6 ≤ x) →
      6 ≤ minOver b xs := by
    intro xs
    induction xs with
    | nil => intro b hb _; exact hb
    | cons a as ih =>
        intro b hb hall
        exact Nat.le_min.mpr ⟨hall a (by simp), ih b hb (fun x hx => hall x (by simp [hx]))⟩
  unfold root
  apply hm
  · omega
  · intro x hx
    rcases List.mem_append.mp hx with hx | hx
    · rcases List.mem_append.mp hx with hx | hx
      · obtain ⟨⟨a,b⟩,_,rfl⟩ := List.mem_map.mp hx
        have ha := wire_two a
        change 6 ≤ 4 + wire a + merge true (j+1) b (shift 1 0 u)
        omega
      · obtain ⟨⟨a,b⟩,_,rfl⟩ := List.mem_map.mp hx
        have ha := wire_two a
        change 6 ≤ 4 + wire a + merge true (j+1) (shift 1 0 t) b
        omega
    · obtain ⟨⟨a,b⟩,_,hx⟩ := List.mem_flatMap.mp hx
      obtain ⟨⟨c,d⟩,_,rfl⟩ := List.mem_map.mp hx
      have ha := merge_two j a c
      change 6 ≤ 4 + merge true j a c + merge true (j+1) b d
      omega

/-- Inverse substitution price after charging six bits per source let. -/
def singleForest : Term → Nat
  | .var n => min (wire (.var n)) (singleBase (.var n)-6)
  | .lam b => min (singleBase (.lam b)-6) (2 + singleForest b)
  | .app f a => min (singleBase (.app f a)-6) (2 + singleForest f + singleForest a)

theorem singleForest_base (t : Term) : singleForest t ≤ singleBase t-6 := by
  cases t <;> simp only [singleForest]
  · exact Nat.min_le_right _ _
  · exact Nat.min_le_left _ _
  · exact Nat.min_le_left _ _

theorem singleForest_wire (t : Term) : singleForest t ≤ wire t := by
  induction t with
  | var n => exact Nat.min_le_left _ _
  | lam b ih =>
      exact Nat.le_trans (Nat.min_le_right _ _) (by simp only [wire_lam]; omega)
  | app f a ihf iha =>
      exact Nat.le_trans (Nat.min_le_right _ _) (by simp only [wire_app]; omega)

private theorem base_let (b a : Term) :
    singleBase (contract b a) ≤ 4 + wire a + wire b := by
  by_cases hz : occ 0 b = 0
  · have he := shift_subst_absent b 0 a hz
    change shift 1 0 (contract b a) = b at he
    have hw := wire_shift (contract b a) 1 0
    change wire (shift 1 0 (contract b a)) = _ at hw
    rw [he] at hw
    have hb := minOver_base (wire (contract b a)+6)
      ((cuts (contract b a)).map (fun ab => 4 + wire ab.1 + wire ab.2))
    have ha := wire_two a
    change singleBase (contract b a) ≤ _ at hb
    omega
  · exact minOver_mem
      (List.mem_map.mpr ⟨(a,b),cuts_complete b a (by omega),rfl⟩)

private theorem singleForest_let (b a : Term) :
    6 + singleForest (contract b a) ≤ 4 + wire a + wire b := by
  have h := singleForest_base (contract b a)
  have hl := base_six (contract b a)
  have hp := base_let b a
  omega

/-- This elementary charge also accounts for lets in an erased branch. -/
theorem Forest.source_charge {n j : Nat} {t u v : Term} (h : Forest n j t u v) :
    6*n+2 ≤ wire t := by
  induction h with
  | plain hp => simpa only [Nat.mul_zero,Nat.zero_add] using wire_two _
  | @letNode j b b0 b1 a a0 a1 hb ha =>
      have hb := wire_two b
      have ha := wire_two a
      simp only [wire_app,wire_lam]
      omega
  | lam h ih => simp only [wire_lam]; omega
  | app hf ha ihf iha => simp only [wire_app]; omega
  | select hs ht ihs iht => simp only [wire_app,wire_var]; omega

theorem Forest.single {n j : Nat} {t u v : Term} (h : Forest n j t u v) :
    6*n+singleForest u ≤ wire t ∧ 6*n+singleForest v ≤ wire t := by
  induction h with
  | plain hp =>
      simpa only [Nat.mul_zero,Nat.zero_add,SelfintClassNext.measure,if_true] using
        And.intro (Nat.le_trans (singleForest_wire _) (hp.single true).1)
          (Nat.le_trans (singleForest_wire _) (hp.single true).2)
  | @letNode j b b0 b1 a a0 a1 hb ha =>
      have h0 := singleForest_let b0 a0
      have h1 := singleForest_let b1 a1
      have hb0 := (hb.single true).1
      have hb1 := (hb.single true).2
      have ha0 := (ha.single true).1
      have ha1 := (ha.single true).2
      simp only [SelfintClassNext.measure,if_true] at hb0 hb1 ha0 ha1
      simp only [wire_app,wire_lam]
      constructor <;> omega
  | @lam n j b u v h ih =>
      have h2 : singleForest (.lam u) ≤ 2+singleForest u := Nat.min_le_right _ _
      have h3 : singleForest (.lam v) ≤ 2+singleForest v := Nat.min_le_right _ _
      simp only [wire_lam]
      constructor <;> omega
  | @app n m j f f0 f1 a a0 a1 hf ha ihf iha =>
      have h0 : singleForest (.app f0 a0) ≤ 2+singleForest f0+singleForest a0 := Nat.min_le_right _ _
      have h1 : singleForest (.app f1 a1) ≤ 2+singleForest f1+singleForest a1 := Nat.min_le_right _ _
      simp only [wire_app]
      constructor <;> omega
  | select hs ht ihs iht =>
      have hs' := hs.source_charge
      have ht' := ht.source_charge
      simp only [wire_app,wire_var]
      constructor <;> omega

def forestBase (j : Nat) (t u : Term) : Nat :=
  min (root j t u-6) (j+6+singleForest t+singleForest u)

def mergeForest (j : Nat) : Term → Term → Nat
  | .var n, .var m => if n=m then
      min (forestBase j (.var n) (.var m)) (wire (.var n))
      else forestBase j (.var n) (.var m)
  | .lam b, .lam c => min (forestBase j (.lam b) (.lam c))
      (2+mergeForest (j+1) b c)
  | .app f a, .app g b => min (forestBase j (.app f a) (.app g b))
      (2+mergeForest j f g+mergeForest j a b)
  | t,u => forestBase j t u

theorem mergeForest_base (j : Nat) (t u : Term) :
    mergeForest j t u ≤ forestBase j t u := by
  cases t <;> cases u <;> simp only [mergeForest]
  all_goals try first | exact Nat.le_refl _ | exact Nat.min_le_left _ _
  split <;> first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem mergeForest_choice (j : Nat) (t u : Term) :
    mergeForest j t u ≤ j+6+singleForest t+singleForest u :=
  Nat.le_trans (mergeForest_base _ _ _) (Nat.min_le_right _ _)

private theorem plain_forest {j : Nat} {t u v : Term} (h : Plain j t u v) :
    mergeForest j u v ≤ wire t := by
  induction h with
  | var => simp only [mergeForest,if_true]; exact Nat.min_le_right _ _
  | lam h ih =>
      simp only [mergeForest,wire_lam]
      exact Nat.le_trans (Nat.min_le_right _ _) (by omega)
  | app hf ha ihf iha =>
      simp only [mergeForest,wire_app]
      exact Nat.le_trans (Nat.min_le_right _ _) (by omega)
  | select hs ht ihs iht =>
      have h0 := Nat.le_trans (singleForest_wire _) (hs.single true).1
      have h1 := Nat.le_trans (singleForest_wire _) (ht.single true).2
      simp only [SelfintClassNext.measure,if_true] at h0 h1
      exact Nat.le_trans (mergeForest_choice _ _ _) (by simp only [wire_app,wire_var]; omega)

theorem Forest.merged {n j : Nat} {t u v : Term} (h : Forest n j t u v) :
    6*n+mergeForest j u v ≤ wire t := by
  induction h with
  | plain hp => simpa only [Nat.mul_zero,Nat.zero_add] using plain_forest hp
  | @letNode j b b0 b1 a a0 a1 hb ha =>
      have hm := Nat.le_trans (mergeForest_base j (contract b0 a0) (contract b1 a1))
        (Nat.min_le_left _ _)
      have hs := root_six j (contract b0 a0) (contract b1 a1)
      have hr := root_lower hb ha
      omega
  | @lam n j b u v h ih =>
      have hh : mergeForest j (.lam u) (.lam v) ≤ 2+mergeForest (j+1) u v := Nat.min_le_right _ _
      simp only [wire_lam]
      omega
  | @app n m j f f0 f1 a a0 a1 hf ha ihf iha =>
      have hh : mergeForest j (.app f0 a0) (.app f1 a1) ≤
        2+mergeForest j f0 f1+mergeForest j a0 a1 := Nat.min_le_right _ _
      simp only [wire_app]
      omega
  | select hs ht ihs iht =>
      have h0 := hs.single.1
      have h1 := ht.single.2
      rename_i n m j s s0 s1 t t0 t1
      have hm := mergeForest_choice j s0 t1
      simp only [wire_app,wire_var]
      omega

/-- Only these four fixed pairs are evaluated; source coverage is the
unbounded structural theorem `Forest.merged`. -/
theorem mergeForest_targets (e0 e1 : Bool) :
    90 ≤ mergeForest 0 (shift 1 0 (etaChoice e0 nextZero))
      (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

/-- Each independent source let adds at least six bits over the canonical
NEXT. The count includes lets hidden in discarded tag branches. -/
theorem forest_next_bits {n : Nat} {b u v : Term}
    (h : RigidNext (.lam b)) (hp : Forest n 0 b u v)
    (hu : NFt u) (hv : NFt v) : 92+6*n ≤ wire (.lam b) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp.absent.1
    (.head (.beta b (tagValue true)) (hp.semantic true))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp.absent.2
    (.head (.beta b (tagValue false)) (hp.semantic false))
  have hm := mergeForest_targets e0 e1
  have hb := hp.merged
  rw [h0,h1] at hb
  simp only [nextTarget,Bool.false_eq_true,if_true,if_false] at hb
  simp only [wire_lam]
  omega

theorem nonempty_forest_next_bits {n : Nat} {b u v : Term}
    (h : RigidNext (.lam b)) (hp : Forest n 0 b u v) (hn : 0 < n)
    (hu : NFt u) (hv : NFt v) : 98 ≤ wire (.lam b) := by
  have hh := forest_next_bits h hp hu hv
  omega

/-- Empty and nonempty forests both clear the unrestricted price frontier. -/
theorem forest_next_frontier {n : Nat} {b u v : Term}
    (h : RigidNext (.lam b)) (hp : Forest n 0 b u v)
    (hu : NFt u) (hv : NFt v) : FrontierPrice (.lam b) := by
  by_cases hz : n=0
  · have hh := plain_next_price h (hp.zero_plain hz) hu hv
    exact ⟨hh.bits, by have := hh.captures; have := hh.bits; omega⟩
  · exact large_rigid_next_frontier h (nonempty_forest_next_bits h hp (by omega) hu hv)

/-- A minimum at capture tax s can afford at most s/3 independent lets.
In particular the unweighted minimum has none, and the tax-three minimum
has at most one. This uses canonical NEXT as an explicit price witness. -/
theorem minimum_forest_count {s n : Nat} {b u v : Term}
    (hm : MinimumRigidNext s (.lam b)) (hp : Forest n 0 b u v)
    (hu : NFt u) (hv : NFt v) : 3*n ≤ s := by
  have hq := forest_next_bits hm.laws hp hu hv
  have hf := rigidNext_two_captures hm.laws
  have hmin := hm.price canonicalNext (rigid_of_next canonicalNext_is_Next)
  have hc : wire canonicalNext = 92 ∧ freeLeaves 0 canonicalNext = 4 := by decide
  have ht := Nat.mul_le_mul_left s hf
  simp only [sourcePrice,hc.1,hc.2] at hmin
  omega

theorem minimum_unweighted_forest_plain {n : Nat} {b u v : Term}
    (hm : MinimumRigidNext 0 (.lam b)) (hp : Forest n 0 b u v)
    (hu : NFt u) (hv : NFt v) : n=0 ∧ Plain 0 b u v := by
  have hn := minimum_forest_count hm hp hu hv
  have hz : n=0 := by omega
  exact ⟨hz,hp.zero_plain hz⟩

#print axioms forest_next_bits
#print axioms forest_next_frontier
#print axioms minimum_forest_count
end Blc.SelfintArchitecture8SharingForest
