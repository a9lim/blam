import Blc.SelfintReader30

namespace Blc.BN46
set_option linter.unusedSimpArgs false
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintWireCost
  SelfintFloor SelfintReader30 SelfintReader30Live SelfintReader30Accounting

set_option maxHeartbeats 2000000
set_option maxRecDepth 4000

/-- The extra probe is essential: Reader itself only states Z and U1. -/
def U2 : Term := pairT churchFalse S
def out2 : Term := .app (.app (.var 0) S) (.var 2)
structure Reader012 (R : Term) : Prop extends Reader R where
  two : BetaJoin (.app R U2) out2

/-- Positive control: the stronger interface still accepts the canonical
reader at its exact sharp price. -/
theorem reader162_three : Reader012 reader162 := by
  refine ⟨reader162_laws, ⟨out2, ?_, .refl _⟩⟩
  exact normalSteps_sound (by decide +kernel : normalSteps 22 (.app reader162 U2) = some out2)

theorem reader162_sharp : NormalForm reader162 ∧ occ 1 reader162 = 1 ∧
    weight reader162 = 46 := by
  exact ⟨nft_normal (by decide), by decide, by decide⟩

/-- Zero alone forces the source's single outer lambda. -/
theorem zero_root_lambda {R : Term} (hs : FreeUnder 2 R)
    (hn : NormalForm R) (hz : BetaJoin (.app R Z) zeroOut) :
    ∃ B, R = .lam B := by
  rcases normal_lam_or_head (normal_nft hn) with hl | ⟨n, hh⟩
  · cases R with
    | lam B => exact ⟨B, rfl⟩
    | var n => exact hl.elim
    | app f a => exact hl.elim
  · have hn2 := hh.scope hs
    have hhout := (Head.app Z hh).betas (join_normal hz zeroOut_normal)
    have hn3 : n = 3 := by cases hhout with | app _ hv => exact Head.var_index hv
    omega

/-- Zero alone forces the body to be headed by its bound stream. -/
theorem zero_body_head {B : Term} (hs : FreeUnder 3 B)
    (hn : NFt B) (hz : BetaJoin (.app (.lam B) Z) zeroOut) : Head 0 B := by
  have hr : Betas (contract B Z) zeroOut :=
    betas_preserve_nf (.head (.beta B Z) (.refl _))
      (join_normal hz zeroOut_normal) zeroOut_normal
  rcases normal_lam_or_head hn with hl | ⟨n, hh⟩
  · cases B with
    | var n => exact hl.elim
    | app f a => exact hl.elim
    | lam b => exact (lam_betas_isLam hr trivial).elim
  · by_cases he : n = 0
    · exact he ▸ hh
    · have hn3 := hh.scope hs
      have hhout := (hh.contract_nonzero (by omega) Z).betas hr
      have hn4 : n - 1 = 3 := by cases hhout with | app _ hv => exact Head.var_index hv
      omega

theorem Head.as_spine {n : Nat} {t : Term} (h : Head n t) :
    ∃ as, t = spine (.var n) as := by
  induction h with
  | var => exact ⟨[], rfl⟩
  | app a h ih =>
    obtain ⟨as, rfl⟩ := ih
    exact ⟨as ++ [a], (spine_append_one _ as a).symm⟩

/-- No minimality, price, or unary law is required. -/
theorem zero_shape {R : Term} (hs : FreeUnder 2 R)
    (hn : NormalForm R) (hz : BetaJoin (.app R Z) zeroOut) :
    ∃ as : List Term, as ≠ [] ∧ R = .lam (spine (.var 0) as) := by
  obtain ⟨B, rfl⟩ := zero_root_lambda hs hn hz
  have hnB : NFt B := (normal_nft (t := .lam B) hn : NFt (.lam B))
  obtain ⟨as, rfl⟩ := Blc.BN46.Head.as_spine (zero_body_head hs hnB hz)
  refine ⟨as, ?_, rfl⟩
  intro he
  subst as
  have hr : Betas Z zeroOut :=
    betas_preserve_nf (.head (.beta (.var 0) Z) (.refl _))
      (join_normal hz zeroOut_normal) zeroOut_normal
  exact (lam_betas_isLam hr (by trivial)).elim

/-- Symbolic trace replay. A hole is represented by an external free slot;
its binder arguments must be passed explicitly by the exporter. -/
theorem orphan_replay {t u : Term} (h : Betas t u) (q : Nat)
    (hq : occ q u = 0) (a b : Term) :
    Betas (substDec q a t) (substDec q b u) := by
  rw [← SelfintProjections.subst_absent u q a b hq]
  exact SelfintControl.betas_subst h q a

