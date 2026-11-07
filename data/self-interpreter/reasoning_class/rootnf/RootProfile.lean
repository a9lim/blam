import Blc.SelfintReader30
import Blc.SelfintLocalCost

namespace Blc.RootNF
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost
open SelfintReader30Live SelfintReader30NonLambda

set_option maxRecDepth 5000
set_option maxHeartbeats 2000000

/-- Full-law minima have no erasing source redex. No finite-probe
minimality premise is silently substituted for full-law minimality. -/
theorem full_minimum_no_erase {r : Term} (hm : MinimumReader r) :
    ∀ u, ¬ SelfintReader30.Erase r u := by
  intro u he
  have hu := hm.laws.beta he.beta
  have hj := (he.reader_single_hole hm.laws.probes hm.oneHole).2
  have hlo := hm.minimal u hu hj
  have hhi := he.weight_lt
  dsimp only [SelfintReader30.weight] at hhi
  rw [weight_eq_class, weight_eq_class] at hlo
  omega

/-- The existing two-live skeleton argument uses only nonerasure;
it therefore applies to full-law minima too. -/
theorem full_minimum_nonlam_three_live {r : Term} (hm : MinimumReader r)
    (hnl : ¬ IsLam r) : 3 ≤ live r := by
  by_cases hh : 3 ≤ live r
  · exact hh
  · have hsmall : live r ≤ 2 := by omega
    cases hs : weakStep r with
    | none => exact (reader_not_rigid hm.laws.probes (weakStep_none_rigid hs hnl)).elim
    | some u =>
      have hu := hm.laws.probes.beta (weakStep_beta hs)
      rcases weakStep_two_live hs hm.laws.scope hsmall (full_minimum_no_erase hm) with
        hdrop | ⟨_,b,hb,hz,hsk⟩
      · have hl := reader_two_live hu; omega
      · exact (skeleton_not_reader hb hz hsk hu).elim

theorem spine_not_lam {t : Term} (ht : ¬ IsLam t) (as : List Term) :
    ¬ IsLam (spine t as) := by
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih => exact ih (by simp [IsLam])

def spineLive : List Term → Nat
  | [] => 0
  | a::as => live a + spineLive as

def spineLeaves : List Term → Nat
  | [] => 0
  | a::as => leafCount a + spineLeaves as

theorem spine_live (t : Term) (as : List Term) :
    live (spine t as) = live t + spineLive as := by
  induction as generalizing t with
  | nil => simp [spine, spineLive]
  | cons a as ih => simp [spine, spineLive, ih, live, Nat.add_assoc]

theorem spine_leaves (t : Term) (as : List Term) :
    leafCount (spine t as) = leafCount t + spineLeaves as := by
  induction as generalizing t with
  | nil => simp [spine, spineLeaves]
  | cons a as ih => simp [spine, spineLeaves, ih, leafCount, Nat.add_assoc]

theorem spine_leaves_bound (as : List Term) :
    spineNonlinear as + spineLive as + spineFree 0 as ≤ spineLeaves as := by
  induction as with
  | nil => simp [spineNonlinear, spineLive, spineFree, spineLeaves]
  | cons a as ih =>
    have hh := leaves_bound a
    simp only [spineNonlinear, spineLive, spineFree, spineLeaves]
    omega

/-- Exact ownership accounting before discarding the free-leaf count. -/
theorem root_owned_leaf_charge (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) :
    occ 0 b + 3 + freeLeaves 0 (spine (.app (.lam b) a) as) ≤
      leafCount (spine (.app (.lam b) a) as) := by
  have hp := minimum_head_non_erasing b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hn := reader_head_other_nonlinear b a as hm.laws.probes
  have hfb := freeLeaves_split b 0
  have hb := leaves_bound b
  have ha := leaves_bound a
  have hC := spine_leaves_bound as
  simp only [spine_live, live, if_pos hp] at hl
  simp only [Nat.reduceAdd] at hfb
  simp only [spine_leaves, leafCount, spine_free, freeLeaves, Nat.reduceAdd]
  omega

