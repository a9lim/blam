/-
The helper template with any closed specializer P in place of F: neither
λs. ((λg. s (g P) (g s)) A) j nor (λg s. s (g P) (g s) j) A is a reader with one
source j below weight 46, for arbitrary A (`local_closed_floor`,
`root_closed_floor`). Inlining the helper costs exactly wire A - 10 locally
and wire A + 2 freeLeaves A - 14 at the root (`local_inline_price`,
`root_inline_price`); these can be positive, so they are prices, not a
dominance theorem. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintHelperPair
namespace Blc.SelfintClosedSpecializer
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintHelperPair
open SelfintLocalCost

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def localWith (a p : Term) : Term := .lam
  (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) p))
    (.app (.var 0) (.var 1)))) a) (.var 2))

def rootWith (a p : Term) : Term := .app
  (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) p))
    (.app (.var 1) (.var 0))) (.var 3)))) a

theorem local_price (a p : Term) (hp : Closed p) (ha : occ 2 a = 0) :
    weight 0 (localWith a p) = 30 + wire p + wire a := by
  have hh := weight_no_hole p 2 (occ_of_freeUnder p 0 3 hp (by omega))
  have ht := weight_no_hole a 1 ha
  simp only [localWith,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,hh,ht]
  omega

theorem root_price (a p : Term) (hp : Closed p) (ha : occ 1 a = 0) :
    weight 0 (rootWith a p) = 34 + wire p + wire a := by
  have hh := weight_no_hole p 2 (occ_of_freeUnder p 0 3 hp (by omega))
  have ht := weight_no_hole a 0 ha
  simp only [rootWith,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,hh,ht]
  omega

def inlineWith (a p : Term) : Term := .lam
  (.app (.app (.app (.var 0) (.app a p)) (.app a (.var 0))) (.var 2))

theorem local_beta (a p : Term) (hp : Closed p) :
    Beta (localWith a p) (inlineWith a p) := by
  have hh := Beta.lam (.appL (.var 2) (Beta.beta
    (.app (.app (.var 1) (.app (.var 0) p)) (.app (.var 0) (.var 1))) a))
  simpa only [localWith,inlineWith,contract,substDec,Nat.reduceEqDiff,Nat.reduceGT,
    Nat.reduceSub,↓reduceIte,substDec_closed 0 a hp] using hh

theorem root_beta (a p : Term) (hp : Closed p) :
    Beta (rootWith a p) (inlineWith (shift 1 0 a) p) := by
  have hh := Beta.beta
    (.lam (.app (.app (.app (.var 0) (.app (.var 1) p))
      (.app (.var 1) (.var 0))) (.var 3))) a
  simpa only [rootWith,inlineWith,contract,substDec,Nat.reduceAdd,Nat.reduceEqDiff,
    Nat.reduceGT,Nat.reduceSub,↓reduceIte,substDec_closed 1 (shift 1 0 a) hp] using hh

/-- The complete local inlining difference is wire(A)-10. -/
theorem local_inline_price (a p : Term) (hp : Closed p) (ha : occ 2 a=0) :
    weight 0 (inlineWith a p) + 10 = weight 0 (localWith a p) + wire a := by
  have hh := weight_no_hole p 1 (occ_of_freeUnder p 0 2 hp (by omega))
  have ht := weight_no_hole a 1 ha
  rw [local_price a p hp ha]
  simp only [inlineWith,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,hh,ht]
  omega

/-- At the root each copy also captures the newly crossed stream binder:
    the complete difference is wire(A)+2*freeLeaves(A)-14. -/
theorem root_inline_price (a p : Term) (hp : Closed p) (ha : occ 1 a=0) :
    weight 0 (inlineWith (shift 1 0 a) p) + 14 =
      weight 0 (rootWith a p) + wire a + 2 * freeLeaves 0 a := by
  have hh := weighted_beta_at
    (.lam (.app (.app (.app (.var 0) (.app (.var 1) p))
      (.app (.var 1) (.var 0))) (.var 3))) a 0
  have he : contract
      (.lam (.app (.app (.app (.var 0) (.app (.var 1) p))
        (.app (.var 1) (.var 0))) (.var 3))) a = inlineWith (shift 1 0 a) p := by
    simp only [contract,inlineWith,substDec,Nat.reduceAdd,Nat.reduceEqDiff,
      Nat.reduceGT,Nat.reduceSub,↓reduceIte,substDec_closed 1 (shift 1 0 a) hp]
  have hp1 := occ_of_freeUnder p 0 1 hp (by omega)
  have hp3 := occ_of_freeUnder p 0 3 hp (by omega)
  have hpD := occDepth_zero hp1
  have hpF := freeLeaves_closed p 2 (closed_freeUnder hp 2)
  have haW := weight_no_hole a 0 ha
  rw [he] at hh
  change (weight 0 (inlineWith (shift 1 0 a) p) : Int) - weight 0 (rootWith a p) = _ at hh
  simp [occ,occDepth,freeLeaves,hp1,hp3,hpD,hpF,ha,haW] at hh
  omega