/-- An orphan can be changed after a certified symbolic prefix, regardless
of what happens later. This is a reduction proof, not a machine heuristic. -/
theorem orphan_preserves_join {t u n : Term} (h : Betas t u) (q : Nat)
    (hq : occ q u = 0) (a b : Term)
    (ha : BetaJoin (substDec q a t) n) :
    BetaJoin (substDec q b t) n := by
  have hbu := orphan_replay h q hq b a
  have hau := SelfintControl.betas_subst h q a
  exact SelfintControl.join_trans (SelfintControl.join_of_betas hbu)
    (SelfintControl.join_trans (SelfintControl.join_symm
      (SelfintControl.join_of_betas hau)) ha)

/-- If all occurrences of an output name were supplied by an erased hole,
that output is impossible. Absence is checked after filling the residual
with the cheap filler, so this covers arbitrary captured environments. -/
theorem orphan_cannot_supply {t u n : Term} (h : Betas t u) (q i : Nat)
    (hq : occ q u = 0) (a filler : Term)
    (ha : BetaJoin (substDec q a t) n) (hn : NormalForm n)
    (habs : occ i (substDec q filler u) = 0) (hneed : 0 < occ i n) : False := by
  have hjoin := orphan_preserves_join h q hq a filler ha
  have hred := join_normal hjoin hn
  have hp := orphan_replay h q hq filler filler
  have htail := betas_preserve_nf hp hred hn
  have hz := SelfintKnot.occ_betas_zero htail i habs
  omega

/-- A demanded fresh name forces the source-hole marker to survive in
any symbolic prefix. This is the operational needed-occurrence statement
for a proof-producing symbolic reducer. -/
theorem needed_occurrence {t u n : Term} (h : Betas t u) (q i : Nat)
    (hi : i < q) (hsrc : occ i t = 0) (a : Term)
    (ha : BetaJoin (substDec q a t) n) (hn : NormalForm n)
    (hneed : 0 < occ i n) : 0 < occ q u := by
  by_cases hq : occ q u = 0
  · have hu := SelfintKnot.occ_betas_zero h i hsrc
    exfalso
    apply orphan_cannot_supply h q i hq a (.var 0) ha hn ?_ hneed
    rw [occ_substDec_lt u (.var 0) i q hi, hu, hq]
    simp
  · omega

/-- Concrete needed-name obligations supplied by the two existing laws. -/
theorem joint_needed_names {R : Term} (hr : Reader R) :
    0 < occ 1 R ∧ 0 < occ 0 R := ⟨reader_j hr, reader_c hr⟩

/-- Strong additive version of the per-hole lower bound. It counts every
c and j leaf, so it also covers a single hole containing both names. -/
theorem hole_charge (t : Term) (d : Nat) (hd : 1 ≤ d) :
    2 + 4 * d * occ (d + 1) t + 4 * occDepth (d + 1) t + d * occ d t ≤
      weightAt d t + 2 * occ (d + 1) t := by
  induction t generalizing d with
  | var n =>
    by_cases hj : n = d + 1
    · subst n
      simp [weightAt, occ, occDepth]
      omega
    · by_cases hc : n = d
      · subst n
        simp [weightAt, occ, occDepth]
        omega
      · simp only [weightAt, occ, occDepth, if_neg hj, if_neg hc]
        omega
  | lam b ih =>
    have hb := ih (d + 1) (by omega)
    simp only [weightAt, occ, occDepth, Nat.mul_add, Nat.add_mul] at hb ⊢
    omega
  | app f a ihf iha =>
    have hf := ihf d hd
    have ha := iha d hd
    simp only [weightAt, occ, occDepth, Nat.mul_add] at *
    omega

/-- Two bits is a valid filler price below the source stream lambda. -/
theorem two_le_weightAt (t : Term) (d : Nat) (hd : 1 ≤ d) :
    2 ≤ weightAt d t := by
  induction t generalizing d with
  | var n => simp only [weightAt]; split <;> omega
  | lam b ih => simp only [weightAt]; omega
  | app f a ihf iha => simp only [weightAt]; omega

def forestWeight : List (Nat × Term) → Nat
  | [] => 0
  | (d,t)::xs => weightAt d t + forestWeight xs
def forestJ : List (Nat × Term) → Nat
  | [] => 0
  | (d,t)::xs => occ (d+1) t + forestJ xs
def forestC : List (Nat × Term) → Nat
  | [] => 0
  | (d,t)::xs => occ d t + forestC xs
def forestJD : List (Nat × Term) → Nat
  | [] => 0
  | (d,t)::xs => d * occ (d+1) t + occDepth (d+1) t + forestJD xs

