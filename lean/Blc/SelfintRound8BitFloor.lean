/-
A 31-bit floor for exact closed-source self-interpreters.
No term enumeration is used. Below 31 bits, the source has exactly five
leaves and three live binders. Minimum representatives are root sharing
redexes with normal body and helper; their zero-live body has two leaves
and their capturing helper has three. Open abstraction pricing forces exactly four
source lambdas. The one unused source binder lies either in the sharing
body, giving A(K A), or in its three-leaf helper. Both placements are
excluded symbolically. The 31-bit equality boundary remains open.
-/
import Blc.SelfintRound8FourLambda
import Blc.SelfintRound8DeadApply
import Blc.SelfintRound8PrefixDead

namespace Blc.SelfintRound8BitFloor
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintClass SelfintClassNext SelfintWiden SelfintRound7SourceShape
  SelfintRound6BoundGlobal SelfintRound6BoundNext SelfintRound6BoundLiteral

set_option maxHeartbeats 1500000

/-- The four-lambda floor makes five leaves the only resource count below
31 bits. This is source accounting, independent of minimum syntax. -/
theorem below_31_counts {E : Term} (hE : IsSelfInterpreter E)
    (hw : wire E < 31) :
    leafCount E = 5 ∧ live E = 3 ∧ nonlinear E = 2 ∧ lamCount E ≤ 5 := by
  have hL := SelfintRound8FourLambda.selfInterpreter_four_lambdas hE
  have hV := leaves_bound E
  have hl := selfInterpreter_three_live hE
  have hn := selfInterpreter_two_nonlinear hE
  have hx := selfinterpreter_indexSum_pos E hE
  have hi := wire_identity E
  omega

/-- A zero-live root body cannot start with an abstraction: the resulting
interpreter would discard its public continuation. -/
theorem zero_live_root_body_not_lam {b A : Term}
    (hb : live (.lam b) = 0) : ¬ IsSelfInterpreter (.app (.lam (.lam b)) A) := by
  intro hi
  have hz : occ 0 b = 0 := by
    by_cases hz : occ 0 b = 0
    · exact hz
    · have hp : 0 < occ 0 b := by omega
      simp only [live,if_pos hp] at hb
      omega
  have hu := descend_interpreter hi
  have ho := one_lambda_public_occ hu
  change 1 ≤ occ 0 (substDec 1 (shift 1 0 A) b) at ho
  rw [occ_substDec_lt b (shift 1 0 A) 0 1 (by omega),hz,occ_shift_eq A 0] at ho
  omega

/-- Normality and two leaves force the root body to call its helper with
one zero-live argument. The latter may have arbitrary dead lambdas. -/
theorem normal_two_leaf_sharing_body {B A : Term}
    (hi : IsSelfInterpreter (.app (.lam B) A))
    (hf : FreeUnder 1 B) (hl : live B = 0) (hv : leafCount B = 2)
    (hn : NFt B) : ∃ t, B = .app (.var 0) t ∧ live t = 0 ∧
      leafCount t = 1 ∧ FreeUnder 1 t ∧ occ 0 t = 1 := by
  cases B with
  | var n => simp [leafCount] at hv
  | lam b => exact (zero_live_root_body_not_lam hl hi).elim
  | app f t =>
      have hfp := leafCount_pos f
      have htp := leafCount_pos t
      have hfv : leafCount f = 1 := by change leafCount f + leafCount t = 2 at hv; omega
      have htv : leafCount t = 1 := by change leafCount f + leafCount t = 2 at hv; omega
      have htl : live t = 0 := by change live f + live t = 0 at hl; omega
      have hto : occ 0 t = 1 := by
        have hx := zero_live_freeLeaves t htl
        have hs := freeLeaves_split t 0
        have hfz := freeLeaves_closed t 1 hf.2
        simp only [Nat.zero_add,hfz,Nat.add_zero] at hs
        omega
      cases f with
      | lam b => exact (hn.1 trivial).elim
      | app g a =>
          have hg := leafCount_pos g
          have ha := leafCount_pos a
          change leafCount g + leafCount a = 1 at hfv
          omega
      | var n =>
          have hn0 : n = 0 := by have hh : n < 1 := hf.1; omega
          subst n
          exact ⟨t,rfl,htl,htv,hf.2,hto⟩

