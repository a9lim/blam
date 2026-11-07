import FlatPrefix

/- Move a sharing let into an application context without expanding its
   argument. All uses may remain nonlinear. Exact weighted savings count
   the captures removed from the surrounding context. -/
namespace Blc.Close46LetSink
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader
open Close46Flat Close46FlatMinimum SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

inductive AppContext
  | hole
  | left : AppContext → Term → AppContext
  | right : Term → AppContext → AppContext

def AppContext.fill : AppContext → Term → Term
  | .hole,t => t
  | .left c a,t => .app (c.fill t) a
  | .right f c,t => .app f (c.fill t)

def AppContext.noX : AppContext → Prop
  | .hole => True
  | .left c a => c.noX ∧ occ 0 a = 0
  | .right f c => occ 0 f = 0 ∧ c.noX

def AppContext.lower : AppContext → AppContext
  | .hole => .hole
  | .left c a => .left c.lower (contract a (.var 0))
  | .right f c => .right (contract f (.var 0)) c.lower

def AppContext.restWeight (d : Nat) : AppContext → Nat
  | .hole => 0
  | .left c a => 2 + c.restWeight d + weight d a
  | .right f c => 2 + weight d f + c.restWeight d

def AppContext.restOcc (j : Nat) : AppContext → Nat
  | .hole => 0
  | .left c a => c.restOcc j + occ j a
  | .right f c => occ j f + c.restOcc j

/-- j contributes four units to this capture charge, all other outer
    references one. The hole itself contributes nothing. -/
def AppContext.charge (d : Nat) : AppContext → Nat
  | .hole => 0
  | .left c a => c.charge d + freeLeaves 1 a + 3 * occ (d+2) a
  | .right f c => freeLeaves 1 f + 3 * occ (d+2) f + c.charge d

theorem fill_weight (c : AppContext) (t : Term) (d : Nat) :
    weight d (c.fill t) = weight d t + c.restWeight d := by
  induction c with
  | hole => simp [AppContext.fill,AppContext.restWeight]
  | left c a ih => simp only [AppContext.fill,AppContext.restWeight,weight,ih]; omega
  | right f c ih => simp only [AppContext.fill,AppContext.restWeight,weight,ih]; omega

theorem fill_occ (c : AppContext) (t : Term) (j : Nat) :
    occ j (c.fill t) = occ j t + c.restOcc j := by
  induction c with
  | hole => simp [AppContext.fill,AppContext.restOcc]
  | left c a ih => simp only [AppContext.fill,AppContext.restOcc,occ,ih]; omega
  | right f c ih => simp only [AppContext.fill,AppContext.restOcc,occ,ih]; omega

theorem fill_beta (c : AppContext) {t u : Term} (h : Beta t u) : Beta (c.fill t) (c.fill u) := by
  induction c with
  | hole => exact h
  | left c a ih => exact .appL a ih
  | right f c ih => exact .appR f ih

theorem drop_weight (f : Term) (d : Nat) (h : occ 0 f = 0) :
    weight d (contract f (.var 0)) + freeLeaves 1 f + 3 * occ (d+2) f = weight (d+1) f := by
  have hh := weighted_beta_at f (.var 0) d
  rw [h,occDepth_zero h] at hh
  simp only [weight,Int.natCast_zero,Int.zero_sub,Int.mul_zero,Int.sub_zero,
    Int.natCast_add,Int.neg_one_mul] at hh
  omega

theorem lower_weight (c : AppContext) (d : Nat) (h : c.noX) :
    c.lower.restWeight d + c.charge d = c.restWeight (d+1) := by
  induction c with
  | hole => simp [AppContext.lower,AppContext.restWeight,AppContext.charge]
  | left c a ih =>
    have hc := ih h.1
    have ha := drop_weight a d h.2
    simp only [AppContext.lower,AppContext.restWeight,AppContext.charge]
    omega
  | right f c ih =>
    have hf := drop_weight f d h.1
    have hc := ih h.2
    simp only [AppContext.lower,AppContext.restWeight,AppContext.charge]
    omega

