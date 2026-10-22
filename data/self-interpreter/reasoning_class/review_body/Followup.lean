/- Local follow-up: the immediate contractum of a linear first body let
   cannot be normal in a minimum reader. No BN46 assumption is used. -/
import Blc.SelfintSourceBody
import Blc.SelfintNeededHead
import Blc.SelfintProbe
import Blc.SelfintNestedLets
namespace Blc.BodyRedexFollowup
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist
open SelfintControl SelfintFlatMinimum SelfintSourceFront SelfintLetSink
open SelfintNeededHead SelfintSourceBody
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem spineOcc_one_split (bs : List Term) (h : spineOcc 0 bs = 1) :
    ∃ pre g post, bs = pre ++ g :: post ∧ occ 0 g = 1 ∧
      (∀ t ∈ pre, occ 0 t = 0) ∧ (∀ t ∈ post, occ 0 t = 0) := by
  induction bs with
  | nil => simp [spineOcc] at h
  | cons b bs ih =>
    simp only [spineOcc] at h
    by_cases hb : occ 0 b = 0
    · obtain ⟨pre,g,post,he,hg,hp,hq⟩ := ih (by omega)
      refine ⟨b::pre,g,post,by simp [he],hg,?_,hq⟩
      intro t ht
      simp only [List.mem_cons] at ht
      rcases ht with rfl | ht
      · exact hb
      · exact hp t ht
    · have htail : spineOcc 0 bs = 0 := by omega
      refine ⟨[],b,bs,rfl,by omega,by simp,?_⟩
      intro t ht
      have aux : ∀ (cs : List Term), spineOcc 0 cs = 0 →
          ∀ q ∈ cs, occ 0 q = 0 := by
        intro cs hz
        induction cs with
        | nil => simp
        | cons c cs ih =>
          simp only [spineOcc] at hz
          intro q hq
          simp only [List.mem_cons] at hq
          rcases hq with rfl | hq
          · omega
          · exact ih (by omega) q hq
      exact aux bs htail t ht

theorem minimum_linear_s_body_false {a : Term} {bs as : List Term}
    (hm : MinimumReader (bodyReader (spine (.var 1) bs) a as))
    (hlin : occ 0 (spine (.var 1) bs) = 1) : False := by
  have hh : spineOcc 0 bs = 1 := by simpa [spine_occ,occ] using hlin
  obtain ⟨pre,g,post,rfl,hg,hpre,hpost⟩ := spineOcc_one_split bs hh
  exact no_one_operand_spine_let pre post as g a hpre hpost hm

theorem minimum_linear_body_alternatives {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hlin : occ 0 b = 1) :
    (∃ d, b=.lam d ∧ as≠[]) ∨
    (∃ d e bs, b=spine (.app (.lam d) e) bs) := by
  rcases minimum_body_alternatives hm with hs | hx | hl | hr
  · obtain ⟨bs,rfl⟩ := hs
    exact (minimum_linear_s_body_false hm hlin).elim
  · obtain ⟨bs,rfl,ha⟩ := hx
    have hc : MinimumReader ((bodyContext as).fill
        (.app (.lam (spine (.var 0) bs)) a)) := by
      simpa only [bodyContext_fill] using hm
    have hh := minimum_extra_use (bodyContext as) a bs hc
    simp only [spine_occ,occ,if_true] at hlin
    omega
  · exact .inl hl
  · exact .inr hr

theorem minimum_linear_contractum_not_normal {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hlin : occ 0 b = 1) :
    ¬ NormalForm (.lam (spine (contract b a) as)) := by
  intro hn
  rcases minimum_linear_body_alternatives hm hlin with hl | hr
  · obtain ⟨d,rfl,ha⟩ := hl
    cases as with
    | nil => exact ha rfl
    | cons c cs =>
      simp only [contract,substDec,spine] at hn
      exact hn _ (.lam (SelfintSourceCost.spine_beta (Beta.beta _ c) cs))
  · obtain ⟨d,e,bs,rfl⟩ := hr
    simp only [contract,subst_spine,substDec] at hn
    exact hn _ (.lam (SelfintSourceCost.spine_beta
      (SelfintSourceCost.spine_beta (Beta.beta _ _) _) as))

#print axioms minimum_linear_body_alternatives
#print axioms minimum_linear_contractum_not_normal


/- Exact exception certificate for the repeated-helper finite check. -/
def growD : Term := .lam (.app (.app (.var 0) (.var 0)) (.var 1))
def badA : Term := .lam (.app (.var 0)
  (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))
def badR : Term := bodyReader (.app (.app (.var 1) (.var 0)) (.var 0))
  badA [.var 2]

theorem headStep_app_spine (f a : Term) (as : List Term) :
    headStep (spine (.app f a) as) =
      (headStep (.app f a)).map (fun t => spine t as) := by
  induction as generalizing f a with
  | nil => simp [spine]
  | cons b bs ih =>
    simp only [spine]
    rw [ih]
    simp only [headStep,Option.map_map]
    rfl

