/-
Direct inverse-cut pricing for one-sided tag-created contractions.
This file prices the actual source, without an artificial eta expansion.

For the entire OneSided grammar, including arbitrary Plain contexts, either
orientation and any local free-leaf count, normal final projections imply
at least 96 wire bits and four ambient captures. Hence FrontierPrice holds.
The finite computations invert only the four fixed normal target pairs;
the source lower-bound induction has no size cap.
-/
import Blc.SelfintArchitecture6OneSided

namespace Blc.SelfintArchitecture6OneSidedPrice
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintWiden.OneLet SelfintControl
  SelfintArchitecture6OneSided

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- The one-projection inverse price, including an erased contraction. -/
def singleBase (bits : Bool) (j : Nat) (t : Term) : Nat :=
  minOver (measure bits j t+3*nodeCharge bits)
    ((cuts t).map (fun ab => 2*nodeCharge bits+measure bits j ab.1+measure bits (j+1) ab.2))

def singlePrice (bits : Bool) (j : Nat) : Term → Nat
  | .var n => singleBase bits j (.var n)
  | .lam b => min (singleBase bits j (.lam b)) (nodeCharge bits+singlePrice bits (j+1) b)
  | .app f a => min (singleBase bits j (.app f a))
      (min (nodeCharge bits+singlePrice bits j f+measure bits j a)
        (nodeCharge bits+measure bits j f+singlePrice bits j a))

/-- For a left contraction, the other projection must be an application.
The first entry covers an unused binder; the remaining entries are all
inverse cuts of the fixed contracted target. -/
def armPrices (bits first : Bool) (j : Nat) (t : Term) : Term → List Nat
  | .app v a =>
      (tagCharge bits j+2*nodeCharge bits+measure bits (j+1) (shift 1 0 t)+measure bits j v+measure bits j a) ::
        (cuts t).map (fun ab => tagCharge bits j+2*nodeCharge bits+measure bits (j+1) ab.2+
          measure bits j v+(if first then merge bits j ab.1 a else merge bits j a ab.1))
  | _ => []

def rootPrice (bits : Bool) (j : Nat) (t u : Term) : Nat :=
  minOver (tagCharge bits j+2*nodeCharge bits+measure bits j t+measure bits j u)
    (armPrices bits true j t u ++ armPrices bits false j u t)

def basePrice (bits : Bool) (j : Nat) (t u : Term) : Nat :=
  min (rootPrice bits j t u)
    (min (tagCharge bits j+singlePrice bits j t+measure bits j u)
      (tagCharge bits j+measure bits j t+singlePrice bits j u))

def mergePrice (bits : Bool) (j : Nat) : Term → Term → Nat
  | .lam b, .lam c => min (basePrice bits j (.lam b) (.lam c)) (nodeCharge bits+mergePrice bits (j+1) b c)
  | .app f a, .app g b => min (basePrice bits j (.app f a) (.app g b))
      (min (nodeCharge bits+mergePrice bits j f g+merge bits j a b)
        (nodeCharge bits+merge bits j f g+mergePrice bits j a b))
  | t,u => basePrice bits j t u

private theorem free_shift_cut (t : Term) (c d : Nat) (h : c ≤ d) :
    freeLeaves (d+1) (shift 1 c t) = freeLeaves d t := by
  induction t generalizing c d with
  | var n =>
      by_cases hn : c ≤ n
      · simp only [shift, if_pos hn, freeLeaves, Nat.add_le_add_iff_right]
      · simp [shift, hn, freeLeaves, show ¬ d+1≤n by omega, show ¬ d≤n by omega]
  | lam b ih => exact ih (c+1) (d+1) (by omega)
  | app f a ihf iha => simp only [shift, freeLeaves, ihf c d h, iha c d h]

private theorem measure_shift_le (bits : Bool) (j : Nat) (t : Term) :
    measure bits j t ≤ measure bits (j+1) (shift 1 0 t) := by
  cases bits
  · simp only [SelfintClassNext.measure, Bool.false_eq_true, if_false,
      free_shift_cut t 0 (j+1) (Nat.zero_le _)]
    exact Nat.le_refl _
  · have h := wire_shift t 1 0
    simp only [SelfintClassNext.measure, if_true]
    omega

