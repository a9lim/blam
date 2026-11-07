import Blc.SelfintClass
import ReaderHoist

/- Exact whole-source costs for nonlinear head contraction followed by
   restoration of the one-source-hole convention. No term enumeration. -/
namespace Blc.Close46Source
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Round3Reader

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem holes_eq_occ (t : Term) (d : Nat) : holes d t = occ (d+1) t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d+1)
  | app f a ihf iha => simp only [holes, occ, ihf, iha]

theorem cs_eq_occ (t : Term) (d : Nat) : cs d t = occ d t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d+1)
  | app f a ihf iha => simp only [cs, occ, ihf, iha]

theorem depths_eq (t : Term) (d : Nat) :
    depths d t = occDepth (d+1) t + d * occ (d+1) t := by
  induction t generalizing d with
  | var n => simp [depths, occDepth, occ]; split <;> simp_all
  | lam b ih =>
    have h := ih (d+1)
    simp only [depths, occDepth, occ, Nat.add_mul, Nat.one_mul] at h ⊢
    omega
  | app f a ihf iha =>
    simp only [depths, occDepth, occ, ihf, iha, Nat.mul_add]
    omega

theorem weight_wire (t : Term) (d : Nat) :
    weight d t + 3 * holes d t = wire t + 3 * depths d t := by
  induction t generalizing d with
  | var n => simp only [weight, wire_var, holes, depths]; split <;> simp_all <;> omega
  | lam b ih =>
    have h := ih (d+1)
    simp only [weight, wire_lam, holes, depths]
    omega
  | app f a ihf iha =>
    have hf := ihf d
    have ha := iha d
    simp only [weight, wire_app, holes, depths, Nat.mul_add]
    omega

theorem weight_eq_class (t : Term) : weight 0 t = cost t + 4 * depth t := by
  have h := weight_wire t 0
  have hc := holeCost_wire t 1
  simp only [holes_eq_occ, depths_eq, Nat.zero_add, Nat.zero_mul, Nat.add_zero] at h
  change wire t = cost t + 3 * occ 1 t + depth t at hc
  change weight 0 t + 3 * occ 1 t = wire t + 3 * depth t at h
  omega

/-- Exact price of hoisting every occurrence, without assuming one hole. -/
theorem hoist_wire_price (t : Term) (hs : FreeUnder 2 t) :
    weight 0 (hoist t) + occ 1 t = wire t + 4 + occ 0 t := by
  have hb := bindHole_weight t 0 hs
  have hw := weight_wire t 0
  have hz := bindHole_no_holes t 0 hs
  simp only [holes_eq_occ, cs_eq_occ, Nat.reduceAdd] at hb hw hz
  change 2 + (2 + weight 1 (bindHole 0 t)) + 0 + occ 1 t = _
  omega

def spine (t : Term) : List Term → Term
  | [] => t
  | a::as => spine (.app t a) as

def spineOcc (j : Nat) : List Term → Nat
  | [] => 0
  | a::as => occ j a + spineOcc j as

def spineWire : List Term → Nat
  | [] => 0
  | a::as => wire a + 2 + spineWire as

def spineDepth (j : Nat) : List Term → Nat
  | [] => 0
  | a::as => occDepth j a + spineDepth j as

theorem spine_occ (t : Term) (as : List Term) (j : Nat) :
    occ j (spine t as) = occ j t + spineOcc j as := by
  induction as generalizing t with
  | nil => simp [spine, spineOcc]
  | cons a as ih => simp [spine, spineOcc, ih, occ, Nat.add_assoc]

theorem spine_wire (t : Term) (as : List Term) :
    wire (spine t as) = wire t + spineWire as := by
  induction as generalizing t with
  | nil => simp [spine, spineWire]
  | cons a as ih => simp [spine, spineWire, ih, wire_app, Nat.add_assoc]

