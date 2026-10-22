import Blc.SelfintStreamSpecializer
namespace Blc.BodyLinReplacement
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintWidenHoist SelfintHelperPair SelfintFlatMinimum

theorem bodyReader_betas {b u : Term} (h : Betas b u) (a : Term) (as : List Term) :
    Betas (bodyReader b a as) (bodyReader u a as) := by
  induction h with
  | refl => exact .refl _
  | head hb ht ih =>
    exact .head (.lam (SelfintSourceCost.spine_beta (.appL a (.lam hb)) as)) ih

theorem laws_betas {r t : Term} (h : Betas r t) (hr : ReaderLaws r) : ReaderLaws t := by
  induction h with
  | refl => exact hr
  | head hb ht ih => exact ih (hr.beta hb)

/-- The replacement can duplicate x: A is still present exactly once in
the reader source. Only absence of the source hole in both bodies matters.
No hypothesis says the reader or its arguments normalize. -/
theorem cheaper_body_not_minimum (b u : Term) (a : Term) (as : List Term)
    (hred : Betas b u) (hb : occ 3 b = 0) (hu : occ 3 u = 0)
    (hw : wire u < wire b) : ¬ MinimumReader (bodyReader b a as) := by
  intro hm
  have hl := laws_betas (bodyReader_betas hred a as) hm.laws
  have hj : occ 1 (bodyReader u a as) = 1 := by
    have old := hm.oneHole
    simpa only [bodyReader,occ,spine_occ,hb,hu,Nat.reduceAdd,Nat.zero_add] using old
  have hmin := hm.minimal _ hl hj
  have wb := weight_no_hole b 2 hb
  have wu := weight_no_hole u 2 hu
  simp only [bodyReader,weight,spine_weight,Nat.reduceAdd,wb,wu] at hmin
  omega

#print axioms cheaper_body_not_minimum
end Blc.BodyLinReplacement
