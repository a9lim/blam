/- The separated interpreter class: an opaque fixed-point knot around
   `λp c. R[Q/j]`, where the reader R obeys the independent rigid reader laws
   and NEXT Q is beta-normal, uses its tag only with two arms, and obeys the
   canonical rigid branch laws. Every member costs at least
   `116 + cost R + 4 * depth R` and at least 138 bits; the canonical NEXT and
   the 20-bit knot attain the first price exactly, and the 162 and the 165 are
   its literal assemblies. `docs/classical/self-interpreter/interpreter.md` §5.
   All variables are 0-based. At the root of R: c=0, j=1; rigid probes use
   N=2 and r=3. -/
import Blc.SelfintKnot
import Blc.SelfintFloorApp
import Blc.Selfint162

namespace Blc.SelfintClass
open Term SelfintLowerBound SelfintNonlinearChain SelfintWireCost SelfintFloor

set_option maxRecDepth 4000
set_option maxHeartbeats 800000

def P : Term := pairT churchTrue (.var 2)
def S : Term := pairT churchFalse P
def W : Term := .lam (.var 3)
def Z : Term := pairT churchTrue (.var 3)
def varOut : Term := .app (.app (.var 0) P) (.var 2)
def zeroOut : Term := .app (.var 3) (.var 1)

/-- Only the zero and length-one instances of the independent reader laws. -/
structure Reader (R : Term) : Prop where
  scope : FreeUnder 2 R
  zero : BetaJoin (.app R Z) zeroOut
  one : BetaJoin (.app R S) varOut

theorem varOut_normal : NormalForm varOut := fun _ h => nft_no_beta (by decide) h
theorem zeroOut_normal : NormalForm zeroOut := fun _ h => nft_no_beta (by decide) h

theorem join_normal {t n : Term} (h : BetaJoin t n) (hn : NormalForm n) : Betas t n := by
  obtain ⟨w, ht, hw⟩ := h
  have he := normalForm_betas_eq hn hw
  subst w
  exact ht

theorem Reader.one_red {R : Term} (h : Reader R) : Betas (.app R S) varOut :=
  join_normal h.one varOut_normal

theorem Reader.zero_red {R : Term} (h : Reader R) : Betas (.app R Z) zeroOut :=
  join_normal h.zero zeroOut_normal

theorem Reader.beta {R R' : Term} (h : Reader R) (hr : Beta R R') : Reader R' := by
  refine ⟨beta_freeUnder hr 2 h.scope, ?_, ?_⟩
  · exact ⟨_, betas_preserve_nf (.head (.appL Z hr) (.refl _)) h.zero_red zeroOut_normal, .refl _⟩
  · exact ⟨_, betas_preserve_nf (.head (.appL S hr) (.refl _)) h.one_red varOut_normal, .refl _⟩

theorem affine_betas_occ {t u : Term} (h : Betas t u) (ht : nonlinear t = 0) :
    nonlinear u = 0 ∧ ∀ j, occ j u ≤ occ j t := by
  induction h with
  | refl => exact ⟨ht, fun _ => Nat.le_refl _⟩
  | head hb hs ih =>
    obtain ⟨hu, ho⟩ := affine_beta_progress hb ht
    obtain ⟨hv, hvocc⟩ := ih hu
    exact ⟨hv, fun j => Nat.le_trans (hvocc j) (ho j)⟩

/-- A fresh suffix occurs once in the probe and twice in its required normal result. -/
theorem reader_nonlinear {R : Term} (h : Reader R) : 1 ≤ nonlinear R := by
  by_cases hz : nonlinear R = 0
  · have ha : nonlinear (.app R S) = 0 := by
      simpa only [nonlinear, hz, Nat.zero_add] using (show nonlinear S = 0 by decide)
    have ho := (affine_betas_occ h.one_red ha).2 2
    have hf := occ_of_freeUnder R 2 2 h.scope (by omega)
    have hi : occ 2 S = 1 := by decide
    have ht : occ 2 varOut = 2 := by decide
    simp only [occ, hf, hi, ht] at ho
    omega
  · omega

theorem reader_c {R : Term} (h : Reader R) : 1 ≤ occ 0 R := by
  by_cases hz : occ 0 R = 0
  · have hs : occ 0 S = 0 := by decide
    have ho := SelfintKnot.occ_betas_zero h.one_red 0 (by simp [occ, hz, hs])
    have ht : occ 0 varOut = 1 := by decide
    omega
  · omega

theorem reader_j {R : Term} (h : Reader R) : 1 ≤ occ 1 R := by
  by_cases hz : occ 1 R = 0
  · have hs : occ 1 Z = 0 := by decide
    have ho := SelfintKnot.occ_betas_zero h.zero_red 1 (by simp [occ, hz, hs])
    have ht : occ 1 zeroOut = 1 := by decide
    omega
  · omega

/-- The guard checks the first argument on a c-headed spine. -/
def Guard : Term → Prop
  | .var _ => True
  | .lam _ => True
  | .app f a => Guard f ∧ (f = .var 0 → a ≠ P)

inductive Value : Term → Prop where
  | stream : Value S
  | constant : Value W
  | neutral {t : Term} : Rigid t → NFt t → Guard t → Value t

theorem value_nf {t : Term} (h : Value t) : NFt t := by
  cases h with
  | stream => decide
  | constant => decide
  | neutral _ hn _ => exact hn

theorem value_ne_P {t : Term} (h : Value t) : t ≠ P := by
  cases h with
  | stream => decide
  | constant => decide
  | neutral hr _ _ => exact rigid_not_lam hr _

theorem value_ne_output : ¬ Value varOut := by
  intro h
  cases h with
  | neutral hr hn hg =>
    have hbad := hg.1.2 rfl
    exact hbad rfl

theorem pair_apply (a b x : Term) :
    Beta (.app (pairT a b) x) (.app (.app x a) b) := by
  have h := Beta.beta (.app (.app (.var 0) (shift 1 0 a)) (shift 1 0 b)) x
  simpa only [pairT, contract, substDec, if_true, substDec_shift] using h