/-- A minimum five-leaf interpreter has a normal three-leaf helper with a
nonlinear outer binder. The sharing argument contains exactly one helper
occurrence, possibly protected by unused source binders. -/
theorem five_leaf_minimum_shape {E : Term} (hm : MinimalInterpreter E)
    (hv : leafCount E = 5) (hl : live E = 3) :
    ∃ t d, E = .app (.lam (.app (.var 0) t)) (.lam d) ∧
      FreeUnder 1 t ∧ NFt t ∧ live t = 0 ∧ leafCount t = 1 ∧ occ 0 t = 1 ∧
      FreeUnder 1 d ∧ NFt d ∧ live (.lam d) = 2 ∧
      leafCount d = 3 ∧ occ 0 d = 2 ∧ ¬ Separated 0 (.lam d) := by
  obtain ⟨B,A,rfl,hB,hA,hbo,hbl,hal,hcap⟩ := three_live_root_resources hm.1 (by omega)
  obtain ⟨hBn,hAn⟩ := three_live_root_normal hm hbl hal hcap
  have hnl := selfInterpreter_two_nonlinear hm.1
  have hbn : nonlinear B = 0 := by have hh := nonlinear_le_live B; omega
  have han : 1 ≤ nonlinear A := by
    have hbp : 1 < occ 0 B := by omega
    simp only [nonlinear,hbn,if_pos hbp,Nat.zero_add] at hnl
    omega
  have hvl := leaves_bound A
  have hbol := occ_le_leafCount B 0
  have hbv : leafCount B = 2 := by simp only [leafCount] at hv; omega
  have hav : leafCount A = 3 := by simp only [leafCount] at hv; omega
  obtain ⟨t,rfl,htl,htv,htf,hto⟩ := normal_two_leaf_sharing_body hm.1 hB hbl hbv hBn
  have hlam := closed_normal_lam hA hAn
  cases A with
  | var n => exact hlam.elim
  | app f a => exact hlam.elim
  | lam d =>
      change leafCount d = 3 at hav
      have hi := descend_interpreter hm.1
      have hi' : IsSelfInterpreter (.app (.lam d) (contract t (.lam d))) := by
        simpa only [contract,substDec,if_true] using hi
      have harg : live (contract t (.lam d)) = 2 := by
        simp only [contract,live_subst,htl,hto,hal,Nat.one_mul,Nat.zero_add]
      have hdo : 2 ≤ occ 0 d := by
        by_cases hz : occ 0 d = 0
        · have hred := descend_interpreter hi'
          have hlow := selfInterpreter_three_live hred
          simp only [contract,live_subst,hz,Nat.zero_mul,Nat.add_zero] at hlow
          simp only [live,hz,Nat.lt_irrefl,if_false,Nat.add_zero] at hal
          omega
        · by_cases h1 : occ 0 d = 1
          · exact (affine_two_live_application_impossible d (contract t (.lam d))
              hA hal h1 hcap (by omega) hi').elim
          · omega
      have hdeq : occ 0 d = 2 := by
        have hf := freeLeaves_split d 0
        have hz := freeLeaves_closed d 1 hA
        have hh := leaves_bound d
        have hp : 0 < occ 0 d := by omega
        have hdli : live d = 1 := by simp only [live,if_pos hp] at hal; omega
        simp only [Nat.zero_add,hz,Nat.add_zero] at hf
        omega
      exact ⟨t,d,rfl,htf,hBn.2.2,htl,htv,hto,hA,hAn,hal,hav,hdeq,hcap⟩

/-- Every internal helper lambda and every unused sharing lambda is open,
so all but the two outer live binders cost an index bit. -/
theorem five_leaf_minimum_index_price {E : Term} (hm : MinimalInterpreter E)
    (hv : leafCount E = 5) (hl : live E = 3) : lamCount E ≤ indexSum E + 2 := by
  obtain ⟨t,d,rfl,htf,htn,htl,htv,hto,hdf,hdn,hdl,hdv,hdo,hcap⟩ :=
    five_leaf_minimum_shape hm hv hl
  have htprice := vacuous_index_charge t htl
  have hdprice := live_root_capture_index_bound d (by omega) (by omega) hcap
  simp only [lamCount,indexSum] at hdprice ⊢
  omega

/-- Below 31 bits a minimum interpreter has exactly four source lambdas;
therefore one and only one is unused. No helper layout has been enumerated. -/
theorem below_31_minimum_counts {E : Term} (hm : MinimalInterpreter E)
    (hw : wire E < 31) :
    leafCount E = 5 ∧ live E = 3 ∧ nonlinear E = 2 ∧ lamCount E = 4 ∧
      2 ≤ indexSum E ∧ indexSum E ≤ 4 := by
  obtain ⟨hv,hl,hn,hL⟩ := below_31_counts hm.1 hw
  have hp := five_leaf_minimum_index_price hm hv hl
  have h4 := SelfintRound8FourLambda.selfInterpreter_four_lambdas hm.1
  have hh := wire_identity E
  omega

/-- With three leaves, a normal capturing application body has only one
operand. A longer variable-headed spine would split into separated
one-leaf pieces. -/
theorem normal_app_three_leaf_capture_head {d : Term}
    (hf : FreeUnder 1 d) (hv : leafCount d = 3)
    (hn : NFt d) (hc : ¬ Separated 1 d) (ha : IsApp d) :
    ∃ t, d = .app (.var 0) t := by
  cases d with
  | var n => exact ha.elim
  | lam b => exact ha.elim
  | app f t =>
      cases f with
      | lam b => exact (hn.1 trivial).elim
      | var n =>
          have h0 : n = 0 := by have hh : n < 1 := hf.1; omega
          subst n
          exact ⟨t,rfl⟩
      | app g a =>
          have hg := leafCount_pos g
          have ha := leafCount_pos a
          have ht := leafCount_pos t
          simp only [leafCount] at hv
          exact (hc ⟨⟨one_leaf_separated g 1 (by omega),
            one_leaf_separated a 1 (by omega)⟩,
            one_leaf_separated t 1 (by omega)⟩).elim

/-- The two-leaf capture with two source lambdas has six normal forms.
This follows from its syntax and single global occurrence; no bit cap or
AST enumeration is involved. -/
theorem two_leaf_two_lam_capture_six_forms (t : Term) (hf : FreeUnder 1 t)
    (hv : leafCount t = 2) (hl : lamCount t = 2) (ho : occ 0 t = 1)
    (hc : ¬ Separated 1 t) (hn : NFt t) (hcl : ¬ ClosedSubLam t) :
    t = .lam (.lam (.app (.var 2) (.var 0))) ∨
    t = .lam (.lam (.app (.var 0) (.var 2))) ∨
    t = .lam (.app (.var 1) (.lam (.var 1))) ∨
    t = .lam (.app (.var 0) (.lam (.var 2))) ∨
    t = .lam (.lam (.app (.var 2) (.var 1))) ∨
    t = .lam (.lam (.app (.var 1) (.var 2))) := by
  cases t with
  | var n => exact (hc trivial).elim
  | app f a =>
      have hfp := leafCount_pos f
      have hap := leafCount_pos a
      simp only [leafCount] at hv
      exact (hc ⟨one_leaf_separated f 1 (by omega),one_leaf_separated a 1 (by omega)⟩).elim
  | lam b =>
      have hbl : lamCount b = 1 := by simp only [lamCount] at hl; omega
      cases b with
      | var n => simp [leafCount] at hv
      | lam c =>
          have hcl0 : lamCount c = 0 := by simp only [lamCount] at hbl; omega
          obtain ⟨p,q,rfl⟩ := lamfree_leaf2 c hcl0 hv
          have hp : p < 3 := hf.1
          have hq : q < 3 := hf.2
          have hoc : (if p = 2 then 1 else 0) + (if q = 2 then 1 else 0) = 1 := ho
          by_cases hp2 : p = 2
          · have hqo : q = 0 ∨ q = 1 := by simp only [if_pos hp2] at hoc; split at hoc <;> omega
            subst p
            rcases hqo with rfl | rfl
            · exact .inl rfl
            · exact .inr (.inr (.inr (.inr (.inl rfl))))
          · have hq2 : q = 2 := by simp only [if_neg hp2] at hoc; split at hoc <;> omega
            have hpo : p = 0 ∨ p = 1 := by omega
            subst q
            rcases hpo with rfl | rfl
            · exact .inr (.inl rfl)
            · exact .inr (.inr (.inr (.inr (.inr rfl))))
      | app f a =>
          have hfp := leafCount_pos f
          have hap := leafCount_pos a
          have hv' : leafCount f + leafCount a = 2 := hv
          have hfl1 : leafCount f = 1 := by omega
          have hal1 : leafCount a = 1 := by omega
          cases f with
          | lam c => exact (hn.1 trivial).elim
          | app g x =>
              have hg := leafCount_pos g
              have hx := leafCount_pos x
              change leafCount g + leafCount x = 1 at hfl1
              omega
          | var n =>
              have hal : lamCount a = 1 := by simp only [lamCount] at hbl; omega
              cases a with
              | var m => simp [lamCount] at hal
              | app g x =>
                  have hg := leafCount_pos g
                  have hx := leafCount_pos x
                  change leafCount g + leafCount x = 1 at hal1
                  omega
              | lam c =>
                  have hcl0 : lamCount c = 0 := by simp only [lamCount] at hal; omega
                  obtain ⟨m,rfl⟩ := lamfree_leaf1 c hcl0 hal1
                  have hnlt : n < 2 := hf.1
                  have hmlt : m < 3 := hf.2
                  have hmne : m ≠ 0 := by
                    intro he
                    subst m
                    exact hcl (Or.inr (Or.inr (Or.inl (by decide))))
                  have hoc : (if n = 1 then 1 else 0) + (if m = 2 then 1 else 0) = 1 := ho
                  have hns : n = 0 ∨ n = 1 := by omega
                  have hms : m = 1 ∨ m = 2 := by omega
                  rcases hns with rfl | rfl <;> rcases hms with rfl | rfl
                  · simp at hoc
                  · exact .inr (.inr (.inr (.inl rfl)))
                  · exact .inr (.inr (.inl rfl))
                  · simp at hoc

/-- A fixed head reduction exposing an unused public binder refutes the
exact contract, regardless of the residual body's size or normality. -/
theorem dead_public_head_refutes (t : Term) (n : Nat)
    (hh : match headSteps n t with
      | some (.lam b) => occ 0 b = 0
      | _ => False) : ¬ IsSelfInterpreter t := by
  intro hi
  cases he : headSteps n t with
  | none => simp only [he] at hh
  | some u =>
      cases u with
      | var k => simp only [he] at hh
      | app f a => simp only [he] at hh
      | lam b =>
          have hu := selfInterpreter_betas (SelfintClass.headSteps_beta_star he) hi
          have ho := one_lambda_public_occ hu
          simp only [he] at hh
          omega

/-- The four earlier two-leaf templates and the two remaining placements
of the dead binder all fail. The latter expose a vacuous public binder
in four head contractions. -/
theorem six_capture_forms_refuted (t : Term)
    (ht : t = .lam (.lam (.app (.var 2) (.var 0))) ∨
      t = .lam (.lam (.app (.var 0) (.var 2))) ∨
      t = .lam (.app (.var 1) (.lam (.var 1))) ∨
      t = .lam (.app (.var 0) (.lam (.var 2))) ∨
      t = .lam (.lam (.app (.var 2) (.var 1))) ∨
      t = .lam (.lam (.app (.var 1) (.var 2)))) :
    ¬ IsSelfInterpreter (.app (.lam (.app (.var 0) (.var 0)))
      (.lam (.app (.var 0) t))) := by
  rcases ht with h | h | h | h | rfl | rfl
  · exact four_forms_refuted t (.inl h)
  · exact four_forms_refuted t (.inr (.inl h))
  · exact four_forms_refuted t (.inr (.inr (.inl h)))
  · exact four_forms_refuted t (.inr (.inr (.inr h)))
  · exact dead_public_head_refutes _ 4 (by rfl)
  · exact dead_public_head_refutes _ 4 (by rfl)

/-- A three-lambda capturing helper whose outer body is an application
cannot make the five-leaf root-sharing source an interpreter. This has no
index-sum bound. -/
theorem offprefix_three_leaf_diagonal_not_selfInterpreter {d : Term}
    (hf : FreeUnder 1 d) (hn : NFt d) (hl : lamCount d = 2)
    (hLive : live (.lam d) = 2) (hv : leafCount d = 3) (ho : occ 0 d = 2)
    (hc : ¬ Separated 0 (.lam d)) (ha : IsApp d) :
    ¬ IsSelfInterpreter (.app (.lam (.app (.var 0) (.var 0))) (.lam d)) := by
  have hdc : ¬ Separated 1 d := fun hh => hc ⟨hh,by intro _ i hi; omega⟩
  obtain ⟨t,rfl⟩ := normal_app_three_leaf_capture_head hf hv hn hdc ha
  have htl : lamCount t = 2 := by simpa only [lamCount,Nat.zero_add] using hl
  have htv : leafCount t = 2 := by simp only [leafCount] at hv; omega
  have hto : occ 0 t = 1 := by simp only [occ,if_true] at ho; omega
  have htc : ¬ Separated 1 t := fun ht => hdc ⟨trivial,ht⟩
  have htli : live t ≤ 1 := by
    have hp : 0 < occ 0 (.app (.var 0) t) := by simp only [occ,if_true]; omega
    simp only [live,if_pos hp,Nat.zero_add] at hLive
    omega
  have htcl : ¬ ClosedSubLam t := fun hh => htc (closedSubLam_one_live_separated t 1 hh htli)
  exact six_capture_forms_refuted t
    (two_leaf_two_lam_capture_six_forms t hf.2 htv htl hto htc hn.2.2 htcl)

/-- Every four-lambda, five-leaf minimum representative is the prefix-helper
diagonal. The unused lambda lies inside its helper body; the other
placement reduces to the excluded A(K A) form. No index bound is used. -/
theorem four_lambda_five_leaf_minimum_prefix {E : Term} (hm : MinimalInterpreter E)
    (hv : leafCount E = 5) (hL : lamCount E = 4) :
    ∃ D, E = .app (.lam (.app (.var 0) (.var 0))) (.lam (.lam D)) ∧
      FreeUnder 2 D ∧ NFt D ∧ lamCount D = 1 ∧
      live (.lam (.lam D)) = 2 ∧ leafCount D = 3 ∧ occ 1 D = 2 ∧
      ¬ Separated 0 (.lam (.lam D)) := by
  have hlive := selfInterpreter_three_live hm.1
  have hnl := selfInterpreter_two_nonlinear hm.1
  have hleaves := leaves_bound E
  have hl : live E = 3 := by omega
  obtain ⟨t,d,rfl,htf,htn,htl,htv,hto,hdf,hdn,hdl,hdv,hdo,hcap⟩ :=
    five_leaf_minimum_shape hm hv hl
  have hdlive : live d = 1 := by
    simp only [live,if_pos (show 0 < occ 0 d by omega)] at hdl
    omega
  have hdlam := live_le_lamCount d
  have hlt : lamCount t ≤ 1 := by simp only [lamCount] at hL; omega
  cases t with
  | app f a =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      change leafCount f + leafCount a = 1 at htv
      omega
  | lam b =>
      have hbL : lamCount b = 0 := by simp only [lamCount] at hlt; omega
      obtain ⟨n,rfl⟩ := lamfree_leaf1 b hbL htv
      have hn1 : n = 1 := by
        have hnlt : n < 2 := htf
        have hn0 : n ≠ 0 := by intro h; subst n; simp [live,occ] at htl
        omega
      subst n
      have hd1 : lamCount d = 1 := by simp only [lamCount] at hL; omega
      have hred := descend_interpreter hm.1
      have hdead : IsSelfInterpreter (SelfintRound8DeadApply.deadApply (.lam d)) := by
        simpa only [SelfintRound8DeadApply.deadApply,contract,substDec,if_true,
          shift_closed 1 0 (show Closed (.lam d) from hdf)] using hred
      exact (SelfintRound8DeadApply.normal_three_leaf_deadApply_not_selfInterpreter
        d hdf hdn hd1 hdv (by omega) hdead).elim
  | var n =>
      have hn0 : n = 0 := by have hh : n < 1 := htf; omega
      subst n
      have hd2 : lamCount d = 2 := by simp only [lamCount] at hL; omega
      cases d with
      | var m => simp [lamCount] at hd2
      | app f a =>
          exact (offprefix_three_leaf_diagonal_not_selfInterpreter hdf hdn hd2
            hdl hdv hdo hcap trivial hm.1).elim
      | lam D =>
          exact ⟨D,rfl,hdf,hdn,by simp only [lamCount] at hd2; omega,
            hdl,hdv,hdo,hcap⟩

/-- The only possible sub-31 minimum source is this prefix diagonal. -/
theorem below_31_minimum_prefix {E : Term} (hm : MinimalInterpreter E)
    (hw : wire E < 31) :
    ∃ D, E = .app (.lam (.app (.var 0) (.var 0))) (.lam (.lam D)) ∧
      FreeUnder 2 D ∧ NFt D ∧ lamCount D = 1 ∧
      live (.lam (.lam D)) = 2 ∧ leafCount D = 3 ∧ occ 1 D = 2 ∧
      ¬ Separated 0 (.lam (.lam D)) := by
  obtain ⟨hv,_,_,hL,_,_⟩ := below_31_minimum_counts hm hw
  exact four_lambda_five_leaf_minimum_prefix hm hv hL

/-- Every minimum interpreter with four source lambdas has at least six
leaves. The excluded resource cell has no index-sum or bit-length cap. -/
theorem four_lambda_minimum_leaves_six {E : Term} (hm : MinimalInterpreter E)
    (hL : lamCount E = 4) : 6 ≤ leafCount E := by
  by_cases hv : 6 ≤ leafCount E
  · exact hv
  · have hl := selfInterpreter_three_live hm.1
    have hn := selfInterpreter_two_nonlinear hm.1
    have hle := leaves_bound E
    have hv5 : leafCount E = 5 := by omega
    obtain ⟨D,rfl,hf,hn,hD,hLive,hV,ho,_⟩ :=
      four_lambda_five_leaf_minimum_prefix hm hv5 hL
    exact (SelfintRound8PrefixDead.prefix_three_leaf_diagonal_not_selfInterpreter
      D hf hn hD hLive hV ho hm.1).elim

/-- The first unconditional bit-floor consequence of the four-lambda
source boundary. The proof excludes source resource cells symbolically. -/
theorem minimal_bound_31 {E : Term} (hm : MinimalInterpreter E) : 31 ≤ wire E := by
  by_cases hw : 31 ≤ wire E
  · exact hw
  · obtain ⟨hv,_,_,hL,_,_⟩ := below_31_minimum_counts hm (by omega)
    have hh := four_lambda_minimum_leaves_six hm hL
    omega

/-- Every exact closed-source interpreter has at least 31 BLC bits.
No architecture, normality, statistical, or finite-search hypothesis. -/
theorem selfintSizeBound_31 : SelfintSizeBound 31 := by
  have key : ∀ n, ∀ E : Term, IsSelfInterpreter E → wire E = n → 31 ≤ n := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
        intro E hE hn
        by_cases hm : ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'
        · have hh := minimal_bound_31 ⟨hE,hm⟩
          omega
        · have he : ∃ E', IsSelfInterpreter E' ∧ wire E' < wire E := by
            classical
            apply Classical.byContradiction
            intro hno
            apply hm
            intro E' hE'
            apply Classical.byContradiction
            intro hbad
            exact hno ⟨E',hE',by omega⟩
          obtain ⟨E',hE',hh⟩ := he
          have hh' := ih (wire E') (by omega) E' hE' rfl
          omega
  intro E hE
  exact key _ E hE rfl