theorem lower_occ (c : AppContext) (j : Nat) (h : c.noX) :
    c.lower.restOcc j = c.restOcc (j+1) := by
  induction c with
  | hole => rfl
  | left c a ih =>
    simp only [AppContext.lower,AppContext.restOcc,ih h.1,contract,
      occ_substDec_ge a (.var 0) j 0 (by omega),h.2,Nat.zero_mul,Nat.add_zero]
  | right f c ih =>
    simp only [AppContext.lower,AppContext.restOcc,ih h.2,contract,
      occ_substDec_ge f (.var 0) j 0 (by omega),h.1,Nat.zero_mul,Nat.add_zero]

theorem contract_fill (c : AppContext) (g a : Term) (h : c.noX) :
    contract (c.fill g) a = c.lower.fill (contract g a) := by
  induction c with
  | hole => rfl
  | left c x ih =>
    simp only [AppContext.fill,AppContext.lower,contract,substDec]
    have hc := ih h.1
    simp only [contract] at hc
    rw [hc,SelfintProjections.subst_absent x 0 a (.var 0) h.2]
  | right f c ih =>
    simp only [AppContext.fill,AppContext.lower,contract,substDec]
    have hc := ih h.2
    simp only [contract] at hc
    rw [hc,SelfintProjections.subst_absent f 0 a (.var 0) h.1]

theorem sink_join (c : AppContext) (g a : Term) (h : c.noX) :
    BetaJoin (c.lower.fill (.app (.lam g) a)) (.app (.lam (c.fill g)) a) := by
  refine ⟨c.lower.fill (contract g a),.head (fill_beta c.lower (.beta g a)) (.refl _),?_⟩
  have hb := Beta.beta (c.fill g) a
  rw [contract_fill c g a h] at hb
  exact .head hb (.refl _)

theorem fill_scope (c : AppContext) (g : Term) (k : Nat) (h : FreeUnder k (c.fill g)) :
    FreeUnder k g := by
  induction c with
  | hole => exact h
  | left c a ih => exact ih h.1
  | right f c ih => exact ih h.2

theorem lower_scope (c : AppContext) (g q : Term) (k : Nat) (hk : 0 < k)
    (h : FreeUnder (k+1) (c.fill g)) (hq : FreeUnder k q) :
    FreeUnder k (c.lower.fill q) := by
  induction c with
  | hole => exact hq
  | left c a ih =>
    exact ⟨ih h.1, beta_freeUnder (.beta a (.var 0)) k ⟨h.2,hk⟩⟩
  | right f c ih =>
    exact ⟨beta_freeUnder (.beta f (.var 0)) k ⟨h.1,hk⟩,ih h.2⟩

def sunkReader (c : AppContext) (g a : Term) (as : List Term) : Term :=
  .lam (spine (c.lower.fill (.app (.lam g) a)) as)

theorem sunk_scope (c : AppContext) (g a : Term) (as : List Term)
    (hs : FreeUnder 2 (bodyReader (c.fill g) a as)) :
    FreeUnder 2 (sunkReader c g a as) := by
  have h0 := spine_scope (.app (.lam (c.fill g)) a) as 3 hs
  have hg := fill_scope c g 4 h0.1
  have hl := lower_scope c g (.app (.lam g) a) 3 (by omega) h0.1 ⟨hg,h0.2⟩
  exact spine_scope_replace as 3 hs hl

theorem sunk_one_hole (c : AppContext) (g a : Term) (as : List Term) (h : c.noX) :
    occ 1 (sunkReader c g a as) = occ 1 (bodyReader (c.fill g) a as) := by
  simp only [sunkReader,bodyReader,occ,spine_occ,Nat.reduceAdd,fill_occ,lower_occ c 2 h]
  omega

