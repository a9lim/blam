import LocalCost
import DispatchAudit

/- A complete first-source-head classification. It identifies the exact
   two kinds of source redex that remain before literal s-spine arguments
   apply; it does not assert that those redex families are impossible. -/
namespace Blc.Close46Front
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem lam_beta {t u : Term} (h : Beta t u) (ht : IsLam t) : IsLam u := by
  cases h <;> simp_all [IsLam]

theorem lam_betas {t u : Term} (h : Betas t u) (ht : IsLam t) : IsLam u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (lam_beta hb ht)

theorem reader_body_not_lam (b : Term) (hr : Reader (.lam b)) : ¬ IsLam b := by
  intro hl
  have hred : Betas (contract b Z) zeroOut :=
    betas_preserve_nf (.head (.beta b Z) (.refl _)) hr.zero_red zeroOut_normal
  have hh : IsLam (contract b Z) := by cases b <;> simp_all [IsLam, contract, substDec]
  have hbad := lam_betas hred hh
  exact hbad

theorem rigid_spine {t : Term} (ht : Rigid t) : ∃ n as, t = spine (.var n) as := by
  induction ht with
  | var n => exact ⟨n,[],rfl⟩
  | app a hr ih =>
    obtain ⟨n,as,h⟩ := ih
    exact ⟨n,as++[a],by rw [spine_append_one, h]⟩

theorem subst_spine (t a : Term) (as : List Term) (k : Nat) :
    substDec k a (spine t as) = spine (substDec k a t) (as.map (substDec k a)) := by
  induction as generalizing t with
  | nil => rfl
  | cons x as ih => exact ih (.app t x)

theorem reader_rigid_body (b : Term) (hr : Reader (.lam b)) (hb : Rigid b) :
    ∃ as, b = spine (.var 0) as := by
  obtain ⟨n,as,h⟩ := rigid_spine hb
  have hs := hr.scope
  change FreeUnder 3 b at hs
  rw [h] at hs
  have hn : n < 3 := spine_scope (.var n) as 3 hs
  have hred : Betas (contract b Z) zeroOut :=
    betas_preserve_nf (.head (.beta b Z) (.refl _)) hr.zero_red zeroOut_normal
  have hn' : n = 0 ∨ n = 1 ∨ n = 2 := by omega
  rcases hn' with rfl | rfl | rfl
  · exact ⟨as,h⟩
  · exfalso
    rw [h] at hred
    simp only [contract, subst_spine, substDec, Nat.reduceEqDiff,
      ↓reduceIte, Nat.reduceSub] at hred
    have hh := rigidHead_betas hred (spine_rigidHead 0 _)
    change RigidHead 0 (.app (.var 3) (.var 1)) at hh
    cases hh with | app _ hf => cases hf
  · exfalso
    rw [h] at hred
    simp only [contract, subst_spine, substDec, Nat.reduceEqDiff,
      ↓reduceIte, Nat.reduceSub] at hred
    have hh := rigidHead_betas hred (spine_rigidHead 1 _)
    change RigidHead 1 (.app (.var 3) (.var 1)) at hh
    cases hh with | app _ hf => cases hf

/-- No head-normalization assumption or semantic dispatcher inventory is
    needed: every source is already an s-spine or has one of two heads. -/
theorem reader_source_head {r : Term} (hr : Reader r) :
    (∃ as, r = .lam (spine (.var 0) as)) ∨
    (∃ b a as, r = spine (.app (.lam b) a) as) ∨
    (∃ b a as, r = .lam (spine (.app (.lam b) a) as)) := by
  rcases head_shape r with hl | hrig | hex
  · cases r with
    | var n => exact False.elim hl
    | app f a => exact False.elim hl
    | lam b =>
      rcases head_shape b with hbl | hbr | ⟨f,a,as,h⟩
      · exact (reader_body_not_lam b hr hbl).elim
      · obtain ⟨as,h⟩ := reader_rigid_body b hr hbr
        exact .inl ⟨as,congrArg Term.lam h⟩
      · exact .inr (.inr ⟨f,a,as,congrArg Term.lam h⟩)
  · exact (reader_not_rigid hr hrig).elim
  · exact .inr (.inl hex)