def headIs (j : Nat) : Term → Bool
  | .var n => n == j
  | .lam _ => false
  | .app f _ => headIs j f

theorem headIs_sound (t : Term) (j : Nat) (h : headIs j t = true) : RigidHead j t := by
  induction t with
  | var n => simp only [headIs,beq_iff_eq] at h; subst n; exact .var
  | lam b => simp [headIs] at h
  | app f a ihf iha => exact .app a (ihf h)

def cHeadZero (r : Term) : Bool := match normalizeUntil 32 (.app r Z) with
  | none => false
  | some t => headIs 0 t

theorem cHeadZero_sound {r : Term} (h : cHeadZero r = true) :
    ∃ t, Betas (.app r Z) t ∧ RigidHead 0 t := by
  unfold cHeadZero at h
  cases hn : normalizeUntil 32 (.app r Z) with
  | none => simp [hn] at h
  | some t => exact ⟨t,normalizeUntil_sound hn,headIs_sound t 0 (by simpa [hn] using h)⟩

theorem rigidHead_subst {t : Term} {j k : Nat} (h : RigidHead j t)
    (hk : j < k) (p : Term) : RigidHead j (substDec k p t) := by
  induction h with
  | var => simp only [substDec,show j ≠ k by omega,show ¬ k < j by omega,↓reduceIte]; exact .var
  | app a hf ih => exact .app _ ih

theorem c_head_contradiction {r t : Term} (hr : Reader r)
    (ht : Betas (.app r Z) t) (hc : RigidHead 0 t) : False := by
  have he := betas_preserve_nf ht hr.zero_red zeroOut_normal
  have hh := rigidHead_betas he hc
  change RigidHead 0 (.app (.var 3) (.var 1)) at hh
  cases hh with | app _ hf => cases hf

theorem local_generic_subst (a p : Term) (ha : FreeUnder 3 a) (hp : Closed p) :
    substDec 4 p (localWith a (.var 6)) = localWith a p := by
  have haa := substDec_of_freeUnder a 5 p (freeUnder_mono (by omega) ha)
  simp only [localWith,substDec,Nat.reduceAdd,Nat.reduceEqDiff,Nat.reduceGT,
    ↓reduceIte,shift_closed 1 0 hp,haa]

theorem root_generic_subst (a p : Term) (ha : FreeUnder 2 a) (hp : Closed p) :
    substDec 4 p (rootWith a (.var 6)) = rootWith a p := by
  have haa := substDec_of_freeUnder a 4 p (freeUnder_mono (by omega) ha)
  simp only [rootWith,substDec,Nat.reduceAdd,Nat.reduceEqDiff,Nat.reduceGT,
    ↓reduceIte,shift_closed 1 0 hp,haa]

theorem generic_local_reject {a p : Term} (ha : FreeUnder 3 a) (hp : Closed p)
    (hh : cHeadZero (localWith a (.var 6)) = true) : ¬ Reader (localWith a p) := by
  intro hr
  obtain ⟨t,ht,hc⟩ := cHeadZero_sound hh
  have hs := betas_subst ht 4 p
  have hz := substDec_of_freeUnder Z 4 p (by decide)
  simp only [substDec,local_generic_subst a p ha hp,hz] at hs
  exact c_head_contradiction hr hs (rigidHead_subst hc (by omega : 0<4) p)

theorem generic_root_reject {a p : Term} (ha : FreeUnder 2 a) (hp : Closed p)
    (hh : cHeadZero (rootWith a (.var 6)) = true) : ¬ Reader (rootWith a p) := by
  intro hr
  obtain ⟨t,ht,hc⟩ := cHeadZero_sound hh
  have hs := betas_subst ht 4 p
  have hz := substDec_of_freeUnder Z 4 p (by decide)
  simp only [substDec,root_generic_subst a p ha hp,hz] at hs
  exact c_head_contradiction hr hs (rigidHead_subst hc (by omega : 0<4) p)

theorem smallC_generic : smallC.all (fun a => cHeadZero (localWith a (.var 6))) = true := by decide

