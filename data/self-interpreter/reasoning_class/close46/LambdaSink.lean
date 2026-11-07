import ClosedSpecializer

/- A let may move across a lambda without copying its definition. This is
   an exact source transformation; its capture charge may be positive. -/
namespace Blc.Close46LambdaSink
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader SelfintControl
open Close46FlatMinimum Close46RootFlat

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def swap (k : Nat) : Term → Term
  | .var n => if n=k then .var (k+1) else if n=k+1 then .var k else .var n
  | .lam b => .lam (swap (k+1) b)
  | .app f a => .app (swap k f) (swap k a)

/-- Swap the two adjacent binders, then remove the first: this is exactly
    removal of the original second binder. No freshness condition on a. -/
theorem swap_subst (t a : Term) (k : Nat) :
    substDec k a (swap k t) = substDec (k+1) a t := by
  induction t generalizing a k with
  | var n =>
    by_cases h0 : n=k
    · subst n
      simp [swap,substDec,show k+1 ≠ k by omega,show ¬ k>k+1 by omega]
    · by_cases h1 : n=k+1
      · subst n
        simp [swap,substDec,show k+1 ≠ k by omega]
      · have hh : k<n ↔ k+1<n := by omega
        simp [swap,h0,h1,substDec,hh]
  | lam b ih => simpa only [swap,substDec] using congrArg Term.lam (ih (shift 1 0 a) (k+1))
  | app f a' ihf iha => simp only [swap,substDec,ihf, iha]

theorem swap_scope (t : Term) (k n : Nat) (hk : k+2 ≤ n) (hs : FreeUnder n t) :
    FreeUnder n (swap k t) := by
  induction t generalizing k n with
  | var v => simp only [swap]; split <;> (try split) <;> simp_all [FreeUnder] <;> omega
  | lam b ih => exact ih (k+1) (n+1) (by omega) hs
  | app f a ihf iha => exact ⟨ihf k n hk hs.1,iha k n hk hs.2⟩

theorem swap_occ_outer (t : Term) (k j : Nat) (hj : k+2 ≤ j) :
    occ j (swap k t) = occ j t := by
  induction t generalizing k j with
  | var n => simp only [swap,occ]; repeat' first | split | simp_all [occ] | omega
  | lam b ih => exact ih (k+1) (j+1) (by omega)
  | app f a ihf iha => simp only [swap,occ,ihf k j hj,iha k j hj]