theorem leaf_free (t : Term) : freeLeaves 0 t ≤ leafCount t := by
  have h := leaves_bound t
  omega

theorem spine_leaf_gap (t : Term) (as : List Term) (m : Nat)
    (h : m + freeLeaves 0 t ≤ leafCount t) :
    m + freeLeaves 0 (spine t as) ≤ leafCount (spine t as) := by
  induction as generalizing t with
  | nil => exact h
  | cons a as ih =>
    apply ih (.app t a)
    have ha := leaf_free a
    simp only [freeLeaves, leafCount]
    omega

theorem head_leaf_charge (b a : Term) (as : List Term) :
    occ 0 b + freeLeaves 0 (spine (.app (.lam b) a) as) ≤
      leafCount (spine (.app (.lam b) a) as) := by
  apply spine_leaf_gap
  have hb := leaf_free b
  have ha := leaf_free a
  have hs := freeLeaves_split b 0
  simp only [Nat.reduceAdd] at hs
  simp only [leafCount, freeLeaves, Nat.reduceAdd]
  omega

/-- With only the stream and redex lambdas, the contraction would leave a
    one-lambda reader, even when its argument is copied arbitrarily often. -/
theorem body_head_three_lambdas (b a : Term) (as : List Term)
    (hr : Reader (.lam (spine (.app (.lam b) a) as))) :
    3 ≤ lamCount (.lam (spine (.app (.lam b) a) as)) := by
  have hred := hr.beta (Beta.lam (Close46Source.spine_beta (Beta.beta b a) as))
  have htwo := reader_two_lambdas hred
  simp only [lamCount, spine_lambdas, contract, lamCount_subst] at htwo ⊢
  by_cases hz : lamCount b + lamCount a + spineLambdas as = 0
  · have hb : lamCount b = 0 := by omega
    have ha : lamCount a = 0 := by omega
    have hc : spineLambdas as = 0 := by omega
    simp [hb, ha, hc] at htwo
  · omega

/-- A first body redex has multiplicity at most six, under the full
    w<=45 budget. Its source argument has wire <=33 when m=2. -/
theorem body_head_multiplicity (b a : Term) (as : List Term)
    (hr : Reader (.lam (spine (.app (.lam b) a) as)))
    (hj : occ 1 (.lam (spine (.app (.lam b) a) as)) = 1)
    (hw : weight 0 (.lam (spine (.app (.lam b) a) as)) ≤ 45) : occ 0 b ≤ 6 := by
  have hleaf := head_leaf_charge b a as
  have hc := reader_c hr
  have hs := reader_root_live hr
  have h0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have h1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  have h2 := freeLeaves_split (spine (.app (.lam b) a) as) 2
  have hcost := holeCost_identity (.lam (spine (.app (.lam b) a) as)) 1
  rw [weight_eq_class] at hw
  simp only [occ, Nat.reduceAdd] at hc hj
  simp only [Nat.reduceAdd] at h0 h1 h2
  simp only [occ, holeCost, lamCount, leafCount, tax,
    spine_lambdas, Nat.reduceAdd] at hcost
  change holeCost 1 (.lam (spine (.app (.lam b) a) as)) +
    4 * occDepth 1 (.lam (spine (.app (.lam b) a) as)) ≤ 45 at hw
  simp only [holeCost, occDepth, Nat.reduceAdd, hj] at hw
  have hL := body_head_three_lambdas b a as hr
  simp only [lamCount, spine_lambdas] at hL
  omega

#print axioms reader_source_head
#print axioms body_head_multiplicity
end Blc.Close46Front