theorem headSteps_beta_star {n : Nat} {t u : Term} (h : headSteps n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp only [headSteps, Option.some.injEq] at h; subst u; exact .refl _
  | succ n ih =>
    simp only [headSteps, Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hu⟩ := h
    exact .head (beta_of_headStep (headStep_sound hv)) (ih hu)

theorem stream_square : Betas (.app S S) W := by
  exact headSteps_beta_star (by decide : headSteps 9 (.app S S) = some W)

theorem constant_apply (x : Term) : Beta (.app W x) (.var 2) := by
  exact Beta.beta _ _

theorem stream_constant : Betas (.app S W) (.app (.var 2) P) :=
  .head (pair_apply churchFalse P W) (.head (.appL P (constant_apply churchFalse)) (.refl _))

theorem value_apply {f a : Term} (hf : Value f) (ha : Value a) :
    ∃ u, Betas (.app f a) u ∧ Value u := by
  cases hf with
  | stream =>
    cases ha with
    | stream => exact ⟨_, stream_square, .constant⟩
    | constant => exact ⟨_, stream_constant, .neutral (.app _ (.var 2)) (by decide) ⟨trivial, by intro he; cases he⟩⟩
    | neutral hr hn hg =>
      refine ⟨_, .head (pair_apply churchFalse P _) (.refl _), .neutral (.app _ (.app _ hr)) ?_ ?_⟩
      · exact ⟨by simp [IsLam], ⟨by cases hr <;> simp [IsLam], hn, by decide⟩, by decide⟩
      · exact ⟨⟨hg, fun _ => by decide⟩, by intro he; cases he⟩
  | constant => exact ⟨_, .head (constant_apply a) (.refl _), .neutral (.var 2) trivial trivial⟩
  | neutral hr hn hg =>
    exact ⟨_, .refl _, .neutral (.app _ hr)
      ⟨by cases hr <;> simp [IsLam], hn, value_nf ha⟩
      ⟨hg, fun _ => value_ne_P ha⟩⟩

/-- Structural induction on every application-only tree over s,c,j.
    There is no size or reduction-fuel bound in this theorem. -/
theorem app_tree_algebra (B : Term) (hl : lamCount B = 0) (hf : FreeUnder 3 B) :
    ∃ v, Betas (contract B S) v ∧ Value v := by
  induction B with
  | var n =>
    have hn : n < 3 := hf
    have hh : n = 0 ∨ n = 1 ∨ n = 2 := by omega
    rcases hh with rfl | rfl | rfl
    · exact ⟨_, .refl _, .stream⟩
    · exact ⟨_, .refl _, .neutral (.var 0) trivial trivial⟩
    · exact ⟨_, .refl _, .neutral (.var 1) trivial trivial⟩
  | lam b => simp [lamCount] at hl
  | app f a ihf iha =>
    have hls : lamCount f + lamCount a = 0 := hl
    obtain ⟨u, hu, hv⟩ := ihf (by omega) hf.1
    obtain ⟨v, hv', hw⟩ := iha (by omega) hf.2
    obtain ⟨w, hred, hval⟩ := value_apply hv hw
    exact ⟨w, betas_trans (betas_app hu hv') hred, hval⟩

theorem betas_scope {t u : Term} (h : Betas t u) (k : Nat)
    (ht : FreeUnder k t) : FreeUnder k u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (beta_freeUnder hb k ht)

theorem reader_not_rigid {R : Term} (h : Reader R) : ¬ Rigid R := by
  intro hr
  obtain ⟨f, a, he, hf, ha⟩ := rigid_betas_shape hr h.zero_red
  change Term.app (.var 3) (.var 1) = .app f a at he
  cases he
  have hh := betas_scope hf 2 h.scope
  exact (by decide : ¬ FreeUnder 2 (.var 3)) hh

theorem one_lam_weakStep {t u : Term} (hl : lamCount t ≤ 1)
    (hs : weakStep t = some u) : lamCount u = 0 := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      simp only [lamCount] at hl
      have hb : lamCount b = 0 := by omega
      have ha : lamCount a = 0 := by omega
      simp [contract, lamCount_subst, hb, ha]
    | app f b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have hsmall : lamCount (.app f b) ≤ 1 := by
        simp only [lamCount] at hl ⊢; omega
      have hz := ihf hsmall hv
      have hpos : 1 ≤ lamCount (.app f b) := by
        by_cases hzero : lamCount (.app f b) = 0
        · have hnl := weakStep_beta hv
          have hn : NFt (.app f b) := by
            have aux : ∀ t, lamCount t = 0 → NFt t := by
              intro t h0
              induction t with
              | var => trivial
              | lam => simp [lamCount] at h0
              | app f a ihf iha =>
                simp only [lamCount] at h0
                refine ⟨?_, ihf (by omega), iha (by omega)⟩
                cases f <;> simp_all [lamCount, IsLam]
            exact aux _ hzero
          exact (nft_no_beta hn hnl).elim
        · omega
      simp only [lamCount] at hl hpos hz ⊢
      omega

/-- Every reader has at least two source lambda nodes, including readers
    with arbitrary redexes and arbitrary multiplicity of j. -/
theorem reader_two_lambdas {R : Term} (h : Reader R) : 2 ≤ lamCount R := by
  by_cases hl : 2 ≤ lamCount R
  · exact hl
  · have hsmall : lamCount R ≤ 1 := by omega
    cases hs : weakStep R with
    | some R' =>
      have hz := one_lam_weakStep hsmall hs
      have hr := h.beta (weakStep_beta hs)
      have hn := reader_nonlinear hr
      have hle := nonlinear_le_lamCount R'
      omega
    | none =>
      cases R with
      | var n => exact (reader_not_rigid h (.var n)).elim
      | app f a => exact (reader_not_rigid h (weakStep_none_rigid hs (by simp [IsLam]))).elim
      | lam B =>
        have hB : lamCount B = 0 := by simp only [lamCount] at hsmall; omega
        obtain ⟨v, hv, hn⟩ := app_tree_algebra B hB h.scope
        have red : Betas (.app (.lam B) S) v := .head (.beta B S) hv
        have he := normalForm_unique red h.one_red
          (fun _ hb => nft_no_beta (value_nf hn) hb) varOut_normal
        exact (value_ne_output (he ▸ hn)).elim

/-- The unique stream binder of a lambda-rooted reader is live. -/
theorem reader_root_live {B : Term} (h : Reader (.lam B)) : 1 ≤ occ 0 B := by
  by_cases hz : occ 0 B = 0
  · have hb : Betas (contract B Z) zeroOut :=
      betas_preserve_nf (.head (.beta B Z) (.refl _)) h.zero_red zeroOut_normal
    have hf := occ_of_freeUnder B 3 4 h.scope (by omega)
    have ho : occ 3 (contract B Z) = 0 := by
      rw [contract, occ_substDec_ge B Z 3 0 (by omega)]
      simp [hz, hf]
    have hout := SelfintKnot.occ_betas_zero hb 3 ho
    have hv : occ 3 zeroOut = 1 := by decide
    omega
  · omega

/-- Cost of a single marked free-variable kind, priced at zero. -/
def holeCost (j : Nat) : Term → Nat
  | .var n => if n = j then 0 else n + 2
  | .lam b => 2 + holeCost (j + 1) b
  | .app f a => 2 + holeCost j f + holeCost j a

def tax (j : Nat) : Term → Nat
  | .var n => if n = j then 0 else n
  | .lam b => tax (j + 1) b
  | .app f a => tax j f + tax j a

abbrev cost (R : Term) := holeCost 1 R
abbrev depth (R : Term) := occDepth 1 R

theorem holeCost_identity (t : Term) (j : Nat) :
    holeCost j t + 2 + 2 * occ j t =
      2 * lamCount t + 4 * leafCount t + tax j t := by
  induction t generalizing j with
  | var n => simp only [holeCost, occ, lamCount, leafCount, tax]; split <;> omega
  | lam b ih => have := ih (j + 1); simp only [holeCost, occ, lamCount, leafCount, tax]; omega
  | app f a ihf iha =>
    have := ihf j; have := iha j
    simp only [holeCost, occ, lamCount, leafCount, tax]; omega

theorem reader_leaves {R : Term} (h : Reader R) : 4 ≤ leafCount R := by
  have hn := reader_nonlinear h
  have hc := reader_c h
  have hj := reader_j h
  have hl := nonlinear_le_live R
  have hf0 := freeLeaves_split R 0
  have hf1 := freeLeaves_split R 1
  have hv := leaves_bound R
  simp only [Nat.reduceAdd] at hf0 hf1
  omega

theorem reader_cost_sixteen {R : Term} (h : Reader R) (hj : occ 1 R = 1) :
    16 ≤ cost R := by
  have hh := holeCost_identity R 1
  have hl := reader_two_lambdas h
  have hv := reader_leaves h
  change 16 ≤ holeCost 1 R
  omega

theorem tax_occ (t : Term) (j i : Nat) (hne : i ≠ j) :
    occ i t * i ≤ tax j t := by
  induction t generalizing j i with
  | var n => simp only [tax, occ]; split <;> split <;> omega
  | lam b ih =>
    have hb := ih (j + 1) (i + 1) (by omega)
    have hm := Nat.mul_le_mul_left (occ (i + 1) b) (Nat.le_succ i)
    simp only [Nat.succ_eq_add_one] at hm
    simp only [occ, tax]; omega
  | app f a ihf iha =>
    have := ihf j i hne; have := iha j i hne
    simp only [occ, tax, Nat.add_mul]; omega

theorem reader_lam_cost {B : Term} (h : Reader (.lam B)) (hj : occ 1 (.lam B) = 1) :
    17 ≤ cost (.lam B) := by
  have hh := holeCost_identity (.lam B) 1
  have hl := reader_two_lambdas h
  have hv := reader_leaves h
  have hc := reader_c h
  have ht := tax_occ B 2 1 (by omega)
  change 17 ≤ holeCost 1 (.lam B)
  simp only [occ, tax, Nat.reduceAdd] at hc hh hj
  omega

theorem leafCount_shift (t : Term) (d c : Nat) : leafCount (shift d c t) = leafCount t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha => simp only [shift, leafCount, ihf, iha]

theorem leafCount_subst (t s : Term) (j : Nat) :
    leafCount (substDec j s t) + occ j t = leafCount t + occ j t * leafCount s := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec, occ, leafCount]
    split
    · omega
    · split <;> simp [leafCount]
  | lam b ih =>
    have h := ih (shift 1 0 s) (j + 1)
    simpa only [substDec, leafCount, occ, leafCount_shift] using h
  | app f a ihf iha =>
    have := ihf s j; have := iha s j
    simp only [substDec, occ, leafCount, Nat.add_mul]; omega

/-- With at most one nonlinear binder, a head contraction that preserves
    nonlinearity removes a lambda and a leaf from the original source.
    This is node counting; wire-size monotonicity is not assumed. -/
theorem weakStep_counts {t u : Term} (hs : weakStep t = some u)
    (ht : nonlinear t ≤ 1) (hn : nonlinear t ≤ nonlinear u) :
    lamCount u + 1 ≤ lamCount t ∧ leafCount u + 1 ≤ leafCount t := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      have hb : occ 0 b ≤ 1 := by
        by_cases hk : 1 < occ 0 b
        · have hnb : nonlinear b = 0 := by simp only [nonlinear, if_pos hk] at ht; omega
          have hna : nonlinear a = 0 := by simp only [nonlinear, if_pos hk] at ht; omega
          simp only [contract, nonlinear_subst, nonlinear, if_pos hk, hnb, hna] at hn
          omega
        · omega
      have hL := lamCount_subst b a 0
      have hV := leafCount_subst b a 0
      have hp := leafCount_pos a
      rcases Nat.le_one_iff_eq_zero_or_eq_one.mp hb with hz | ho
      · simp only [hz, Nat.zero_mul, Nat.add_zero] at hL hV
        change lamCount (substDec 0 a b) + 1 ≤ lamCount b + 1 + lamCount a ∧
          leafCount (substDec 0 a b) + 1 ≤ leafCount b + leafCount a
        constructor <;> omega
      · simp only [ho, Nat.one_mul] at hL hV
        change lamCount (substDec 0 a b) + 1 ≤ lamCount b + 1 + lamCount a ∧
          leafCount (substDec 0 a b) + 1 ≤ leafCount b + leafCount a
        constructor <;> omega
    | app g b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have ht' : nonlinear (.app g b) ≤ 1 := by simp only [nonlinear] at ht ⊢; omega
      have hn' : nonlinear (.app g b) ≤ nonlinear v := by simp only [nonlinear] at hn ⊢; omega
      obtain ⟨hL, hV⟩ := ihf hv ht' hn'
      simp only [lamCount, leafCount] at hL hV ⊢
      constructor <;> omega

/-- Every reader whose source root is not a lambda costs at least 22. -/
theorem reader_nonlam_cost {R : Term} (h : Reader R) (hj : occ 1 R = 1)
    (hlam : ¬ IsLam R) : 22 ≤ cost R := by
  have hc := reader_c h
  have hn := reader_nonlinear h
  have hL := reader_two_lambdas h
  have hV := leaves_bound R
  have hlive := nonlinear_le_live R
  have hf0 := freeLeaves_split R 0
  have hf1 := freeLeaves_split R 1
  simp only [Nat.reduceAdd] at hf0 hf1
  have hprice := holeCost_identity R 1
  change 22 ≤ holeCost 1 R
  by_cases hnl : 2 ≤ nonlinear R
  · omega
  · cases hs : weakStep R with
    | none => exact (reader_not_rigid h (weakStep_none_rigid hs hlam)).elim
    | some R' =>
      have hr' := h.beta (weakStep_beta hs)
      have hn' := reader_nonlinear hr'
      have hL' := reader_two_lambdas hr'
      have hV' := reader_leaves hr'
      obtain ⟨hld, hvd⟩ := weakStep_counts hs (by omega) (by omega)
      omega

theorem reader_cost_seventeen {R : Term} (h : Reader R) (hj : occ 1 R = 1) :
    17 ≤ cost R := by
  cases R with
  | lam B => exact reader_lam_cost h hj
  | var n => have := reader_nonlam_cost h hj (by simp [IsLam]); omega
  | app f a => have := reader_nonlam_cost h hj (by simp [IsLam]); omega

/-- Hole depth zero forces a source root other than lambda. -/
theorem reader_depth_zero {R : Term} (h : Reader R) (hj : occ 1 R = 1)
    (hd : depth R = 0) : 22 ≤ cost R := by
  apply reader_nonlam_cost h hj
  cases R with
  | var n => simp [IsLam]
  | app f a => simp [IsLam]
  | lam B =>
    simp only [depth, occDepth, occ] at hd hj
    omega

/-- Free indices with local binders removed; bound leaves contribute zero. -/
def baseIndex (c : Nat) : Term → Nat
  | .var n => n - c
  | .lam b => baseIndex (c + 1) b
  | .app f a => baseIndex c f + baseIndex c a

theorem baseIndex_split (t : Term) (c : Nat) :
    baseIndex c t = baseIndex (c + 1) t + freeLeaves (c + 1) t := by
  induction t generalizing c with
  | var n => simp only [baseIndex, freeLeaves]; split <;> omega
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha =>
    have := ihf c; have := iha c
    simp only [baseIndex, freeLeaves]; omega

theorem vacuous_free_leaves (t : Term) (h : live t = 0) :
    freeLeaves 0 t = leafCount t := by
  induction t with
  | var n => simp [freeLeaves, leafCount]
  | lam b ih =>
    have hb : live b = 0 := by simp only [live] at h; omega
    have ho : occ 0 b = 0 := by
      by_cases hn : 0 < occ 0 b
      · simp only [live, if_pos hn] at h; omega
      · omega
    have hh := ih hb
    have hs := freeLeaves_split b 0
    simp only [freeLeaves, leafCount, Nat.reduceAdd] at hs ⊢
    omega
  | app f a ihf iha =>
    have hf : live f = 0 := by simp only [live] at h; omega
    have ha : live a = 0 := by simp only [live] at h; omega
    simp only [freeLeaves, leafCount, ihf hf, iha ha]

/-- Every vacuous source lambda raises the index of at least one free leaf. -/
theorem vacuous_index_charge (t : Term) (h : live t = 0) :
    lamCount t + baseIndex 0 t ≤ SelfintCapture.indexSum t := by
  induction t with
  | var n => simp [lamCount, baseIndex, SelfintCapture.indexSum]
  | lam b ih =>
    have hb : live b = 0 := by simp only [live] at h; omega
    have ho : occ 0 b = 0 := by
      by_cases hn : 0 < occ 0 b
      · simp only [live, if_pos hn] at h; omega
      · omega
    have hbound := ih hb
    have hsplit := baseIndex_split b 0
    have hf := vacuous_free_leaves b hb
    have hs := freeLeaves_split b 0
    have hp := leafCount_pos b
    simp only [lamCount, baseIndex, SelfintCapture.indexSum, Nat.reduceAdd] at hsplit hs ⊢
    omega
  | app f a ihf iha =>
    have hf : live f = 0 := by simp only [live] at h; omega
    have ha : live a = 0 := by simp only [live] at h; omega
    have := ihf hf; have := iha ha
    simp only [lamCount, baseIndex, SelfintCapture.indexSum]; omega

theorem baseIndex_three (t : Term) (c : Nat) (h : FreeUnder (c + 3) t) :
    baseIndex c t = occ (c + 1) t + 2 * occ (c + 2) t := by
  induction t generalizing c with
  | var n =>
    have hn : n < c + 3 := h
    simp only [baseIndex, occ]
    split <;> split <;> omega
  | lam b ih =>
    have hb := ih (c + 1) (by simpa only [FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using h)
    simpa only [baseIndex, occ, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hb
  | app f a ihf iha =>
    have := ihf c h.1; have := iha c h.2
    simp only [baseIndex, occ]; omega

theorem tax_identity (t : Term) (j : Nat) :
    SelfintCapture.indexSum t = tax j t + j * occ j t + occDepth j t := by
  induction t generalizing j with
  | var n => simp only [SelfintCapture.indexSum, tax, occ, occDepth]; split <;> simp_all
  | lam b ih =>
    have := ih (j + 1)
    simp only [SelfintCapture.indexSum, tax, occ, occDepth, Nat.add_mul, Nat.one_mul] at this ⊢
    omega
  | app f a ihf iha =>
    have := ihf j; have := iha j
    simp only [SelfintCapture.indexSum, tax, occ, occDepth, Nat.mul_add]; omega

/-- Depth one excludes the tight 17-bit source count: its other, vacuous
    lambda must contain the hole, which would put that hole at depth two. -/
theorem reader_depth_one {R : Term} (h : Reader R) (hj : occ 1 R = 1)
    (hd : depth R = 1) : 18 ≤ cost R := by
  cases R with
  | var n => have := reader_nonlam_cost h hj (by simp [IsLam]); omega
  | app f a => have := reader_nonlam_cost h hj (by simp [IsLam]); omega
  | lam B =>
    have hprice := holeCost_identity (.lam B) 1
    have hL := reader_two_lambdas h
    have hV := reader_leaves h
    have htax := tax_occ B 2 1 (by omega)
    have hc := reader_c h
    have hroot := reader_root_live h
    have hnl := reader_nonlinear h
    have hleaves := leaves_bound (.lam B)
    have hs0 := freeLeaves_split (.lam B) 0
    have hs1 := freeLeaves_split (.lam B) 1
    have hmin := reader_lam_cost h hj
    by_cases hh : 18 ≤ cost (.lam B)
    · exact hh
    · have he : cost (.lam B) = 17 := by omega
      have hB_live : live B = 0 := by
        simp only [live, if_pos (show 0 < occ 0 B by omega)] at hleaves
        simp only [cost, occ, Nat.reduceAdd] at he hprice hj hs0 hs1 hc
        omega
      have hvac := vacuous_index_charge B hB_live
      have hbase := baseIndex_three B 0 h.scope
      have htaxeq := tax_identity B 2
      simp only [cost, depth, occ, lamCount, leafCount, tax, occDepth, Nat.reduceAdd] at hprice hL hV hc hj hd he hbase
      omega

/-- The requested source charges, all from the two rigid probes. -/
theorem reader_depth_charges {R : Term} (h : Reader R) (hj : occ 1 R = 1) :
    (depth R = 0 → 22 ≤ cost R) ∧
    (depth R = 1 → 18 ≤ cost R) ∧
    (2 ≤ depth R → 17 ≤ cost R) :=
  ⟨reader_depth_zero h hj, reader_depth_one h hj, fun _ => reader_cost_seventeen h hj⟩

theorem reader_weighted_cost {R : Term} (h : Reader R) (hj : occ 1 R = 1) :
    22 ≤ cost R + 4 * depth R := by
  have hb := reader_depth_charges h hj
  by_cases h0 : depth R = 0
  · have := hb.1 h0; omega
  · by_cases h1 : depth R = 1
    · have := hb.2.1 h1; omega
    · have := hb.2.2 (by omega); omega

/-! Exact source accounting and opaque fixed-point assembly. -/

theorem holeCost_wire (t : Term) (j : Nat) :
    wire t = holeCost j t + (j + 2) * occ j t + occDepth j t := by
  have hw := wire_identity t
  have hc := holeCost_identity t j
  have hi := tax_identity t j
  simp only [Nat.add_mul]
  omega

theorem wire_hole_subst (t q : Term) (j : Nat) :
    wire (substDec j q t) + freeLeaves (j + 1) t =
      holeCost j t + occ j t * wire q + freeLeaves 0 q * occDepth j t := by
  have hs := wire_subst t q j
  have hc := holeCost_wire t j
  omega

theorem shift_scope (t : Term) (d c k : Nat) (h : FreeUnder k t) :
    FreeUnder (k + d) (shift d c t) := by
  induction t generalizing c k with
  | var n => simp only [shift]; split <;> simp only [FreeUnder] at h ⊢ <;> omega
  | lam b ih =>
    have hb := ih (c + 1) (k + 1) h
    simpa only [shift, FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hb
  | app f a ihf iha => exact ⟨ihf c k h.1, iha c k h.2⟩

theorem subst_scope (t q : Term) (j k : Nat) (hj : j ≤ k)
    (ht : FreeUnder (k + 1) t) (hq : FreeUnder k q) :
    FreeUnder k (substDec j q t) := by
  induction t generalizing q j k with
  | var n =>
    simp only [substDec]; split
    · exact hq
    · split <;> simp only [FreeUnder] at ht ⊢ <;> omega
  | lam b ih =>
    exact ih (shift 1 0 q) (j + 1) (k + 1) (by omega) ht (shift_scope q 1 0 k hq)
  | app f a ihf iha => exact ⟨ihf q j k hj ht.1 hq, iha q j k hj ht.2 hq⟩

/-- Literal hygienic assembly in the nearest-first frame [c,p]. -/
def functional (R Q : Term) : Term := .lam (.lam (substDec 1 Q R))
def assemble (T R Q : Term) : Term := substDec 0 (functional R Q) T

theorem functional_closed {R Q : Term} (hR : FreeUnder 2 R) (hQ : FreeUnder 2 Q) :
    Closed (functional R Q) := by
  exact subst_scope R Q 1 2 (by omega) (freeUnder_mono (by omega : 2 ≤ 3) hR) hQ

/-- Exact price for arbitrary source R and Q, before beta reduction. -/
theorem functional_wire {R Q : Term} (hR : FreeUnder 2 R) (hj : occ 1 R = 1) :
    wire (functional R Q) = 4 + cost R + wire Q + freeLeaves 0 Q * depth R := by
  have hs := wire_hole_subst R Q 1
  have hz := freeLeaves_closed R 2 hR
  simp only [hj, Nat.one_mul, Nat.reduceAdd, hz, Nat.add_zero] at hs
  simp only [functional, wire_lam, cost, depth]
  omega

theorem holeCost_ghost (T : Term) (c : Nat) (h : FreeUnder (c + 1) T) :
    holeCost c T = SelfintKnot.ghostCost c T := by
  induction T generalizing c with
  | var n =>
    have hn : n < c + 1 := h
    simp only [holeCost, SelfintKnot.ghostCost]; split <;> split <;> omega
  | lam b ih => simp only [holeCost, SelfintKnot.ghostCost, ih (c + 1) h]
  | app f a ihf iha => simp only [holeCost, SelfintKnot.ghostCost, ihf c h.1, iha c h.2]

/-- Every free occurrence in T is h; a closed fill contributes its exact
    source size once per occurrence, independently of the occurrence depth. -/
theorem knot_fill_wire {T H : Term} (hT : FreeUnder 1 T) (hH : Closed H) :
    wire (substDec 0 H T) = SelfintKnot.ghostCost 0 T + freeLeaves 0 T * wire H := by
  have hs := wire_hole_subst T H 0
  have hz := freeLeaves_closed T 1 hT
  have hh := freeLeaves_closed H 0 hH
  have hfree := freeLeaves_split T 0
  have hg := holeCost_ghost T 0 hT
  simp only [Nat.reduceAdd, hz, hh, Nat.zero_mul, Nat.add_zero] at hs hfree
  have hf : freeLeaves 0 T = occ 0 T := by omega
  rw [hf, ← hg]
  exact hs

/-- Numeric interface for the price-only assembly lemmas. The theorem
    `SelfintClassNext.next_price` below derives it from structural NEXT laws. -/
structure NextPrice (Q : Term) : Prop where
  bits : 92 ≤ wire Q
  captures : 4 ≤ freeLeaves 0 Q

theorem functional_lower {R Q : Term} (hR : FreeUnder 2 R) (hj : occ 1 R = 1)
    (hQ : NextPrice Q) : 96 + cost R + 4 * depth R ≤ wire (functional R Q) := by
  have he := functional_wire (Q := Q) hR hj
  have hm := Nat.mul_le_mul_right (depth R) hQ.captures
  have hw := hQ.bits
  omega

/-- General inequality for every opaque knot and every sufficiently priced
    NEXT. Equality is not claimed for arbitrary class members. -/
theorem assembly_lower {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FreeUnder 2 R) (hj : occ 1 R = 1)
    (hQscope : FreeUnder 2 Q) (hQ : NextPrice Q) :
    116 + cost R + 4 * depth R ≤ wire (assemble T R Q) := by
  have he := knot_fill_wire hT (functional_closed hR hQscope)
  have hg := SelfintKnot.opaque_knot_twenty hfix
  have hk := SelfintKnot.fixedpoint_has_hole hfix
  have hm := Nat.mul_le_mul_right (wire (functional R Q)) hk
  have hh := functional_lower hR hj hQ
  simp only [Nat.one_mul] at hm
  change 116 + cost R + 4 * depth R ≤ wire (substDec 0 (functional R Q) T)
  omega

theorem functional_118 {R Q : Term} (hR : Reader R) (hj : occ 1 R = 1)
    (hQ : NextPrice Q) : 118 ≤ wire (functional R Q) := by
  have hr := reader_weighted_cost hR hj
  have hh := functional_lower hR.scope hj hQ
  omega

/-- Price-interface version of the class bound. Reader semantics is proved
    sufficient; `SelfintClassNext.class_bound_138` also discharges Q's price. -/
theorem class_bound_138 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1)
    (hQscope : FreeUnder 2 Q) (hQ : NextPrice Q) :
    138 ≤ wire (assemble T R Q) := by
  have he := assembly_lower hT hfix hR.scope hj hQscope hQ
  have hr := reader_weighted_cost hR hj
  omega

/-- Stronger multiplicity accounting: both the 18+2k ghost-cost theorem
    and the separately proved existence of a hole are used correctly. -/
theorem class_bound_multiplicity {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1)
    (hQscope : FreeUnder 2 Q) (hQ : NextPrice Q) :
    1 ≤ freeLeaves 0 T ∧ 18 + 120 * freeLeaves 0 T ≤ wire (assemble T R Q) := by
  refine ⟨SelfintKnot.fixedpoint_has_hole hfix, ?_⟩
  have he := knot_fill_wire hT (functional_closed hR.scope hQscope)
  have hg := SelfintKnot.fixedpoint_hole_multiplicity hfix
  have hh := functional_118 hR hj hQ
  have hm := Nat.mul_le_mul_left (freeLeaves 0 T) hh
  change 18 + 120 * freeLeaves 0 T ≤ wire (substDec 0 (functional R Q) T)
  simp only [Nat.mul_comm (freeLeaves 0 T) 118] at hm
  omega

/-- Exact 116+cost+4d identity only for the attaining knot and a 92-bit,
    four-capture Q. No claim that every allowed knot or Q attains it. -/
theorem canonical_assembly_exact {R Q : Term}
    (hR : FreeUnder 2 R) (hj : occ 1 R = 1) (hQscope : FreeUnder 2 Q)
    (hQbits : wire Q = 92) (hQcaps : freeLeaves 0 Q = 4) :
    wire (assemble SelfintKnot.knot R Q) = 116 + cost R + 4 * depth R := by
  have he := knot_fill_wire SelfintKnot.knot_scope (functional_closed hR hQscope)
  have hh := functional_wire (Q := Q) hR hj
  simp only [SelfintKnot.knot_cost, SelfintKnot.knot_one_hole, Nat.one_mul] at he
  rw [hQbits, hQcaps] at hh
  change wire (substDec 0 (functional R Q) SelfintKnot.knot) = 116 + cost R + 4 * depth R
  omega

/-! Concrete transcription checks for the canonical NEXT and the two
     reference readers. These examples are separate from the universal proofs. -/

def canonicalNext : Term := (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))

theorem canonicalNext_scope : FreeUnder 2 canonicalNext := by decide
theorem canonicalNext_bits : wire canonicalNext = 92 := by decide
theorem canonicalNext_captures : freeLeaves 0 canonicalNext = 4 := by decide
theorem canonicalNext_price : NextPrice canonicalNext := ⟨by decide, by decide⟩
theorem canonicalNext_normal : NormalForm canonicalNext := fun _ hb => nft_no_beta (by decide) hb
theorem canonicalNext_parameters : occ 0 canonicalNext = 2 ∧ occ 1 canonicalNext = 2 := by decide

def reader162 : Term :=
  .lam (.app (.app (.app (.var 0) (.lam (.var 0)))
    (.lam (.app (.app (.var 1) (.lam (.var 3)))
      (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))

def reader165 : Term :=
  .app (.lam (.lam (.app (.app (.var 0)
    (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3))))
    (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)

/- The checked normal-order trace helper from floor/Facts.lean. -/
def normalStep : Term → Option Term
  | .var _ => none
  | .lam b => (normalStep b).map .lam
  | .app f a => match f with
    | .lam b => some (contract b a)
    | _ => match normalStep f with
      | some f' => some (.app f' a)
      | none => (normalStep a).map (.app f)

theorem normalStep_sound {t u : Term} (h : normalStep t = some u) : Beta t u := by
  induction t generalizing u with
  | var n => simp [normalStep] at h
  | lam b ih =>
      simp only [normalStep, Option.map_eq_some_iff] at h
      obtain ⟨b', hb, rfl⟩ := h
      exact .lam (ih hb)
  | app f a ihf iha =>
      cases f with
      | var n =>
          simp only [normalStep, Option.map_eq_some_iff] at h
          obtain ⟨a', ha, rfl⟩ := h
          exact .appR _ (iha ha)
      | lam b =>
          simp only [normalStep, Option.some.injEq] at h
          subst u
          exact .beta _ _
      | app g x =>
          change (match normalStep (.app g x) with
            | some f' => some (.app f' a)
            | none => (normalStep a).map (.app (.app g x))) = some u at h
          cases hf : normalStep (.app g x) with
          | none =>
              simp only [hf, Option.map_eq_some_iff] at h
              obtain ⟨a', ha, rfl⟩ := h
              exact .appR _ (iha ha)
          | some f' =>
              simp only [hf, Option.some.injEq] at h
              subst u
              exact .appL _ (ihf hf)

def normalSteps : Nat → Term → Option Term
  | 0, t => some t
  | n+1, t => (normalStep t).bind (normalSteps n)

theorem normalSteps_sound {n : Nat} {t u : Term}
    (h : normalSteps n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp only [normalSteps, Option.some.injEq] at h; subst u; exact .refl _
  | succ n ih =>
      simp only [normalSteps, Option.bind_eq_some_iff] at h
      obtain ⟨v, hv, hrest⟩ := h
      exact .head (normalStep_sound hv) (ih hrest)

theorem reader162_laws : Reader reader162 := by
  refine ⟨by decide, ⟨_, ?_, .refl _⟩, ⟨_, ?_, .refl _⟩⟩
  · exact headSteps_beta_star (by decide : headSteps 5 (.app reader162 Z) = some zeroOut)
  · exact normalSteps_sound (by decide : normalSteps 18 (.app reader162 S) = some varOut)

theorem reader165_laws : Reader reader165 := by
  refine ⟨by decide, ⟨_, ?_, .refl _⟩, ⟨_, ?_, .refl _⟩⟩
  · exact headSteps_beta_star (by decide : headSteps 14 (.app reader165 Z) = some zeroOut)
  · exact normalSteps_sound (by decide : normalSteps 16 (.app reader165 S) = some varOut)

theorem reader162_price : cost reader162 = 42 ∧ depth reader162 = 1 ∧ occ 1 reader162 = 1 := by decide
theorem reader165_price : cost reader165 = 49 ∧ depth reader165 = 0 ∧ occ 1 reader165 = 1 := by decide

/-- Literal syntax equality, not merely beta equivalence. -/
theorem assembly_is_int162 : assemble SelfintKnot.knot reader162 canonicalNext = intL162 := by decide
theorem assembly_is_int165 : assemble SelfintKnot.knot reader165 canonicalNext = intL165 := by decide

/-- For canonical NEXT, no unformalized classification hypothesis is needed. -/
theorem canonical_class_bound {T R : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) :
    138 ≤ wire (assemble T R canonicalNext) :=
  class_bound_138 hT hfix hR hj canonicalNext_scope canonicalNext_price

#print axioms reader_nonlinear
#print axioms app_tree_algebra
#print axioms reader_two_lambdas
#print axioms reader_depth_charges
#print axioms reader_weighted_cost
#print axioms functional_wire
#print axioms assembly_lower
#print axioms class_bound_138
#print axioms class_bound_multiplicity
#print axioms canonical_assembly_exact
#print axioms canonical_class_bound
#print axioms reader162_laws
#print axioms reader165_laws
#print axioms assembly_is_int162
#print axioms assembly_is_int165
end Blc.SelfintClass

/-! NEXT classification: normal, exactly-two-arm tag programs. -/
namespace Blc.SelfintClassNext
open Term SelfintLowerBound SelfintWireCost SelfintFloor SelfintClass
set_option maxRecDepth 8000
set_option maxHeartbeats 1600000

/-- `pending` is the number of applications surrounding this term on its
    current maximal spine. Thus every tag occurrence must see exactly two. -/
def TwoArmUse (j pending : Nat) : Term → Prop
  | .var n => n = j → pending = 2
  | .lam b => TwoArmUse (j + 1) 0 b
  | .app f a => TwoArmUse j (pending + 1) f ∧ TwoArmUse j 0 a

/-- True marks an ordinary non-tag neutral spine; false marks a normal
    term which may instead be a lambda or a complete two-arm tag test. -/
inductive Tagged : Bool → Nat → Term → Prop where
  | var {j n : Nat} : n ≠ j → Tagged true j (.var n)
  | app {j : Nat} {f a : Term} : Tagged true j f → Tagged false j a → Tagged true j (.app f a)
  | neutral {j : Nat} {t : Term} : Tagged true j t → Tagged false j t
  | lam {j : Nat} {b : Term} : Tagged false (j + 1) b → Tagged false j (.lam b)
  | select {j : Nat} {u v : Term} : Tagged false j u → Tagged false j v →
      Tagged false j (.app (.app (.var j) u) v)

inductive Prefix (j : Nat) : Nat → Term → Prop where
  | neutral {k : Nat} {t : Term} : Tagged true j t → Prefix j k t
  | tag : Prefix j 2 (.var j)
  | one {u : Term} : Tagged false j u → Prefix j 1 (.app (.var j) u)
  | two {u v : Term} : Tagged false j u → Tagged false j v →
      Prefix j 0 (.app (.app (.var j) u) v)

theorem prefix_zero {j : Nat} {t : Term} (h : Prefix j 0 t) : Tagged false j t := by
  cases h with
  | neutral h => exact .neutral h
  | two hu hv => exact .select hu hv

theorem tagged_ordinary_rigid {j : Nat} {t : Term} (h : Tagged true j t) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b => cases h
  | app f a ihf iha =>
    cases h with
    | app hf ha => exact .app a (ihf hf)

theorem tagged_of_twoArm (t : Term) (j k : Nat) (hn : NFt t) (hd : TwoArmUse j k t) :
    (k = 0 → Tagged false j t) ∧ (¬ IsLam t → Prefix j k t) := by
  induction t generalizing j k with
  | var n =>
    have hp : Prefix j k (.var n) := by
      by_cases he : n = j
      · subst n
        have hk : k = 2 := hd rfl
        subst k
        exact .tag
      · exact .neutral (.var he)
    exact ⟨fun hk => prefix_zero (hk ▸ hp), fun _ => hp⟩
  | lam b ih =>
    have hb := (ih (j + 1) 0 hn hd).1 rfl
    exact ⟨fun _ => .lam hb, fun h => (h trivial).elim⟩
  | app f a ihf iha =>
    have hf := (ihf j (k + 1) hn.2.1 hd.1).2 hn.1
    have ha := (iha j 0 hn.2.2 hd.2).1 rfl
    have hp : Prefix j k (.app f a) := by
      cases hf with
      | neutral hf => exact .neutral (.app hf ha)
      | tag => exact .one ha
      | one hu => exact .two hu ha
    exact ⟨fun hk => prefix_zero (hk ▸ hp), fun _ => hp⟩

/-- Pruning retains the tag slot and every surrounding binder. At a tag
    test it deletes the head, both applications, and the discarded arm. -/
def prune (first : Bool) (j : Nat) : Term → Term
  | .var n => .var n
  | .lam b => .lam (prune first (j + 1) b)
  | .app (.app (.var n) u) v =>
      if n = j then if first then prune first j u else prune first j v
      else .app (.app (.var n) (prune first j u)) (prune first j v)
  | .app f a => .app (prune first j f) (prune first j a)

theorem prune_select (first : Bool) (j : Nat) (u v : Term) :
    prune first j (.app (.app (.var j) u) v) =
      if first then prune first j u else prune first j v := by simp [prune]

theorem prune_ordinary_app (first : Bool) {j : Nat} {f a : Term}
    (hf : Tagged true j f) :
    prune first j (.app f a) = .app (prune first j f) (prune first j a) := by
  cases hf with
  | var hn => rfl
  | app hg ha =>
    cases hg with
    | var hn => simp only [prune, if_neg hn]
    | app => rfl

/-- A structural deletion certificate: surviving binders are never moved
    or removed. It permits either arm at each individual tag occurrence. -/
inductive Prunes : Nat → Term → Term → Prop where
  | var {j : Nat} (n : Nat) : Prunes j (.var n) (.var n)
  | lam {j : Nat} {b b' : Term} : Prunes (j + 1) b b' → Prunes j (.lam b) (.lam b')
  | app {j : Nat} {f f' a a' : Term} : Prunes j f f' → Prunes j a a' → Prunes j (.app f a) (.app f' a')
  | left {j : Nat} {u u' v : Term} : Prunes j u u' → Prunes j (.app (.app (.var j) u) v) u'
  | right {j : Nat} {u v v' : Term} : Prunes j v v' → Prunes j (.app (.app (.var j) u) v) v'

/-- Pruning cannot increase wire length or any cutoff's number of free leaves. -/
theorem pruning_monotone {j : Nat} {t u : Term} (h : Prunes j t u) :
    wire u ≤ wire t ∧ ∀ c, freeLeaves c u ≤ freeLeaves c t := by
  induction h with
  | var => exact ⟨Nat.le_refl _, fun _ => Nat.le_refl _⟩
  | lam h ih =>
    refine ⟨?_, fun c => ih.2 (c + 1)⟩
    simp only [wire_lam]; omega
  | app hf ha ihf iha =>
    refine ⟨?_, ?_⟩
    · simp only [wire_app]; omega
    · intro c; have := ihf.2 c; have := iha.2 c; simp only [freeLeaves]; omega
  | left h ih =>
    refine ⟨?_, ?_⟩
    · simp only [wire_app, wire_var]; omega
    · intro c; have := ih.2 c; simp only [freeLeaves]; omega
  | right h ih =>
    refine ⟨?_, ?_⟩
    · simp only [wire_app, wire_var]; omega
    · intro c; have := ih.2 c; simp only [freeLeaves]; omega

theorem prune_certificate (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) : Prunes j t (prune first j t) := by
  induction h with
  | var => exact .var _
  | app hf ha ihf iha => rw [prune_ordinary_app first hf]; exact .app ihf iha
  | neutral h ih => exact ih
  | lam h ih => exact .lam ih
  | select hu hv ihu ihv =>
    rw [prune_select]
    cases first
    · exact .right ihv
    · exact .left ihu

theorem prune_cost (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) :
    wire (prune first j t) ≤ wire t ∧
    ∀ c, freeLeaves c (prune first j t) ≤ freeLeaves c t :=
  pruning_monotone (prune_certificate first h)

/-- Pruning removes every tag occurrence without changing any other index. -/
theorem prune_tag_absent (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) : occ j (prune first j t) = 0 := by
  induction h with
  | var hn => simp [prune, occ, hn]
  | app hf ha ihf iha => simp only [prune_ordinary_app first hf, occ, ihf, iha, Nat.zero_add]
  | neutral h ih => exact ih
  | lam h ih => exact ih
  | select hu hv ihu ihv => rw [prune_select]; cases first <;> assumption

/-- Wire bits or free leaves outside the tag and its enclosing local binders. -/
def measure (bits : Bool) (j : Nat) (t : Term) : Nat :=
  if bits then wire t else freeLeaves (j + 1) t

def nodeCharge (bits : Bool) : Nat := if bits then 2 else 0
def tagCharge (bits : Bool) (j : Nat) : Nat := if bits then j + 6 else 0

theorem measure_lam (bits : Bool) (j : Nat) (b : Term) :
    measure bits j (.lam b) = nodeCharge bits + measure bits (j + 1) b := by
  cases bits <;> simp [measure, nodeCharge, freeLeaves, Nat.add_comm]

theorem measure_app (bits : Bool) (j : Nat) (f a : Term) :
    measure bits j (.app f a) = nodeCharge bits + measure bits j f + measure bits j a := by
  cases bits <;> simp [measure, nodeCharge, freeLeaves, Nat.add_assoc, Nat.add_comm]

theorem measure_select (bits : Bool) (j : Nat) (u v : Term) :
    measure bits j (.app (.app (.var j) u) v) =
      tagCharge bits j + measure bits j u + measure bits j v := by
  have hn : ¬ j + 1 ≤ j := by omega
  cases bits <;> simp [measure, tagCharge, freeLeaves, hn, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] <;> omega

theorem measure_prune (bits first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) : measure bits j (prune first j t) ≤ measure bits j t := by
  cases bits
  · exact (prune_cost first h).2 (j + 1)
  · exact (prune_cost first h).1

/-- Ordinary head and total arity agree. Argument contents may differ. -/
def sameSpine : Term → Term → Bool
  | .var n, .var m => n == m
  | .app f _, .app g _ => sameSpine f g
  | _, _ => false

def choicePrice (bits : Bool) (j : Nat) (a b : Term) : Nat :=
  tagCharge bits j + measure bits j a + measure bits j b

/-- A lower bound for merging two projected normal forms. The first
    component permits a full tag choice; the second permits only the same
    ordinary head and arity. A tag choice is never allowed in a function
    position of an additional application. -/
def merged (bits : Bool) (j : Nat) : Term → Term → Nat × Nat
  | .var n, .var m =>
      if n = m then (min (choicePrice bits j (.var n) (.var m)) (measure bits j (.var n)), measure bits j (.var n))
      else (choicePrice bits j (.var n) (.var m), 0)
  | .lam a, .lam b =>
      (min (choicePrice bits j (.lam a) (.lam b))
        (nodeCharge bits + (merged bits (j + 1) a b).1), 0)
  | .app f a, .app g b =>
      if sameSpine f g then
        let shared := nodeCharge bits + (merged bits j f g).2 + (merged bits j a b).1
        (min (choicePrice bits j (.app f a) (.app g b)) shared, shared)
      else (choicePrice bits j (.app f a) (.app g b), 0)
  | a, b => (choicePrice bits j a b, 0)

theorem merged_le_choice (bits : Bool) (j : Nat) (a b : Term) :
    (merged bits j a b).1 ≤ choicePrice bits j a b := by
  cases a <;> cases b <;> simp only [merged]
  all_goals try first | exact Nat.le_refl _ | exact Nat.min_le_left _ _
  all_goals split <;> first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem merged_le_spine (bits : Bool) (j : Nat) (a b : Term)
    (h : sameSpine a b = true) : (merged bits j a b).1 ≤ (merged bits j a b).2 := by
  cases a <;> cases b <;> simp only [sameSpine] at h
  all_goals try contradiction
  · simp only [beq_iff_eq] at h
    simp only [merged, if_pos h]
    exact Nat.min_le_right _ _
  · simp only [merged, h, ↓reduceIte]
    exact Nat.min_le_right _ _

/-- Uniform lower bounds for all source trees in the fragment, not just
    the nine terminal shapes or sources up to some size. -/
theorem merged_lower (bits : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) :
    if k then sameSpine (prune true j t) (prune false j t) = true ∧
        (merged bits j (prune true j t) (prune false j t)).2 ≤ measure bits j t
    else (merged bits j (prune true j t) (prune false j t)).1 ≤ measure bits j t := by
  induction h with
  | var hn =>
    simp only [↓reduceIte, prune, sameSpine, merged]
    exact ⟨beq_iff_eq.mpr rfl, Nat.le_refl _⟩
  | app hf ha ihf iha =>
    simp only [↓reduceIte] at ihf
    simp only [Bool.false_eq_true, ↓reduceIte] at iha
    rw [prune_ordinary_app true hf, prune_ordinary_app false hf]
    simp only [↓reduceIte, sameSpine]
    refine ⟨ihf.1, ?_⟩
    simp only [merged, ihf.1, ↓reduceIte, measure_app]
    exact Nat.add_le_add (Nat.add_le_add_left ihf.2 _) iha
  | neutral ht ih =>
    simp only [↓reduceIte] at ih
    exact Nat.le_trans (merged_le_spine bits _ _ _ ih.1) ih.2
  | lam ht ih =>
    simp only [Bool.false_eq_true, ↓reduceIte] at ih ⊢
    simp only [prune, merged, measure_lam]
    exact Nat.le_trans (Nat.min_le_right _ _) (Nat.add_le_add_left ih _)
  | select hu hv ihu ihv =>
    rename_i j u v
    simp only [Bool.false_eq_true, ↓reduceIte, prune_select]
    have hm := merged_le_choice bits j (prune true j u) (prune false j v)
    have hpu := measure_prune bits true hu
    have hpv := measure_prune bits false hv
    simp only [choicePrice, measure_select] at hm ⊢
    exact Nat.le_trans hm (Nat.add_le_add (Nat.add_le_add_left hpu _) hpv)

theorem notLam_of_rigid {t : Term} (h : Rigid t) : ¬ IsLam t := by
  cases h <;> exact fun h => h

theorem prune_normal (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) : NFt (prune first j t) ∧ (k = true → ¬ IsLam (prune first j t)) := by
  induction h with
  | var hn => exact ⟨trivial, fun _ h => h⟩
  | app hf ha ihf iha =>
    rw [prune_ordinary_app first hf]
    exact ⟨⟨ihf.2 rfl, ihf.1, iha.1⟩, fun _ h => h⟩
  | neutral h ih => exact ⟨ih.1, fun h => Bool.noConfusion h⟩
  | lam h ih => exact ⟨ih.1, fun h => Bool.noConfusion h⟩
  | select hu hv ihu ihv =>
    rw [prune_select]
    cases first
    · exact ⟨ihv.1, fun h => Bool.noConfusion h⟩
    · exact ⟨ihu.1, fun h => Bool.noConfusion h⟩

theorem subst_absent (t : Term) (j : Nat) (s u : Term) (h : occ j t = 0) :
    substDec j s t = substDec j u t := by
  induction t generalizing j s u with
  | var n =>
    have hn : n ≠ j := by intro he; simp [occ, he] at h
    simp only [substDec, if_neg hn]
  | lam b ih => exact congrArg Term.lam (ih (j + 1) _ _ h)
  | app f a ihf iha =>
    simp only [occ, Nat.add_eq_zero_iff] at h
    simp only [substDec, ihf j s u h.1, iha j s u h.2]

theorem shift_subst_absent (t : Term) (j : Nat) (s : Term) (h : occ j t = 0) :
    shift 1 j (substDec j s t) = t := by
  induction t generalizing j s with
  | var n =>
    have hn : n ≠ j := by intro he; simp [occ, he] at h
    simp only [substDec, if_neg hn]
    by_cases hg : j < n
    · have hs : j ≤ n - 1 := by omega
      simp only [if_pos hg, shift, if_pos hs]
      congr 1; omega
    · have hs : ¬ j ≤ n := by omega
      simp only [if_neg hg, shift, if_neg hs]
  | lam b ih => exact congrArg Term.lam (ih (j + 1) _ h)
  | app f a ihf iha =>
    simp only [occ, Nat.add_eq_zero_iff] at h
    simp only [substDec, shift, ihf j s h.1, iha j s h.2]

theorem nft_subst_var (t : Term) (j n : Nat) (h : NFt t) :
    NFt (substDec j (.var n) t) := by
  induction t generalizing j n with
  | var m =>
    simp only [substDec]
    split
    · exact True.intro
    · split <;> exact True.intro
  | lam b ih =>
    simpa only [substDec, shift, Nat.zero_le, if_true, NFt] using ih (j + 1) (n + 1) h
  | app f a ihf iha =>
    refine ⟨?_, ihf j n h.2.1, iha j n h.2.2⟩
    cases f with
    | var m =>
      simp only [substDec]
      split
      · exact fun h => h
      · split <;> exact fun h => h
    | lam b => exact (h.1 trivial).elim
    | app g x => exact fun h => h

theorem nft_subst_absent (t : Term) (j : Nat) (s : Term) (hn : NFt t)
    (ha : occ j t = 0) : NFt (substDec j s t) := by
  rw [subst_absent t j s (.var 0) ha]
  exact nft_subst_var t j 0 hn

def tagValue (first : Bool) : Term := if first then churchTrue else churchFalse

theorem tagValue_shift (first : Bool) : shift 1 0 (tagValue first) = tagValue first := by
  cases first <;> rfl

theorem select_beta (first : Bool) (u v : Term) :
    Betas (.app (.app (tagValue first) u) v) (if first then u else v) := by
  cases first
  · exact betas_of_spineReds (spine_false2 u v)
  · exact betas_of_spineReds (spine_true2 u v)

/-- Substituting the tag reduces precisely to its scope-preserving pruning,
    followed by removal of the now-unused tag slot. -/
theorem prune_beta (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) :
    Betas (substDec j (tagValue first) t) (substDec j churchTrue (prune first j t)) := by
  induction h with
  | var hn => simp only [substDec, if_neg hn, prune]; exact .refl _
  | app hf ha ihf iha =>
    rw [prune_ordinary_app first hf]
    exact betas_app ihf iha
  | neutral h ih => exact ih
  | lam h ih =>
    simpa only [substDec, prune, tagValue_shift, shift_churchTrue] using betas_lam ih
  | select hu hv ihu ihv =>
    rename_i j u v
    simp only [substDec, ↓reduceIte, prune_select]
    have hs := select_beta first (substDec j (tagValue first) u) (substDec j (tagValue first) v)
    cases first
    · exact betas_trans hs ihv
    · exact betas_trans hs ihu

/-- Inverse renaming for applying a three-slot body to the fresh slot 2. -/
def restoreFresh (j : Nat) : Term → Term
  | .var n => if n < j then .var n else if n = j + 2 then .var j else .var (n + 1)
  | .lam b => .lam (restoreFresh (j + 1) b)
  | .app f a => .app (restoreFresh j f) (restoreFresh j a)

theorem restoreFresh_subst (t : Term) (j : Nat) (h : FreeUnder (j + 3) t) :
    restoreFresh j (substDec j (.var (j + 2)) t) = t := by
  induction t generalizing j with
  | var n =>
    have hn : n < j + 3 := h
    by_cases he : n = j
    · subst n
      have hl : ¬ j + 2 < j := by omega
      simp only [substDec, ↓reduceIte, restoreFresh, if_neg hl]
    · by_cases hg : j < n
      · have hl : ¬ n - 1 < j := by omega
        have he' : n - 1 ≠ j + 2 := by omega
        simp only [substDec, if_neg he, if_pos hg, restoreFresh, if_neg hl, if_neg he']
        congr 1; omega
      · have hl : n < j := by omega
        simp only [substDec, if_neg he, if_neg hg, restoreFresh, if_pos hl]
  | lam b ih =>
    have hb : FreeUnder ((j + 1) + 3) b := by simpa only [FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using h
    simpa only [substDec, shift, Nat.zero_le, ↓reduceIte, restoreFresh, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
      congrArg Term.lam (ih (j + 1) hb)
  | app f a ihf iha => simp only [substDec, restoreFresh, ihf j h.1, iha j h.2]

theorem fresh_subst_injective {a b : Term} (ha : FreeUnder 3 a) (hb : FreeUnder 3 b)
    (he : substDec 0 (.var 2) a = substDec 0 (.var 2) b) : a = b := by
  have hr := congrArg (restoreFresh 0) he
  simpa only [restoreFresh_subst a 0 ha, restoreFresh_subst b 0 hb] using hr

theorem shift_scope (t : Term) (j k : Nat) (h : FreeUnder k t) :
    FreeUnder (k + 1) (shift 1 j t) := by
  induction t generalizing j k with
  | var n =>
    have hn : n < k := h
    simp only [shift]
    split <;> simp only [FreeUnder] <;> omega
  | lam b ih =>
    exact ih (j + 1) (k + 1) h
  | app f a ihf iha => exact ⟨ihf j k h.1, iha j k h.2⟩

def eta (t : Term) : Term := .lam (.app (shift 1 0 t) (.var 0))

theorem nft_normal {t : Term} (h : NFt t) : NormalForm t := fun _ hb => nft_no_beta h hb

theorem normal_nft {t : Term} (h : NormalForm t) : NFt t := by
  induction t with
  | var n => exact True.intro
  | lam b ih => exact ih (fun u hb => h (.lam u) (.lam hb))
  | app f a ihf iha =>
    refine ⟨?_, ihf (fun u hb => h (.app u a) (.appL a hb)), iha (fun u hb => h (.app f u) (.appR f hb))⟩
    cases f with
    | var n => exact fun hh => hh
    | app g x => exact fun hh => hh
    | lam b => exact (h (contract b a) (.beta b a)).elim

/-- At a fresh rigid suffix, a normal function can only be the target
    itself or its single explicit eta expansion; no eta equality is used. -/
theorem normal_applied_fresh {w t : Term} (hw : NFt w) (hws : FreeUnder 2 w)
    (ht : NFt t) (htr : ¬ IsLam t) (hts : FreeUnder 2 t)
    (he : BetaJoin (.app w (.var 2)) (.app t (.var 2))) :
    w = t ∨ w = eta t := by
  have htn : NormalForm (.app t (.var 2)) := nft_normal ⟨htr, ht, trivial⟩
  have hd := join_normal he htn
  cases w with
  | var n =>
    have eqn := normalForm_betas_eq (nft_normal (show NFt (.app (.var n) (.var 2)) from ⟨fun h => h, hw, trivial⟩)) hd
    exact Or.inl ((Term.app.inj eqn).1).symm
  | app f a =>
    have eqn := normalForm_betas_eq (nft_normal (show NFt (.app (.app f a) (.var 2)) from ⟨fun h => h, hw, trivial⟩)) hd
    exact Or.inl ((Term.app.inj eqn).1).symm
  | lam b =>
    have hb : NFt (substDec 0 (.var 2) b) := nft_subst_var b 0 2 hw
    have hr : Betas (.app (.lam b) (.var 2)) (substDec 0 (.var 2) b) := .head (.beta b (.var 2)) (.refl _)
    have eqn := normalForm_unique hr hd (nft_normal hb) htn
    have hes : FreeUnder 3 (.app (shift 1 0 t) (.var 0)) := ⟨shift_scope t 0 2 hts, by decide⟩
    have eqb : b = .app (shift 1 0 t) (.var 0) := by
      apply fresh_subst_injective hws hes
      simpa only [substDec, substDec_shift, ↓reduceIte] using eqn
    exact Or.inr (congrArg Term.lam eqb)

/-- Canonical branches in the frame c=0,p=1, with literal ABS and APP. -/
def nextZero : Term := .app (.var 1) (.lam (.app (.var 1) absVt))
def nextOne : Term := .app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) appVt))))
def nextTarget (first : Bool) : Term := if first then nextZero else nextOne
def etaChoice (expanded : Bool) (t : Term) : Term := if expanded then eta t else t

theorem nextTarget_normal (first : Bool) : NFt (nextTarget first) := by cases first <;> decide
theorem nextTarget_scope (first : Bool) : FreeUnder 2 (nextTarget first) := by cases first <;> decide
theorem nextTarget_nonlam (first : Bool) : ¬ IsLam (nextTarget first) := by cases first <;> decide

/-- Only the two rigid probes are assumed, with no handwritten price fact. -/
structure Next (Q : Term) : Prop where
  scope : FreeUnder 2 Q
  normal : NormalForm Q
  twoArm : ∀ b, Q = .lam b → TwoArmUse 0 0 b
  law : ∀ first, BetaJoin (.app (.app Q (tagValue first)) (.var 2)) (.app (nextTarget first) (.var 2))

theorem Next.lambda {Q : Term} (h : Next Q) : ∃ b, Q = .lam b := by
  have hn := normal_nft h.normal
  have ht : NormalForm (.app nextZero (.var 2)) := nft_normal (by decide)
  have hr := join_normal (h.law true) ht
  cases Q with
  | lam b => exact ⟨b, rfl⟩
  | var n =>
    have hh : NFt (.app (.app (.var n) churchTrue) (.var 2)) := ⟨fun h => h, ⟨fun h => h, hn, by decide⟩, trivial⟩
    have he := normalForm_betas_eq (nft_normal hh) hr
    simp [nextTarget, nextZero, churchTrue] at he
  | app f a =>
    have hh : NFt (.app (.app (.app f a) churchTrue) (.var 2)) := ⟨fun h => h, ⟨fun h => h, hn, by decide⟩, trivial⟩
    have he := normalForm_betas_eq (nft_normal hh) hr
    simp [nextTarget, nextZero] at he

theorem betas_scope {t u : Term} (h : Betas t u) (d : Nat) (hs : FreeUnder d t) : FreeUnder d u := by
  induction h with
  | refl => exact hs
  | head hb hr ih => exact ih (beta_freeUnder hb d hs)

theorem Next.pruned_forms {Q : Term} (h : Next Q) {b : Term} (he : Q = .lam b) (first : Bool) :
    ∃ e, prune first 0 b = shift 1 0 (etaChoice e (nextTarget first)) := by
  subst Q
  have hb : Tagged false 0 b := (tagged_of_twoArm b 0 0 (normal_nft (t := .lam b) h.normal) (h.twoArm b rfl)).1 rfl
  let w := substDec 0 churchTrue (prune first 0 b)
  have hw : NFt w := nft_subst_absent _ 0 churchTrue (prune_normal first hb).1 (prune_tag_absent first hb)
  have hr : Betas (.app (.lam b) (tagValue first)) w :=
    .head (.beta b (tagValue first)) (prune_beta first hb)
  have hws : FreeUnder 2 w := betas_scope hr 2 ⟨h.scope, by cases first <;> decide⟩
  have htn := nft_normal (show NFt (.app (nextTarget first) (.var 2)) from
    ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩)
  have hl : Betas (.app w (.var 2)) (.app (nextTarget first) (.var 2)) :=
    betas_preserve_nf (betas_appL (.var 2) hr) (join_normal (h.law first) htn) htn
  have hp := normal_applied_fresh hw hws (nextTarget_normal first) (nextTarget_nonlam first)
    (nextTarget_scope first) ⟨_, hl, .refl _⟩
  have hi : shift 1 0 w = prune first 0 b := shift_subst_absent _ 0 churchTrue (prune_tag_absent first hb)
  rcases hp with hp | hp
  · exact ⟨false, hi.symm.trans (congrArg (shift 1 0) hp)⟩
  · exact ⟨true, hi.symm.trans (congrArg (shift 1 0) hp)⟩

/-- Kernel evaluation of just four fixed target pairs. The universal source
    bound is the structural induction `merged_lower`, with no size cap. -/
theorem merged_targets (e0 e1 : Bool) :
    90 ≤ (merged true 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne))).1 ∧
    4 ≤ (merged false 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne))).1 := by
  cases e0 <;> cases e1 <;> decide

theorem next_price {Q : Term} (h : Next Q) : NextPrice Q := by
  obtain ⟨b, he⟩ := h.lambda
  subst Q
  have hb : Tagged false 0 b := (tagged_of_twoArm b 0 0 (normal_nft (t := .lam b) h.normal) (h.twoArm b rfl)).1 rfl
  obtain ⟨e0, h0⟩ := h.pruned_forms rfl true
  obtain ⟨e1, h1⟩ := h.pruned_forms rfl false
  have hbits := merged_lower true hb
  have hcaps := merged_lower false hb
  simp only [Bool.false_eq_true, ↓reduceIte, h0, h1] at hbits hcaps
  have hm := merged_targets e0 e1
  refine ⟨?_, ?_⟩
  · have ht : 90 ≤ wire b := Nat.le_trans hm.1 hbits
    simp only [wire_lam]; omega
  · exact Nat.le_trans hm.2 hcaps

/-- Expanded statement of the requested theorem, using the two branch
    equations separately and source normality in its reduction definition. -/
theorem next_bound_of_rigid_laws {Q : Term}
    (hscope : FreeUnder 2 Q) (hnormal : NormalForm Q)
    (htag : ∀ b, Q = .lam b → TwoArmUse 0 0 b)
    (hzero : BetaJoin (.app (.app Q churchTrue) (.var 2)) (.app nextZero (.var 2)))
    (hone : BetaJoin (.app (.app Q churchFalse) (.var 2)) (.app nextOne (.var 2))) :
    92 ≤ wire Q ∧ 4 ≤ freeLeaves 0 Q := by
  have hQ : Next Q := ⟨hscope, hnormal, htag, by intro first; cases first; exact hone; exact hzero⟩
  exact ⟨(next_price hQ).bits, (next_price hQ).captures⟩

/-- The class theorem with NEXT's numeric premise completely discharged. -/
theorem class_bound_138 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : Next Q) :
    138 ≤ wire (assemble T R Q) :=
  SelfintClass.class_bound_138 hT hfix hR hj hQ.scope (next_price hQ)

theorem assembly_lower {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FreeUnder 2 R) (hj : occ 1 R = 1) (hQ : Next Q) :
    116 + cost R + 4 * depth R ≤ wire (assemble T R Q) :=
  SelfintClass.assembly_lower hT hfix hR hj hQ.scope (next_price hQ)

theorem class_bound_multiplicity {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : Next Q) :
    1 ≤ freeLeaves 0 T ∧ 18 + 120 * freeLeaves 0 T ≤ wire (assemble T R Q) :=
  SelfintClass.class_bound_multiplicity hT hfix hR hj hQ.scope (next_price hQ)

def canonicalBody : Term := match canonicalNext with | .lam b => b | _ => .var 0

theorem canonicalBody_twoArm : TwoArmUse 0 0 canonicalBody := by
  simp only [canonicalBody, canonicalNext, TwoArmUse]
  decide

theorem canonicalNext_is_Next : Next canonicalNext := by
  refine ⟨canonicalNext_scope, canonicalNext_normal, ?_, ?_⟩
  · intro b he
    have hb : canonicalBody = b := Term.lam.inj he
    rw [← hb]
    exact canonicalBody_twoArm
  · intro first
    have hb : Tagged false 0 canonicalBody :=
      (tagged_of_twoArm canonicalBody 0 0 (by decide) canonicalBody_twoArm).1 rfl
    have hr : Betas (.app canonicalNext (tagValue first))
        (substDec 0 churchTrue (prune first 0 canonicalBody)) :=
      .head (.beta canonicalBody (tagValue first)) (prune_beta first hb)
    have he : substDec 0 churchTrue (prune first 0 canonicalBody) = nextTarget first := by
      cases first <;> decide
    rw [he] at hr
    exact ⟨_, betas_appL (.var 2) hr, .refl _⟩

theorem canonicalNext_minimum : wire canonicalNext = 92 ∧ freeLeaves 0 canonicalNext = 4 ∧
    ∀ Q, Next Q → wire canonicalNext ≤ wire Q ∧ freeLeaves 0 canonicalNext ≤ freeLeaves 0 Q := by
  refine ⟨canonicalNext_bits, canonicalNext_captures, ?_⟩
  intro Q hQ
  have hp := next_price hQ
  simpa only [canonicalNext_bits, canonicalNext_captures] using And.intro hp.bits hp.captures

#print axioms tagged_of_twoArm
#print axioms pruning_monotone
#print axioms prune_cost
#print axioms prune_tag_absent
#print axioms merged_lower
#print axioms merged
#print axioms merged_le_choice
#print axioms merged_le_spine
#print axioms measure_prune
#print axioms prune_normal
#print axioms shift_subst_absent
#print axioms prune_beta
#print axioms normal_applied_fresh
#print axioms Next.lambda
#print axioms Next.pruned_forms
#print axioms merged_targets
#print axioms next_price
#print axioms next_bound_of_rigid_laws
#print axioms class_bound_138
#print axioms assembly_lower
#print axioms class_bound_multiplicity
#print axioms canonicalNext_is_Next
#print axioms canonicalNext_minimum
end Blc.SelfintClassNext