theorem forest_charge (xs : List (Nat × Term)) (m : Nat)
    (hm : ∀ x ∈ xs, 1 ≤ x.1 ∧ m ≤ x.1) :
    2 * xs.length + 4 * forestJD xs + m * forestC xs ≤
      forestWeight xs + 2 * forestJ xs := by
  induction xs with
  | nil => simp [forestJD, forestC, forestWeight, forestJ]
  | cons x xs ih =>
    rcases x with ⟨d,t⟩
    have hd := hm (d,t) (by simp)
    have ht := hole_charge t d hd.1
    have hc := Nat.mul_le_mul_right (occ d t) hd.2
    have hr := ih (fun x hx => hm x (by simp [hx]))
    simp only [forestJD, forestC, forestWeight, forestJ, List.length_cons,
      Nat.mul_add, Nat.mul_assoc] at *
    omega

theorem forest_depth (xs : List (Nat × Term)) (m : Nat)
    (hm : ∀ x ∈ xs, m ≤ x.1) : m * forestJ xs ≤ forestJD xs := by
  induction xs with
  | nil => simp [forestJ, forestJD]
  | cons x xs ih =>
    rcases x with ⟨d,t⟩
    have hd := Nat.mul_le_mul_right (occ (d+1) t) (hm (d,t) (by simp))
    have hr := ih (fun x hx => hm x (by simp [hx]))
    simp only [Prod.fst] at hd
    simp only [forestJ, forestJD, Nat.mul_add]
    omega

/-- The Python LB, on the tabled domain below the stream lambda. The
one-source condition gives exactly one future j when not yet placed and
zero otherwise. c is demanded only if no source c has yet been placed. -/
theorem lower_bound_admissible (xs : List (Nat × Term))
    (refined m jlo : Nat) (ju cu : Bool) (hm0 : 1 ≤ m)
    (hm : ∀ x ∈ xs, m ≤ x.1)
    (hj : forestJ xs = if ju then 0 else 1)
    (hd : ju = false → jlo ≤ forestJD xs)
    (hc : cu = false → 1 ≤ forestC xs) :
    refined + 2 * xs.length + (if ju then 0 else 4 * max m jlo - 2) +
      (if cu then 0 else m) ≤ refined + forestWeight xs := by
  have hh := forest_charge xs m (fun x hx => ⟨by have := hm x hx; omega, hm x hx⟩)
  have hdm := forest_depth xs m hm
  have hjd : ju = false → max m jlo ≤ forestJD xs := by
    intro he
    subst ju
    simp only [Bool.false_eq_true, ↓reduceIte] at hj
    rw [hj, Nat.mul_one] at hdm
    exact Nat.max_le.mpr ⟨hdm, hd rfl⟩
  have hc1 : (if cu then 0 else m) ≤ m * forestC xs := by
    cases cu
    · simpa only [Bool.false_eq_true, ↓reduceIte, Nat.mul_one] using
        Nat.mul_le_mul_left m (hc rfl)
    · simp
  cases ju <;> cases cu <;> simp_all only [Bool.false_eq_true, ↓reduceIte,
    Bool.true_eq_false, false_implies, forall_const, Nat.mul_zero, Nat.mul_one]
  all_goals omega

/-- Replace source subtrees by the nearest bound variable. The occurrence
premise is supplied by needed occurrence plus the unique source j. -/
inductive FillOrphans : Nat → Term → Term → Prop where
  | keep (d : Nat) (t : Term) : FillOrphans d t t
  | filler {d : Nat} (t : Term) : 1 ≤ d → occ (d+1) t = 0 →
      FillOrphans d t (.var 0)
  | lam {d : Nat} {t u : Term} : FillOrphans (d+1) t u →
      FillOrphans d (.lam t) (.lam u)
  | app {d : Nat} {f g a b : Term} : FillOrphans d f g → FillOrphans d a b →
      FillOrphans d (.app f a) (.app g b)

theorem FillOrphans.price {d : Nat} {t u : Term} (h : FillOrphans d t u) :
    weightAt d u ≤ weightAt d t := by
  induction h with
  | keep => exact Nat.le_refl _
  | filler t hd hj =>
    have ht := two_le_weightAt t _ hd
    simp only [weightAt, show ¬0 = _ + 1 by omega, ↓reduceIte]
    exact ht
  | lam h ih => simp only [weightAt]; omega
  | app hf ha ihf iha => simp only [weightAt]; omega