theorem spine_depth (t : Term) (as : List Term) (j : Nat) :
    occDepth j (spine t as) = occDepth j t + spineDepth j as := by
  induction as generalizing t with
  | nil => simp [spine, spineDepth]
  | cons a as ih => simp [spine, spineDepth, ih, occDepth, Nat.add_assoc]

theorem spine_beta {t u : Term} (h : Beta t u) (as : List Term) :
    Beta (spine t as) (spine u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (.appL a h)

theorem spine_scope (t : Term) (as : List Term) (k : Nat)
    (h : FreeUnder k (spine t as)) : FreeUnder k t := by
  induction as generalizing t with
  | nil => exact h
  | cons a as ih => exact (ih _ h).1

theorem spineDepth_zero {as : List Term} {j : Nat} (h : spineOcc j as = 0) :
    spineDepth j as = 0 := by
  induction as with
  | nil => rfl
  | cons a as ih =>
    simp only [spineOcc] at h
    have ha : occ j a = 0 := by omega
    have ht : spineOcc j as = 0 := by omega
    simp [spineDepth, occDepth_zero ha, ih ht]

/-- The body cannot contain j when the unique source hole lies in A. -/
theorem argument_hole_parts (b a : Term) (as : List Term)
    (hj : occ 1 (spine (.app (.lam b) a) as) = 1) (ha : occ 1 a = 1) :
    occ 2 b = 0 ∧ spineOcc 1 as = 0 := by
  simp only [spine_occ, occ, Nat.reduceAdd] at hj
  omega

/-- Exact whole-source price: contract an arbitrary multiplicity m, then
    hoist all copied holes together. The source A has exactly one hole. -/
theorem contract_hoist_price (b a : Term) (as : List Term)
    (hs : FreeUnder 2 (spine (.app (.lam b) a) as))
    (hj : occ 1 (spine (.app (.lam b) a) as) = 1) (ha : occ 1 a = 1) :
    (weight 0 (hoist (spine (contract b a) as)) : Int) -
        weight 0 (spine (.app (.lam b) a) as) =
      ((occ 0 b : Int)-1) * ((wire a : Int)-3) +
      (occ 0 a : Int) * (occDepth 0 b + occ 0 b) +
      spineOcc 0 as - 3 * occDepth 1 a := by
  obtain ⟨hbj, hcj⟩ := argument_hole_parts b a as hj ha
  have hba := spine_scope (.app (.lam b) a) as 2 hs
  have hb : FreeUnder 3 b := hba.1
  have haScope : FreeUnder 2 a := hba.2
  have hs' := beta_freeUnder (spine_beta (.beta b a) as) 2 hs
  have hh := hoist_wire_price (spine (contract b a) as) hs'
  have hw := weight_wire (spine (.app (.lam b) a) as) 0
  have hd := wire_beta_delta b a
  have hc := occ_substDec_ge b a 0 0 (by omega)
  have hj' := occ_substDec_ge b a 1 0 (by omega)
  have hza := freeLeaves_closed a 2 haScope
  have hzb := freeLeaves_closed b 3 hb
  have ha0 := freeLeaves_split a 0
  have ha1 := freeLeaves_split a 1
  have hb1 := freeLeaves_split b 1
  have hb2 := freeLeaves_split b 2
  have hda := occDepth_zero hbj
  have hdc := spineDepth_zero hcj
  simp only [spine_wire, spine_occ, contract, hc, hj', Nat.reduceAdd,
    hbj, ha, hcj, Nat.mul_one, Nat.zero_add, Nat.add_zero] at hh
  simp only [holes_eq_occ, depths_eq, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero, hj, spine_depth, occDepth, hda, hdc, hbj,
    wire_app, wire_lam, spine_wire] at hw
  simp only [Nat.reduceAdd] at ha0 ha1 hb1 hb2
  have hfa : freeLeaves 0 a = occ 0 a + 1 := by omega
  have hfb : freeLeaves 1 b = occ 1 b := by omega
  rw [hfa, hfb] at hd
  simp only [Int.natCast_add, Int.natCast_one] at hd
  have hcancel : (occ 0 a : Int) + 1 - 1 = (occ 0 a : Int) := by omega
  rw [hcancel] at hd
  simp only [wire_app, wire_lam] at hd
  have hhI := congrArg (fun n : Nat => (n : Int)) hh
  have hwI := congrArg (fun n : Nat => (n : Int)) hw
  simp only [Int.natCast_add, Int.natCast_mul] at hhI hwI
  simp only [contract, Int.natCast_add, Int.sub_mul, Int.mul_sub, Int.mul_add, Int.one_mul,
    Int.mul_comm (occ 0 b : Int) (occ 0 a : Int)] at hd hhI hwI ⊢
  omega

/-- All unary lengths, with the rigid free variables of SelfintClass. -/
structure ReaderLaws (r : Term) : Prop where
  scope : FreeUnder 2 r
  zero : BetaJoin (.app r Z) zeroOut
  unary : ∀ n, BetaJoin (.app r (streamOf (vbits (n+1)) (.var 2)))
    (.app (.app (.var 0) (streamOf (vbits n) (.var 2))) (.var 2))

theorem ReaderLaws.probes {r : Term} (h : ReaderLaws r) : Reader r :=
  ⟨h.scope, h.zero, by simpa [vbits, streamOf, churchBit, S, P, varOut] using h.unary 0⟩

theorem join_after_beta {t u v : Term} (h : BetaJoin t v) (hr : Beta t u) :
    BetaJoin u v := by
  obtain ⟨w, htw, hvw⟩ := h
  obtain ⟨z, huz, hwz⟩ := betas_confluent (.head hr (.refl _)) htw
  exact ⟨z, huz, betas_trans hvw hwz⟩

theorem join_before_beta {t u v : Term} (h : BetaJoin u v) (hr : Beta t u) :
    BetaJoin t v := by
  obtain ⟨w, huw, hvw⟩ := h
  exact ⟨w, .head hr huw, hvw⟩

theorem ReaderLaws.beta {r r' : Term} (h : ReaderLaws r) (hr : Beta r r') :
    ReaderLaws r' :=
  ⟨beta_freeUnder hr 2 h.scope,
    join_after_beta h.zero (.appL Z hr),
    fun n => join_after_beta (h.unary n) (.appL _ hr)⟩

theorem bindHole_scope (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    FreeUnder (d+2) (bindHole d t) := by
  induction t generalizing d with
  | var n =>
    simp only [bindHole]
    split
    · exact hs
    · split <;> simp only [FreeUnder] <;> omega
  | lam b ih => exact ih (d+1) hs
  | app f a ihf iha => exact ⟨ihf d hs.1, iha d hs.2⟩

theorem hoist_scope (t : Term) (hs : FreeUnder 2 t) : FreeUnder 2 (hoist t) := by
  change FreeUnder 3 (bindHole 0 t) ∧ (1 < 2)
  exact ⟨Term.freeUnder_mono (by omega : 2 ≤ 3) (bindHole_scope t 0 hs), by decide⟩

/-- This restores one source hole even after a contraction has copied it. -/
theorem ReaderLaws.hoist {r : Term} (h : ReaderLaws r) :
    ReaderLaws (hoist r) ∧ occ 1 (hoist r) = 1 := by
  have hb := hoist_beta r h.scope
  refine ⟨⟨hoist_scope r h.scope, join_before_beta h.zero (.appL Z hb),
    fun n => join_before_beta (h.unary n) (.appL _ hb)⟩, ?_⟩
  simpa only [holes_eq_occ, Nat.reduceAdd] using hoist_one_hole r h.scope

/-- Minimum weight in the full independent reader class, not merely among
    terms passing the two finite probes used by SelfintClass.Reader. -/
structure MinimumReader (r : Term) : Prop where
  laws : ReaderLaws r
  oneHole : occ 1 r = 1
  minimal : ∀ t, ReaderLaws t → occ 1 t = 1 → weight 0 r ≤ weight 0 t

theorem minimum_argument_charge (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) (ha : occ 1 a = 1) :
    3 * (occDepth 1 a : Int) ≤
      ((occ 0 b : Int)-1) * ((wire a : Int)-3) +
      (occ 0 a : Int) * (occDepth 0 b + occ 0 b) + spineOcc 0 as := by
  have hr := hm.laws.beta (spine_beta (.beta b a) as)
  obtain ⟨hlaw, hhole⟩ := hr.hoist
  have hmin := hm.minimal _ hlaw hhole
  have he := contract_hoist_price b a as hm.laws.scope hm.oneHole ha
  omega

theorem weight_no_hole (t : Term) (d : Nat) (hh : occ (d+1) t = 0) :
    weight d t = wire t := by
  have hw := weight_wire t d
  simp only [holes_eq_occ, depths_eq, hh, occDepth_zero hh,
    Nat.mul_zero, Nat.add_zero] at hw
  exact hw

theorem weight_ge_wire_positive_depth (t : Term) (d : Nat) (hd : 1 ≤ d) :
    wire t ≤ weight d t := by
  have h := weight_wire t d
  have hd' := depths_eq t d
  have hm := Nat.mul_le_mul_right (occ (d+1) t) hd
  simp only [Nat.one_mul] at hm
  rw [holes_eq_occ, hd'] at h
  omega

theorem spine_weight_mono (t : Term) (as : List Term) :
    weight 0 t ≤ weight 0 (spine t as) := by
  induction as generalizing t with
  | nil => exact Nat.le_refl _
  | cons a as ih =>
    have hh := ih (.app t a)
    simp only [spine, weight] at hh ⊢
    omega

/-- Source occurrences themselves pay their exact binder-crossing index.
    This applies before any reduction or source expansion. -/
theorem body_occ_price (b : Term) :
    2 * lamCount b + 4 * occ 0 b + occDepth 0 b ≤ wire b + 2 := by
  have hw := wire_identity b
  have hx := tax_identity b 0
  have hv := occ_le_leafCount b 0
  simp only [Nat.zero_mul, Nat.add_zero] at hx
  omega

/-- No j in a shared argument: a nonlinear first redex with w<=45 has
    wire(A) <= 43-4m-D-2*L(B). This leaves redexes in A unrestricted. -/
theorem nohole_argument_budget (b a : Term) (as : List Term)
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45) (ha : occ 1 a = 0) :
    wire a + occDepth 0 b + 2 * lamCount b + 4 * occ 0 b ≤ 43 := by
  have hm := spine_weight_mono (.app (.lam b) a) as
  have hb := weight_ge_wire_positive_depth b 1 (by omega)
  have harg := weight_no_hole a 0 ha
  have hp := body_occ_price b
  simp only [weight, Nat.reduceAdd] at hm
  omega

/-- A j-bearing argument pays its hole's depth as well as its raw wire
    length. The multiplicity-dependent source budget is unconditional. -/
theorem hole_argument_budget (b a : Term) (as : List Term)
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45) (ha : occ 1 a = 1) :
    wire a + 3 * occDepth 1 a + occDepth 0 b +
      2 * lamCount b + 4 * occ 0 b ≤ 46 := by
  have hm := spine_weight_mono (.app (.lam b) a) as
  have hb := weight_ge_wire_positive_depth b 1 (by omega)
  have harg := weight_wire a 0
  simp only [holes_eq_occ, depths_eq, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero, ha] at harg
  have hp := body_occ_price b
  simp only [weight, Nat.reduceAdd] at hm
  omega

def spineNonlinear : List Term → Nat
  | [] => 0
  | a::as => nonlinear a + spineNonlinear as

def spineFree (j : Nat) : List Term → Nat
  | [] => 0
  | a::as => freeLeaves j a + spineFree j as

theorem spine_nonlinear (t : Term) (as : List Term) :
    nonlinear (spine t as) = nonlinear t + spineNonlinear as := by
  induction as generalizing t with
  | nil => simp [spine, spineNonlinear]
  | cons a as ih => simp [spine, spineNonlinear, nonlinear, ih, Nat.add_assoc]

theorem spine_free (t : Term) (as : List Term) (j : Nat) :
    freeLeaves j (spine t as) = freeLeaves j t + spineFree j as := by
  induction as generalizing t with
  | nil => simp [spine, spineFree]
  | cons a as ih => simp [spine, spineFree, freeLeaves, ih, Nat.add_assoc]

theorem spine_binder_price (as : List Term) :
    10 * spineNonlinear as + 4 * spineFree 0 as ≤ spineWire as := by
  induction as with
  | nil => simp [spineNonlinear, spineFree, spineWire]
  | cons a as ih =>
    have ha := nonlinear_wire_bound a
    change 10 * nonlinear a + 4 * freeLeaves 0 a ≤ wire a + 2 at ha
    simp only [spineNonlinear, spineFree, spineWire, Nat.mul_add]
    omega

/-- A head contraction cannot consume the reader's last nonlinear source
    binder: at least one must also occur in B, A, or the pending spine. -/
theorem reader_head_other_nonlinear (b a : Term) (as : List Term)
    (hr : Reader (spine (.app (.lam b) a) as)) :
    1 ≤ nonlinear b + nonlinear a + spineNonlinear as := by
  have hred := hr.beta (spine_beta (.beta b a) as)
  have hn := reader_nonlinear hred
  simp only [spine_nonlinear, contract, nonlinear_subst] at hn
  by_cases hz : nonlinear b + nonlinear a + spineNonlinear as = 0
  · have hb : nonlinear b = 0 := by omega
    have ha : nonlinear a = 0 := by omega
    have hc : spineNonlinear as = 0 := by omega
    simp [hb, ha, hc] at hn
  · omega

/-- A source charge for the whole head redex and pending spine. All uses
    of x and every other nonlinear binder are charged without expansion. -/
theorem head_binder_wire_charge (b a : Term) (as : List Term) :
    4 * occ 0 b + 10 * (nonlinear b + nonlinear a + spineNonlinear as) +
      4 * freeLeaves 0 (spine (.app (.lam b) a) as) ≤
      wire (spine (.app (.lam b) a) as) := by
  have hb := nonlinear_wire_bound b
  have ha := nonlinear_wire_bound a
  have hc := spine_binder_price as
  have hs := freeLeaves_split b 0
  simp only [Nat.reduceAdd] at hs
  change 10 * nonlinear b + 4 * freeLeaves 0 b ≤ wire b + 2 at hb
  change 10 * nonlinear a + 4 * freeLeaves 0 a ≤ wire a + 2 at ha
  simp only [spine_wire, spine_free, freeLeaves, Nat.reduceAdd,
    wire_app, wire_lam, Nat.mul_add]
  omega

theorem reader_head_multiplicity_charge (b a : Term) (as : List Term)
    (hr : Reader (spine (.app (.lam b) a) as))
    (hj : occ 1 (spine (.app (.lam b) a) as) = 1) :
    4 * occ 0 b + 15 + 3 * depth (spine (.app (.lam b) a) as) ≤
      weight 0 (spine (.app (.lam b) a) as) := by
  have hb := head_binder_wire_charge b a as
  have hn := reader_head_other_nonlinear b a as hr
  have hc := reader_c hr
  have h0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have h1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  have hw := weight_wire (spine (.app (.lam b) a) as) 0
  simp only [holes_eq_occ, depths_eq, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero, hj] at hw
  simp only [Nat.reduceAdd] at h0 h1
  change 4 * occ 0 b + 15 + 3 * occDepth 1 (spine (.app (.lam b) a) as) ≤ _
  omega

/-- Seven is an unconditional source multiplicity cap under w<=45.
    Sharper caps can use the separate live-binder and two-lambda results. -/
theorem reader_head_multiplicity_le_seven (b a : Term) (as : List Term)
    (hr : Reader (spine (.app (.lam b) a) as))
    (hj : occ 1 (spine (.app (.lam b) a) as) = 1)
    (hw : weight 0 (spine (.app (.lam b) a) as) ≤ 45) :
    occ 0 b ≤ 7 := by
  have hh := reader_head_multiplicity_charge b a as hr hj
  omega

theorem occDepth_shift_ge (t : Term) (v c : Nat) (h : c ≤ v) :
    occDepth (v+1) (shift 1 c t) = occDepth v t := by
  induction t generalizing v c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih =>
    simp only [shift, occDepth]
    rw [occ_shift_ge b (v+1) (c+1) (by omega), ih (v+1) (c+1) (by omega)]
  | app f a ihf iha => simp only [shift, occDepth, ihf v c h, iha v c h]

/-- Depth accounting for every copied occurrence, without linearity. -/
theorem occDepth_subst_ge (t a : Term) (v k : Nat) (h : k ≤ v) :
    occDepth v (substDec k a t) = occDepth (v+1) t +
      occ k t * occDepth v a + occ v a * occDepth k t := by
  induction t generalizing a v k with
  | var n =>
    simp only [substDec]
    split
    · simp_all [occDepth, occ]
    · split <;> simp_all [occDepth, occ]
  | lam b ih =>
    simp only [substDec, occDepth, occ]
    rw [ih (shift 1 0 a) (v+1) (k+1) (by omega),
      occ_substDec_ge b (shift 1 0 a) (v+1) (k+1) (by omega),
      occ_shift_ge a v 0 (by omega), occDepth_shift_ge a v 0 (by omega)]
    simp only [Nat.mul_add, Nat.mul_comm (occ v a) (occ (k+1) b)]
    omega
  | app f x ihf ihx =>
    simp only [substDec, occDepth, occ, ihf a v k h, ihx a v k h,
      Nat.add_mul, Nat.mul_add]
    omega

/-- Exact source weight change for a root head redex, including copied
    source holes and all source index shifts. No normality assumption. -/
theorem weighted_beta_delta (b a : Term) (as : List Term)
    (hs : FreeUnder 2 (spine (.app (.lam b) a) as)) :
    (weight 0 (spine (contract b a) as) : Int) -
        weight 0 (spine (.app (.lam b) a) as) =
      ((occ 0 b : Int)-1) * weight 0 a +
      ((occ 0 a : Int) + 4 * occ 1 a - 1) * occDepth 0 b -
      2 * occ 0 b - 4 - occ 1 b - 4 * occ 2 b := by
  have hscope := spine_scope (.app (.lam b) a) as 2 hs
  have za := freeLeaves_closed a 2 hscope.2
  have zb := freeLeaves_closed b 3 hscope.1
  have fa0 := freeLeaves_split a 0
  have fa1 := freeLeaves_split a 1
  have fb1 := freeLeaves_split b 1
  have fb2 := freeLeaves_split b 2
  simp only [Nat.reduceAdd] at fa0 fa1 fb1 fb2
  have fa : freeLeaves 0 a = occ 0 a + occ 1 a := by omega
  have fb : freeLeaves 1 b = occ 1 b + occ 2 b := by omega
  have w0 := weight_wire (spine (.app (.lam b) a) as) 0
  have w1 := weight_wire (spine (contract b a) as) 0
  have wa := weight_wire a 0
  have hd := wire_beta_delta b a
  rw [fa, fb] at hd
  simp only [holes_eq_occ, depths_eq, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero, spine_occ, spine_depth, spine_wire, wire_app, wire_lam,
    occ, occDepth, contract, occ_substDec_ge b a 1 0 (by omega),
    occDepth_subst_ge b a 1 0 (by omega), Nat.reduceAdd] at w0 w1 wa
  have w0i := congrArg (fun n : Nat => (n : Int)) w0
  have w1i := congrArg (fun n : Nat => (n : Int)) w1
  have wai := congrArg (fun n : Nat => (n : Int)) wa
  have hwarg : (wire a : Int) = weight 0 a + 3 * occ 1 a - 3 * occDepth 1 a := by
    simp only [Int.natCast_add, Int.natCast_mul] at wai
    omega
  simp only [wire_app, wire_lam, Int.natCast_add, contract] at hd
  rw [hwarg] at hd
  simp only [contract, Int.natCast_add, Int.natCast_mul,
    Int.sub_mul, Int.mul_add, Int.add_mul, Int.mul_sub, Int.one_mul,
    Int.mul_comm, Int.mul_left_comm, Int.mul_assoc] at hd w0i w1i ⊢
  omega

def spineLambdas : List Term → Nat
  | [] => 0
  | a::as => lamCount a + spineLambdas as

theorem spine_lambdas (t : Term) (as : List Term) :
    lamCount (spine t as) = lamCount t + spineLambdas as := by
  induction as generalizing t with
  | nil => simp [spine, spineLambdas]
  | cons a as ih => simp [spine, spineLambdas, lamCount, ih, Nat.add_assoc]

/-- The user's secondary minimum: source lambdas, among equal weights. -/
structure LexMinimumReader (r : Term) : Prop extends MinimumReader r where
  lambdas : ∀ t, ReaderLaws t → occ 1 t = 1 → weight 0 r = weight 0 t →
    lamCount r ≤ lamCount t

theorem minimum_linear_charge (b a : Term) (as : List Term)
    (hm : LexMinimumReader (spine (.app (.lam b) a) as)) (hmul : occ 0 b = 1) :
    7 + (occ 1 b : Int) + 4 * occ 2 b ≤
      ((occ 0 a : Int) + 4 * occ 1 a - 1) * occDepth 0 b := by
  have hr := hm.laws.beta (spine_beta (.beta b a) as)
  have hj : occ 1 (spine (contract b a) as) = 1 := by
    have h := hm.oneHole
    simp only [spine_occ, occ, Nat.reduceAdd] at h
    simpa only [spine_occ, contract, occ_substDec_ge b a 1 0 (by omega),
      Nat.reduceAdd, hmul, Nat.one_mul] using h
  have hmin := hm.minimal _ hr hj
  have he := weighted_beta_delta b a as hm.laws.scope
  rw [hmul] at he
  have hL : lamCount (spine (contract b a) as) + 1 =
      lamCount (spine (.app (.lam b) a) as) := by
    simp only [spine_lambdas, contract, lamCount_subst, lamCount, hmul, Nat.one_mul]
    omega
  have hstrict : weight 0 (spine (.app (.lam b) a) as) <
      weight 0 (spine (contract b a) as) := by
    by_cases heq : weight 0 (spine (.app (.lam b) a) as) =
        weight 0 (spine (contract b a) as)
    · have hbad := hm.lambdas _ hr hj heq
      omega
    · omega
  simp only [Int.natCast_one, Int.sub_self, Int.zero_mul, Int.zero_add] at he
  omega

theorem minimum_head_non_erasing (b a : Term) (as : List Term)
    (hm : MinimumReader (spine (.app (.lam b) a) as)) : 0 < occ 0 b := by
  by_cases hz : occ 0 b = 0
  · have hr := hm.laws.beta (spine_beta (.beta b a) as)
    have hneed := reader_j hr.probes
    have hsource := hm.oneHole
    simp only [spine_occ, contract, occ_substDec_ge b a 1 0 (by omega),
      Nat.reduceAdd, hz, Nat.zero_mul, Nat.add_zero] at hneed
    simp only [spine_occ, occ, Nat.reduceAdd] at hsource
    have ha : occ 1 a = 0 := by omega
    have hj : occ 1 (spine (contract b a) as) = 1 := by
      simp only [spine_occ, contract, occ_substDec_ge b a 1 0 (by omega),
        Nat.reduceAdd, hz, Nat.zero_mul, Nat.add_zero]
      omega
    have hd := occDepth_zero hz
    have he := weighted_beta_delta b a as hm.laws.scope
    have hmin := hm.minimal _ hr hj
    simp only [hz, ha, hd, Int.natCast_zero, Int.mul_zero] at he
    omega
  · omega

theorem spine_append_one (t : Term) (as : List Term) (a : Term) :
    spine t (as ++ [a]) = .app (spine t as) a := by
  induction as generalizing t with
  | nil => rfl
  | cons b as ih => simpa only [List.cons_append, spine] using ih (.app t b)

theorem head_shape (t : Term) : IsLam t ∨ Rigid t ∨
    ∃ b a as, t = spine (.app (.lam b) a) as := by
  induction t with
  | var n => exact .inr (.inl (.var n))
  | lam b => exact .inl trivial
  | app f a ihf _ =>
    rcases ihf with hL | hR | ⟨b,x,as,h⟩
    · cases f with
      | var n => exact False.elim hL
      | app f x => exact False.elim hL
      | lam b => exact .inr (.inr ⟨b,a,[],rfl⟩)
    · exact .inr (.inl (.app a hR))
    · exact .inr (.inr ⟨b,x,as++[a], by rw [spine_append_one, h]⟩)

/-- Every non-lambda minimum source has an explicit first head redex.
    Its original source argument, rather than its potentially much larger
    reduct, obeys the following bounds. This is not an s-spine theorem. -/
theorem minimum_head_alternative {r : Term} (hm : LexMinimumReader r)
    (hw : weight 0 r ≤ 45) : IsLam r ∨
    ∃ b a as, r = spine (.app (.lam b) a) as ∧
      1 ≤ occ 0 b ∧ occ 0 b ≤ 7 ∧
      (occ 1 a = 0 ∨ occ 1 a = 1) ∧
      (occ 0 b = 1 →
        7 + (occ 1 b : Int) + 4 * occ 2 b ≤
        ((occ 0 a : Int) + 4 * occ 1 a - 1) * occDepth 0 b) ∧
      (occ 1 a = 0 →
        wire a + occDepth 0 b + 2 * lamCount b + 4 * occ 0 b ≤ 43) ∧
      (occ 1 a = 1 →
        wire a + 3 * occDepth 1 a + occDepth 0 b +
          2 * lamCount b + 4 * occ 0 b ≤ 46) := by
  rcases head_shape r with hl | hrig | ⟨b,a,as,h⟩
  · exact .inl hl
  · exact (reader_not_rigid hm.laws.probes hrig).elim
  · subst r
    have hj := hm.oneHole
    have ha : occ 1 a = 0 ∨ occ 1 a = 1 := by
      simp only [spine_occ, occ] at hj
      omega
    exact .inr ⟨b,a,as,rfl, minimum_head_non_erasing b a as hm.toMinimumReader,
      reader_head_multiplicity_le_seven b a as hm.laws.probes hm.oneHole hw,
      ha, minimum_linear_charge b a as hm,
      nohole_argument_budget b a as hw, hole_argument_budget b a as hw⟩

#print axioms contract_hoist_price
#print axioms ReaderLaws.hoist
#print axioms minimum_argument_charge
#print axioms nohole_argument_budget
#print axioms hole_argument_budget
#print axioms reader_head_multiplicity_le_seven
#print axioms weighted_beta_delta
#print axioms minimum_linear_charge
#print axioms minimum_head_non_erasing
#print axioms minimum_head_alternative

end Blc.Close46Source
