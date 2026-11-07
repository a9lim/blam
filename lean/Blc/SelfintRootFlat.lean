/-
Root flat arguments. If ((λx.B) A) C1 … Ct is a minimum reader and A is
lambda-free, A is literally j (`minimum_root_flat_is_hole`), with no weight
bound, multiplicity cap or hole-depth premise. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintFlatMinimum
namespace Blc.SelfintRootFlat
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintInert
open SelfintFlatSemantics SelfintFlatMinimum SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem flat_rigid (t : Term) (h : lamCount t = 0) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f + lamCount a = 0 := h
    exact .app a (ihf (by omega))

theorem flat_nf (t : Term) (h : lamCount t = 0) : NFt t := by
  induction t with
  | var n => trivial
  | lam b => simp [lamCount] at h
  | app f a ihf iha =>
    have hh : lamCount f + lamCount a = 0 := h
    exact rigid_nf_app (flat_rigid f (by omega)) (ihf (by omega)) (iha (by omega))

theorem flat_guard (t : Term) (h : lamCount t = 0) (n : Nat) : Guard n t := by
  induction t with
  | var k => trivial
  | lam b => trivial
  | app f a ihf iha =>
    have hh : lamCount f + lamCount a = 0 := h
    refine ⟨ihf (by omega),?_⟩
    intro _ he
    have hl := congrArg lamCount he
    rw [input_lambdas] at hl
    omega

theorem flat_app_inert (f a : Term) (hl : lamCount (.app f a) = 0)
    (hs : FreeUnder 2 (.app f a)) (p : Probe) :
    Rigid (.app f a) ∧ NFt (.app f a) ∧ Avoid (.app f a) p.output := by
  have hh : lamCount f + lamCount a = 0 := hl
  refine ⟨flat_rigid _ hl,flat_nf _ hl,?_⟩
  cases p with
  | zero =>
    apply zapp_avoid
    intro he
    rw [he] at hs
    exact (by decide : ¬ FreeUnder 2 zeroOut) hs
  | unary n => exact guard_avoid_out (flat_rigid f (by omega)) (flat_guard _ hl n)

def rootReader (b a : Term) (as : List Term) : Term := spine (.app (.lam b) a) as

theorem root_inert_replace {b a q : Term} {as : List Term}
    (hl : ReaderLaws (rootReader b a as)) (hq : FreeUnder 2 q)
    (ha : ∀ p : Probe, Rigid a ∧ NFt a ∧ Avoid a p.output) :
    ReaderLaws (rootReader b q as) := by
  have hb := (spine_scope (.app (.lam b) a) as 2 hl.scope).1
  have hs : FreeUnder 2 (rootReader b q as) := spine_scope_replace as 2 hl.scope ⟨hb,hq⟩
  have proof (p : Probe) (h : BetaJoin (.app (rootReader b a as) p.stream) p.output) :
      BetaJoin (.app (rootReader b q as) p.stream) p.output := by
    have h0 : BetaJoin (spine (.app (.lam b) a) (as++[p.stream])) p.output := by
      simpa only [spine_append_one,rootReader] using h
    obtain ⟨hr,hn,hav⟩ := ha p
    have h1 := replace_spine_argument (.lam b) (as++[p.stream]) hr hn hav p.normal h0 q
    simpa only [spine_append_one,rootReader] using h1
  exact ⟨hs,proof .zero hl.zero,fun n => proof (.unary n) (hl.unary n)⟩

theorem root_no_inert_argument {b a : Term} {as : List Term}
    (hm : MinimumReader (rootReader b a as))
    (ha : ∀ p : Probe, Rigid a ∧ NFt a ∧ Avoid a p.output) : weight 0 a ≤ 2 := by
  have hl := root_inert_replace hm.laws (by decide : FreeUnder 2 (.var 0)) ha
  have hj : occ 1 (rootReader b (.var 0) as) = 1 := by
    have h0 := hm.oneHole
    have h1 := reader_j hl.probes
    simp only [rootReader,spine_occ,occ,Nat.reduceAdd] at h0 h1 ⊢
    simp only [show (0:Nat) ≠ 1 by decide,if_false] at h1 ⊢
    omega
  have hmin := hm.minimal _ hl hj
  simp only [rootReader,spine_weight,weight,Nat.reduceAdd] at hmin
  simp at hmin
  omega

theorem root_not_cont {b : Term} {as : List Term}
    (hm : MinimumReader (rootReader b (.var 0) as)) : False := by
  have he : (spineContext .hole as).fill (.app (.lam b) (.var 0)) = rootReader b (.var 0) as :=
    spineContext_fill _ _ _
  have h := minimum_source_sharing_charge (spineContext .hole as) b (.var 0)
    (he.symm ▸ hm) (by simp only [spineContext_depth,ctxDepth,occ]; decide)
  simp [spineContext_depth,ctxDepth,weight,freeLeaves] at h
  omega

/-- No root argument enumeration or binder multiplicity cap is needed:
    every flat root argument of a minimum reader is literally j. -/
theorem minimum_root_flat_is_hole {b a : Term} {as : List Term}
    (hm : MinimumReader (rootReader b a as)) (hl : lamCount a = 0) : a = .var 1 := by
  have hs : FreeUnder 2 a := (spine_scope (.app (.lam b) a) as 2 hm.laws.scope).2
  cases a with
  | var k =>
    have hk : k < 2 := hs
    have hc : k = 0 ∨ k = 1 := by omega
    rcases hc with rfl | rfl
    · exact (root_not_cont hm).elim
    · rfl
  | lam t => simp [lamCount] at hl
  | app f a =>
    have hcost := root_no_inert_argument hm (flat_app_inert f a hl hs)
    have hone := hm.oneHole
    simp only [rootReader,spine_occ,occ,Nat.reduceAdd] at hone
    have hc : occ 1 f = 0 ∨ occ 1 a = 0 := by omega
    have low : 2 ≤ weight 0 f ∨ 2 ≤ weight 0 a := by
      rcases hc with hc | hc
      · exact .inl (by rw [weight_no_hole f 0 hc]; exact wire_positive f)
      · exact .inr (by rw [weight_no_hole a 0 hc]; exact wire_positive a)
    simp only [weight] at hcost
    rcases low with low | low <;> omega

#print axioms minimum_root_flat_is_hole
end Blc.SelfintRootFlat