theorem FillOrphans.holes {d : Nat} {t u : Term} (h : FillOrphans d t u) :
    occ (d+1) u = occ (d+1) t := by
  induction h with
  | keep => rfl
  | filler t hd hj => simp [occ, hj]
  | lam h ih => exact ih
  | app hf ha ihf iha => simp only [occ, ihf, iha]

theorem FillOrphans.depth {d : Nat} {t u : Term} (h : FillOrphans d t u) :
    occDepth (d+1) u = occDepth (d+1) t := by
  induction h with
  | keep => rfl
  | filler t hd hj => simp only [occDepth, occDepth_zero hj]
  | lam h ih => simp only [occDepth, ih, h.holes]
  | app hf ha ihf iha => simp only [occDepth, ihf, iha]

theorem FillOrphans.nonlam {d : Nat} {t u : Term} (h : FillOrphans d t u)
    (hn : ¬IsLam t) : ¬IsLam u := by
  cases h with
  | keep => exact hn
  | filler => exact fun h => h
  | lam => exact (hn trivial).elim
  | app => exact fun h => h

theorem FillOrphans.normal {d : Nat} {t u : Term} (h : FillOrphans d t u)
    (hn : NFt t) : NFt u := by
  induction h with
  | keep => exact hn
  | filler => trivial
  | lam h ih => exact ih hn
  | app hf ha ihf iha => exact ⟨hf.nonlam hn.1, ihf hn.2.1, iha hn.2.2⟩

theorem spine_price (t : Term) (as : List Term) :
    weightAt 1 (spine t as) = weightAt 1 t + 2 * as.length +
      forestWeight (as.map (fun a => (1,a))) := by
  induction as generalizing t with
  | nil => simp [spine, forestWeight]
  | cons a as ih => simp only [spine, ih, weightAt, List.length_cons,
      List.map_cons, forestWeight]; omega

theorem forest_names (as : List Term) :
    forestJ (as.map (fun a => (1,a))) = spineOcc 2 as ∧
    forestC (as.map (fun a => (1,a))) = spineOcc 1 as := by
  induction as with
  | nil => simp [forestJ, forestC, spineOcc]
  | cons a as ih => simp [forestJ, forestC, spineOcc, ih.1, ih.2]

/-- This arity ceiling is useful before producing certificates: only
arities 1 through 9 can occur below weight 46. Arbitrary operands allowed. -/
theorem arity_price (as : List Term) (hr : Reader (.lam (spine (.var 0) as)))
    (hj : occ 1 (.lam (spine (.var 0) as)) = 1) :
    4 * as.length + 7 ≤ weight (.lam (spine (.var 0) as)) := by
  let xs := as.map (fun a => (1,a))
  have hxs : ∀ x ∈ xs, 1 ≤ x.1 := by
    intro x hx
    obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hx
    exact Nat.le_refl _
  have hj1 : forestJ xs = 1 := by
    rw [(forest_names as).1]
    simpa only [occ, spine_occ, Nat.reduceAdd, Nat.reduceEqDiff, ↓reduceIte,
      Nat.zero_add] using hj
  have hc1 : 1 ≤ forestC xs := by
    rw [(forest_names as).2]
    simpa only [occ, spine_occ, Nat.reduceAdd, Nat.reduceEqDiff, ↓reduceIte,
      Nat.zero_add] using reader_c hr
  have hh := forest_charge xs 1 (fun x hx => ⟨hxs x hx, hxs x hx⟩)
  have hd := forest_depth xs 1 hxs
  have hp := spine_price (.var 0) as
  have he : weight (.lam (spine (.var 0) as)) =
      4 + 2 * as.length + forestWeight xs := by
    rw [← weightAt_zero]
    simp only [weightAt, Nat.reduceAdd, Nat.reduceEqDiff, ↓reduceIte] at hp ⊢
    dsimp only [xs]
    omega
  have hlen : xs.length = as.length := List.length_map _
  simp only [hj1, Nat.mul_one, Nat.one_mul] at hh hd
  omega

theorem arity_ge10_weight46 (as : List Term)
    (hr : Reader (.lam (spine (.var 0) as)))
    (hj : occ 1 (.lam (spine (.var 0) as)) = 1)
    (hk : 10 ≤ as.length) : 46 ≤ weight (.lam (spine (.var 0) as)) := by
  have := arity_price as hr hj
  omega

#print axioms reader162_three
#print axioms reader162_sharp
#print axioms arity_ge10_weight46
#print axioms needed_occurrence
#print axioms FillOrphans.normal
#print axioms FillOrphans.price
#print axioms lower_bound_admissible
#print axioms zero_shape
#print axioms orphan_cannot_supply
#print axioms hole_charge
end Blc.BN46