theorem local_helper_ten {a p : Term} (hp : Closed p) (hr : Reader (localWith a p))
    (hj : occ 1 (localWith a p) = 1) : 10 ≤ wire a := by
  apply Classical.byContradiction
  intro hbad
  have hp2 := occ_of_freeUnder p 0 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 0 3 hp (by omega)
  have ha : occ 2 a = 0 := by simpa [localWith,occ,hp3] using hj
  have hc : 0 < occ 1 a := by
    have hh := reader_c hr
    simp only [localWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hs : FreeUnder 3 a := hr.scope.1.2
  have hm := nine_bit_capture a (by omega) hc ha
  exact generic_local_reject hs hp (List.all_eq_true.mp smallC_generic a hm) hr

theorem closed_four (p : Term) (hp : Closed p) : 4 ≤ wire p := by
  cases p with
  | var n => exact False.elim (Nat.not_lt_zero n hp)
  | lam b => have hh := wire_min b; simp only [wire_lam]; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app]; omega

theorem closed_five (p : Term) (hp : Closed p) (hw : wire p ≤ 5) :
    p = .lam (.var 0) := by
  cases p with
  | var n => exact False.elim (Nat.not_lt_zero n hp)
  | lam b =>
    cases b with
    | var n =>
      have hn : n=0 := by change n<1 at hp; omega
      rw [hn]
    | lam b => have hh := wire_min b; simp only [wire_lam] at hw; omega
    | app f a =>
      have hf := wire_min f; have ha := wire_min a
      simp only [wire_lam,wire_app] at hw; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

def tiny6 : List Term :=
  [.var 0,.var 1,.lam (.var 0),.lam (.var 1),.lam (.var 2),
   .lam (.lam (.var 0)),.app (.var 0) (.var 0)]

theorem tiny_six (t : Term) (hw : wire t ≤ 6) (hj : occ 2 t = 0)
    (hs : FreeUnder 3 t) : t ∈ tiny6 := by
  cases t with
  | var n =>
    change n<3 at hs
    have hn : n=0 ∨ n=1 := by simp only [occ] at hj; split at hj <;> omega
    rcases hn with rfl | rfl <;> simp [tiny6]
  | lam b =>
    cases b with
    | var n =>
      have hn : n=0 ∨ n=1 ∨ n=2 := by simp only [wire_lam,wire_var] at hw; omega
      rcases hn with rfl | rfl | rfl <;> simp [tiny6]
    | lam b =>
      have hb := wire_two b (by simp only [wire_lam] at hw; omega)
      rw [hb]; simp [tiny6]
    | app f a =>
      have hf := wire_min f; have ha := wire_min a
      simp only [wire_lam,wire_app] at hw; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    have hf' := wire_two f (by simp only [wire_app] at hw; omega)
    have ha' := wire_two a (by simp only [wire_app] at hw; omega)
    rw [hf',ha']; simp [tiny6]

theorem wire_three (t : Term) (hw : wire t ≤ 3) : t=.var 0 ∨ t=.var 1 := by
  cases t with
  | var n => have hn : n=0 ∨ n=1 := by simp only [wire_var] at hw; omega
             rcases hn with rfl | rfl <;> simp
  | lam b => have hh := wire_min b; simp only [wire_lam] at hw; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

def capture7 : List Term :=
  [.var 1,.lam (.var 2),.app (.var 1) (.var 0),.app (.var 0) (.var 1)]

theorem capture_seven (t : Term) (hw : wire t ≤ 7) (hc : 0<occ 1 t) : t ∈ capture7 := by
  cases t with
  | var n => have hn : n=1 := by simp only [occ] at hc; split at hc <;> omega
             rw [hn]; simp [capture7]
  | lam b =>
    have hb := cheap_capture b 2 hc (by simp only [wire_lam] at hw; omega)
    rw [hb]; simp [capture7]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [occ] at hc
    simp only [wire_app] at hw
    by_cases hfc : 0<occ 1 f
    · have he := cheap_capture f 1 hfc (by omega)
      subst f
      have he := wire_two a (by simp only [wire_var] at hw; omega)
      subst a; simp [capture7]
    · have hac : 0<occ 1 a := by omega
      have he := cheap_capture a 1 hac (by omega)
      subst a
      have he := wire_two f (by simp only [wire_var] at hw; omega)
      subst f; simp [capture7]

