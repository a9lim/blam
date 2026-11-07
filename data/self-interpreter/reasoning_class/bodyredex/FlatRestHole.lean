import Blc.SelfintNeededHead

namespace Blc.BodyRedex
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintInert
open SelfintFlatSemantics SelfintFlatMinimum SelfintNeededHead SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- The flat source argument (s s s) j, in frame [s,c,j]. -/
def restJ : Term := remHole (.var 0)
def dropped (b : Term) (as : List Term) : Term := spine (contract b (.var 0)) as

theorem restJ_unary (n : Nat) :
    Betas (contract restJ (input (n+1))) (.app (.var 2) (.var 1)) := by
  change Betas (.app (contract (rem (.var 0)) (input (n+1))) (.var 1)) _
  exact betas_appL _ (rem_reduces (.var 0) (.unary n))

theorem restJ_zero : Betas (contract restJ Z) zeroOut := by
  change Betas (.app (contract (rem (.var 0)) Z) (.var 1)) _
  exact betas_appL _ (rem_reduces (.var 0) .zero)

/-- N j is a rigid normal block absent from every required unary output.
    It can be replaced by any term in any applied context, even if copied. -/
theorem replace_unary_restJ (n : Nat) (f : Term) (as : List Term) (q : Term)
    (h : BetaJoin (spine (.app f (contract restJ (input (n+1)))) as) (out n)) :
    BetaJoin (spine (.app f q) as) (out n) := by
  have hred := join_spine (join_appR f (join_of_betas (restJ_unary n))) as
  have hj := join_trans (join_symm hred) h
  have hav : Avoid (.app (.var 2) (.var 1)) (out n) :=
    guard_avoid_out (Rigid.var 2) ⟨trivial, by intro he; cases he⟩
  exact replace_spine_argument f as (Rigid.app _ (Rigid.var 2)) (by decide)
    hav (out_normal n) hj q

/-- Erasing the unary-inert argument and identifying x with s leaves a
    j-free unary core. This statement is uniform in every unary length. -/
theorem dropped_unary (b : Term) (as : List Term)
    (h : ReaderLaws (bodyReader b restJ as)) (n : Nat) :
    BetaJoin (.app (.lam (dropped b as)) (input (n+1))) (out n) := by
  have hs := join_of_betas (.head (bodyReader_apply b restJ as (input (n+1))) (.refl _))
  have ht := join_trans (join_symm hs) (h.unary n)
  have hrep := replace_unary_restJ n _ _ (contract (.var 0) (input (n+1))) ht
  have hd := join_of_betas (.head (bodyReader_apply b (.var 0) as (input (n+1))) (.refl _))
  have hfull := join_trans hd hrep
  have hb := Beta.lam (SelfintSourceCost.spine_beta (Beta.beta b (.var 0)) as)
  exact join_trans (join_symm (join_of_betas (.head (Beta.appL _ hb) (.refl _)))) hfull

/-- Exact saving, before any beta-normalization of the resulting core. -/
theorem dropped_price (b : Term) (as : List Term) (hb : occ 3 b = 0)
    (ha : spineOcc 2 as = 0) :
    weight 0 (bodyReader b restJ as) = 22 + wire (dropped b as) + freeLeaves 1 b := by
  have hp := nearest_price b 1
  have hj : occ 2 (dropped b as) = 0 := by
    simp only [dropped,spine_occ,contract,occ_substDec_ge b (.var 0) 2 0 (by omega),
      occ, Nat.reduceEqDiff, ↓reduceIte, Nat.mul_zero, Nat.zero_add, hb, ha]
  have hw := weight_no_hole (dropped b as) 1 hj
  rw [body_weight, show weight 1 restJ = 16 by decide]
  simp only [dropped,spine_weight] at hw
  simp only [Nat.reduceAdd, hb, Nat.mul_zero, Nat.add_zero] at hp
  simp only [dropped]
  omega

/-- Scalar part of the high-multiplicity source budget. -/
theorem high_multiplicity_budget (m L V X : Nat)
    (_hm : 5 ≤ m) (_hm6 : m ≤ 6) (hL : 3 ≤ L)
    (hV : m+3 ≤ V) (hX : 1 ≤ X) (hw : 2*L+4*V+X ≤ 45) :
    V ≤ 9 ∧ (m = 6 → V = 9 ∧ L ≤ 4) := by omega