/-- Each root-binder occurrence plus five further leaves: three owned
by the other live binders, one c, and one j. -/
theorem root_leaf_charge (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) :
    occ 0 b + 5 ≤ leafCount (spine (.app (.lam b) a) as) := by
  have hp := minimum_head_non_erasing b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hn := reader_head_other_nonlinear b a as hm.laws.probes
  have hc := reader_c hm.laws.probes
  have hj := hm.oneHole
  have hfb := freeLeaves_split b 0
  have hf0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have hf1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  have hfree : 2 ≤ freeLeaves 0 (spine (.app (.lam b) a) as) := by
    simp only [Nat.reduceAdd] at hf0 hf1
    omega
  have hb := leaves_bound b
  have ha := leaves_bound a
  have hC := spine_leaves_bound as
  simp only [spine_live, live, if_pos hp] at hl
  simp only [spine_free, freeLeaves, Nat.reduceAdd] at hfree
  simp only [Nat.reduceAdd] at hfb
  simp only [spine_leaves, leafCount]
  omega

/-- Source multiplicity is at most five at depth zero and four at
positive depth, without H_nf or any enumeration. -/
theorem root_weight_charge (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) :
    4 * occ 0 b + 22 + 4 * depth (spine (.app (.lam b) a) as) ≤
      weight 0 (spine (.app (.lam b) a) as) := by
  have hv := root_leaf_charge b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hL := live_le_lamCount (spine (.app (.lam b) a) as)
  have hi := holeCost_identity (spine (.app (.lam b) a) as) 1
  have hj := hm.oneHole
  rw [weight_eq_class]
  change holeCost 1 (spine (.app (.lam b) a) as) +
    4 * occDepth 1 (spine (.app (.lam b) a) as) ≥ _
  change _ + _ + 4 * occDepth 1 (spine (.app (.lam b) a) as) ≤ _
  omega

theorem root_multiplicity_five (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as))
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45) : occ 0 b ≤ 5 := by
  have hh := root_weight_charge b a as hm
  omega

theorem root_positive_depth_four (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as))
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45)
    (hd : 1 ≤ depth (spine (.app (.lam b) a) as)) : occ 0 b ≤ 4 := by
  have hh := root_weight_charge b a as hm
  omega

/-- Retaining the index tax makes the extremal count rows explicit. -/
theorem root_weight_tax_charge (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) :
    4 * occ 0 b + 22 + 4 * depth (spine (.app (.lam b) a) as) +
      tax 1 (spine (.app (.lam b) a) as) ≤
      weight 0 (spine (.app (.lam b) a) as) := by
  have hv := root_leaf_charge b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hL := live_le_lamCount (spine (.app (.lam b) a) as)
  have hi := holeCost_identity (spine (.app (.lam b) a) as) 1
  have hj := hm.oneHole
  rw [weight_eq_class]
  change _ + 4 * occDepth 1 _ + _ ≤ holeCost 1 _ + 4 * occDepth 1 _
  omega

/-- In particular the four-use, depth-one band is just as tight as
five uses at depth zero. This is still counting, not semantic exclusion. -/
theorem root_boundary_rows (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as))
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45)
    (hkd : occ 0 b + depth (spine (.app (.lam b) a) as) = 5) :
    leafCount (spine (.app (.lam b) a) as) = occ 0 b + 5 ∧
    occ 0 (spine (.app (.lam b) a) as) = 1 ∧
    ((lamCount (spine (.app (.lam b) a) as) = 3 ∧
       tax 1 (spine (.app (.lam b) a) as) ≤ 3) ∨
     (lamCount (spine (.app (.lam b) a) as) = 4 ∧
       tax 1 (spine (.app (.lam b) a) as) ≤ 1)) := by
  have hv := root_leaf_charge b a as hm
  have hvf := root_owned_leaf_charge b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hL := live_le_lamCount (spine (.app (.lam b) a) as)
  have hi := holeCost_identity (spine (.app (.lam b) a) as) 1
  have hc := reader_c hm.laws.probes
  have hj := hm.oneHole
  have hf0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have hf1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  rw [weight_eq_class] at hw
  simp only [Nat.reduceAdd] at hf0 hf1
  dsimp only [cost, depth] at hw hkd
  omega