theorem swap_weight (t : Term) (k d : Nat) :
    weight (d+k+2) (swap k t) + occ (k+1) t =
      weight (d+k+2) t + occ k t := by
  induction t generalizing k d with
  | var n =>
    by_cases h0 : n=k
    · subst n
      have hk : k ≠ d+k+2+1 := by omega
      have hk' : k+1 ≠ d+k+2+1 := by omega
      simp [swap,weight,occ,hk,hk']
      omega
    · by_cases h1 : n=k+1
      · subst n
        have hk : k ≠ d+k+2+1 := by omega
        have hk' : k+1 ≠ d+k+2+1 := by omega
        simp [swap,weight,occ,hk,hk']
        omega
      · simp [swap,weight,occ,h0,h1]
  | lam b ih =>
    have hh := ih (k+1) d
    simp only [swap,weight,occ]
    rw [show d+k+2+1 = d+(k+1)+2 by omega]
    omega
  | app f a ihf iha =>
    have hf := ihf k d; have ha := iha k d
    simp only [swap,weight,occ]
    omega

/-- Moving a source definition beneath one extra binder charges one bit
    per captured leaf, with four bits for each source j. -/
theorem shifted_weight (t : Term) (d c : Nat) (hc : c ≤ d+1) :
    weight (d+1) (shift 1 c t) =
      weight d t + freeLeaves c t + 3 * occ (d+1) t := by
  induction t generalizing d c with
  | var n =>
    simp only [shift,weight,freeLeaves,occ]
    repeat' first | split | simp_all [weight] | omega
  | lam b ih =>
    have hh := ih (d+1) (c+1) (by omega)
    simp only [shift,weight,freeLeaves,occ]
    omega
  | app f a ihf iha =>
    have hf := ihf d c hc; have ha := iha d c hc
    simp only [shift,weight,freeLeaves,occ]
    omega

def outer (b a : Term) : Term := .app (.lam (.lam b)) a
def inner (b a : Term) : Term := .lam (.app (.lam (swap 0 b)) (shift 1 0 a))

theorem sink_join (b a : Term) : BetaJoin (inner b a) (outer b a) := by
  refine ⟨.lam (substDec 1 (shift 1 0 a) b),?_,?_⟩
  · have hh := Beta.lam (Beta.beta (swap 0 b) (shift 1 0 a))
    rw [contract,swap_subst] at hh
    exact .head hh (.refl _)
  · exact .head (Beta.beta (.lam b) a) (.refl _)

theorem inner_scope (b a : Term) (k : Nat) (hs : FreeUnder k (outer b a)) :
    FreeUnder k (inner b a) := by
  refine ⟨swap_scope b 0 (k+2) (by omega) hs.1,
    SelfintClassNext.shift_scope a 0 k hs.2⟩

theorem inner_occ (b a : Term) (j : Nat) : occ j (inner b a) = occ j (outer b a) := by
  simp only [inner,outer,occ,swap_occ_outer b 0 (j+1+1) (by omega),
    occ_shift_ge a j 0 (by omega)]

/-- old body frame [y,x,...]: x moves one slot inward and y one outward.
    The source definition A remains present exactly once. -/
theorem sink_price (b a : Term) (d : Nat) :
    weight d (inner b a) + occ 1 b = weight d (outer b a) +
      occ 0 b + freeLeaves 0 a + 3 * occ (d+1) a := by
  have hs := swap_weight b 0 d
  have ha := shifted_weight a d 0 (by omega)
  simp only [inner,outer,weight,Nat.zero_add,Nat.add_zero] at hs ⊢
  rw [show d+1+1 = d+2 by omega]
  omega

theorem laws_join {r t : Term} (hr : ReaderLaws r) (hs : FreeUnder 2 t)
    (hj : BetaJoin t r) : ReaderLaws t :=
  ⟨hs,join_trans (join_appL Z hj) hr.zero,
   fun n => join_trans (join_appL _ hj) (hr.unary n)⟩

def innerRoot (b a : Term) (as : List Term) : Term := spine (inner b a) as
def innerBody (b a : Term) (as : List Term) : Term := .lam (innerRoot b a as)

theorem innerRoot_laws {b a : Term} {as : List Term}
    (hr : ReaderLaws (rootReader (.lam b) a as)) : ReaderLaws (innerRoot b a as) := by
  apply laws_join hr
  · exact spine_scope_replace as 2 hr.scope (inner_scope b a 2 (spine_scope _ as 2 hr.scope))
  · exact join_spine (sink_join b a) as

theorem innerBody_laws {b a : Term} {as : List Term}
    (hr : ReaderLaws (bodyReader (.lam b) a as)) : ReaderLaws (innerBody b a as) := by
  apply laws_join hr
  · exact spine_scope_replace as 3 hr.scope (inner_scope b a 3 (spine_scope _ as 3 hr.scope))
  · obtain ⟨u,hu,hv⟩ := join_spine (sink_join b a) as
    exact ⟨.lam u,betas_lam hu,betas_lam hv⟩

theorem innerRoot_holes (b a : Term) (as : List Term) :
    occ 1 (innerRoot b a as) = occ 1 (rootReader (.lam b) a as) := by
  simp only [innerRoot,rootReader,spine_occ,inner_occ,outer]

theorem innerBody_holes (b a : Term) (as : List Term) :
    occ 1 (innerBody b a as) = occ 1 (bodyReader (.lam b) a as) := by
  simp only [innerBody,innerRoot,bodyReader,occ,spine_occ,inner_occ,outer]

/-- A minimum first-root let with a lambda-headed body must pay this
    capture inequality. When it fails, sink the let instead of expanding A. -/
theorem minimum_root_capture {b a : Term} {as : List Term}
    (hm : MinimumReader (rootReader (.lam b) a as)) :
    occ 1 b ≤ occ 0 b + freeLeaves 0 a + 3 * occ 1 a := by
  have hr := innerRoot_laws hm.laws
  have hj : occ 1 (innerRoot b a as)=1 := (innerRoot_holes b a as).trans hm.oneHole
  have hmin := hm.minimal _ hr hj
  have he := sink_price b a 0
  change weight 0 (spine (outer b a) as) ≤ weight 0 (spine (inner b a) as) at hmin
  simp only [spine_weight] at hmin
  simp only [Nat.reduceAdd] at he
  omega

theorem minimum_body_capture {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader (.lam b) a as)) :
    occ 1 b ≤ occ 0 b + freeLeaves 0 a + 3 * occ 2 a := by
  have hr := innerBody_laws hm.laws
  have hj : occ 1 (innerBody b a as)=1 := (innerBody_holes b a as).trans hm.oneHole
  have hmin := hm.minimal _ hr hj
  have he := sink_price b a 1
  change 2 + weight 1 (spine (outer b a) as) ≤ 2 + weight 1 (spine (inner b a) as) at hmin
  simp only [spine_weight] at hmin
  simp only [Nat.reduceAdd] at he
  omega

/-- Numeric counterexample to an unrestricted "linear lets never pay".
    It is not claimed to be a reader. A=(s s)c has three free captures. -/
def linearA : Term := .app (.app (.var 0) (.var 0)) (.var 1)
def linearB : Term := .lam (.lam (.lam (.lam (.var 4))))
theorem linear_saving_counterexample :
    occ 0 linearB = 1 ∧ occ 2 linearA = 0 ∧
    weight 1 (.app (.lam linearB) linearA) = 29 ∧
    weight 1 (contract linearB linearA) = 31 := by decide

#print axioms sink_join
#print axioms sink_price
#print axioms minimum_root_capture
#print axioms minimum_body_capture
#print axioms linear_saving_counterexample
end Blc.Close46LambdaSink