private theorem measure_node_min (bits : Bool) (j : Nat) (t : Term) :
    nodeCharge bits ≤ measure bits j t := by
  cases bits
  · exact Nat.zero_le _
  · exact wire_two t

private theorem tagCharge_min (bits : Bool) (j : Nat) :
    3*nodeCharge bits ≤ tagCharge bits j := by cases bits <;> simp [nodeCharge, tagCharge]

theorem singlePrice_base (bits : Bool) (j : Nat) (t : Term) :
    singlePrice bits j t ≤ singleBase bits j t := by
  cases t <;> simp only [singlePrice]
  · exact Nat.le_refl _
  · exact Nat.min_le_left _ _
  · exact Nat.min_le_left _ _

theorem singlePrice_measure (bits : Bool) (j : Nat) (t : Term) :
    singlePrice bits j t ≤ measure bits j t+3*nodeCharge bits :=
  Nat.le_trans (singlePrice_base bits j t) (minOver_base _ _)

theorem singlePrice_let (bits : Bool) (j : Nat) (b a : Term) :
    singlePrice bits j (contract b a) ≤
      2*nodeCharge bits+measure bits j a+measure bits (j+1) b := by
  by_cases hz : occ 0 b = 0
  · have he := shift_subst_absent b 0 a hz
    change shift 1 0 (contract b a) = b at he
    have hw := measure_shift_le bits j (contract b a)
    rw [he] at hw
    have hb := singlePrice_measure bits j (contract b a)
    have ha := measure_node_min bits j a
    omega
  · exact Nat.le_trans (singlePrice_base _ _ _) (minOver_mem
      (List.mem_map.mpr ⟨(a,b),cuts_complete b a (by omega),rfl⟩))

theorem singlePrice_lam (bits : Bool) (j : Nat) (b : Term) :
    singlePrice bits j (.lam b) ≤ nodeCharge bits+singlePrice bits (j+1) b :=
  Nat.min_le_right _ _

theorem singlePrice_appL (bits : Bool) (j : Nat) (f a : Term) :
    singlePrice bits j (.app f a) ≤ nodeCharge bits+singlePrice bits j f+measure bits j a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _)

theorem singlePrice_appR (bits : Bool) (j : Nat) (f a : Term) :
    singlePrice bits j (.app f a) ≤ nodeCharge bits+measure bits j f+singlePrice bits j a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _)

theorem single_lower (bits : Bool) {j q : Nat} {t u v : Term} (h : OneSided j t u v q) :
    singlePrice bits j u ≤ measure bits j t ∧ singlePrice bits j v ≤ measure bits j t := by
  induction h with
  | @left j b b0 b1 v v0 v1 a a0 a1 hb hv ha =>
    have h0 := singlePrice_let bits j b0 a0
    have h1 := singlePrice_measure bits j (.app v1 a1)
    have hb0 := (hb.single bits).1
    have hv1 := (hv.single bits).2
    have ha0 := (ha.single bits).1
    have ha1 := (ha.single bits).2
    have ht := tagCharge_min bits j
    simp only [measure_app, measure_lam] at h1 ⊢
    constructor <;> omega
  | @right j b b0 b1 v v0 v1 a a0 a1 hb hv ha =>
    have h0 := singlePrice_measure bits j (.app v0 a0)
    have h1 := singlePrice_let bits j b1 a1
    have hb1 := (hb.single bits).2
    have hv0 := (hv.single bits).1
    have ha0 := (ha.single bits).1
    have ha1 := (ha.single bits).2
    have ht := tagCharge_min bits j
    simp only [measure_app, measure_lam] at h0 ⊢
    constructor <;> omega
  | lam h ih =>
    rename_i j b u v q
    have h0 := singlePrice_lam bits j u
    have h1 := singlePrice_lam bits j v
    simp only [measure_lam]; constructor <;> omega
  | appL hf ha ih =>
    rename_i j f f0 f1 a a0 a1 q
    have h0 := singlePrice_appL bits j f0 a0
    have h1 := singlePrice_appL bits j f1 a1
    have ha0 := (ha.single bits).1
    have ha1 := (ha.single bits).2
    simp only [measure_app]; constructor <;> omega
  | appR hf ha ih =>
    rename_i j f f0 f1 a a0 a1 q
    have h0 := singlePrice_appR bits j f0 a0
    have h1 := singlePrice_appR bits j f1 a1
    have hf0 := (hf.single bits).1
    have hf1 := (hf.single bits).2
    simp only [measure_app]; constructor <;> omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1 q
    have h1 := singlePrice_measure bits j t1
    have ht1 := (ht.single bits).2
    have hc := tagCharge_min bits j
    simp only [measure_select]; constructor <;> omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1 q
    have h0 := singlePrice_measure bits j s0
    have hs0 := (hs.single bits).1
    have hc := tagCharge_min bits j
    simp only [measure_select]; constructor <;> omega