def capture11 : List Term :=
  [.var 1,.lam (.var 2),.lam (.lam (.var 3)),
   .lam (.app (.var 2) (.var 0)),.lam (.app (.var 2) (.var 1)),
   .lam (.app (.var 0) (.var 2)),.lam (.app (.var 1) (.var 2)),
   .app (.lam (.var 2)) (.var 0),.app (.var 0) (.lam (.var 2)),
   .app (.app (.var 1) (.var 0)) (.var 0),
   .app (.app (.var 0) (.var 1)) (.var 0),
   .app (.var 0) (.app (.var 1) (.var 0)),
   .app (.var 0) (.app (.var 0) (.var 1))] ++
  tiny6.map (fun t => .app (.var 1) t) ++ tiny6.map (fun t => .app t (.var 1))

/-- The one repeated c c entry is harmless. There are 26 distinct cases. -/
theorem capture_eleven (t : Term) (hw : wire t ≤ 11) (hc : 0<occ 1 t)
    (hj : occ 2 t = 0) (hs : FreeUnder 3 t) : t ∈ capture11 := by
  cases t with
  | var n => have hn : n=1 := by simp only [occ] at hc; split at hc <;> omega
             rw [hn]; simp [capture11]
  | lam b =>
    cases b with
    | var n => have hn : n=2 := by simp only [occ] at hc; split at hc <;> omega
               rw [hn]; simp [capture11]
    | lam b =>
      have hb := cheap_capture b 3 hc (by simp only [wire_lam] at hw; omega)
      rw [hb]; simp [capture11]
    | app f a =>
      have hf := wire_min f; have ha := wire_min a
      simp only [occ,Nat.reduceAdd] at hc
      simp only [wire_lam,wire_app] at hw
      by_cases hfc : 0<occ 2 f
      · have he := cheap_capture f 2 hfc (by omega)
        subst f
        have hh := wire_three a (by simp only [wire_var] at hw; omega)
        rcases hh with rfl | rfl <;> simp [capture11]
      · have hac : 0<occ 2 a := by omega
        have he := cheap_capture a 2 hac (by omega)
        subst a
        have hh := wire_three f (by simp only [wire_var] at hw; omega)
        rcases hh with rfl | rfl <;> simp [capture11]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [occ] at hc hj
    simp only [wire_app] at hw
    by_cases hfc : 0<occ 1 f
    · have hh := capture_seven f (by omega) hfc
      simp only [capture7,List.mem_cons,List.not_mem_nil,or_false] at hh
      rcases hh with rfl | rfl | rfl | rfl
      · have hm := tiny_six a (by simp only [wire_var] at hw; omega) (by omega) hs.2
        simp only [capture11,List.mem_append,List.mem_map]
        exact .inl (.inr ⟨a,hm,rfl⟩)
      · have hh := wire_three a (by simp only [wire_lam,wire_var] at hw; omega)
        rcases hh with rfl | rfl <;> simp [capture11,tiny6]
      · have he := wire_two a (by simp only [wire_app,wire_var] at hw; omega)
        rw [he]; simp [capture11]
      · have he := wire_two a (by simp only [wire_app,wire_var] at hw; omega)
        rw [he]; simp [capture11]
    · have hac : 0<occ 1 a := by omega
      have hh := capture_seven a (by omega) hac
      simp only [capture7,List.mem_cons,List.not_mem_nil,or_false] at hh
      rcases hh with rfl | rfl | rfl | rfl
      · have hm := tiny_six f (by simp only [wire_var] at hw; omega) (by omega) hs.1
        simp only [capture11,List.mem_append,List.mem_map]
        exact .inr ⟨f,hm,rfl⟩
      · have hh := wire_three f (by simp only [wire_lam,wire_var] at hw; omega)
        rcases hh with rfl | rfl <;> simp [capture11,tiny6]
      · have he := wire_two f (by simp only [wire_app,wire_var] at hw; omega)
        rw [he]; simp [capture11]
      · have he := wire_two f (by simp only [wire_app,wire_var] at hw; omega)
        rw [he]; simp [capture11]

def rejectsOne (r : Term) : Bool := match normalizeUntil 40 (.app r S) with
  | none => false
  | some t => decide (NFt t) && decide (t ≠ varOut)

theorem rejectsOne_sound {r : Term} (h : rejectsOne r = true) : ¬ Reader r := by
  intro hr
  unfold rejectsOne at h
  cases hn : normalizeUntil 40 (.app r S) with
  | none => simp [hn] at h
  | some t =>
    simp only [hn,Bool.and_eq_true,decide_eq_true_eq] at h
    have he := normalForm_unique (normalizeUntil_sound hn) hr.one_red
      (SelfintClassNext.nft_normal h.1) varOut_normal
    exact h.2 he