#print axioms restJ_unary
#print axioms replace_unary_restJ
#print axioms dropped_unary
#print axioms dropped_price


/-- All source preimages of identifying the removed binder with its nearest
    outer variable. This is a finite structural inverse, not a cost search. -/
def preimages (d : Nat) : Term → List Term
  | .var n => if n < d then [.var n]
      else if n = d then [.var d, .var (d+1)] else [.var (n+1)]
  | .lam b => (preimages (d+1) b).map Term.lam
  | .app f a => (preimages d f).flatMap fun f' =>
      (preimages d a).map fun a' => .app f' a'

theorem preimages_complete (t : Term) (d : Nat) :
    t ∈ preimages d (substDec d (.var d) t) := by
  induction t generalizing d with
  | var n =>
    by_cases h0 : n=d
    · subst n; simp [substDec,preimages]
    · by_cases h1 : n>d
      · by_cases h2 : n=d+1
        · subst n; simp [substDec,preimages]
        · have h3 : ¬ n-1<d := by omega
          have h4 : n-1≠d := by omega
          have h5 : n-1+1=n := by omega
          simp [substDec,preimages,h0,h1,h3,h4,h5]
      · have h2 : n<d := by omega
        simp [substDec,preimages,h0,h1,h2]
  | lam b ih =>
    simp only [substDec,shift,Nat.zero_le,↓reduceIte,preimages,List.mem_map]
    exact ⟨_,ih (d+1),rfl⟩
  | app f a ihf iha =>
    simp only [substDec,preimages,List.mem_flatMap,List.mem_map]
    exact ⟨_,ihf d,_,iha d,rfl⟩

/-- Every literal prefix/suffix split of an application spine. -/
def spineSplits : Term → List (Term × List Term)
  | .app f a => [( .app f a, [])] ++
      (spineSplits f).map (fun p => (p.1,p.2++[a]))
  | t => [(t,[])]

theorem spineSplits_complete (t : Term) (as : List Term) :
    (t,as) ∈ spineSplits (spine t as) := by
  have aux (bs : List Term) : (t,bs.reverse) ∈ spineSplits (spine t bs.reverse) := by
    induction bs with
    | nil => cases t <;> simp [spine,spineSplits]
    | cons a bs ih =>
      rw [List.reverse_cons,spine_append_one]
      simp only [spineSplits,List.mem_append,List.mem_cons,List.not_mem_nil,
        or_false,List.mem_map]
      exact Or.inr ⟨(t,bs.reverse),ih,rfl⟩
  simpa using aux as.reverse

def sourcesFromCore (t : Term) : List Term :=
  (spineSplits t).flatMap fun p =>
    (preimages 0 p.1).map fun b => bodyReader b restJ p.2

theorem source_mem (b : Term) (as : List Term) :
    bodyReader b restJ as ∈ sourcesFromCore (dropped b as) := by
  simp only [sourcesFromCore,List.mem_flatMap,List.mem_map]
  refine ⟨(contract b (.var 0),as),spineSplits_complete _ _,b,?_,rfl⟩
  exact preimages_complete b 0

def core22 : Term := .app (.app (.var 0) (.lam (.var 2))) (rem (.var 0))
def core23 : Term := .app (.app (.var 0) (.lam (.var 2))) (rem (.var 1))
def tinySources : List Term :=
  ((sourcesFromCore core22) ++ (sourcesFromCore core23)).filter
    (fun r => decide (weight 0 r ≤ 45))

theorem tinySources_count : tinySources.length = 5 := by decide

theorem tinySources_zero_reject :
    tinySources.all SelfintHelperPair.rejectsZero = true := by decide

theorem tinySources_reject :
    tinySources.all SelfintClosedSpecializer.rejectsProbes = true := by decide

/-- The externally checked two-core classification is explicit here.
    It is not installed as an axiom or claimed as a kernel theorem. -/