theorem rootPrice_left_none (bits : Bool) (j : Nat) (t v a : Term) :
    rootPrice bits j t (.app v a) ≤
      tagCharge bits j+2*nodeCharge bits+measure bits (j+1) (shift 1 0 t)+measure bits j v+measure bits j a := by
  apply minOver_mem
  exact List.mem_append_left _ (by simp [armPrices])

theorem rootPrice_right_none (bits : Bool) (j : Nat) (t v a : Term) :
    rootPrice bits j (.app v a) t ≤
      tagCharge bits j+2*nodeCharge bits+measure bits (j+1) (shift 1 0 t)+measure bits j v+measure bits j a := by
  apply minOver_mem
  exact List.mem_append_right _ (by simp [armPrices])

theorem rootPrice_left_used {bits : Bool} {j : Nat} {t a b v a' : Term} (h : (a,b) ∈ cuts t) :
    rootPrice bits j t (.app v a') ≤
      tagCharge bits j+2*nodeCharge bits+measure bits (j+1) b+measure bits j v+merge bits j a a' := by
  apply minOver_mem
  apply List.mem_append_left
  exact List.mem_cons_of_mem _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩)

theorem rootPrice_right_used {bits : Bool} {j : Nat} {t a b v a' : Term} (h : (a,b) ∈ cuts t) :
    rootPrice bits j (.app v a') t ≤
      tagCharge bits j+2*nodeCharge bits+measure bits (j+1) b+measure bits j v+merge bits j a' a := by
  apply minOver_mem
  apply List.mem_append_right
  exact List.mem_cons_of_mem _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩)

theorem rootPrice_left_lower (bits : Bool) {j : Nat} {b b0 b1 v v0 v1 a a0 a1 : Term}
    (hb : Plain (j+1) b b0 b1) (hv : Plain j v v0 v1) (ha : Plain j a a0 a1) :
    rootPrice bits j (contract b0 a0) (.app v1 a1) ≤
      measure bits j (.app (.app (.app (.var j) (.lam b)) v) a) := by
  have hb0 := (hb.single bits).1
  have hv1 := (hv.single bits).2
  have ha1 := (ha.single bits).2
  have ham := ha.merged bits
  rw [measure_app, measure_select, measure_lam]
  by_cases hz : occ 0 b0 = 0
  · have he := shift_subst_absent b0 0 a0 hz
    change shift 1 0 (contract b0 a0) = b0 at he
    have hm := rootPrice_left_none bits j (contract b0 a0) v1 a1
    rw [he] at hm
    omega
  · have hm := rootPrice_left_used (bits:=bits) (j:=j) (v:=v1) (a':=a1)
      (cuts_complete b0 a0 (by omega))
    omega

theorem rootPrice_right_lower (bits : Bool) {j : Nat} {b b0 b1 v v0 v1 a a0 a1 : Term}
    (hb : Plain (j+1) b b0 b1) (hv : Plain j v v0 v1) (ha : Plain j a a0 a1) :
    rootPrice bits j (.app v0 a0) (contract b1 a1) ≤
      measure bits j (.app (.app (.app (.var j) v) (.lam b)) a) := by
  have hb1 := (hb.single bits).2
  have hv0 := (hv.single bits).1
  have ha0 := (ha.single bits).1
  have ham := ha.merged bits
  rw [measure_app, measure_select, measure_lam]
  by_cases hz : occ 0 b1 = 0
  · have he := shift_subst_absent b1 0 a1 hz
    change shift 1 0 (contract b1 a1) = b1 at he
    have hm := rootPrice_right_none bits j (contract b1 a1) v0 a0
    rw [he] at hm
    omega
  · have hm := rootPrice_right_used (bits:=bits) (j:=j) (v:=v0) (a':=a0)
      (cuts_complete b1 a1 (by omega))
    omega

theorem mergePrice_base (bits : Bool) (j : Nat) (t u : Term) :
    mergePrice bits j t u ≤ basePrice bits j t u := by
  cases t <;> cases u <;> simp only [mergePrice]
  all_goals first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem mergePrice_root (bits : Bool) (j : Nat) (t u : Term) :
    mergePrice bits j t u ≤ rootPrice bits j t u :=
  Nat.le_trans (mergePrice_base bits j t u) (Nat.min_le_left _ _)

theorem mergePrice_choiceL (bits : Bool) (j : Nat) (t u : Term) :
    mergePrice bits j t u ≤ tagCharge bits j+singlePrice bits j t+measure bits j u :=
  Nat.le_trans (mergePrice_base bits j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))

theorem mergePrice_choiceR (bits : Bool) (j : Nat) (t u : Term) :
    mergePrice bits j t u ≤ tagCharge bits j+measure bits j t+singlePrice bits j u :=
  Nat.le_trans (mergePrice_base bits j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))

theorem merged_lower (bits : Bool) {j q : Nat} {t u v : Term} (h : OneSided j t u v q) :
    mergePrice bits j u v ≤ measure bits j t := by
  induction h with
  | left hb hv ha => exact Nat.le_trans (mergePrice_root _ _ _ _) (rootPrice_left_lower bits hb hv ha)
  | right hb hv ha => exact Nat.le_trans (mergePrice_root _ _ _ _) (rootPrice_right_lower bits hb hv ha)
  | lam h ih =>
    simp only [mergePrice, measure_lam]
    apply Nat.le_trans (Nat.min_le_right _ _)
    omega
  | appL hf ha ih =>
    have ham := ha.merged bits
    simp only [mergePrice, measure_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))
    omega
  | appR hf ha ih =>
    have hfm := hf.merged bits
    simp only [mergePrice, measure_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))
    omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1 q
    have hm := mergePrice_choiceL bits j s0 t1
    have hs0 := (single_lower bits hs).1
    have ht1 := (ht.single bits).2
    simp only [measure_select]; omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1 q
    have hm := mergePrice_choiceR bits j s0 t1
    have hs0 := (hs.single bits).1
    have ht1 := (single_lower bits ht).2
    simp only [measure_select]; omega