theorem sunk_laws (c : AppContext) (g a : Term) (as : List Term) (h : c.noX)
    (hl : ReaderLaws (bodyReader (c.fill g) a as)) : ReaderLaws (sunkReader c g a as) := by
  have hj0 := join_spine (sink_join c g a h) as
  obtain ⟨v,hv0,hv1⟩ := hj0
  have hj : BetaJoin (sunkReader c g a as) (bodyReader (c.fill g) a as) :=
    ⟨.lam v,betas_lam hv0,betas_lam hv1⟩
  exact ⟨sunk_scope c g a as hl.scope,join_trans (join_appL Z hj) hl.zero,
    fun n => join_trans (join_appL _ hj) (hl.unary n)⟩

/-- No argument copying, changed hole multiplicity, or asymptotic price:
    the transformation saves exactly the removed outer captures. -/
theorem sunk_price (c : AppContext) (g a : Term) (as : List Term) (h : c.noX) :
    weight 0 (sunkReader c g a as) + c.charge 1 =
      weight 0 (bodyReader (c.fill g) a as) := by
  have hc := lower_weight c 1 h
  simp only [Nat.reduceAdd] at hc
  simp only [sunkReader,bodyReader,weight,spine_weight,fill_weight,Nat.reduceAdd]
  omega

/-- A minimum reader cannot keep an avoidable capture outside the shared
    subterm. All copies of x can remain inside g. -/
theorem minimum_sink_charge_zero (c : AppContext) (g a : Term) (as : List Term)
    (hm : MinimumReader (bodyReader (c.fill g) a as)) (h : c.noX) : c.charge 1 = 0 := by
  have hl := sunk_laws c g a as h hm.laws
  have hj : occ 1 (sunkReader c g a as) = 1 := by
    rw [sunk_one_hole c g a as h]; exact hm.oneHole
  have hmin := hm.minimal _ hl hj
  have hp := sunk_price c g a as h
  omega

/-- In particular, an arbitrary definition used only in the first
    callback of s can be sunk into that callback, saving the s capture. -/
theorem no_single_callback_let (g a : Term) (as : List Term)
    (hm : MinimumReader (bodyReader (.app (.var 1) g) a as)) : False := by
  have h := minimum_sink_charge_zero (.right (.var 1) .hole) g a as hm (by simp [AppContext.noX,occ])
  simp [AppContext.charge,freeLeaves,occ] at h

def AppContext.spine (c : AppContext) : List Term → AppContext
  | [] => c
  | a::as => AppContext.spine (.left c a) as

theorem appctx_spine_fill (c : AppContext) (as : List Term) (g : Term) :
    (c.spine as).fill g = spine (c.fill g) as := by
  induction as generalizing c with
  | nil => rfl
  | cons a as ih => exact ih (.left c a)

theorem appctx_spine_noX (c : AppContext) (as : List Term)
    (hc : c.noX) (ha : ∀ a ∈ as, occ 0 a = 0) : (c.spine as).noX := by
  induction as generalizing c with
  | nil => exact hc
  | cons a as ih =>
    apply ih (.left c a) ⟨hc,ha a (by simp)⟩
    intro t ht; exact ha t (by simp [ht])

theorem appctx_spine_charge (c : AppContext) (as : List Term) (d : Nat) :
    c.charge d ≤ (c.spine as).charge d := by
  induction as generalizing c with
  | nil => exact Nat.le_refl _
  | cons a as ih =>
    have h := ih (.left c a)
    change c.charge d ≤ ((.left c a : AppContext).spine as).charge d
    have ha : c.charge d ≤ (AppContext.left c a).charge d := by
      simp only [AppContext.charge]; omega
    exact Nat.le_trans ha h

theorem spine_append (t : Term) (as bs : List Term) :
    spine t (as++bs) = spine (spine t as) bs := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => exact ih (.app t a)

theorem spineOcc_zero (as : List Term) (h : ∀ a ∈ as, occ 0 a = 0) : spineOcc 0 as = 0 := by
  induction as with
  | nil => rfl
  | cons a as ih =>
    have ha := h a (by simp)
    have ht := ih (fun a ha => h a (by simp [ha]))
    simp [spineOcc,ha,ht]

/-- All sharing confined to one operand of an s-spine can be sunk into
    that operand, saving at least one bit. The operand and shared argument
    are arbitrary terms, and the multiplicity is unrestricted. -/