def rejectsProbes (r : Term) : Bool := rejectsZero r || rejectsOne r

theorem rejectsProbes_sound {r : Term} (h : rejectsProbes r = true) : ¬ Reader r := by
  simp only [rejectsProbes,Bool.or_eq_true] at h
  rcases h with h | h
  · exact rejectsZero_sound h
  · exact rejectsOne_sound h

/-- F c with specializer I passes zero, so the unary check is essential. -/
theorem capture11_reject :
    capture11.all (fun a => rejectsProbes (localWith a (.lam (.var 0)))) = true := by decide

theorem local_closed_floor {a p : Term} (hp : Closed p) (hr : Reader (localWith a p))
    (hj : occ 1 (localWith a p) = 1) : 46 ≤ weight 0 (localWith a p) := by
  apply Classical.byContradiction
  intro hbad
  have hp2 := occ_of_freeUnder p 0 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 0 3 hp (by omega)
  have ha : occ 2 a = 0 := by simpa [localWith,occ,hp3] using hj
  have hc : 0<occ 1 a := by
    have hh := reader_c hr
    simp only [localWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hw := local_price a p hp ha
  have hA := local_helper_ten hp hr hj
  have hP := closed_four p hp
  have he := closed_five p hp (by omega)
  have hmem := capture_eleven a (by omega) hc ha hr.scope.1.2
  subst p
  exact rejectsProbes_sound (List.all_eq_true.mp capture11_reject a hmem) hr

theorem tiny_root (t : Term) (hw : wire t ≤ 3) (hj : occ 1 t = 0) : t=.var 0 := by
  have hh := wire_three t hw
  rcases hh with rfl | rfl
  · rfl
  · simp [occ] at hj

def rootC : List Term := [.var 0,.lam (.var 1),.app (.var 0) (.var 0)]

theorem root_capture_seven (t : Term) (hw : wire t ≤ 7) (hc : 0<occ 0 t)
    (hj : occ 1 t = 0) : t ∈ rootC := by
  cases t with
  | var n =>
    have hn : n=0 := by simp only [occ] at hc; split at hc <;> omega
    rw [hn]; simp [rootC]
  | lam b =>
    have hb := cheap_capture b 1 hc (by simp only [wire_lam] at hw; omega)
    rw [hb]; simp [rootC]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [occ] at hj
    have he := tiny_root f (by simp only [wire_app] at hw; omega) (by omega)
    have he' := tiny_root a (by simp only [wire_app] at hw; omega) (by omega)
    rw [he,he']; simp [rootC]

theorem rootC_generic : rootC.all (fun a => cHeadZero (rootWith a (.var 6))) = true := by decide

theorem root_closed_floor {a p : Term} (hp : Closed p) (hr : Reader (rootWith a p))
    (hj : occ 1 (rootWith a p) = 1) : 46 ≤ weight 0 (rootWith a p) := by
  apply Classical.byContradiction
  intro hbad
  have hp2 := occ_of_freeUnder p 0 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 0 3 hp (by omega)
  have ha : occ 1 a = 0 := by simpa [rootWith,occ,hp3] using hj
  have hc : 0<occ 0 a := by
    have hh := reader_c hr
    simp only [rootWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hw := root_price a p hp ha
  have hP := closed_four p hp
  have hmem := root_capture_seven a (by omega) hc ha
  exact generic_root_reject hr.scope.2 hp (List.all_eq_true.mp rootC_generic a hmem) hr

/-- The boundary source which makes the n=1 probe necessary. -/
def discardedC : Term := localWith (.app churchFalse (.var 1)) (.lam (.var 0))

theorem discardedC_price : weight 0 discardedC = 45 := by decide

theorem discardedC_zero : Betas (.app discardedC Z) zeroOut :=
  normalizeUntil_sound (by decide : normalizeUntil 40 (.app discardedC Z) = some zeroOut)

theorem discardedC_unary : Betas (.app discardedC S)
    (.app (.app (.var 1) churchFalse) P) :=
  normalizeUntil_sound (by decide : normalizeUntil 40 (.app discardedC S) =
    some (.app (.app (.var 1) churchFalse) P))

theorem discardedC_not_reader : ¬ Reader discardedC :=
  rejectsOne_sound (by decide : rejectsOne discardedC = true)

#print axioms local_closed_floor
#print axioms root_closed_floor
#print axioms local_inline_price
#print axioms root_inline_price
end Blc.SelfintClosedSpecializer
