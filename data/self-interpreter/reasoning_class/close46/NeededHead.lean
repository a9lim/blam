import StreamSpecializer

/- An x-headed source let must use its definition essentially beyond the
   head occurrence. This is an exact replacement theorem, not a claim about
   the residual origin of the unary output. -/
namespace Blc.Close46NeededHead
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader SelfintControl
open Close46FlatMinimum Close46RootFlat Close46Front

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Removing x and identifying it with the nearest outer variable never
    copies syntax. This price holds even when x has many deep uses. -/
theorem nearest_price (t : Term) (d : Nat) :
    weight d (contract t (.var 0)) + freeLeaves 1 t + 3 * occ (d+2) t =
      weight (d+1) t := by
  have hh := weighted_beta_at t (.var 0) d
  simp [weight,freeLeaves,occ] at hh
  omega

def forget (a : Term) (bs : List Term) : Term :=
  spine a (bs.map (fun b => contract b (.var 0)))

theorem nearest_spine_price (bs : List Term) (d : Nat) :
    spineWeight d (bs.map (fun b => contract b (.var 0))) +
      spineFree 1 bs + 3 * spineOcc (d+2) bs = spineWeight (d+1) bs := by
  induction bs with
  | nil => simp [spineWeight,spineFree,spineOcc]
  | cons b bs ih =>
    have hh := nearest_price b d
    simp only [List.map_cons,spineWeight,spineFree,spineOcc]
    omega

/-- Keep the original A exactly once as head. All other x references are
    identified with the nearest outer variable. The saving is at least6,
    independent of multiplicity and capture depth. -/
theorem forget_price (a : Term) (bs : List Term) (d : Nat) :
    weight d (forget a bs) + 6 + spineFree 1 bs + 3 * spineOcc (d+2) bs =
      weight d (.app (.lam (spine (.var 0) bs)) a) := by
  have hh := nearest_spine_price bs d
  have hj : 0 ≠ d+1+1 := by omega
  simp only [forget,spine_weight,weight,hj,↓reduceIte]
  omega

theorem nearest_spine_occ (bs : List Term) (j : Nat) (hj : 0<j) :
    spineOcc j (bs.map (fun b => contract b (.var 0))) = spineOcc (j+1) bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    simp only [contract] at ih
    simp only [List.map_cons,spineOcc,contract,
      occ_substDec_ge b (.var 0) j 0 (by omega),occ,
      show 0≠j by omega,↓reduceIte,Nat.mul_zero,Nat.add_zero,ih]

theorem forget_occ (a : Term) (bs : List Term) (j : Nat) (hj : 0<j) :
    occ j (forget a bs) = occ j (.app (.lam (spine (.var 0) bs)) a) := by
  simp only [forget,spine_occ,nearest_spine_occ bs j hj,occ,
    show 0≠j+1 by omega,↓reduceIte,Nat.zero_add]
  omega

theorem spine_arguments_scope (t : Term) (bs : List Term) (k : Nat)
    (hs : FreeUnder k (spine t bs)) : ∀ b ∈ bs, FreeUnder k b := by
  induction bs generalizing t with
  | nil => simp
  | cons b bs ih =>
    have hb := (spine_scope (.app t b) bs k hs).2
    intro q hq
    simp only [List.mem_cons] at hq
    rcases hq with rfl | hq
    · exact hb
    · exact ih (.app t b) hs q hq

theorem spine_scope_of (t : Term) (bs : List Term) (k : Nat)
    (ht : FreeUnder k t) (hb : ∀ b ∈ bs, FreeUnder k b) :
    FreeUnder k (spine t bs) := by
  induction bs generalizing t with
  | nil => exact ht
  | cons b bs ih =>
    exact ih (.app t b) ⟨ht,hb b (by simp)⟩ (fun q hq => hb q (by simp [hq]))

theorem forget_scope (a : Term) (bs : List Term) (k : Nat) (hk : 0<k)
    (hs : FreeUnder k (.app (.lam (spine (.var 0) bs)) a)) :
    FreeUnder k (forget a bs) := by
  apply spine_scope_of _ _ _ hs.2
  intro q hq
  obtain ⟨b,hb,rfl⟩ := List.mem_map.mp hq
  exact beta_freeUnder (Beta.beta b (.var 0)) k
    ⟨spine_arguments_scope (.var 0) bs (k+1) hs.1 b hb,hk⟩