theorem no_one_operand_spine_let (before after as : List Term) (g a : Term)
    (hb : ∀ t ∈ before, occ 0 t = 0) (ha : ∀ t ∈ after, occ 0 t = 0)
    (hm : MinimumReader (bodyReader (spine (.var 1) (before++g::after)) a as)) : False := by
  let f := spine (.var 1) before
  let c := (AppContext.right f .hole).spine after
  have hfx : occ 0 f = 0 := by
    simp only [f,spine_occ,occ,spineOcc_zero before hb]
    rfl
  have hcx : c.noX := appctx_spine_noX _ after ⟨hfx,trivial⟩ ha
  have he : c.fill g = spine (.var 1) (before++g::after) := by
    rw [spine_append]
    exact appctx_spine_fill _ _ _
  have h := minimum_sink_charge_zero c g a as (he.symm ▸ hm) hcx
  have hlo := appctx_spine_charge (.right f .hole) after 1
  have hf : 1 ≤ freeLeaves 1 f := by
    simp [f,spine_free,freeLeaves]
  change freeLeaves 1 f + 3 * occ 3 f + 0 ≤ c.charge 1 at hlo
  omega

open Close46RootFlat

def sunkRoot (c : AppContext) (g a : Term) (as : List Term) : Term :=
  spine (c.lower.fill (.app (.lam g) a)) as

theorem sunkRoot_scope (c : AppContext) (g a : Term) (as : List Term)
    (hs : FreeUnder 2 (rootReader (c.fill g) a as)) : FreeUnder 2 (sunkRoot c g a as) := by
  have h0 := spine_scope (.app (.lam (c.fill g)) a) as 2 hs
  have hg := fill_scope c g 3 h0.1
  have hl := lower_scope c g (.app (.lam g) a) 2 (by omega) h0.1 ⟨hg,h0.2⟩
  exact spine_scope_replace as 2 hs hl

theorem sunkRoot_laws (c : AppContext) (g a : Term) (as : List Term) (h : c.noX)
    (hl : ReaderLaws (rootReader (c.fill g) a as)) : ReaderLaws (sunkRoot c g a as) := by
  have hj := join_spine (sink_join c g a h) as
  exact ⟨sunkRoot_scope c g a as hl.scope,join_trans (join_appL Z hj) hl.zero,
    fun n => join_trans (join_appL _ hj) (hl.unary n)⟩

theorem sunkRoot_one_hole (c : AppContext) (g a : Term) (as : List Term) (h : c.noX) :
    occ 1 (sunkRoot c g a as) = occ 1 (rootReader (c.fill g) a as) := by
  simp only [sunkRoot,rootReader,occ,spine_occ,Nat.reduceAdd,fill_occ,lower_occ c 1 h]
  omega

theorem sunkRoot_price (c : AppContext) (g a : Term) (as : List Term) (h : c.noX) :
    weight 0 (sunkRoot c g a as) + c.charge 0 = weight 0 (rootReader (c.fill g) a as) := by
  have hc := lower_weight c 0 h
  simp only [Nat.reduceAdd] at hc
  simp only [sunkRoot,rootReader,weight,spine_weight,fill_weight,Nat.reduceAdd]
  omega

theorem minimum_root_sink_charge_zero (c : AppContext) (g a : Term) (as : List Term)
    (hm : MinimumReader (rootReader (c.fill g) a as)) (h : c.noX) : c.charge 0 = 0 := by
  have hl := sunkRoot_laws c g a as h hm.laws
  have hj : occ 1 (sunkRoot c g a as) = 1 := by
    rw [sunkRoot_one_hole c g a as h]; exact hm.oneHole
  have hmin := hm.minimal _ hl hj
  have hp := sunkRoot_price c g a as h
  omega

#print axioms sunk_laws
#print axioms sunk_price
#print axioms minimum_sink_charge_zero
#print axioms no_one_operand_spine_let
#print axioms sunkRoot_laws
#print axioms sunkRoot_price
#print axioms minimum_root_sink_charge_zero
end Blc.Close46LetSink