def TinyUnaryClassification : Prop := ∀ t : Term,
    FreeUnder 3 t → occ 2 t = 0 → wire t ≤ 23 →
    (∀ n, BetaJoin (.app (.lam t) (input (n+1))) (out n)) →
    t = core22 ∨ t = core23

/-- Conditional only on the existing complete two-core inventory. No
    minimality, multiplicity, normality, or bound on internal lambdas. -/
theorem restJ_exclusion (inventory : TinyUnaryClassification)
    (b : Term) (as : List Term) (hr : ReaderLaws (bodyReader b restJ as))
    (hj : occ 1 (bodyReader b restJ as) = 1)
    (hw : weight 0 (bodyReader b restJ as) ≤ 45) : False := by
  have hb : occ 3 b = 0 := by
    simp only [bodyReader,occ,spine_occ,restJ,remHole,rem,sq,
      Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte] at hj
    omega
  have ha : spineOcc 2 as = 0 := by
    simp only [bodyReader,occ,spine_occ,restJ,remHole,rem,sq,
      Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte] at hj
    omega
  have hd : occ 2 (dropped b as) = 0 := by
    simp only [dropped,spine_occ,contract,occ_substDec_ge b (.var 0) 2 0 (by omega),
      occ,Nat.reduceEqDiff,↓reduceIte,Nat.mul_zero,Nat.zero_add,hb,ha]
  have hs : FreeUnder 3 (dropped b as) := by
    have hbScope := (SelfintSourceCost.spine_scope (.app (.lam b) restJ) as 3 hr.scope).1
    have hscope := spine_scope_replace as 3 hr.scope
      (show FreeUnder 3 (.app (.lam b) (.var 0)) from ⟨hbScope,by decide⟩)
    exact beta_freeUnder (SelfintSourceCost.spine_beta (Beta.beta b (.var 0)) as) 3 hscope
  have hp := dropped_price b as hb ha
  have hh := inventory (dropped b as) hs hd (by omega) (dropped_unary b as hr)
  have hm := source_mem b as
  have hmem : bodyReader b restJ as ∈ tinySources := by
    simp only [tinySources,List.mem_filter,List.mem_append,decide_eq_true_eq]
    refine ⟨?_,hw⟩
    rcases hh with hh | hh
    · exact Or.inl (hh ▸ hm)
    · exact Or.inr (hh ▸ hm)
  exact SelfintClosedSpecializer.rejectsProbes_sound
    (List.all_eq_true.mp tinySources_reject _ hmem) hr.probes

#print axioms preimages_complete
#print axioms spineSplits_complete
#print axioms tinySources_reject
#print axioms restJ_exclusion


/-- Numerical bottleneck in the handwritten linear, j-free-argument proof.
    These are scalar budget lemmas, not reader classifications. -/
theorem linear_pair_options (F D : Nat) (hF : 2 ≤ F)
    (hprod : 7 ≤ (F-1)*D) (hcost : 4*F+3*D ≤ 26) :
    (F=3 ∧ D=4) ∨ (F=4 ∧ D=3) ∨ (F=5 ∧ D=2) := by
  have hf : F=2 ∨ F=3 ∨ F=4 ∨ F=5 ∨ F=6 := by omega
  rcases hf with rfl | rfl | rfl | rfl | rfl <;>
    simp only [Nat.reduceSub] at hprod <;> omega

theorem linear_cost_floor (F D : Nat) (hF : 2 ≤ F)
    (hprod : 7 ≤ (F-1)*D) : 24 ≤ 4*F+3*D := by
  by_cases hc : 4*F+3*D ≤ 26
  · rcases linear_pair_options F D hF hprod hc with h | h | h <;> omega
  · omega

theorem linear_chain_floor (F D : Nat) (hF : 2 ≤ F)
    (hprod : 7 ≤ (F-1)*D) : 34 ≤ 4*F+7*D := by
  by_cases hc : 34 ≤ 4*F+7*D
  · exact hc
  · have hf : F=2 ∨ F=3 ∨ F=4 ∨ F=5 ∨ F=6 ∨ F=7 ∨ F=8 := by omega
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp only [Nat.reduceSub] at hprod <;> omega

#print axioms linear_pair_options
#print axioms linear_chain_floor
end Blc.BodyRedex