theorem context_scope (c : Context) (t : Term) (k : Nat)
    (hs : FreeUnder k (c.fill t)) : FreeUnder (k+ctxDepth c) t := by
  induction c generalizing k with
  | hole => exact hs
  | lam c ih =>
    have hh := ih (k+1) hs
    simpa only [ctxDepth,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using hh
  | appL c a ih => exact ih k hs.1
  | appR f c ih => exact ih k hs.2

theorem context_scope_replace (c : Context) (t u : Term) (k : Nat)
    (hs : FreeUnder k (c.fill t)) (hu : FreeUnder (k+ctxDepth c) u) :
    FreeUnder k (c.fill u) := by
  induction c generalizing k with
  | hole => exact hu
  | lam c ih =>
    exact ih (k+1) hs (by
      simpa only [ctxDepth,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using hu)
  | appL c a ih => exact ⟨ih k hs.1 hu,hs.2⟩
  | appR f c ih => exact ⟨hs.1,ih k hs.2 hu⟩

theorem forget_context_scope (c : Context) (a : Term) (bs : List Term)
    (hs : FreeUnder 2 (c.fill (.app (.lam (spine (.var 0) bs)) a))) :
    FreeUnder 2 (c.fill (forget a bs)) := by
  exact context_scope_replace c _ _ 2 hs
    (forget_scope a bs (2+ctxDepth c) (by omega) (context_scope c _ 2 hs))

/-- A semantic necessity statement at ANY source context. It uses the
    full zero/all-unary laws, without an unformalized neededness relation. -/
theorem minimum_forget_fails (c : Context) (a : Term) (bs : List Term)
    (hm : MinimumReader (c.fill (.app (.lam (spine (.var 0) bs)) a))) :
    ¬ ReaderLaws (c.fill (forget a bs)) := by
  intro hr
  have hj : occ 1 (c.fill (forget a bs))=1 := by
    have hh := hm.oneHole
    simpa only [occ_fill,forget_occ a bs (1+ctxDepth c) (by omega)] using hh
  have hmin := hm.minimal _ hr hj
  have hp := forget_price a bs (ctxDepth c)
  simp only [weighted_fill,Nat.zero_add] at hmin
  omega

theorem forget_eq_contract (a : Term) (bs : List Term) (hh : spineOcc 0 bs=0) :
    forget a bs = contract (spine (.var 0) bs) a := by
  simp only [forget,contract,subst_spine,substDec,if_true]
  congr 1
  apply List.map_congr_left
  intro b hb
  have ho : occ 0 b=0 := by
    clear a
    induction bs with
    | nil => simp at hb
    | cons q qs ih =>
      simp only [spineOcc] at hh
      simp only [List.mem_cons] at hb
      rcases hb with rfl | hb
      · omega
      · exact ih (by omega) hb
  exact SelfintProjections.subst_absent b 0 (.var 0) a ho

/-- Therefore at least one non-head occurrence is unavoidable in every
    x-headed minimum source let, regardless of its definition's shape. -/
theorem minimum_extra_use (c : Context) (a : Term) (bs : List Term)
    (hm : MinimumReader (c.fill (.app (.lam (spine (.var 0) bs)) a))) :
    0 < spineOcc 0 bs := by
  by_cases hh : spineOcc 0 bs=0
  · have hr := hm.laws.beta (beta_fill c (Beta.beta (spine (.var 0) bs) a))
    rw [← forget_eq_contract a bs hh] at hr
    exact (minimum_forget_fails c a bs hm hr).elim
  · omega

/-- The earlier first-body source cap gives one to five additional uses.
    Their joint replacement by s cannot preserve the full reader laws. -/
theorem body_needed_sharing {a : Term} {bs as : List Term}
    (hm : MinimumReader (bodyReader (spine (.var 0) bs) a as))
    (hw : weight 0 (bodyReader (spine (.var 0) bs) a as) ≤45) :
    (1 ≤ spineOcc 0 bs ∧ spineOcc 0 bs ≤5) ∧
    ¬ ReaderLaws (.lam (spine (forget a bs) as)) := by
  have hc : MinimumReader ((bodyContext as).fill
      (.app (.lam (spine (.var 0) bs)) a)) := by
    simpa only [bodyContext_fill] using hm
  have hpos := minimum_extra_use (bodyContext as) a bs hc
  have hcap := body_head_multiplicity (spine (.var 0) bs) a as
    hm.laws.probes hm.oneHole hw
  have hno := minimum_forget_fails (bodyContext as) a bs hc
  simp only [spine_occ,occ,if_true] at hcap
  refine ⟨⟨by omega,by omega⟩,?_⟩
  simpa only [bodyContext,Context.fill,spineContext_fill] using hno

/-- If forgetting the operand copies preserves zero, some unary length
    necessarily detects the loss. The compared source is well scoped. -/
theorem unary_needed_if_zero (c : Context) (a : Term) (bs : List Term)
    (hm : MinimumReader (c.fill (.app (.lam (spine (.var 0) bs)) a)))
    (hz : BetaJoin (.app (c.fill (forget a bs)) Z) zeroOut) :
    ∃ n, ¬ BetaJoin (.app (c.fill (forget a bs))
      (streamOf (vbits (n+1)) (.var 2)))
      (.app (.app (.var 0) (streamOf (vbits n) (.var 2))) (.var 2)) := by
  apply Classical.not_forall.mp
  intro hu
  exact minimum_forget_fails c a bs hm
    ⟨forget_context_scope c a bs hm.laws.scope,hz,hu⟩

#print axioms forget_context_scope
#print axioms unary_needed_if_zero
#print axioms nearest_price
#print axioms forget_price
#print axioms minimum_forget_fails
#print axioms minimum_extra_use
#print axioms body_needed_sharing
end Blc.Close46NeededHead