/-- The exact scalar rows for the final five-use band. They are necessary
conditions for readers, not a semantic classification of its inhabitants. -/
theorem root_five_rows (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as))
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45)
    (hk : occ 0 b = 5) :
    depth (spine (.app (.lam b) a) as) = 0 ∧
    leafCount (spine (.app (.lam b) a) as) = 10 ∧
    occ 0 (spine (.app (.lam b) a) as) = 1 ∧
    ((lamCount (spine (.app (.lam b) a) as) = 3 ∧
       tax 1 (spine (.app (.lam b) a) as) ≤ 3) ∨
     (lamCount (spine (.app (.lam b) a) as) = 4 ∧
       tax 1 (spine (.app (.lam b) a) as) ≤ 1)) := by
  have hv := root_leaf_charge b a as hm
  have hvf := root_owned_leaf_charge b a as hm
  have hl := full_minimum_nonlam_three_live hm
    (spine_not_lam (by simp [IsLam]) as)
  have hL := live_le_lamCount (spine (.app (.lam b) a) as)
  have hi := holeCost_identity (spine (.app (.lam b) a) as) 1
  have hc := reader_c hm.laws.probes
  have hj := hm.oneHole
  have hf0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have hf1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  rw [weight_eq_class] at hw
  simp only [Nat.reduceAdd] at hf0 hf1
  change holeCost 1 (spine (.app (.lam b) a) as) +
    4 * occDepth 1 (spine (.app (.lam b) a) as) ≤ 45 at hw
  change occDepth 1 _ = 0 ∧ _
  omega

/-- Explicit hypothesis under review elsewhere. Not asserted here. -/
def NormalReaderFloor : Prop := ∀ t, ReaderLaws t → occ 1 t = 1 →
  NFt t → 46 ≤ weight 0 t

/-- H_nf only gives a LOWER bound on expansion. The reduct is explicitly
assumed normal, and its unique hole is proved from the j-free argument. -/
theorem normal_root_contraction_gap (H_nf : NormalReaderFloor)
    (b a : Term) (as : List Term)
    (hr : ReaderLaws (spine (.app (.lam b) a) as))
    (hj : occ 1 (spine (.app (.lam b) a) as) = 1)
    (ha : occ 1 a = 0)
    (hn : NFt (spine (contract b a) as)) :
    46 - (weight 0 (spine (.app (.lam b) a) as) : Int) ≤
      ((occ 0 b : Int)-1) * wire a +
      ((occ 0 a : Int)-1) * occDepth 0 b -
      2 * occ 0 b - 4 - occ 1 b - 4 * occ 2 b := by
  have hred := hr.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
  have hhole : occ 1 (spine (contract b a) as) = 1 := by
    simp only [spine_occ, occ, Nat.reduceAdd, ha, Nat.add_zero] at hj
    simpa only [spine_occ, contract, occ_substDec_ge b a 1 0 (by omega),
      ha, Nat.mul_zero, Nat.add_zero, Nat.reduceAdd] using hj
  have hf := H_nf _ hred hhole hn
  have he := weighted_beta_delta b a as hr.scope
  rw [weight_no_hole a 0 ha] at he
  simp only [ha, Int.natCast_zero, Int.mul_zero, Int.add_zero] at he
  omega

#print axioms full_minimum_nonlam_three_live
#print axioms root_weight_charge
#print axioms root_multiplicity_five
#print axioms root_positive_depth_four
#print axioms root_five_rows
#print axioms root_weight_tax_charge
#print axioms root_boundary_rows
#print axioms normal_root_contraction_gap
end Blc.RootNF