theorem grow_step (as : List Term) :
    headStep (spine (.app growD growD) as) =
      some (spine (.app growD growD) (.var 0 :: as)) := by
  rw [headStep_app_spine]
  rfl

theorem grow_reaches (n : Nat) (as : List Term) :
    ∃ bs, headSteps n (spine (.app growD growD) as) =
      some (spine (.app growD growD) bs) := by
  induction n generalizing as with
  | zero => exact ⟨as,rfl⟩
  | succ n ih =>
    obtain ⟨bs,hb⟩ := ih (.var 0 :: as)
    exact ⟨bs,by simpa only [headSteps,grow_step,Option.bind_some] using hb⟩

theorem grow_no_nf (as : List Term) :
    ¬ HasNormalForm (spine (.app growD growD) as) := by
  intro hn
  obtain ⟨k,p,hk,hp⟩ := hasNormalForm_headTerminates hn
  obtain ⟨bs,hb⟩ := grow_reaches k as
  rw [hk] at hb
  cases hb
  rw [grow_step] at hp
  cases hp

theorem badR_zero_trace : headSteps 9 (.app badR Z) =
    some (spine (.app growD growD) [.var 0,.var 1]) := by decide

theorem badR_not_reader : ¬ Reader badR := by
  intro hr
  have hred := SelfintProbe.headReds_betas' badR_zero_trace
  have hnf : HasNormalForm (.app badR Z) :=
    ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  exact grow_no_nf _ (betas_preserve_hasNormalForm hred hnf)

#print axioms badR_not_reader


open SelfintLambdaSink SelfintNestedLets

def exchanged (b a e : Term) (as : List Term) : Term :=
  bodyReader (.lam (swap 0 b)) e (a::as)

theorem exchange_price (b a e : Term) (as : List Term) :
    weight 0 (exchanged b a e as) + occ 1 b =
      weight 0 (bodyReader (.lam b) a (e::as)) + occ 0 b := by
  have hs := swap_weight b 0 1
  simp only [Nat.reduceAdd,Nat.add_zero] at hs
  simp only [exchanged,bodyReader,weight,spine_weight,spineWeight,Nat.reduceAdd]
  omega

theorem exchange_join (b a e : Term) (as : List Term) :
    BetaJoin (exchanged b a e as) (bodyReader (.lam b) a (e::as)) := by
  have h1 := push_join (.lam (swap 0 b)) e [a]
  have h2 := order_join b a e
  have h3 := push_join (.lam b) a [e]
  simp only [push,List.map_cons,List.map_nil,spine] at h1 h3
  change BetaJoin (newOrder b a e) (.app (.app (.lam (.lam (swap 0 b))) e) a) at h1
  change BetaJoin (oldOrder b a e) (.app (.app (.lam (.lam b)) a) e) at h3
  have hh := join_trans (join_symm h1) (join_trans h2 h3)
  obtain ⟨v,hv1,hv2⟩ := join_spine hh as
  exact ⟨.lam v,betas_lam hv1,betas_lam hv2⟩

/-- No occurrence or normality assumptions: this is an exact identity. -/
theorem body_delta (b a : Term) (as : List Term) :
    (weight 0 (.lam (spine (contract b a) as)) : Int) -
      weight 0 (bodyReader b a as) =
    ((occ 0 b : Int)-1) * weight 1 a +
      ((freeLeaves 0 a : Int)+3*occ 2 a-1)*occDepth 0 b -
      2*occ 0 b-4-freeLeaves 1 b-3*occ 3 b := by
  have hh := weighted_beta_at b a 1
  simp only [Nat.reduceAdd] at hh
  simp only [bodyReader,weight,spine_weight,Nat.reduceAdd,Int.natCast_add] at hh ⊢
  omega

def NormalReaderFloor : Prop := ∀ t, ReaderLaws t → occ 1 t=1 →
  NormalForm t → 46 ≤ weight 0 t

/-- Explicitly conditional on the external normal-reader floor AND on
    normality and a single residual source hole after this contraction. -/
theorem normal_contract_charge (hfloor : NormalReaderFloor)
    {b a : Term} {as : List Term} (hr : ReaderLaws (bodyReader b a as))
    (hj : occ 1 (.lam (spine (contract b a) as))=1)
    (hn : NormalForm (.lam (spine (contract b a) as))) :
    (46 : Int) - weight 0 (bodyReader b a as) ≤
    ((occ 0 b : Int)-1) * weight 1 a +
      ((freeLeaves 0 a : Int)+3*occ 2 a-1)*occDepth 0 b -
      2*occ 0 b-4-freeLeaves 1 b-3*occ 3 b := by
  have hl := hr.beta (Beta.lam (SelfintSourceCost.spine_beta (Beta.beta b a) as))
  have hf := hfloor _ hl hj hn
  have he := body_delta b a as
  omega

#print axioms exchange_price
#print axioms exchange_join
#print axioms normal_contract_charge
end Blc.BodyRedexFollowup