theorem mergePrice_targets (e0 e1 : Bool) :
    94 ≤ mergePrice true 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) ∧
    4 ≤ mergePrice false 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

theorem one_sided_price {q : Nat} {b u v : Term} (h : RigidNext (.lam b))
    (hp : OneSided 0 b u v q) (hu : NFt u) (hv : NFt v) :
    96 ≤ wire (.lam b) ∧ 4 ≤ freeLeaves 0 (.lam b) := by
  obtain ⟨b',hf,hp'⟩ := hp.factor
  have hr0 := join_trans (hf.semantic true) (join_of_betas (hp'.semantic true))
  have hr1 := join_trans (hf.semantic false) (join_of_betas (hp'.semantic false))
  have hnf0 := nft_normal (nft_subst_absent u 0 churchTrue hu hp'.absent.1)
  have hnf1 := nft_normal (nft_subst_absent v 0 churchTrue hv hp'.absent.2)
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp'.absent.1
    (.head (.beta b (tagValue true)) (join_normal hr0 hnf0))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp'.absent.2
    (.head (.beta b (tagValue false)) (join_normal hr1 hnf1))
  have hm := mergePrice_targets e0 e1
  have hb := merged_lower true hp
  have hc := merged_lower false hp
  rw [h0,h1] at hb hc
  have hbits : 94 ≤ wire b := Nat.le_trans hm.1 hb
  have hcaptures : 4 ≤ freeLeaves 1 b := Nat.le_trans hm.2 hc
  simp only [wire_lam, freeLeaves, Nat.reduceAdd]
  constructor <;> omega

theorem one_sided_frontier {q : Nat} {b u v : Term} (h : RigidNext (.lam b))
    (hp : OneSided 0 b u v q) (hu : NFt u) (hv : NFt v) : FrontierPrice (.lam b) := by
  have hh := one_sided_price h hp hu hv
  constructor <;> omega

#print axioms one_sided_price
#print axioms one_sided_frontier

end Blc.SelfintArchitecture6OneSidedPrice