/-- The next exact equality boundary has two resource triples. This is a
localization only, not a 32-bit lower bound. -/
theorem minimum_at_31_resource_cells {E : Term} (hm : MinimalInterpreter E)
    (hw : wire E = 31) :
    (lamCount E = 4 ∧ leafCount E = 6 ∧ indexSum E = 1) ∨
    (lamCount E = 5 ∧ leafCount E = 5 ∧ indexSum E = 3) := by
  have hL := SelfintRound8FourLambda.selfInterpreter_four_lambdas hm.1
  have hV := leaves_bound E
  have hl := selfInterpreter_three_live hm.1
  have hn := selfInterpreter_two_nonlinear hm.1
  have hx := selfinterpreter_indexSum_pos E hm.1
  have hi := wire_identity E
  by_cases hv5 : leafCount E = 5
  · have hl3 : live E = 3 := by omega
    have hp := five_leaf_minimum_index_price hm hv5 hl3
    have hnot4 : lamCount E ≠ 4 := by
      intro he
      have hh := four_lambda_minimum_leaves_six hm he
      omega
    exact .inr ⟨by omega,hv5,by omega⟩
  · exact .inl ⟨by omega,by omega,by omega⟩

#print axioms selfintSizeBound_31
#print axioms minimum_at_31_resource_cells
#print axioms four_lambda_minimum_leaves_six
#print axioms four_lambda_five_leaf_minimum_prefix
#print axioms below_31_minimum_prefix
#print axioms offprefix_three_leaf_diagonal_not_selfInterpreter
#print axioms five_leaf_minimum_shape
#print axioms below_31_minimum_counts
end Blc.SelfintRound8BitFloor
