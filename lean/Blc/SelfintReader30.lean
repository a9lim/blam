/-
The reader weight is at least 30, so the separated class costs at least 146
bits. Every one-hole two-probe reader R has `cost R + 4 * depth R ≥ 30`
(`SelfintReader30Final.reader_weight_30`), hence every class member has wire
length at least 146 (`SelfintReader30Final.class_bound_146`). The proof is a
minimum-counterexample reduction (`SelfintReader30`, `SelfintReader30Live`),
a non-lambda elimination (`SelfintReader30NonLambda`,
`SelfintReader30Accounting`) and a five-row finite-grammar exclusion with
recorded certificates (`SelfintReader30Enum`); neither finite coverage nor
minimality is assumed by the final theorems.
`docs/classical/self-interpreter/class-bound.md`. All variables are 0-based;
at the root of R: c=0, j=1.
-/
import Blc.SelfintClass
import Blc.SelfintInert

namespace Blc.SelfintReader30
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
set_option maxRecDepth 5000
set_option maxHeartbeats 1000000

/-- Local presentation of the weighted hole price. -/
def weightAt (d : Nat) : Term → Nat
  | .var n => if n = d + 1 then 4 * d else n + 2
  | .lam b => 2 + weightAt (d + 1) b
  | .app f a => 2 + weightAt d f + weightAt d a

theorem weightAt_eq (t : Term) (d : Nat) :
    weightAt d t = holeCost (d+1) t + 4 * occDepth (d+1) t +
      4 * d * occ (d+1) t := by
  induction t generalizing d with
  | var n => simp only [weightAt, holeCost, occDepth, occ]; split <;> simp_all
  | lam b ih =>
    simp only [weightAt, holeCost, occDepth, occ, ih, Nat.mul_add, Nat.add_mul]
    omega
  | app f a ihf iha =>
    simp only [weightAt, holeCost, occDepth, occ, ihf, iha, Nat.mul_add]
    omega

abbrev weight (t : Term) := cost t + 4 * depth t

theorem weightAt_zero (t : Term) : weightAt 0 t = weight t := by
  simpa only [Nat.zero_add, Nat.mul_zero, Nat.zero_mul, Nat.add_zero] using weightAt_eq t 0

/-- Deleting an unused local binder can only decrease the weighted price.
    The argument is arbitrary because it is never substituted. -/
theorem absent_subst_weight (t s : Term) (d k : Nat)
    (hkd : k ≤ d) (h : occ k t = 0) :
    weightAt d (substDec k s t) ≤ weightAt (d+1) t := by
  induction t generalizing s d k with
  | var n =>
    have hne : n ≠ k := by intro he; subst n; simp [occ] at h
    simp only [substDec, if_neg hne]
    by_cases hn : k < n
    · simp only [if_pos hn, weightAt]
      split <;> split <;> omega
    · simp only [if_neg hn, weightAt]
      split <;> split <;> omega
  | lam b ih =>
    exact Nat.add_le_add_left (ih (shift 1 0 s) (d+1) (k+1) (by omega) h) 2
  | app f a ihf iha =>
    have hf : occ k f = 0 := by simp only [occ] at h; omega
    have ha : occ k a = 0 := by simp only [occ] at h; omega
    have h1 := ihf s d k hkd hf
    have h2 := iha s d k hkd ha
    simp only [substDec, weightAt]; omega

/-- Exactly one syntactically erasing beta contraction, at any source position. -/
inductive Erase : Term → Term → Prop where
  | root (b a : Term) : occ 0 b = 0 → Erase (.app (.lam b) a) (contract b a)
  | lam {b b' : Term} : Erase b b' → Erase (.lam b) (.lam b')
  | appL {f f' : Term} (a : Term) : Erase f f' → Erase (.app f a) (.app f' a)
  | appR {a a' : Term} (f : Term) : Erase a a' → Erase (.app f a) (.app f a')

theorem Erase.beta {t u : Term} (h : Erase t u) : Beta t u := by
  induction h with
  | root b a _ => exact .beta b a
  | lam _ ih => exact .lam ih
  | appL a _ ih => exact .appL a ih
  | appR f _ ih => exact .appR f ih

theorem Erase.occ_le {t u : Term} (h : Erase t u) (j : Nat) : occ j u ≤ occ j t := by
  induction h generalizing j with
  | root b a hz =>
    rw [contract, occ_substDec_ge b a j 0 (by omega)]
    simp [occ, hz]
  | lam _ ih => exact ih (j+1)
  | appL a _ ih => exact Nat.add_le_add_right (ih j) _
  | appR f _ ih => exact Nat.add_le_add_left (ih j) _

theorem Erase.weightAt_lt {t u : Term} (h : Erase t u) (d : Nat) :
    weightAt d u < weightAt d t := by
  induction h generalizing d with
  | root b a hz =>
    have hh := absent_subst_weight b a d 0 (by omega) hz
    simp only [contract, weightAt]; omega
  | lam _ ih => have := ih (d+1); simp only [weightAt]; omega
  | appL a _ ih => have := ih d; simp only [weightAt]; omega
  | appR f _ ih => have := ih d; simp only [weightAt]; omega

theorem Erase.weight_lt {t u : Term} (h : Erase t u) : weight u < weight t := by
  simpa only [weightAt_zero] using h.weightAt_lt 0

/-- An erasing reduct remains a reader with exactly one source hole. -/
theorem Erase.reader_single_hole {t u : Term} (h : Erase t u)
    (hr : Reader t) (hj : occ 1 t = 1) : Reader u ∧ occ 1 u = 1 := by
  have hu := hr.beta h.beta
  have hlo := reader_j hu
  have hhi := h.occ_le 1
  exact ⟨hu, by omega⟩

/-- Weight first, then lambda count. The second component handles zero-delta
    linear contractions without assuming all affine beta steps shrink. -/
structure Minimum (R : Term) : Prop where
  reader : Reader R
  hole : occ 1 R = 1
  minWeight : ∀ U, Reader U → occ 1 U = 1 → weight R ≤ weight U
  minLambdas : ∀ U, Reader U → occ 1 U = 1 → weight U = weight R →
    lamCount R ≤ lamCount U

theorem nat_minimum (P : Nat → Prop) {n : Nat} (hn : P n) :
    ∃ m, P m ∧ ∀ k, P k → m ≤ k := by
  classical
  induction n using Nat.strongRecOn with
  | ind n ih =>
    by_cases h : ∃ k, k < n ∧ P k
    · obtain ⟨k, hk, hp⟩ := h
      exact ih k hk hp
    · exact ⟨n, hn, fun k hp => by
        by_cases hle : n ≤ k
        · exact hle
        · exact (h ⟨k, by omega, hp⟩).elim⟩

theorem exists_minimum (R : Term) (hr : Reader R) (hj : occ 1 R = 1) :
    ∃ M, Minimum M ∧ weight M ≤ weight R := by
  obtain ⟨w, ⟨U, hu, hjU, hwU⟩, hw⟩ := nat_minimum
    (fun w => ∃ U, Reader U ∧ occ 1 U = 1 ∧ weight U = w) ⟨R, hr, hj, rfl⟩
  obtain ⟨l, ⟨M, hm, hjM, hwM, hlM⟩, hl⟩ := nat_minimum
    (fun l => ∃ M, Reader M ∧ occ 1 M = 1 ∧ weight M = w ∧ lamCount M = l)
    ⟨U, hu, hjU, hwU, rfl⟩
  refine ⟨M, ⟨hm, hjM, ?_, ?_⟩, ?_⟩
  · intro V hv hjV
    rw [hwM]
    exact hw _ ⟨V, hv, hjV, rfl⟩
  · intro V hv hjV hwV
    rw [hlM]
    exact hl _ ⟨V, hv, hjV, hwV.trans hwM, rfl⟩
  · rw [hwM]
    exact hw _ ⟨R, hr, hj, rfl⟩

/-- No erasing redex anywhere, including inside arguments and lambdas. -/
theorem Minimum.no_erasing {R : Term} (hm : Minimum R) : ∀ U, ¬ Erase R U := by
  intro U he
  obtain ⟨hu, hj⟩ := he.reader_single_hole hm.reader hm.hole
  have hlo := hm.minWeight U hu hj
  have hhi := he.weight_lt
  omega

theorem counterexample_minimum {bound : Nat} {R : Term}
    (hr : Reader R) (hj : occ 1 R = 1) (hb : weight R < bound) :
    ∃ M, Minimum M ∧ weight M < bound ∧ ∀ U, ¬ Erase M U := by
  obtain ⟨M, hm, hw⟩ := exists_minimum R hr hj
  exact ⟨M, hm, by omega, hm.no_erasing⟩

end Blc.SelfintReader30

namespace Blc.SelfintReader30Live
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintFloor
set_option maxRecDepth 6000
set_option maxHeartbeats 1200000

theorem live_shift (t : Term) (c : Nat) : live (shift 1 c t) = live t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih =>
    simp only [shift, live, ih]
    rw [occ_shift_lt b 0 (c+1) (by omega)]
  | app f a ihf iha => simp only [shift, live, ihf, iha]

theorem live_subst (t s : Term) (j : Nat) :
    live (substDec j s t) = live t + occ j t * live s := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec, occ, live]
    split <;> simp_all
    split <;> simp [live]
  | lam b ih =>
    simp only [substDec, live, occ]
    rw [occ_substDec_lt b (shift 1 0 s) 0 (j+1) (by omega), occ_shift_eq s 0]
    simp only [Nat.mul_zero, Nat.add_zero]
    rw [ih, live_shift]; omega
  | app f a ihf iha =>
    simp only [substDec, live, occ, ihf, iha, Nat.add_mul]; omega

def konst (t : Term) : Term := .lam (shift 1 0 t)

/-- A finite tree made from the three free names, application, and vacuous lambdas. -/
inductive Flat : Term → Prop where
  | var (n : Nat) : n < 3 → Flat (.var n)
  | app {f a : Term} : Flat f → Flat a → Flat (.app f a)
  | konst {t : Term} : Flat t → Flat (SelfintReader30Live.konst t)

theorem flat_of_live_zero (t : Term) (hz : live t = 0) (hs : FreeUnder 3 t) : Flat t := by
  generalize hm : nodes t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    cases t with
    | var n => exact .var n hs
    | app f a =>
      have h1 : nodes f < m := by simp only [nodes] at hm; omega
      have h2 : nodes a < m := by simp only [nodes] at hm; omega
      have hf : live f = 0 := by simp only [live] at hz; omega
      have ha : live a = 0 := by simp only [live] at hz; omega
      exact .app (ih _ h1 f hf hs.1 rfl) (ih _ h2 a ha hs.2 rfl)
    | lam b =>
      have hb : live b = 0 := by simp only [live] at hz; omega
      have ho : occ 0 b = 0 := by
        by_cases h : 0 < occ 0 b
        · simp only [live, if_pos h] at hz; omega
        · omega
      let u := substDec 0 (.var 0) b
      have hu : live u = 0 := by simp [u, live_subst, live, hb]
      have hsu : FreeUnder 3 u := SelfintClass.subst_scope b (.var 0) 0 3 (by omega) hs (by decide)
      have hn : nodes u < m := by
        have hh := nodes_subst b (.var 0) 0
        simp only [ho, Nat.zero_mul, Nat.add_zero] at hh
        simp only [nodes] at hm
        dsimp [u]; omega
      have hflat := ih _ hn u hu hsu rfl
      have he : konst u = .lam b := congrArg Term.lam (shift_subst_absent b 0 (.var 0) ho)
      exact he ▸ Flat.konst hflat

/-- Rigid head, with no constraint on its arguments. -/
inductive Head (n : Nat) : Term → Prop where
  | var : Head n (.var n)
  | app {f : Term} (a : Term) : Head n f → Head n (.app f a)

theorem Head.rigid {n : Nat} {t : Term} (h : Head n t) : Rigid t := by
  induction h with
  | var => exact .var _
  | app a _ ih => exact .app a ih

theorem Head.beta {n : Nat} {t u : Term} (h : Head n t) (hb : Beta t u) : Head n u := by
  induction hb with
  | beta b a => cases h with | app _ hh => cases hh
  | lam _ _ => cases h
  | appL a _ ih => cases h with | app _ hh => exact .app a (ih hh)
  | appR f _ _ => cases h with | app _ hh => exact .app _ hh

theorem Head.betas {n : Nat} {t u : Term} (h : Head n t) (hr : Betas t u) : Head n u := by
  induction hr with
  | refl => exact h
  | head hb _ ih => exact ih (h.beta hb)

def HeadPair (n m : Nat) : Prop := (n = 0 ∧ m = 0) ∨ (n = 1 ∧ m = 1) ∨ (n = 3 ∧ m = 2)

/-- Paired values on the zero and unary-one streams. Neutrals retain only
    their heads; their argument trees need not be related. -/
inductive PairValue : Term → Term → Prop where
  | stream : PairValue Z S
  | konst {a b : Term} : PairValue a b → PairValue (SelfintReader30Live.konst a) (SelfintReader30Live.konst b)
  | neutral {n m : Nat} {a b : Term} : HeadPair n m → Head n a → Head m b → PairValue a b

theorem konst_apply (t a : Term) : Betas (.app (konst t) a) t := by
  simpa only [konst, contract, substDec_shift] using
    (Betas.head (Beta.beta (shift 1 0 t) a) (.refl _))

theorem stream_square_zero : Betas (.app Z Z) (konst (.var 3)) :=
  normalSteps_sound (by decide : normalSteps 5 (.app Z Z) = some (konst (.var 3)))

theorem stream_on_tail : Betas (.app S P) (.app (.var 2) P) :=
  normalSteps_sound (by decide : normalSteps 4 (.app S P) = some (.app (.var 2) P))

theorem paired_stream_konst (a b : Term) :
    Betas (.app Z (konst a)) (.app a (.var 3)) ∧
    Betas (.app S (konst b)) (.app b P) := by
  constructor
  · exact .head (pair_apply churchTrue (.var 3) (konst a)) (betas_appL _ (konst_apply a churchTrue))
  · exact .head (pair_apply churchFalse P (konst b)) (betas_appL _ (konst_apply b churchFalse))

theorem pairValue_apply {f g a b : Term} (hf : PairValue f g) (ha : PairValue a b) :
    ∃ u v, Betas (.app f a) u ∧ Betas (.app g b) v ∧ PairValue u v := by
  cases hf with
  | neutral hp hf hg =>
    exact ⟨_, _, .refl _, .refl _, .neutral hp (.app _ hf) (.app _ hg)⟩
  | konst hv => exact ⟨_, _, konst_apply _ _, konst_apply _ _, hv⟩
  | stream =>
    cases ha with
    | stream =>
      exact ⟨_, _, stream_square_zero, stream_square,
        .konst (.neutral (Or.inr (Or.inr ⟨rfl, rfl⟩)) .var .var)⟩
    | neutral hp ha hb =>
      exact ⟨_, _, .head (pair_apply _ _ _) (.refl _), .head (pair_apply _ _ _) (.refl _),
        .neutral hp (.app _ (.app _ ha)) (.app _ (.app _ hb))⟩
    | @konst a b hv =>
      obtain ⟨hz, ho⟩ := paired_stream_konst a b
      cases hv with
      | stream =>
        exact ⟨_, _, betas_trans hz (.head (pair_apply _ _ _) (.refl _)),
          betas_trans ho stream_on_tail,
          .neutral (Or.inr (Or.inr ⟨rfl, rfl⟩)) (.app _ (.app _ .var)) (.app _ .var)⟩
      | konst hv =>
        exact ⟨_, _, betas_trans hz (konst_apply _ _), betas_trans ho (konst_apply _ _), hv⟩
      | neutral hp ha hb =>
        exact ⟨_, _, hz, ho, .neutral hp (.app _ ha) (.app _ hb)⟩

theorem beta_shift {t u : Term} (h : Beta t u) (c : Nat) : Beta (shift 1 c t) (shift 1 c u) := by
  induction h generalizing c with
  | beta b a =>
    simp only [shift, contract, shift_substDec b a 0 c (by omega)]
    exact .beta _ _
  | lam _ ih => exact .lam (ih (c+1))
  | appL a _ ih => exact .appL _ (ih c)
  | appR f _ ih => exact .appR _ (ih c)

theorem betas_shift {t u : Term} (h : Betas t u) (c : Nat) : Betas (shift 1 c t) (shift 1 c u) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head (beta_shift hb c) ih

theorem contract_konst (t a : Term) : contract (konst t) a = konst (contract t a) := by
  simp only [contract, konst, substDec]
  rw [← shift_substDec_lt t a 0 0 (by omega)]

theorem flat_pair_algebra {t : Term} (h : Flat t) :
    ∃ u v, Betas (contract t Z) u ∧ Betas (contract t S) v ∧ PairValue u v := by
  induction h with
  | var n hn =>
    have hh : n = 0 ∨ n = 1 ∨ n = 2 := by omega
    rcases hh with rfl | rfl | rfl
    · exact ⟨_, _, .refl _, .refl _, .stream⟩
    · exact ⟨_, _, .refl _, .refl _, .neutral (Or.inl ⟨rfl, rfl⟩) .var .var⟩
    · exact ⟨_, _, .refl _, .refl _, .neutral (Or.inr (Or.inl ⟨rfl, rfl⟩)) .var .var⟩
  | app hf ha ihf iha =>
    obtain ⟨f,g,hf,hg,hfg⟩ := ihf
    obtain ⟨a,b,ha,hb,hab⟩ := iha
    obtain ⟨u,v,hu,hv,huv⟩ := pairValue_apply hfg hab
    exact ⟨u,v,betas_trans (betas_app hf ha) hu,betas_trans (betas_app hg hb) hv,huv⟩
  | konst ht ih =>
    obtain ⟨u,v,hu,hv,huv⟩ := ih
    exact ⟨konst u,konst v, by rw [contract_konst]; exact betas_lam (betas_shift hu 0),
      by rw [contract_konst]; exact betas_lam (betas_shift hv 0), .konst huv⟩

/-- Every source whose only potentially live binder is its outer lambda fails
    the two rigid reader probes, regardless of its source size or hole count. -/
theorem no_flat_reader {B : Term} (h : Reader (.lam B)) (hz : live B = 0) : False := by
  obtain ⟨u,v,hu,hv,hp⟩ := flat_pair_algebra (flat_of_live_zero B hz h.scope)
  have hzu : Betas (.app (.lam B) Z) u := .head (.beta _ _) hu
  have hov : Betas (.app (.lam B) S) v := .head (.beta _ _) hv
  have huz := betas_preserve_nf hzu h.zero_red zeroOut_normal
  have hvo := betas_preserve_nf hov h.one_red varOut_normal
  cases hp with
  | stream =>
    have he := normalForm_betas_eq (nft_normal (by decide : NFt Z)) huz
    cases he
  | konst hp =>
    have hh : ∀ {a b : Term}, Betas a b → IsLam a → IsLam b := by
      intro a b hr
      induction hr with
      | refl => exact id
      | head hb _ ih =>
        intro hl; apply ih
        cases hb <;> simp_all [IsLam]
    exact hh huz trivial
  | neutral hp hz ho =>
    have hz' := hz.betas huz
    have ho' := ho.betas hvo
    cases hz' with
    | app _ hh =>
      cases hh
      cases ho' with
      | app _ hh =>
        cases hh with
        | app _ hh =>
          cases hh
          simp [HeadPair] at hp

/-- With at most one live binder, a weak-head step either deletes syntax
    while preserving that bound, or consumes the unique live binder. -/
theorem weakStep_one_live {t u : Term} (hl : live t ≤ 1)
    (hs : weakStep t = some u) :
    (nodes u < nodes t ∧ live u ≤ live t) ∨ (live t = 1 ∧ live u = 0) := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      by_cases hz : occ 0 b = 0
      · left
        have hn := nodes_subst b a 0
        simp only [hz, Nat.zero_mul, Nat.add_zero] at hn
        simp only [contract, live_subst, live, hz, Nat.zero_mul, Nat.add_zero,
          Nat.lt_irrefl, ↓reduceIte, nodes]
        constructor <;> omega
      · right
        have hp : 0 < occ 0 b := by omega
        have hb : live b = 0 := by simp only [live, if_pos hp] at hl; omega
        have ha : live a = 0 := by simp only [live, if_pos hp] at hl; omega
        simp [contract, live_subst, live, if_pos hp, hb, ha]
    | app g b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have hlf : live (.app g b) ≤ 1 := by simp only [live] at hl ⊢; omega
      rcases ihf hlf hv with ⟨hn,hv⟩ | ⟨hf,hv⟩
      · left; simp only [nodes, live] at hn hv ⊢; constructor <;> omega
      · right; simp only [live] at hl hf hv ⊢; constructor <;> omega

/-- Every two-probe reader has at least two live SOURCE binders. No
    normality, minimality, size bound, or single-hole assumption is used. -/
theorem reader_two_live {R : Term} (hr : Reader R) : 2 ≤ live R := by
  by_cases hl : 2 ≤ live R
  · exact hl
  · have hsmall : live R ≤ 1 := by omega
    suffices h : False from h.elim
    clear hl
    generalize hm : nodes R = m
    induction m using Nat.strongRecOn generalizing R with
    | ind m ih =>
      cases hs : weakStep R with
      | some U =>
        have hu := hr.beta (weakStep_beta hs)
        rcases weakStep_one_live hsmall hs with ⟨hn,hl⟩ | ⟨_,hz⟩
        · exact ih (nodes U) (by omega) hu (by omega) rfl
        · have hnl := reader_nonlinear hu
          have hh := nonlinear_le_live U
          omega
      | none =>
        cases R with
        | var n => exact reader_not_rigid hr (.var n)
        | app f a => exact reader_not_rigid hr (weakStep_none_rigid hs (by simp [IsLam]))
        | lam B =>
          have hroot := reader_root_live hr
          have hb : live B = 0 := by
            simp only [live, if_pos (show 0 < occ 0 B by omega)] at hsmall
            omega
          exact no_flat_reader hr hb

/-- Three bound leaves (two owned by a nonlinear binder and one by a
    different live binder) in addition to every free c and j occurrence. -/
theorem reader_leaf_charge {R : Term} (hr : Reader R) :
    occ 0 R + occ 1 R + 3 ≤ leafCount R := by
  have hl := reader_two_live hr
  have hn := reader_nonlinear hr
  have hv := leaves_bound R
  have hf0 := freeLeaves_split R 0
  have hf1 := freeLeaves_split R 1
  simp only [Nat.reduceAdd] at hf0 hf1
  omega

theorem reader_five_leaves {R : Term} (hr : Reader R) : 5 ≤ leafCount R := by
  have hh := reader_leaf_charge hr
  have hc := reader_c hr
  have hj := reader_j hr
  omega

theorem occDepth_le_lambdas (t : Term) (j : Nat) :
    SelfintWireCost.occDepth j t ≤ lamCount t * occ j t := by
  induction t generalizing j with
  | var n => simp [SelfintWireCost.occDepth, lamCount]
  | lam b ih =>
    have hh := ih (j+1)
    simp only [SelfintWireCost.occDepth, lamCount, occ, Nat.add_mul, Nat.one_mul]
    omega
  | app f a ihf iha =>
    have hf := Nat.le_trans (ihf j)
      (Nat.mul_le_mul_right (occ j f) (show lamCount f ≤ lamCount f + lamCount a by omega))
    have ha := Nat.le_trans (iha j)
      (Nat.mul_le_mul_right (occ j a) (show lamCount a ≤ lamCount f + lamCount a by omega))
    simp only [SelfintWireCost.occDepth, lamCount, occ, Nat.mul_add]
    omega

/-- The five count rows from data/self-interpreter/reasoning_162/floor/reader30.md,
    now proved for every lambda-rooted sub-30 reader. Normality and
    finite-layout membership are separate steps. -/
def CountRows (L V X d f : Nat) : Prop := f = 1 ∧
    ((d = 1 ∧ ((L = 2 ∧ V = 5 ∧ X ≤ 5) ∨ (L = 2 ∧ V = 6 ∧ X ≤ 1) ∨
      (L = 3 ∧ V = 5 ∧ X ≤ 3) ∨ (L = 4 ∧ V = 5 ∧ X ≤ 1))) ∨
     (d = 2 ∧ L = 2 ∧ V = 5 ∧ X ≤ 1))

theorem lambda_count_rows {B : Term} (hr : Reader (.lam B))
    (hj : occ 1 (.lam B) = 1) (hw : cost (.lam B) + 4 * depth (.lam B) < 30) :
    CountRows (lamCount (.lam B)) (leafCount (.lam B)) (tax 1 (.lam B))
      (depth (.lam B)) (occ 0 (.lam B)) := by
  have hL := reader_two_lambdas hr
  have hV := reader_leaf_charge hr
  have hc := reader_c hr
  have hd := occDepth_le_lambdas (.lam B) 1
  rw [hj, Nat.mul_one] at hd
  change depth (.lam B) ≤ lamCount (.lam B) at hd
  have hx := tax_occ B 2 1 (by omega)
  have hwid := holeCost_identity (.lam B) 1
  have hdpos : 1 ≤ depth (.lam B) := by
    simp only [depth, SelfintWireCost.occDepth, Nat.reduceAdd]
    change occ 2 B = 1 at hj
    omega
  change occ 1 B * 1 ≤ tax 2 B at hx
  simp only [Nat.mul_one] at hx
  change occ 1 B ≤ tax 1 (.lam B) at hx
  change occ 0 (.lam B) ≤ tax 1 (.lam B) at hx
  change cost (.lam B) + 2 + 2 * occ 1 (.lam B) =
    2 * lamCount (.lam B) + 4 * leafCount (.lam B) + tax 1 (.lam B) at hwid
  unfold CountRows
  omega

/-- The deep-hole conclusion used for the 46 problem follows already from
    the source leaf charge, independently of all finite classifications. -/
theorem depth_five_weight_46 {R : Term} (hr : Reader R) (hj : occ 1 R = 1)
    (hd : 5 ≤ depth R) : 46 ≤ cost R + 4 * depth R := by
  have hL := occDepth_le_lambdas R 1
  rw [hj, Nat.mul_one] at hL
  change depth R ≤ lamCount R at hL
  have hV := reader_five_leaves hr
  have hw := holeCost_identity R 1
  change cost R + 2 + 2 * occ 1 R = 2 * lamCount R + 4 * leafCount R + tax 1 R at hw
  omega

/-- With at most one live binder, any beta step either loses a source
    leaf or consumes the only live binder. This includes steps under lambdas. -/
theorem beta_one_live {t u : Term} (hb : Beta t u) (hl : live t ≤ 1) :
    leafCount u < leafCount t ∨ (live t = 1 ∧ live u = 0) := by
  induction hb with
  | beta b a =>
    by_cases hz : occ 0 b = 0
    · left
      have hh := leafCount_subst b a 0
      have hp := leafCount_pos a
      simp only [hz, Nat.zero_mul, Nat.add_zero] at hh
      simp only [contract, leafCount]; omega
    · right
      have hp : 0 < occ 0 b := by omega
      have hb : live b = 0 := by simp only [live, if_pos hp] at hl; omega
      have ha : live a = 0 := by simp only [live, if_pos hp] at hl; omega
      simp [contract, live_subst, live, if_pos hp, hb, ha]
  | @lam b b' hb ih =>
    have hbl : live b ≤ 1 := by simp only [live] at hl; omega
    rcases ih hbl with hh | ⟨h1,h0⟩
    · exact Or.inl hh
    · right
      have hz : occ 0 b = 0 := by
        by_cases hp : 0 < occ 0 b
        · simp only [live, if_pos hp] at hl; omega
        · omega
      have hz' := SelfintCapture.occ_beta_zero hb 0 hz
      simp [live, hz, hz', h1, h0]
  | @appL f f' a hb ih =>
    have hf : live f ≤ 1 := by simp only [live] at hl; omega
    rcases ih hf with hh | ⟨h1,h0⟩
    · left; simp only [leafCount]; omega
    · right; simp only [live] at hl ⊢; omega
  | @appR f a a' hb ih =>
    have ha : live a ≤ 1 := by simp only [live] at hl; omega
    rcases ih ha with hh | ⟨h1,h0⟩
    · left; simp only [leafCount]; omega
    · right; simp only [live] at hl ⊢; omega

theorem beta_has_lambda {t u : Term} (h : Beta t u) : 1 ≤ lamCount t := by
  induction h with
  | beta b a => simp only [lamCount]; omega
  | lam _ ih => simp only [lamCount]; omega
  | appL _ _ ih => simp only [lamCount]; omega
  | appR _ _ ih => simp only [lamCount]; omega

theorem beta_one_lambda {t u : Term} (hb : Beta t u) (hl : lamCount t ≤ 1) :
    lamCount u = 0 := by
  induction hb with
  | beta b a =>
    have hh : lamCount b = 0 ∧ lamCount a = 0 := by simp only [lamCount] at hl; omega
    simp [contract, lamCount_subst, hh.1, hh.2]
  | @lam b b' hb ih =>
    have hp := beta_has_lambda hb
    simp only [lamCount] at hl
    omega
  | @appL f f' a hb ih =>
    have hp := beta_has_lambda hb
    have hf : lamCount f ≤ 1 := by simp only [lamCount] at hl; omega
    have hh := ih hf
    simp only [lamCount] at hl ⊢; omega
  | @appR f a a' hb ih =>
    have hp := beta_has_lambda hb
    have ha : lamCount a ≤ 1 := by simp only [lamCount] at hl; omega
    have hh := ih ha
    simp only [lamCount] at hl ⊢; omega

theorem two_lambda_reader_normal {B : Term} (hr : Reader (.lam B))
    (hL : lamCount (.lam B) = 2) : NormalForm (.lam B) := by
  intro U hb
  cases hb with
  | lam hb =>
    have hsmall : lamCount B ≤ 1 := by simp only [lamCount] at hL; omega
    have hz := beta_one_lambda hb hsmall
    have hu := hr.beta (.lam hb)
    have hh := reader_two_lambdas hu
    simp only [lamCount] at hh
    omega

theorem five_leaf_reader_normal {B : Term} (hr : Reader (.lam B))
    (hV : leafCount (.lam B) = 5) : NormalForm (.lam B) := by
  have hnl := reader_nonlinear hr
  have hc := reader_c hr
  have hj := reader_j hr
  have hf0 := freeLeaves_split (.lam B) 0
  have hf1 := freeLeaves_split (.lam B) 1
  have hl := leaves_bound (.lam B)
  have hroot := reader_root_live hr
  have hsmall : live B ≤ 1 := by
    simp only [Nat.reduceAdd] at hf0 hf1
    simp only [live, if_pos (show 0 < occ 0 B by omega)] at hl
    omega
  intro U hb
  cases hb with
  | @lam _ B' hb =>
    have hu := hr.beta (.lam hb)
    rcases beta_one_live hb hsmall with hv | ⟨_,hzero⟩
    · have hh := reader_five_leaves hu
      change leafCount B = 5 at hV
      change 5 ≤ leafCount B' at hh
      omega
    · have hh := reader_two_live hu
      simp only [live, hzero] at hh
      split at hh <;> omega

/-- All lambda-rooted readers below weight 30 are beta-normal. -/
theorem sub30_lambda_normal {B : Term} (hr : Reader (.lam B))
    (hj : occ 1 (.lam B) = 1) (hw : cost (.lam B) + 4 * depth (.lam B) < 30) :
    NormalForm (.lam B) := by
  have hh := lambda_count_rows hr hj hw
  have hcases : lamCount (.lam B) = 2 ∨ leafCount (.lam B) = 5 := by
    unfold CountRows at hh; omega
  rcases hcases with hL | hV
  · exact two_lambda_reader_normal hr hL
  · exact five_leaf_reader_normal hr hV

theorem lam_betas_isLam {t u : Term} (hr : Betas t u) (hl : IsLam t) : IsLam u := by
  induction hr with
  | refl => exact hl
  | head hb _ ih =>
    apply ih
    cases hb <;> simp_all [IsLam]

theorem normal_lam_or_head {t : Term} (hn : NFt t) : IsLam t ∨ ∃ n, Head n t := by
  induction t with
  | var n => exact Or.inr ⟨n,.var⟩
  | lam b => exact Or.inl trivial
  | app f a ihf iha =>
    rcases ihf hn.2.1 with hl | ⟨n,hh⟩
    · exact (hn.1 hl).elim
    · exact Or.inr ⟨n,.app a hh⟩

theorem Head.scope {n k : Nat} {t : Term} (h : Head n t) (hs : FreeUnder k t) : n < k := by
  induction h with
  | var => exact hs
  | app a _ ih => exact ih hs.1

theorem Head.contract_nonzero {n : Nat} {t : Term} (h : Head n t) (hn : 0 < n) (a : Term) :
    Head (n-1) (contract t a) := by
  induction h with
  | var => simp only [contract, substDec, if_neg (show n ≠ 0 by omega), if_pos hn]; exact .var
  | app b _ ih => exact .app _ ih

theorem Head.var_index {n k : Nat} (h : Head n (.var k)) : n = k := by
  cases h; rfl

/-- The body of a beta-normal reader is headed by its input variable. -/
theorem normal_reader_stream_head {B : Term} (hr : Reader (.lam B))
    (hn : NormalForm (.lam B)) : Head 0 B := by
  have hnf : NFt B := (normal_nft hn : NFt (.lam B))
  have hz : Betas (contract B Z) zeroOut :=
    betas_preserve_nf (.head (.beta B Z) (.refl _)) hr.zero_red zeroOut_normal
  rcases normal_lam_or_head hnf with hl | ⟨n,hh⟩
  · cases B with
    | var n => exact hl.elim
    | app f a => exact hl.elim
    | lam b => exact (lam_betas_isLam hz trivial).elim
  · by_cases he : n = 0
    · exact he ▸ hh
    · have hscope := hh.scope hr.scope
      have hhead := (hh.contract_nonzero (by omega) Z).betas hz
      have hidx : n-1 = 3 := by cases hhead with | app _ hv => exact Head.var_index hv
      omega

/-- Exact source-shape conclusion justified before the finite membership step. -/
theorem sub30_lambda_shape {B : Term} (hr : Reader (.lam B))
    (hj : occ 1 (.lam B) = 1) (hw : cost (.lam B) + 4 * depth (.lam B) < 30) :
    NFt (.lam B) ∧ Head 0 B ∧ 2 ≤ live (.lam B) ∧ 1 ≤ nonlinear (.lam B) ∧
    CountRows (lamCount (.lam B)) (leafCount (.lam B)) (tax 1 (.lam B))
      (depth (.lam B)) (occ 0 (.lam B)) := by
  have hn := sub30_lambda_normal hr hj hw
  exact ⟨normal_nft hn, normal_reader_stream_head hr hn, reader_two_live hr,
    reader_nonlinear hr, lambda_count_rows hr hj hw⟩

/-- Immediate unconditional improvement from the two-live-binder theorem. -/
theorem reader_nonlam_cost_24 {R : Term} (hr : Reader R) (hj : occ 1 R = 1)
    (hnl : ¬ IsLam R) : 24 ≤ cost R := by
  have hc := reader_c hr
  have hn := reader_nonlinear hr
  have hL := reader_two_lambdas hr
  have hV := leaves_bound R
  have hlive := nonlinear_le_live R
  have hf0 := freeLeaves_split R 0
  have hf1 := freeLeaves_split R 1
  simp only [Nat.reduceAdd] at hf0 hf1
  have hprice := holeCost_identity R 1
  change 24 ≤ holeCost 1 R
  by_cases htwo : 2 ≤ nonlinear R
  · omega
  · cases hs : weakStep R with
    | none => exact (reader_not_rigid hr (weakStep_none_rigid hs hnl)).elim
    | some R' =>
      have hr' := hr.beta (weakStep_beta hs)
      have hn' := reader_nonlinear hr'
      have hL' := reader_two_lambdas hr'
      have hV' := reader_five_leaves hr'
      obtain ⟨hld,hvd⟩ := weakStep_counts hs (by omega) (by omega)
      omega

theorem reader_weight_24 {R : Term} (hr : Reader R) (hj : occ 1 R = 1) :
    24 ≤ cost R + 4 * depth R := by
  cases R with
  | var n => have := reader_nonlam_cost_24 hr hj (by simp [IsLam]); omega
  | app f a => have := reader_nonlam_cost_24 hr hj (by simp [IsLam]); omega
  | lam B =>
    have hL := reader_two_lambdas hr
    have hV := reader_five_leaves hr
    have hc := reader_c hr
    have hx := tax_occ B 2 1 (by omega)
    have hw := holeCost_identity (.lam B) 1
    simp only [occ, tax, Nat.reduceAdd] at hc hj hx hw
    change 24 ≤ holeCost 1 (.lam B) + 4 * SelfintWireCost.occDepth 1 (.lam B)
    simp only [SelfintWireCost.occDepth, Nat.reduceAdd]
    omega

/-- Fully unconditional 140-bit bound for the existing separated class.
    No minimum-source or finite-layout coverage premise is used. -/
theorem class_bound_140 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hr : Reader R) (hj : occ 1 R = 1) (hq : Next Q) :
    140 ≤ SelfintWireCost.wire (assemble T R Q) := by
  have hw := reader_weight_24 hr hj
  have hc := SelfintClassNext.assembly_lower hT hfix hr.scope hj hq
  omega

end Blc.SelfintReader30Live

namespace Blc.SelfintReader30
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintFloor SelfintReader30Live

/-- Minimum-source boundary, discharged by SelfintReader30Accounting.minimumLambdaCoverage. -/
def MinimumLambdaCoverage : Prop := ∀ R, Minimum R → weight R < 30 →
  ∃ B, R = .lam B

/-- Finite-grammar exclusion boundary, discharged by SelfintReader30Enum.fiveRowExclusion
    using the proved source enumerator and 3484 recorded certificates. -/
def FiveRowExclusion : Prop := ∀ B,
  FreeUnder 3 B → occ 1 (.lam B) = 1 → NFt (.lam B) → Head 0 B →
  2 ≤ live (.lam B) → 1 ≤ nonlinear (.lam B) →
  CountRows (lamCount (.lam B)) (leafCount (.lam B)) (tax 1 (.lam B))
    (depth (.lam B)) (occ 0 (.lam B)) → ¬ Reader (.lam B)

/-- Modular integration theorem. Both named coverage assumptions are discharged
    later in this module. -/
theorem reader_weight_30_of_coverage
    (hmin : MinimumLambdaCoverage) (hrows : FiveRowExclusion)
    {R : Term} (hr : Reader R) (hj : occ 1 R = 1) : 30 ≤ weight R := by
  by_cases hw : 30 ≤ weight R
  · exact hw
  · obtain ⟨M,hm,hsmall,_⟩ := counterexample_minimum hr hj (show weight R < 30 by omega)
    obtain ⟨B,he⟩ := hmin M hm hsmall
    subst M
    obtain ⟨hn,hh,hl,hlin,hcounts⟩ := sub30_lambda_shape hm.reader hm.hole hsmall
    exact (hrows B hm.reader.scope hm.hole hn hh hl hlin hcounts hm.reader).elim

/-- Modular class corollary, instantiated without coverage hypotheses by
    SelfintReader30Final.class_bound_146 later in this module. -/
theorem class_bound_146_of_coverage
    (hmin : MinimumLambdaCoverage) (hrows : FiveRowExclusion)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hr : Reader R) (hj : occ 1 R = 1) (hq : Next Q) :
    146 ≤ SelfintWireCost.wire (assemble T R Q) := by
  have hw := reader_weight_30_of_coverage hmin hrows hr hj
  have hc := SelfintClassNext.assembly_lower hT hfix hr.scope hj hq
  change 30 ≤ cost R + 4 * depth R at hw
  omega

end Blc.SelfintReader30

namespace Blc.SelfintReader30Enum
open Term SelfintClass SelfintClassNext SelfintWireCost SelfintLowerBound SelfintFloor
set_option maxRecDepth 8000
set_option maxHeartbeats 2000000

/-- Inclusive natural budget splits. -/
def splits (n : Nat) : List Nat := List.range (n+1)

/-- Exact-count beta-normal source enumeration. d is the sum of *relative*
    hole depths; h is the ambient number of reader binders. The frame is
    bound variables <h, c=h, j=h+1. Fuel bounds L+V, not reduction time. -/
def layouts : Nat → Nat → Nat → Nat → Nat → Nat → Nat → Nat → List Term
  | 0, _, _, _, _, _, _, _ => []
  | n+1, l, v, x, h, j, c, d =>
    if v = 0 ∨ v < j+c ∨ 1 < j ∨ (j = 0 ∧ d ≠ 0) ∨ x < c*h ∨ (l = 0 ∧ (h-1)*v+c < x+(h-1)*j) then [] else
    let vars := if l = 0 ∧ v = 1 ∧ d = 0 then
      if j = 1 ∧ c = 0 ∧ x = 0 then [.var (h+1)] else
      if j = 0 ∧ c = 1 ∧ x = h then [.var h] else
      if j = 0 ∧ c = 0 ∧ x < h then [.var x] else []
      else []
    let lams := if 0 < l ∧ j ≤ d then
      (layouts n (l-1) v x (h+1) j c (d-j)).map .lam else []
    let apps := (splits l).flatMap fun ll =>
      (List.range v).flatMap fun vl =>
      if vl = 0 then [] else
      (splits x).flatMap fun xl =>
      (splits j).flatMap fun jl =>
      (splits c).flatMap fun cl =>
      (splits d).flatMap fun dl =>
      (layouts n ll vl xl h jl cl dl).flatMap fun f =>
      if IsLam f then [] else
      (layouts n (l-ll) (v-vl) (x-xl) h (j-jl) (c-cl) (d-dl)).map (.app f)
    vars ++ lams ++ apps

def Valid (l v x h j c d : Nat) : Prop :=
  ¬ (v = 0 ∨ v < j+c ∨ 1 < j ∨ (j = 0 ∧ d ≠ 0) ∨ x < c*h ∨ (l = 0 ∧ (h-1)*v+c < x+(h-1)*j))

theorem occ_pair_le_leaves (t : Term) (j k : Nat) (hne : j ≠ k) :
    occ j t + occ k t ≤ leafCount t := by
  induction t generalizing j k with
  | var n => simp only [occ, leafCount]; split <;> split <;> omega
  | lam b ih => exact ih (j+1) (k+1) (by omega)
  | app f a ihf iha =>
    have hf := ihf j k hne
    have ha := iha j k hne
    simp only [occ, leafCount]; omega

theorem lamfree_tax_bound (t : Term) (h : Nat) (hs : FreeUnder (h+2) t)
    (hl : lamCount t = 0) :
    tax (h+1) t + (h-1) * occ (h+1) t ≤ (h-1) * leafCount t + occ h t := by
  induction t with
  | var k =>
    have hk : k < h+2 := hs
    simp only [tax, occ, leafCount]
    split <;> split <;> simp_all <;> omega
  | lam b => simp [lamCount] at hl
  | app f a ihf iha =>
    have hf := ihf hs.1 (by simp only [lamCount] at hl; omega)
    have ha := iha hs.2 (by simp only [lamCount] at hl; omega)
    simp only [tax,occ,leafCount,Nat.mul_add]; omega

theorem valid_source (t : Term) (h : Nat) (hs : FreeUnder (h+2) t) (hj : occ (h+1) t ≤ 1) :
    Valid (lamCount t) (leafCount t) (tax (h+1) t) h (occ (h+1) t) (occ h t) (occDepth (h+1) t) := by
  have hv := leafCount_pos t
  have hc := occ_pair_le_leaves t (h+1) h (by omega)
  have hd : occ (h+1) t = 0 → occDepth (h+1) t = 0 := fun hz => occDepth_zero hz
  have hx := tax_occ t (h+1) h (by omega)
  have hu := lamfree_tax_bound t h hs
  unfold Valid; omega

theorem mem_lam {n l v x h j c d : Nat} {b : Term}
    (hv : Valid l v x h j c d) (hl : 0 < l) (hd : j ≤ d)
    (hb : b ∈ layouts n (l-1) v x (h+1) j c (d-j)) :
    .lam b ∈ layouts (n+1) l v x h j c d := by
  simp only [layouts, if_neg hv, List.mem_append]
  apply Or.inl
  apply Or.inr
  rw [if_pos (And.intro hl hd)]
  exact List.mem_map.mpr ⟨b,hb,rfl⟩

theorem mem_app {n l v x h j c d ll vl xl jl cl dl : Nat} {f a : Term}
    (hv : Valid l v x h j c d) (hll : ll ≤ l) (hvl : 0 < vl ∧ vl < v)
    (hxl : xl ≤ x) (hjl : jl ≤ j) (hcl : cl ≤ c) (hdl : dl ≤ d)
    (hf : f ∈ layouts n ll vl xl h jl cl dl) (hnf : ¬ IsLam f)
    (ha : a ∈ layouts n (l-ll) (v-vl) (x-xl) h (j-jl) (c-cl) (d-dl)) :
    .app f a ∈ layouts (n+1) l v x h j c d := by
  simp only [layouts, if_neg hv, List.mem_append]
  apply Or.inr
  refine List.mem_flatMap.mpr ⟨ll, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨vl, List.mem_range.mpr hvl.2, ?_⟩
  rw [if_neg (show vl ≠ 0 by omega)]
  refine List.mem_flatMap.mpr ⟨xl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨jl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨cl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨dl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨f,hf,?_⟩
  rw [if_neg hnf]
  exact List.mem_map.mpr ⟨a,ha,rfl⟩

/-- Complete for all scoped normal source trees with at most one hole,
    at arbitrary count budgets. No property of the Python generator is assumed. -/
theorem layouts_complete (n : Nat) (t : Term) (h : Nat)
    (hn : lamCount t + leafCount t ≤ n) (hs : FreeUnder (h+2) t)
    (hnf : NFt t) (hj : occ (h+1) t ≤ 1) :
    t ∈ layouts n (lamCount t) (leafCount t) (tax (h+1) t) h
      (occ (h+1) t) (occ h t) (occDepth (h+1) t) := by
  induction n generalizing t h with
  | zero => have hp := leafCount_pos t; omega
  | succ n ih =>
    have hvalid := valid_source t h hs hj
    cases t with
    | var k =>
      have hk : k < h+2 := hs
      by_cases he : k = h+1
      · subst k
        simp [layouts, lamCount, leafCount, tax, occ, occDepth] <;> omega
      · by_cases hc : k = h
        · subst k
          simp [layouts, lamCount, leafCount, tax, occ, occDepth] <;> omega
        · have hb : k < h := by omega
          simp [layouts, lamCount, leafCount, tax, occ, occDepth, he, hc, hb] <;> omega
    | lam b =>
      apply mem_lam hvalid (by simp [lamCount]) (by simp [occDepth, occ])
      have hb : lamCount b + leafCount b ≤ n := by simp only [lamCount, leafCount] at hn; omega
      simpa only [lamCount, leafCount, tax, occ, occDepth, Nat.add_sub_cancel_right]
        using ih b (h+1) hb hs hnf hj
    | app f a =>
      have hfp := leafCount_pos f
      have hap := leafCount_pos a
      have hfn : lamCount f + leafCount f ≤ n := by simp only [lamCount, leafCount] at hn; omega
      have han : lamCount a + leafCount a ≤ n := by simp only [lamCount, leafCount] at hn; omega
      have hfj : occ (h+1) f ≤ 1 := by simp only [occ] at hj; omega
      have haj : occ (h+1) a ≤ 1 := by simp only [occ] at hj; omega
      have hf := ih f h hfn hs.1 hnf.2.1 hfj
      have ha := ih a h han hs.2 hnf.2.2 haj
      apply mem_app hvalid (ll := lamCount f) (vl := leafCount f)
        (xl := tax (h+1) f) (jl := occ (h+1) f) (cl := occ h f) (dl := occDepth (h+1) f)
      · simp only [lamCount]; omega
      · simp only [leafCount]; omega
      · simp only [tax]; omega
      · simp only [occ]; omega
      · simp only [occ]; omega
      · simp only [occDepth]; omega
      · exact hf
      · exact hnf.1
      · simpa only [lamCount, leafCount, tax, occ, occDepth, Nat.add_sub_cancel_left] using ha

def streamHead : Term → Bool
  | .var n => n == 0
  | .lam _ => false
  | .app f _ => streamHead f

def survives (b : Term) : Bool := streamHead b && decide (2 ≤ live (.lam b)) &&
  decide (1 ≤ nonlinear (.lam b))

def rowExact (l v x d : Nat) : List Term :=
  ((layouts (l-1+v) (l-1) v x 1 1 1 (d-1)).filter survives).map .lam

def row (l v x d : Nat) : List Term :=
  (splits x).flatMap fun xi => rowExact l v xi d

end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
open Term SelfintClass SelfintClassNext SelfintWireCost SelfintLowerBound SelfintFloor SelfintReader30Live

theorem streamHead_of_head {b : Term} (hh : Head 0 b) : streamHead b = true := by
  induction hh with
  | var => rfl
  | app a hh ih => exact ih

theorem rowExact_complete {b : Term} {l v x d : Nat}
    (hs : FreeUnder 3 b) (hj : occ 1 (.lam b) = 1) (hc : occ 0 (.lam b) = 1)
    (hn : NFt (.lam b)) (hh : Head 0 b)
    (hlive : 2 ≤ live (.lam b)) (hlin : 1 ≤ nonlinear (.lam b))
    (hl : lamCount (.lam b) = l) (hv : leafCount (.lam b) = v)
    (hx : tax 1 (.lam b) = x) (hd : depth (.lam b) = d) :
    .lam b ∈ rowExact l v x d := by
  have hbody := layouts_complete (l-1+v) b 1
    (by simp only [lamCount] at hl; change leafCount b = v at hv; omega)
    hs hn (by change occ 2 b ≤ 1; change occ 2 b = 1 at hj; omega)
  have hl' : lamCount b = l-1 := by simp only [lamCount] at hl; omega
  have hd' : occDepth 2 b = d-1 := by
    change occ 2 b = 1 at hj
    change occDepth 2 b + occ 2 b = d at hd
    omega
  change occ 2 b = 1 at hj
  change occ 1 b = 1 at hc
  change leafCount b = v at hv
  change tax 2 b = x at hx
  simp only [Nat.reduceAdd, hl', hv, hx, hj, hc, hd'] at hbody
  apply List.mem_map.mpr
  refine ⟨b, List.mem_filter.mpr ⟨hbody, ?_⟩, rfl⟩
  simp [survives, streamHead_of_head hh, hlive, hlin]

theorem row_complete {b : Term} {l v x d : Nat}
    (hs : FreeUnder 3 b) (hj : occ 1 (.lam b) = 1) (hc : occ 0 (.lam b) = 1)
    (hn : NFt (.lam b)) (hh : Head 0 b)
    (hlive : 2 ≤ live (.lam b)) (hlin : 1 ≤ nonlinear (.lam b))
    (hl : lamCount (.lam b) = l) (hv : leafCount (.lam b) = v)
    (hx : tax 1 (.lam b) ≤ x) (hd : depth (.lam b) = d) :
    .lam b ∈ row l v x d := by
  apply List.mem_flatMap.mpr
  refine ⟨tax 1 (.lam b), by simp [splits]; omega, ?_⟩
  exact rowExact_complete hs hj hc hn hh hlive hlin hl hv rfl hd

end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
open Term SelfintClass

structure Certificate where
  reader : Term
  zero : Bool
  steps : Nat
  nf : Term

def Certificate.input (c : Certificate) : Term := if c.zero then Z else S
def Certificate.output (c : Certificate) : Term := if c.zero then zeroOut else varOut

def Certificate.check (c : Certificate) : Bool :=
  decide (normalSteps c.steps (.app c.reader c.input) = some c.nf) &&
  decide (NFt c.nf) && decide (c.nf ≠ c.output)

theorem Certificate.sound (c : Certificate) (h : c.check = true) : ¬ Reader c.reader := by
  simp only [Certificate.check, Bool.and_eq_true, decide_eq_true_eq] at h
  intro hr
  have hn : NormalForm c.nf := fun _ hb => nft_no_beta h.1.2 hb
  have hnf := normalSteps_sound h.1.1
  have hout : NormalForm c.output := by
    simp only [Certificate.output]; split
    · exact zeroOut_normal
    · exact varOut_normal
  have hred : Betas (.app c.reader c.input) c.output := by
    simp only [Certificate.input,Certificate.output]
    split
    · exact hr.zero_red
    · exact hr.one_red
  exact h.2 (normalForm_unique hnf hred hn hout)

theorem certificates_reject (cs : List Certificate) (h : cs.all Certificate.check = true)
    {t : Term} (hm : t ∈ cs.map Certificate.reader) : ¬ Reader t := by
  obtain ⟨c,hc,he⟩ := List.mem_map.mp hm
  exact he ▸ Certificate.sound c (List.all_eq_true.mp h c hc)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def certificates0 : List Certificate := [
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))), true, 6, (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))), true, 6, (.lam (.app (.var 2) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))), true, 6, (.lam (.app (.var 1) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1)))), true, 5, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2)))), true, 5, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))), true, 6, (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))), true, 7, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1))), true, 5, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2))), false, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2))), false, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2))), true, 7, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2))), true, 5, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 2) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 2))))), true, 7, (.app (.var 3) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 2) (.var 0))))), true, 7, (.app (.var 3) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))), true, 8, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))), true, 8, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))), true, 8, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 2))), true, 7, (.var 0)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 2))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 2))), true, 5, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))), false, 12, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))), true, 8, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 2))), true, 5, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩
]
theorem row0_exact : row 2 5 5 1 = certificates0.map Certificate.reader := by decide +kernel
theorem row0_valid : certificates0.all Certificate.check = true := by decide +kernel
theorem row0_reject {t : Term} (h : t ∈ row 2 5 5 1) : ¬ SelfintClass.Reader t :=
  certificates_reject certificates0 row0_valid (row0_exact ▸ h)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def certificates1 : List Certificate := [
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))), true, 6, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))), true, 6, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))), true, 7, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))), true, 7, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1))))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2))))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))), true, 6, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))), true, 7, (.app (.app (.app (.var 1) (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), true, 6, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))), true, 7, (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))), true, 8, (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), true, 6, (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))), true, 8, (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 4))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 1) (.app (.var 3) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))))), true, 6, (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))), true, 6, (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))), true, 7, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), true, 7, (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))))), true, 7, (.app (.app (.app (.var 1) (.app (.app (.var 3) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), true, 8, (.app (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))), true, 5, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))))), true, 6, (.app (.app (.app (.var 1) (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))), true, 6, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))), true, 7, (.app (.app (.app (.var 0) (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), true, 6, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))), true, 7, (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))), true, 8, (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), true, 6, (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0))))))), true, 8, (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2)))))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0)))))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0)))))), true, 7, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))), true, 7, (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2))))), true, 7, (.app (.app (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2))))), true, 8, (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0))))), true, 5, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0))))), true, 6, (.app (.app (.app (.var 0) (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))), true, 8, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), true, 6, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), true, 6, (.app (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), true, 6, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), true, 6, (.app (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 3) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 3) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2)))))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 2))))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))), true, 8, (.app (.app (.var 1) (.var 0)) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))), true, 8, (.app (.app (.var 0) (.var 1)) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1))))), true, 7, (.app (.app (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2))))), true, 7, (.app (.app (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1))))), true, 8, (.app (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2))))), true, 8, (.app (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))))), true, 6, (.app (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2))))), true, 6, (.app (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1))))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1))))), true, 7, (.app (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0))))), true, 6, (.app (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 2))))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 0))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2))))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2))))), true, 7, (.app (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0))))), true, 6, (.app (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1)))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1)))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1)))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 3) (.var 3))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)))), true, 8, (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1)))), true, 8, (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1)))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1)))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1)))), true, 6, (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1)))), true, 6, (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)))), true, 8, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1)))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1)))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2)))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2)))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 2)))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 2)))), true, 8, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2)))), true, 8, (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2)))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 2)))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 2)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2)))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2)))), true, 8, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2)))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 2)))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0)))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 0)))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 3) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 4))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)))), true, 7, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 3) (.var 3)) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))), true, 8, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 3) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))))), true, 8, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 4))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)))), true, 7, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 3) (.var 3)) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)))), true, 8, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))), true, 8, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))), true, 10, (.app (.var 3) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))), true, 11, (.app (.var 3) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 10, (.app (.var 3) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 11, (.app (.var 3) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 3) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 3) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.var 1) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.app (.var 1) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 1) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 1) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 2) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.lam (.var 0))))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0))))), true, 7, (.app (.var 3) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0))))), true, 10, (.app (.var 3) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 7, (.app (.var 3) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 10, (.app (.var 3) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0))))), true, 10, (.app (.app (.var 3) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 10, (.app (.app (.var 3) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.lam (.var 0)))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0)))), true, 8, (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 8, (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.lam (.var 0)))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 7, (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 7, (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 7, (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 6, (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 7, (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 6, (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 7, (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 4)) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 6, (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 7, (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 6, (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 6, (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 6, (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 7, (.app (.app (.var 3) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 8, (.app (.var 3) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 8, (.app (.var 3) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 7, (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 8, (.app (.var 3) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 7, (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 8, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 8, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 7, (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 7, (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 6, (.app (.var 3) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 6, (.app (.var 3) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 6, (.app (.var 3) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 5, (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 6, (.app (.var 3) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 5, (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 6, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 5, (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 6, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 5, (.app (.var 3) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 5, (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 5, (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))), true, 7, (.app (.var 3) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))), true, 6, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))), true, 10, (.app (.var 3) (.app (.var 0) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))), true, 11, (.app (.var 3) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))), true, 6, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))), true, 5, (.app (.var 3) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 2))))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 2)))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 0))))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 2)))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))), true, 7, (.app (.var 3) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))), true, 6, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))), true, 10, (.app (.var 3) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))), true, 11, (.app (.var 3) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))), true, 6, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))), true, 5, (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1)))), true, 7, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2)))), true, 7, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 2) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 1) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1)))), true, 9, (.lam (.app (.var 2) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2)))), true, 9, (.lam (.app (.var 1) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 2) (.var 1)))), true, 7, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 2)))), true, 7, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 2) (.var 1)))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 2)))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 2) (.var 1)))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 2) (.var 1)))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.var 2)))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1)))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2)))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))), true, 5, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))), true, 5, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 2) (.var 1)))), true, 7, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.var 2)))), true, 7, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 1)))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1)))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2)))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.app (.var 0) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.app (.var 1) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.app (.var 0) (.var 1)))), true, 7, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.app (.var 1) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 8, (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.app (.var 0) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1)))), true, 8, (.app (.app (.var 3) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0)))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))), true, 6, (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))), true, 6, (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 0) (.var 1)))), true, 7, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 0)))), true, 7, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 1)))), true, 7, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.app (.var 1) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))), true, 8, (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))), true, 7, (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))), true, 6, (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))), true, 5, (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))), true, 6, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.var 2) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 2)))), true, 7, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.var 2) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 8, (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 8, (.app (.app (.var 3) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 2)))), true, 7, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 2) (.var 0)))), true, 7, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 2)))), true, 7, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.app (.var 2) (.var 0)))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))), true, 8, (.app (.app (.var 3) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))), true, 7, (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))), true, 6, (.app (.app (.var 3) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))), true, 5, (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))), true, 6, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))), true, 10, (.app (.var 3) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))), true, 10, (.app (.var 3) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))), true, 10, (.app (.app (.var 3) (.var 0)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0)))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))), true, 10, (.app (.app (.var 3) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))) (.var 1))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))), true, 7, (.app (.app (.app (.app (.var 1) (.app (.var 3) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0))))) (.var 1))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0))))) (.var 1))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0)))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0)))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2)))) (.var 1))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0)))) (.var 1))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 1))), true, 8, (.app (.app (.var 1) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))), true, 7, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 3))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 0)))) (.var 1))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 0)))) (.var 1))), true, 6, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.app (.var 0) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1))), true, 10, (.app (.app (.var 3) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 0))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 0))) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 0))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2))) (.var 1))), true, 8, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0))) (.var 1))), true, 7, (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 1))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1))), true, 8, (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))), true, 6, (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))), true, 5, (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))), true, 10, (.app (.app (.var 3) (.lam (.var 4))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))), true, 8, (.lam (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))), true, 10, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 2)) (.var 1))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 2)) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 2)) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 2)) (.var 1))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.var 0))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))), true, 5, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2)) (.var 1))), true, 8, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 2)) (.var 1))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 0)) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 0)) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 0)) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 0)) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)) (.var 1))), true, 7, (.app (.var 1) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 1))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 0)) (.var 1))), true, 5, (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0)) (.var 1))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 2))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 2))), true, 7, (.app (.app (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 2))), true, 8, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.var 2))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 2))), true, 8, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 2))), true, 7, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 2))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.var 2))), true, 8, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 6, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 10, (.app (.app (.var 3) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))), false, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))), false, 6, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))), false, 14, (.app (.app (.var 0) (.lam (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))), false, 15, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))), false, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))), false, 5, (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.var 2))), true, 8, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.var 2))), true, 7, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2))), true, 8, (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))), true, 6, (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))), true, 5, (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))), true, 10, (.app (.app (.var 3) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 1)) (.var 2))), true, 8, (.lam (.var 2))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 1)) (.var 2))), false, 7, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2))), true, 10, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 2))), true, 7, (.app (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.var 2))), true, 8, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))), true, 5, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 2))), true, 8, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)) (.var 2))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0)) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 2))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 2))), true, 7, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0)) (.var 2))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0)) (.var 2))), true, 5, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0)) (.var 2))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 0))), true, 5, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))) (.var 0))), true, 5, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))) (.var 0))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))) (.var 0))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0))), true, 7, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 0))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 0))), true, 6, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))) (.var 0))), true, 7, (.app (.var 1) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))) (.var 0))), true, 7, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1))) (.var 0))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2))) (.var 0))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0))), true, 7, (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0))), true, 7, (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))), true, 5, (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))), true, 5, (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))), true, 6, (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))), true, 5, (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))), true, 6, (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))), true, 5, (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1)) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1)) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 0))), true, 7, (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1)) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2)) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2)) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 0))), true, 5, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2)) (.var 0))), true, 7, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2)) (.var 0))), true, 6, (.app (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0))), true, 7, (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)) (.var 0))), true, 5, (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩
]
theorem row1_exact : row 2 6 1 1 = certificates1.map Certificate.reader := by decide +kernel
theorem row1_valid : certificates1.all Certificate.check = true := by decide +kernel
theorem row1_reject {t : Term} (h : t ∈ row 2 6 1 1) : ¬ SelfintClass.Reader t :=
  certificates_reject certificates1 row1_valid (row1_exact ▸ h)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def certificates2 : List Certificate := [
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1))))), true, 5, (.app (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2))))), true, 5, (.app (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0)))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0))))), true, 7, (.app (.var 3) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0))))), true, 7, (.app (.var 3) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.lam (.var 0))))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 5, (.app (.var 3) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 5, (.app (.var 3) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 5, (.app (.var 3) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 4, (.app (.var 3) (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 5, (.app (.var 3) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 4, (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 5, (.app (.var 3) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 4, (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 5, (.app (.var 3) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 4, (.app (.var 3) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 4, (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 4, (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 2) (.var 1)))), true, 4, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 2)))), true, 4, (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1)))), true, 5, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2)))), true, 5, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 1)))), true, 4, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 2)))), true, 4, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 1)))), true, 5, (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 1) (.var 0)))), true, 4, (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 2)))), true, 5, (.app (.app (.var 3) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 2) (.var 0)))), true, 4, (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 1))), true, 5, (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 1))), true, 4, (.app (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))), true, 4, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)) (.var 1))), true, 5, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 1))), true, 4, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 1))), true, 4, (.app (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.var 2))), true, 5, (.app (.app (.var 3) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.var 2))), true, 4, (.app (.app (.var 3) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 2))), true, 5, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1))) (.var 0))), true, 4, (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2))) (.var 0))), true, 4, (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 1)) (.var 0))), true, 4, (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 2)) (.var 0))), true, 4, (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 1)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 1)))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 2)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0)))))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2)))))), true, 6, (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1)))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 1)))))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 5)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1))))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 5)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 1))))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.lam (.var 2)))))), true, 6, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 2))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.lam (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.lam (.var 2))))), true, 6, (.app (.app (.app (.var 3) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.lam (.var 2))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 1))))), true, 7, (.app (.app (.var 1) (.var 0)) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 2))))), true, 7, (.app (.app (.var 0) (.var 1)) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 5)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 1))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 0))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) (.var 1)))), true, 7, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 5)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)))), true, 7, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 2))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 0))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 1))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 1))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 2))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 0))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 1))))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 2) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 2) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 2) (.lam (.var 0)))))), true, 7, (.app (.var 3) (.lam (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.lam (.var 1)))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.lam (.var 1)))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 5))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 5))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.lam (.var 1)))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 5))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0)))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 5))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 1)))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.lam (.var 1))))), true, 7, (.app (.var 3) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.lam (.var 1))))), true, 7, (.app (.var 3) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.lam (.var 1))))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.lam (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.lam (.var 1))))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))), true, 4, (.app (.app (.var 0) (.var 3)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))), true, 3, (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))), true, 6, (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))), true, 4, (.app (.app (.var 0) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))), true, 3, (.app (.app (.var 0) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))), true, 7, (.app (.app (.var 0) (.var 3)) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))), true, 3, (.app (.app (.var 0) (.var 3)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 2))))), true, 6, (.lam (.app (.var 2) (.lam (.var 2))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.lam (.var 2))))), true, 6, (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.lam (.var 2))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.lam (.var 2))))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 2))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.lam (.var 2))))), true, 7, (.app (.var 3) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.lam (.var 1))))), true, 5, (.app (.var 3) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.lam (.var 1))))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.app (.var 1) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.app (.var 2) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 2) (.lam (.var 0))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.app (.var 2) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.app (.var 2) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.app (.var 0) (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.app (.var 0) (.lam (.var 0))))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.lam (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.lam (.var 2)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.lam (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.lam (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 2)))), true, 7, (.app (.var 3) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 2)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.lam (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.lam (.var 2)))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.lam (.var 2)))), true, 5, (.app (.var 3) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.lam (.var 2)))), true, 5, (.app (.var 3) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 2)))), true, 7, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.lam (.var 2)))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.lam (.var 2)))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.lam (.var 2)))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.lam (.var 2)))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.lam (.var 1)))), true, 5, (.app (.var 3) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.lam (.var 1)))), true, 5, (.app (.var 3) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.lam (.var 1)))), true, 5, (.app (.app (.var 3) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.lam (.var 1)))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 0)))), true, 7, (.app (.var 3) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.lam (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))) (.lam (.var 0)))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)) (.lam (.var 0)))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 6, (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 6, (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 6, (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 5, (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 6, (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 5, (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 6, (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 4)) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 5, (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 6, (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 5, (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.var 2)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 5, (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 5, (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.app (.var 2) (.var 1)))), true, 6, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.app (.var 1) (.var 2)))), true, 6, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.var 2) (.var 1)))), true, 8, (.lam (.app (.var 2) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.var 1) (.var 2)))), true, 8, (.lam (.app (.var 1) (.var 2)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.app (.var 2) (.var 1)))), true, 5, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.app (.var 1) (.var 2)))), true, 5, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.var 2) (.var 1)))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 2)))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.app (.var 2) (.var 1)))), true, 6, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.app (.var 1) (.var 2)))), true, 6, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))), true, 6, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))), true, 6, (.var 1)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 3) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 3) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.var 2)))), true, 6, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 2) (.var 0)))), true, 6, (.var 0)⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 0)))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 5)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 1)))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 1))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 1)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 0)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2))) (.var 1))), true, 7, (.app (.app (.var 1) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 5)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 1)))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 1)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 1)))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.lam (.var 1)))) (.var 1))), true, 5, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.var 0)))) (.var 1))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 1))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.lam (.var 1))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.lam (.var 1))) (.var 1))), true, 5, (.app (.app (.var 3) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.lam (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 2))) (.var 1))), true, 7, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 0))) (.var 1))), true, 6, (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 2)) (.var 1))), true, 7, (.lam (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) (.var 1))), true, 9, (.var 1)⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 2)) (.var 1))), true, 5, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 2)) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) (.var 0)) (.var 1))), true, 6, (.app (.var 1) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))) (.var 2))), true, 3, (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 5)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2)))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))) (.var 2))), true, 7, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 5)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.var 2))), false, 7, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1)))) (.var 2))), false, 5, (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 0) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0)))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 4))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.var 2))), true, 7, (.lam (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 2))) (.var 2))), true, 6, (.app (.app (.app (.var 3) (.var 3)) (.lam (.var 1))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.var 1))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 2))) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.var 1))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.var 1))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.var 1))) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.lam (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.lam (.var 0))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1))) (.var 2))), true, 7, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0))) (.var 2))), true, 6, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 2))), true, 7, (.lam (.var 2))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 1)) (.var 2))), true, 9, (.var 0)⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1)) (.var 2))), true, 5, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 1)) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)) (.var 2))), true, 6, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 1))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 1))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.var 2)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 1)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 1)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 1)))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.lam (.var 2)))) (.var 0))), true, 5, (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.var 0)))) (.var 0))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.lam (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.lam (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.lam (.var 2))) (.var 0))), true, 5, (.app (.app (.var 3) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.var 0))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.var 0))) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 2) (.var 1))) (.var 0))), true, 6, (.app (.var 1) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 2))) (.var 0))), true, 6, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 1))))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) (.var 1)) (.var 0))), true, 6, (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 3) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) (.var 0))), true, 6, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 3)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 3) (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 3)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 1)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))), true, 6, (.app (.app (.app (.var 1) (.lam (.var 4))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3)))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0)))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3)))))))), true, 6, (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1)))))))), true, 4, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1)))))))), true, 4, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 2)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 1) (.var 1)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.var 0)))))))), true, 3, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 2)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 1)))))))), true, 4, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.var 3))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 3) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.lam (.var 3))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.var 1))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.app (.var 0) (.var 3))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.app (.var 3) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.lam (.var 3))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1))))))), true, 4, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.app (.var 0) (.var 2))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.app (.var 1) (.var 1))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.lam (.var 2))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.lam (.var 1))))))), true, 4, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.app (.var 1) (.var 2)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.lam (.app (.var 2) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.app (.var 2) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 0) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 1) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.lam (.var 2))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.lam (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.lam (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.lam (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1)))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 2)))), true, 7, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 2)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 2)))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 3))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.app (.var 3) (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 3))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 1))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))) (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 3) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1))))))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 0) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 2))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.app (.var 1) (.var 1))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.app (.var 2) (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 2))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 1))))))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.app (.var 0) (.var 3)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.app (.var 3) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 2) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.lam (.var 3)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 2) (.lam (.var 1)))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.app (.var 0) (.var 3)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.app (.var 3) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 2) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.lam (.var 3)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 2) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.app (.var 0) (.var 3)))))), true, 7, (.app (.var 3) (.lam (.lam (.app (.var 0) (.var 2)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.app (.var 3) (.var 0)))))), true, 7, (.app (.var 3) (.lam (.lam (.app (.var 2) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.lam (.var 3)))))), true, 7, (.app (.var 3) (.lam (.app (.var 0) (.lam (.var 2)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 2) (.lam (.var 1)))))), true, 7, (.app (.var 3) (.lam (.app (.var 1) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 3)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.app (.var 0) (.var 2)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.app (.var 3) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.app (.var 2) (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.lam (.var 3)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.lam (.var 2)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 2) (.lam (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 1) (.lam (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.app (.var 1) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 1) (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.lam (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.lam (.var 1)))))), true, 4, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.app (.var 1) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 1) (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.lam (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.lam (.var 1)))))), true, 4, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1)))))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.var 0) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.var 0) (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.var 1) (.var 1)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.var 2) (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.lam (.var 2)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 1) (.lam (.var 1)))))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))), true, 5, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))), true, 4, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.app (.var 0) (.var 1)))))), true, 3, (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.app (.var 1) (.var 0)))))), true, 4, (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.lam (.app (.var 1) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.lam (.app (.var 2) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.lam (.app (.var 1) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.lam (.app (.var 2) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.lam (.app (.var 1) (.var 2))))), true, 6, (.app (.var 3) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.lam (.app (.var 2) (.var 1))))), true, 5, (.app (.var 3) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.lam (.var 2))))), true, 6, (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.lam (.var 2))))), true, 8, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.lam (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 2))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.lam (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.lam (.app (.var 0) (.var 2))))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.var 1))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 0))))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.var 1) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 2) (.lam (.var 1))))), true, 5, (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 2) (.lam (.var 1))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 1))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.app (.var 1) (.var 0))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.app (.var 1) (.var 0))))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.app (.var 2) (.lam (.var 0))))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.app (.var 2) (.lam (.var 0))))), true, 3, (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))) (.lam (.var 2)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.lam (.var 2)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.lam (.var 2)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.lam (.var 2)))), true, 8, (.app (.var 3) (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))) (.lam (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)) (.lam (.var 1)))), true, 5, (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)) (.lam (.var 1)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 2))))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 1))))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2)))) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 1)))) (.lam (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 2)) (.lam (.var 0)))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 2)) (.lam (.var 0)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.app (.var 2) (.var 1)))), true, 4, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.app (.var 1) (.var 2)))), true, 4, (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 2) (.var 1)))), true, 6, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 2)))), true, 6, (.lam (.lam (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 0))))) (.app (.var 2) (.var 1)))), true, 5, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 0))))) (.app (.var 1) (.var 2)))), true, 5, (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.app (.var 2) (.var 1)))), true, 6, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.app (.var 1) (.var 2)))), true, 6, (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 1))))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 1))))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.app (.var 0) (.var 2)))), true, 5, (.app (.app (.var 3) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.app (.var 2) (.var 0)))), true, 4, (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))) (.app (.var 0) (.var 2)))), true, 5, (.app (.app (.var 0) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))) (.app (.var 2) (.var 0)))), true, 4, (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.app (.var 0) (.var 2)))), true, 6, (.var 0)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.app (.var 2) (.var 0)))), true, 6, (.var 0)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.app (.var 0) (.var 2)))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.app (.var 2) (.var 0)))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 2)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 2) (.var 0)))))) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 2)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 1)))))) (.var 1))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1))), true, 4, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 2)) (.var 1))), true, 4, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))), true, 7, (.lam (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 2)) (.var 1))), true, 5, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))) (.var 2))), true, 4, (.app (.app (.var 3) (.app (.var 3) (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))) (.var 2))), true, 4, (.app (.app (.var 3) (.app (.var 0) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.var 2))), true, 4, (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.var 0)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))) (.var 2))), true, 7, (.lam (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.var 2))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))) (.var 2))), true, 5, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 0))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))) (.var 2))), true, 7, (.lam (.var 2))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))) (.var 2))), true, 7, (.app (.app (.var 3) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))) (.var 2))), true, 6, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 3) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 2))), true, 7, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0)))))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1)))))) (.var 2))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 2))), true, 4, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.var 2)))) (.var 2))), false, 7, (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.var 1)))) (.var 2))), false, 6, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.var 2)))) (.var 2))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 1)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 0)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 0) (.var 1)))) (.var 2))), true, 3, (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 1) (.var 0)))) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))) (.var 2))), true, 7, (.app (.app (.var 0) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.lam (.var 2))) (.var 2))), false, 12, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 1))) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.lam (.var 1))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.lam (.var 0))) (.var 2))), true, 4, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.lam (.var 0))) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))) (.var 1)) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 2))), true, 7, (.lam (.var 2))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 0))))) (.var 1)) (.var 2))), true, 5, (.app (.app (.app (.app (.var 3) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 1))))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 0)) (.var 2))), true, 4, (.app (.app (.app (.var 3) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 0)) (.var 2))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 0)) (.var 2))), true, 6, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 0)) (.var 2))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.var 3) (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 2)) (.var 0))), true, 4, (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.var 0))))) (.var 2)) (.var 0))), true, 4, (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 2)) (.var 0))), true, 6, (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 2)) (.var 0))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩
]
theorem row2_exact : row 3 5 3 1 = certificates2.map Certificate.reader := by decide +kernel
theorem row2_valid : certificates2.all Certificate.check = true := by decide +kernel
theorem row2_reject {t : Term} (h : t ∈ row 3 5 3 1) : ¬ SelfintClass.Reader t :=
  certificates_reject certificates2 row2_valid (row2_exact ▸ h)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def certificates3 : List Certificate := [
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 1))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 2))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))))), true, 2, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))))), true, 5, (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0))))), true, 2, (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))))), true, 2, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))))), true, 5, (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.lam (.var 0)))))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1)))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 1)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 2)))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 2)))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 2)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 0)))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.var 0))))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 1)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 2)))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))), true, 5, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 0)))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))), true, 7, (.app (.var 3) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))), true, 7, (.app (.var 3) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.lam (.lam (.var 0)))))), true, 7, (.app (.var 3) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.lam (.lam (.var 0)))))), true, 7, (.app (.var 3) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.lam (.lam (.var 0)))))), true, 7, (.app (.app (.var 3) (.var 0)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.lam (.lam (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.lam (.lam (.var 0)))))), true, 7, (.app (.app (.var 3) (.var 1)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1)) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.lam (.var 0)))))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.app (.var 2) (.var 1))))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.app (.var 1) (.var 2))))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.app (.var 0) (.var 1))))), true, 6, (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.app (.var 1) (.var 0))))), true, 5, (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.app (.var 0) (.var 2))))), true, 6, (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.app (.var 2) (.var 0))))), true, 5, (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 2)) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 2) (.var 0)) (.var 1)))), true, 5, (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 1)) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 1) (.var 0)) (.var 2)))), true, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 2) (.var 1)) (.var 0)))), true, 5, (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 1) (.var 2)) (.var 0)))), true, 5, (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 2) (.var 1)))), true, 5, (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 1) (.var 2)))), true, 5, (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.app (.var 2) (.var 1)))), true, 8, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 2)))), true, 8, (.var 3)⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1)))), true, 7, (.app (.var 3) (.app (.var 1) (.var 0)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2)))), true, 7, (.app (.var 3) (.app (.var 0) (.var 1)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.app (.var 2) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.app (.var 1) (.var 2)))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1)))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.app (.var 0) (.var 1)))), true, 6, (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 0)))), true, 5, (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2)))), true, 3, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 2)))), true, 6, (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.app (.var 2) (.var 0)))), true, 5, (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0)))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2))) (.var 1))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))), true, 5, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.lam (.var 0))))) (.var 1))), true, 3, (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 1))), true, 7, (.app (.app (.var 3) (.lam (.lam (.lam (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))) (.var 1))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))) (.var 1))), true, 5, (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))), true, 5, (.app (.app (.var 1) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 2)) (.var 1))), true, 8, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 1))), true, 7, (.app (.app (.var 3) (.var 1)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 2)) (.var 1))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 0)) (.var 1))), true, 5, (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0)))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 2))), false, 11, (.app (.var 2) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 2))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 2))), true, 5, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 2))), true, 3, (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 2))), true, 7, (.app (.app (.var 3) (.lam (.lam (.lam (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.lam (.var 0))))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0))) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2))), true, 5, (.app (.app (.var 0) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 2))), false, 8, (.app (.var 0) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 2))), true, 7, (.app (.app (.var 3) (.var 0)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 2))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 2))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 2))), true, 5, (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.lam (.var 0))))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.lam (.var 0))))) (.var 1))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 2))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1))) (.var 0))), true, 5, (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2))) (.var 0))), true, 5, (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 0))), true, 5, (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 2)) (.var 0))), true, 2, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 2)) (.var 0))), true, 5, (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩
]
theorem row3_exact : row 4 5 1 1 = certificates3.map Certificate.reader := by decide +kernel
theorem row3_valid : certificates3.all Certificate.check = true := by decide +kernel
theorem row3_reject {t : Term} (h : t ∈ row 4 5 1 1) : ¬ SelfintClass.Reader t :=
  certificates_reject certificates3 row3_valid (row3_exact ▸ h)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def certificates4 : List Certificate := [
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))))), true, 6, (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))))), true, 4, (.app (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 2) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 3)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 0)))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 2) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)))), true, 6, (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3))⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 3) (.var 0)))))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))), true, 2, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 3)))))), true, 6, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 1))⟩,
⟨(.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.var 3) (.var 0)))))), true, 4, (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 3))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 2))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.var 3) (.var 0))))), true, 3, (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 2) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 3))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 2))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.var 3) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 2) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 3))))), true, 7, (.app (.var 3) (.lam (.app (.var 0) (.var 2))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 3) (.var 0))))), true, 7, (.app (.var 3) (.lam (.app (.var 2) (.var 0))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 3))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 0) (.var 2))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.var 3) (.var 0))))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.app (.var 2) (.var 0))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.app (.var 0) (.var 1)))), true, 6, (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.app (.var 1) (.var 0)))), true, 5, (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.app (.var 0) (.var 1)))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.app (.var 1) (.var 0)))), true, 3, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))) (.var 1))), true, 7, (.var 1)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 0))))) (.var 1))), true, 5, (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 1))), true, 4, (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 1))), true, 7, (.var 3)⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.var 1))), true, 5, (.app (.app (.var 1) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))) (.var 1))), true, 6, (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))) (.var 1))), true, 4, (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3)))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 0)))) (.var 1))), true, 7, (.app (.var 3) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0)) (.var 1))), true, 5, (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 0)) (.var 1))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))) (.var 0))), true, 2, (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)) (.var 0))), true, 5, (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩,
⟨(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)) (.var 0))), true, 3, (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))⟩
]
theorem row4_exact : row 2 5 1 2 = certificates4.map Certificate.reader := by decide +kernel
theorem row4_valid : certificates4.all Certificate.check = true := by decide +kernel
theorem row4_reject {t : Term} (h : t ∈ row 2 5 1 2) : ¬ SelfintClass.Reader t :=
  certificates_reject certificates4 row4_valid (row4_exact ▸ h)
end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30Enum
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintFloor SelfintReader30Live SelfintReader30

/-- The complete five-row grammar exclusion, with no coverage hypothesis. -/
theorem fiveRowExclusion : FiveRowExclusion := by
  intro B hs hj hn hh hl hnl hrows
  rcases hrows with ⟨hc, ⟨hd, hcase⟩ | ⟨hd,hL,hV,hX⟩⟩
  · rcases hcase with ⟨hL,hV,hX⟩ | ⟨hL,hV,hX⟩ | ⟨hL,hV,hX⟩ | ⟨hL,hV,hX⟩
    · exact row0_reject (row_complete hs hj hc hn hh hl hnl hL hV hX hd)
    · exact row1_reject (row_complete hs hj hc hn hh hl hnl hL hV hX hd)
    · exact row2_reject (row_complete hs hj hc hn hh hl hnl hL hV hX hd)
    · exact row3_reject (row_complete hs hj hc hn hh hl hnl hL hV hX hd)
  · exact row4_reject (row_complete hs hj hc hn hh hl hnl hL hV hX hd)

/-- Unconditional weight-30 bound for every lambda-rooted two-probe reader. -/
theorem lambda_reader_weight_30 {B : Term} (hr : Reader (.lam B))
    (hj : occ 1 (.lam B) = 1) : 30 ≤ cost (.lam B) + 4 * depth (.lam B) := by
  by_cases h : 30 ≤ cost (.lam B) + 4 * depth (.lam B)
  · exact h
  · obtain ⟨hn,hh,hl,hnl,hrows⟩ := sub30_lambda_shape hr hj (by omega)
    exact (fiveRowExclusion B hr.scope hj hn hh hl hnl hrows hr).elim

/-- Modular bound from finite coverage and the minimum-source classification. -/
theorem reader_weight_30_of_minimum_lambda (hmin : MinimumLambdaCoverage)
    {R : Term} (hr : Reader R) (hj : occ 1 R = 1) : 30 ≤ weight R :=
  reader_weight_30_of_coverage hmin fiveRowExclusion hr hj

end Blc.SelfintReader30Enum

namespace Blc.SelfintReader30NonLambda
open Term SelfintClass SelfintClassNext SelfintWireCost SelfintLowerBound SelfintFloor SelfintReader30Live SelfintReader30
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- A term assembled from c,j, applications, vacuous lambdas, and unchanged
    copies of one fixed globally scoped source abstraction D. -/
inductive Skeleton (D : Term) : Term → Prop where
  | var (n : Nat) : n < 2 → Skeleton D (.var n)
  | atom : Skeleton D D
  | app {f a : Term} : Skeleton D f → Skeleton D a → Skeleton D (.app f a)
  | konst {t : Term} : Skeleton D t → Skeleton D (konst t)

theorem konst_scope {t : Term} (hs : FreeUnder 2 (konst t)) : FreeUnder 2 t := by
  have hh := SelfintClass.subst_scope (shift 1 0 t) (.var 0) 0 2 (by omega) hs (by decide)
  simpa only [substDec_shift] using hh

theorem flat_skeleton {D t : Term} (hf : Flat t) (hs : FreeUnder 2 t) : Skeleton D t := by
  induction hf with
  | var n hn => exact .var n hs
  | app hf ha ihf iha => exact .app (ihf hs.1) (iha hs.2)
  | konst ht ih => exact .konst (ih (konst_scope hs))

theorem zero_live_skeleton (D t : Term) (hz : live t = 0) (hs : FreeUnder 2 t) : Skeleton D t :=
  flat_skeleton (flat_of_live_zero t hz (freeUnder_mono (by omega) hs)) hs

theorem flat_contract_skeleton {D t a : Term} (hf : Flat t) (ha : Skeleton D a) :
    Skeleton D (contract t a) := by
  induction hf with
  | var n hn =>
    have hh : n = 0 ∨ n = 1 ∨ n = 2 := by omega
    rcases hh with rfl | rfl | rfl
    · exact ha
    · exact .var 0 (by decide)
    · exact .var 1 (by decide)
  | app hf hg ihf ihg => exact .app ihf ihg
  | konst ht ih => rw [contract_konst]; exact .konst ih

/-- A term with exactly one live binder is a vacuous/application context
    around copies of a single, unchanged, globally scoped live abstraction. -/
theorem one_live_skeleton (t : Term) (hl : live t = 1) (hs : FreeUnder 2 t) :
    ∃ B, FreeUnder 3 B ∧ live B = 0 ∧ 0 < occ 0 B ∧ Skeleton (.lam B) t := by
  generalize he : nodes t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    cases t with
    | var n => simp [live] at hl
    | app f a =>
      have hf : live f + live a = 1 := hl
      by_cases hlf : live f = 1
      · obtain ⟨B,hB,hz,hp,hsk⟩ := ih (nodes f) (by simp only [nodes] at he; omega) f hlf hs.1 rfl
        exact ⟨B,hB,hz,hp,.app hsk (zero_live_skeleton _ a (by omega) hs.2)⟩
      · obtain ⟨B,hB,hz,hp,hsk⟩ := ih (nodes a) (by simp only [nodes] at he; omega) a (by omega) hs.2 rfl
        exact ⟨B,hB,hz,hp,.app (zero_live_skeleton _ f (by omega) hs.1) hsk⟩
    | lam b =>
      by_cases hp : 0 < occ 0 b
      · have hz : live b = 0 := by simp only [live,if_pos hp] at hl; omega
        exact ⟨b,hs,hz,hp,.atom⟩
      · have hz : occ 0 b = 0 := by omega
        let u := substDec 0 (.var 0) b
        have hu : live u = 1 := by
          simp only [live,if_neg hp,Nat.add_zero] at hl
          simp [u,live_subst,live,hl]
        have hsu : FreeUnder 2 u := SelfintClass.subst_scope b (.var 0) 0 2 (by omega) hs (by decide)
        have hnu : nodes u < m := by
          have hh := nodes_subst b (.var 0) 0
          simp only [hz,Nat.zero_mul,Nat.add_zero] at hh
          simp only [nodes] at he
          dsimp [u]; omega
        obtain ⟨B,hB,hzB,hpB,hsk⟩ := ih _ hnu u hu hsu rfl
        have heq : konst u = .lam b := congrArg Term.lam (shift_subst_absent b 0 (.var 0) hz)
        exact ⟨B,hB,hzB,hpB,heq ▸ Skeleton.konst hsk⟩

theorem skeleton_lambda {B b : Term} (h : Skeleton (.lam B) (.lam b)) :
    b = B ∨ occ 0 b = 0 := by
  cases h with
  | atom => exact Or.inl rfl
  | konst ht => exact Or.inr (occ_shift_eq _ 0)

theorem skeleton_weakStep {B t u : Term} (h : Skeleton (.lam B) t)
    (hB : FreeUnder 3 B) (hz : live B = 0) (hs : weakStep t = some u) :
    Skeleton (.lam B) u := by
  induction h generalizing u with
  | var n hn => simp [weakStep] at hs
  | atom => simp [weakStep] at hs
  | konst ht ih => simp [konst,weakStep] at hs
  | @app f a hf ha ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | app f b =>
      simp only [weakStep,Option.map_eq_some_iff] at hs
      obtain ⟨v,hv,rfl⟩ := hs
      exact .app (ihf hv) ha
    | lam b =>
      simp only [weakStep,Option.some.injEq] at hs
      subst u
      cases hf with
      | atom => exact flat_contract_skeleton (flat_of_live_zero B hz hB) ha
      | @konst b hb =>
        simpa only [contract,substDec_shift] using hb

theorem weakStep_headStep {t u : Term} (h : weakStep t = some u) : headStep t = some u := by
  induction t generalizing u with
  | var n => simp [weakStep] at h
  | lam b => simp [weakStep] at h
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at h
    | lam b => exact h
    | app f b =>
      simp only [weakStep,Option.map_eq_some_iff] at h
      obtain ⟨v,hv,rfl⟩ := h
      exact congrArg (Option.map (Term.app · a)) (ihf hv)

theorem weakStep_app_headStep {t u : Term} (h : weakStep t = some u) (a : Term) :
    headStep (.app t a) = some (.app u a) := by
  have hh := weakStep_headStep h
  cases t with
  | var n => simp [weakStep] at h
  | lam b => simp [weakStep] at h
  | app f b => exact congrArg (Option.map (Term.app · a)) hh

/-- General weak-head invariant principle, using the reader's zero-law
    normalization to rule out an infinite pre-lambda computation. -/
theorem reader_weak_invariant (Good : Term → Prop)
    (step : ∀ {t u}, Good t → weakStep t = some u → Good u)
    (reject : ∀ b, Good (.lam b) → ¬ Reader (.lam b))
    {R : Term} (hG : Good R) (hr : Reader R) : False := by
  obtain ⟨n,p,hpath,hstop⟩ := hasNormalForm_headTerminates ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  induction n generalizing R p with
  | zero =>
    simp only [headSteps,Option.some.injEq] at hpath
    subst p
    cases R with
    | lam b => exact reject b hG hr
    | var n => exact reader_not_rigid hr (.var n)
    | app f a =>
      cases hs : weakStep (.app f a) with
      | none => exact reader_not_rigid hr (weakStep_none_rigid hs (by simp [IsLam]))
      | some u =>
        have hh := weakStep_app_headStep hs Z
        rw [hh] at hstop
        contradiction
  | succ n ih =>
    cases R with
    | lam b => exact reject b hG hr
    | var k => exact reader_not_rigid hr (.var k)
    | app f a =>
      cases hs : weakStep (.app f a) with
      | none => exact reader_not_rigid hr (weakStep_none_rigid hs (by simp [IsLam]))
      | some u =>
        have hh := weakStep_app_headStep hs Z
        simp only [headSteps,hh,Option.bind_some] at hpath
        exact ih (step hG hs) (hr.beta (weakStep_beta hs)) p hpath hstop

theorem skeleton_not_reader {B R : Term} (hB : FreeUnder 3 B) (hz : live B = 0)
    (hsk : Skeleton (.lam B) R) : ¬ Reader R := by
  intro hr
  apply reader_weak_invariant (Skeleton (.lam B)) (fun h hs => skeleton_weakStep h hB hz hs) ?_ hsk hr
  intro b hb hreader
  rcases skeleton_lambda hb with he | ho
  · subst b; exact no_flat_reader hreader hz
  · have hp := reader_root_live hreader; omega

/-- At most two live source binders: a nonerasing first head contraction
    either reduces their count, or leaves a skeleton of a single source lambda. -/
theorem weakStep_two_live {t u : Term} (hs : weakStep t = some u)
    (hscope : FreeUnder 2 t) (hl : live t ≤ 2) (hne : ∀ v, ¬ Erase t v) :
    (live u + 1 ≤ live t) ∨
      (live t = 2 ∧ ∃ B, FreeUnder 3 B ∧ live B = 0 ∧ Skeleton (.lam B) u) := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep,Option.some.injEq] at hs
      subst u
      have hp : 0 < occ 0 b := by
        by_cases hz : occ 0 b = 0
        · exact (hne _ (.root b a hz)).elim
        · omega
      by_cases ha : live a = 0
      · left
        simp only [contract,live_subst,live,if_pos hp,ha,Nat.mul_zero,Nat.add_zero]
        omega
      · right
        have hal : live a = 1 := by simp only [live,if_pos hp] at hl; omega
        have hb : live b = 0 := by simp only [live,if_pos hp] at hl; omega
        obtain ⟨B,hB,hzB,_,hsk⟩ := one_live_skeleton a hal hscope.2
        refine ⟨by simp [live,if_pos hp,hb,hal], B,hB,hzB,?_⟩
        exact flat_contract_skeleton (flat_of_live_zero b hb hscope.1) hsk
    | app f b =>
      simp only [weakStep,Option.map_eq_some_iff] at hs
      obtain ⟨v,hv,rfl⟩ := hs
      have hlf : live (.app f b) ≤ 2 := by simp only [live] at hl ⊢; omega
      have hnef : ∀ v, ¬ Erase (.app f b) v := fun v he => hne _ (.appL a he)
      rcases ihf hv hscope.1 hlf hnef with hsmall | ⟨he,B,hB,hzB,hsk⟩
      · left; simp only [live] at hsmall ⊢; omega
      · right
        have ha : live a = 0 := by simp only [live] at hl he; omega
        exact ⟨by simp only [live] at he ⊢; omega,
          B,hB,hzB,.app hsk (zero_live_skeleton _ a ha hscope.2)⟩

/-- The formerly handwritten non-lambda minimum live-binder theorem.
    It is unbounded in weight and does not require beta-normal source. -/
theorem minimum_nonlam_three_live {R : Term} (hm : Minimum R) (hnl : ¬ IsLam R) :
    3 ≤ live R := by
  by_cases hh : 3 ≤ live R
  · exact hh
  · have hsmall : live R ≤ 2 := by omega
    cases hs : weakStep R with
    | none => exact (reader_not_rigid hm.reader (weakStep_none_rigid hs hnl)).elim
    | some U =>
      have hu := hm.reader.beta (weakStep_beta hs)
      rcases weakStep_two_live hs hm.reader.scope hsmall hm.no_erasing with hdrop | ⟨_,B,hB,hz,hsk⟩
      · have hl := reader_two_live hu; omega
      · exact (skeleton_not_reader hB hz hsk hu).elim

theorem minimum_nonlam_sub30_counts {R : Term} (hm : Minimum R) (hnl : ¬ IsLam R)
    (hw : weight R < 30) :
    depth R = 0 ∧ occ 0 R = 1 ∧ leafCount R = 6 ∧
      ((lamCount R = 3 ∧ tax 1 R ≤ 3) ∨ (lamCount R = 4 ∧ tax 1 R ≤ 1)) := by
  have hl := minimum_nonlam_three_live hm hnl
  have hL := live_le_lamCount R
  have hn := reader_nonlinear hm.reader
  have hc := reader_c hm.reader
  have hj := hm.hole
  have hv := leaves_bound R
  have hf0 := freeLeaves_split R 0
  have hf1 := freeLeaves_split R 1
  simp only [Nat.reduceAdd] at hf0 hf1
  have hprice := holeCost_identity R 1
  change cost R + 2 + 2 * occ 1 R = 2 * lamCount R + 4 * leafCount R + tax 1 R at hprice
  change cost R + 4 * depth R < 30 at hw
  omega

end Blc.SelfintReader30NonLambda

namespace Blc.SelfintReader30Accounting
open Term SelfintClass SelfintClassNext SelfintWireCost SelfintLowerBound SelfintFloor SelfintReader30Live SelfintReader30 SelfintReader30NonLambda
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def sourceWeight (t : Term) : Nat := weight t
/- Spine and exact substitution identities adapted from
   `Blc.SelfintSourceCost`; the minimum
   interface here uses only the two-probe Reader. -/
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

/-- Exact source sourceWeight change for a root head redex, including copied
    source holes and all source index shifts. No normality assumption. -/
theorem weight_wire (t : Term) : sourceWeight t + 3 * occ 1 t = wire t + 3 * occDepth 1 t := by
  have hh := holeCost_wire t 1
  change wire t = cost t + 3 * occ 1 t + depth t at hh
  change cost t + 4 * depth t + 3 * occ 1 t = wire t + 3 * depth t
  omega

theorem weighted_beta_delta (b a : Term) (as : List Term)
    (hs : FreeUnder 2 (spine (.app (.lam b) a) as)) :
    (sourceWeight (spine (contract b a) as) : Int) -
        sourceWeight (spine (.app (.lam b) a) as) =
      ((occ 0 b : Int)-1) * sourceWeight a +
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
  have w0 := weight_wire (spine (.app (.lam b) a) as)
  have w1 := weight_wire (spine (contract b a) as)
  have wa := weight_wire a
  have hd := wire_beta_delta b a
  rw [fa, fb] at hd
  simp only [spine_occ, spine_depth, spine_wire, wire_app, wire_lam,
    occ, occDepth, contract, occ_substDec_ge b a 1 0 (by omega),
    occDepth_subst_ge b a 1 0 (by omega), Nat.reduceAdd] at w0 w1 wa
  have w0i := congrArg (fun n : Nat => (n : Int)) w0
  have w1i := congrArg (fun n : Nat => (n : Int)) w1
  have wai := congrArg (fun n : Nat => (n : Int)) wa
  have hwarg : (wire a : Int) = sourceWeight a + 3 * occ 1 a - 3 * occDepth 1 a := by
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

theorem erase_spine {t u : Term} (h : Erase t u) (as : List Term) : Erase (spine t as) (spine u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (.appL a h)

theorem spine_not_lam {t : Term} (hn : ¬ IsLam t) (as : List Term) : ¬ IsLam (spine t as) := by
  induction as generalizing t with
  | nil => exact hn
  | cons a as ih => exact ih (by simp [IsLam])

theorem minimum_head_linear {b a : Term} {as : List Term}
    (hm : Minimum (spine (.app (.lam b) a) as)) (hw : sourceWeight (spine (.app (.lam b) a) as) < 30) :
    occ 0 b = 1 := by
  have hnl := spine_not_lam (t := .app (.lam b) a) (by simp [IsLam]) as
  have hv := (minimum_nonlam_sub30_counts hm hnl hw).2.2.1
  have hl := minimum_nonlam_three_live hm hnl
  have hc := reader_c hm.reader
  have hj := hm.hole
  have hleaf := leaves_bound (spine (.app (.lam b) a) as)
  have hf0 := freeLeaves_split (spine (.app (.lam b) a) as) 0
  have hf1 := freeLeaves_split (spine (.app (.lam b) a) as) 1
  simp only [Nat.reduceAdd] at hf0 hf1
  have hnon : nonlinear (spine (.app (.lam b) a) as) ≤ 1 := by omega
  have hp : 0 < occ 0 b := by
    by_cases hz : occ 0 b = 0
    · exact (hm.no_erasing _ (erase_spine (.root b a hz) as)).elim
    · omega
  by_cases hh : 1 < occ 0 b
  · have hb : nonlinear b = 0 := by simp only [spine_nonlinear,nonlinear,if_pos hh] at hnon; omega
    have ha : nonlinear a = 0 := by simp only [spine_nonlinear,nonlinear,if_pos hh] at hnon; omega
    have has : spineNonlinear as = 0 := by simp only [spine_nonlinear,nonlinear,if_pos hh] at hnon; omega
    have hu := hm.reader.beta (spine_beta (.beta b a) as)
    have hn := reader_nonlinear hu
    simp only [spine_nonlinear,contract,nonlinear_subst,hb,ha,has,Nat.mul_zero,Nat.add_zero] at hn
    omega
  · omega

theorem minimum_linear_charge {b a : Term} {as : List Term}
    (hm : Minimum (spine (.app (.lam b) a) as)) (ho : occ 0 b = 1) :
    7 + (occ 1 b : Int) + 4 * occ 2 b ≤
      ((occ 0 a : Int) + 4 * occ 1 a - 1) * occDepth 0 b := by
  have hu := hm.reader.beta (spine_beta (.beta b a) as)
  have hj : occ 1 (spine (contract b a) as) = 1 := by
    have hh := hm.hole
    simp only [spine_occ,occ,Nat.reduceAdd] at hh
    simpa only [spine_occ,contract,occ_substDec_ge b a 1 0 (by omega),Nat.reduceAdd,ho,Nat.one_mul] using hh
  have hmin := hm.minWeight _ hu hj
  change sourceWeight (spine (.app (.lam b) a) as) ≤ sourceWeight (spine (contract b a) as) at hmin
  have hd := weighted_beta_delta b a as hm.reader.scope
  rw [ho] at hd
  have hL : lamCount (spine (contract b a) as) + 1 = lamCount (spine (.app (.lam b) a) as) := by
    simp only [spine_lambdas,contract,lamCount_subst,lamCount,ho,Nat.one_mul]; omega
  have hstrict : sourceWeight (spine (.app (.lam b) a) as) < sourceWeight (spine (contract b a) as) := by
    by_cases heq : sourceWeight (spine (contract b a) as) = sourceWeight (spine (.app (.lam b) a) as)
    · have hbad := hm.minLambdas _ hu hj heq; omega
    · omega
  simp only [Int.natCast_one,Int.sub_self,Int.zero_mul,Int.zero_add] at hd
  omega

def spineTax (j : Nat) : List Term → Nat
  | [] => 0
  | a::as => tax j a + spineTax j as

theorem spine_tax (t : Term) (as : List Term) (j : Nat) :
    tax j (spine t as) = tax j t + spineTax j as := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => simp only [spine,spineTax,tax,ih]; omega

theorem occDepth_tax (t : Term) (j k : Nat) (hne : j ≠ k) :
    occDepth j t + j * occ j t ≤ tax k t := by
  induction t generalizing j k with
  | var n => simp only [occDepth,occ,tax]; split <;> split <;> simp_all <;> omega
  | lam b ih =>
    have hh := ih (j+1) (k+1) (by omega)
    simp only [occDepth,occ,tax,Nat.add_mul,Nat.one_mul] at hh ⊢
    omega
  | app f a ihf iha =>
    have hf := ihf j k hne; have ha := iha j k hne
    simp only [occDepth,occ,tax,Nat.mul_add]; omega

theorem subst_spine (t a : Term) (as : List Term) (k : Nat) :
    substDec k a (spine t as) = spine (substDec k a t) (as.map (substDec k a)) := by
  induction as generalizing t with
  | nil => rfl
  | cons x as ih => exact ih (.app t x)

theorem replace_head_argument (f a : Term) (as : List Term)
    (hr : Rigid a) (hn : NFt a) (ha : SelfintInert.Avoid a zeroOut)
    (hred : Betas (.app (spine (.app f a) as) Z) zeroOut) (b : Term) :
    Betas (.app (spine (.app f b) as) Z) zeroOut := by
  let t : Term := .app (spine (.app (shift 1 0 f) (.var 0)) (as.map (shift 1 0))) (shift 1 0 Z)
  have he (v : Term) : substDec 0 v t = .app (spine (.app f v) as) Z := by
    simp only [t,substDec,subst_spine,substDec_shift,↓reduceIte,List.map_map]
    have hh : (fun x => substDec 0 v (shift 1 0 x)) = id := by funext x; exact substDec_shift x v 0
    simp only [Function.comp_def,hh,List.map_id]
  have hh := SelfintInert.replace_inert 0 hr hn ha (he a ▸ hred) b
  simpa only [he] using hh

theorem trapped_cj {b : Term} {as : List Term} {a : Term}
    (hr : Reader (spine (.app (.lam b) a) as)) (hb : occ 2 b = 0)
    (has : spineOcc 1 as = 0)
    (ha : a = .app (.var 0) (.var 1) ∨ a = .app (.var 1) (.var 0)) : False := by
  have hrepl : Betas (.app (spine (.app (.lam b) (.var 0)) as) Z) zeroOut := by
    rcases ha with rfl | rfl
    · exact replace_head_argument _ _ _ (.app _ (.var 0)) (by decide) (by simp [SelfintInert.Avoid,zeroOut]) hr.zero_red (.var 0)
    · exact replace_head_argument _ _ _ (.app _ (.var 1)) (by decide) (by simp [SelfintInert.Avoid,zeroOut]) hr.zero_red (.var 0)
  have hz : occ 1 (.app (spine (.app (.lam b) (.var 0)) as) Z) = 0 := by
    simp [occ,spine_occ,hb,has,show occ 1 Z = 0 by decide]
  have hout := SelfintKnot.occ_betas_zero hrepl 1 hz
  have hv : occ 1 zeroOut = 1 := by decide
  omega

theorem minimum_head_sub30_impossible {b a : Term} {as : List Term}
    (hm : Minimum (spine (.app (.lam b) a) as))
    (hw : weight (spine (.app (.lam b) a) as) < 30) : False := by
  have hnl := spine_not_lam (t := .app (.lam b) a) (by simp [IsLam]) as
  obtain ⟨hd,hc,hv,hcounts⟩ := minimum_nonlam_sub30_counts hm hnl hw
  have ho := minimum_head_linear hm hw
  have hcharge := minimum_linear_charge hm ho
  have hs := spine_scope (.app (.lam b) a) as 2 hm.reader.scope
  have hj := hm.hole
  have hD := occDepth_le_lambdas b 0
  rw [ho,Nat.mul_one] at hD
  have hX := occDepth_tax b 0 2 (by omega)
  simp only [Nat.zero_mul,Nat.add_zero] at hX
  have hcc : occ 1 b + occ 0 a + spineOcc 0 as = 1 := by simpa only [spine_occ,occ,Nat.reduceAdd] using hc
  have hjj : occ 2 b + occ 1 a + spineOcc 1 as = 1 := by simpa only [spine_occ,occ,Nat.reduceAdd] using hj
  have hdepth : occDepth 2 b + occ 2 b + occDepth 1 a + spineDepth 1 as = 0 := by
    simpa only [depth,spine_depth,occDepth,Nat.reduceAdd] using hd
  have hLmax : lamCount b + 1 + lamCount a + spineLambdas as ≤ 4 := by
    simp only [spine_lambdas,lamCount,spine_tax,tax,Nat.reduceAdd] at hcounts
    omega
  have hDx : occDepth 0 b ≤ 2 := by
    simp only [spine_lambdas,lamCount,spine_tax,tax,Nat.reduceAdd] at hcounts
    omega
  have hAc : occ 0 a = 0 ∨ occ 0 a = 1 := by omega
  have hAj : occ 1 a = 0 ∨ occ 1 a = 1 := by omega
  have corner : occ 0 a = 1 ∧ occ 1 a = 1 ∧ occDepth 0 b = 2 := by
    rcases hAc with h0 | h0 <;> rcases hAj with h1 | h1
    all_goals simp [h0,h1] at hcharge
    all_goals omega
  obtain ⟨hAc,hAj,hDx2⟩ := corner
  have hLa : lamCount a = 0 := by
    simp only [spine_lambdas,lamCount,spine_tax,tax,Nat.reduceAdd] at hcounts
    omega
  have hVa : leafCount a = 2 := by
    rw [lamfree_leafCount_eq a hLa hs.2,hAc,hAj]
  have ha : a = .app (.var 0) (.var 1) ∨ a = .app (.var 1) (.var 0) := by
    obtain ⟨n,m,he⟩ := lamfree_leaf2 a hLa hVa
    subst a
    have hscope : n < 2 ∧ m < 2 := hs.2
    have hn : n = 0 ∨ n = 1 := by omega
    have hmidx : m = 0 ∨ m = 1 := by omega
    rcases hn with rfl | rfl <;> rcases hmidx with rfl | rfl <;> simp_all [occ]
  exact trapped_cj hm.reader (by omega) (by omega) ha

/-- Minimum non-lambda elimination, with no residual coverage premise. -/
theorem minimumLambdaCoverage : MinimumLambdaCoverage := by
  intro R hm hw
  rcases head_shape R with hl | hrig | ⟨b,a,as,he⟩
  · cases R with
    | var n => exact hl.elim
    | app f a => exact hl.elim
    | lam b => exact ⟨b,rfl⟩
  · exact (reader_not_rigid hm.reader hrig).elim
  · subst R
    exact (minimum_head_sub30_impossible hm hw).elim

end Blc.SelfintReader30Accounting

namespace Blc.SelfintReader30Final
open Term SelfintClass SelfintClassNext SelfintReader30

/-- Every one-hole two-probe reader has weighted source cost at least 30. -/
theorem reader_weight_30 {R : Term} (hr : Reader R) (hj : occ 1 R = 1) :
    30 ≤ cost R + 4 * depth R :=
  reader_weight_30_of_coverage SelfintReader30Accounting.minimumLambdaCoverage
    SelfintReader30Enum.fiveRowExclusion hr hj

/-- Unconditional 146-bit bound for the separated class. Its only hypotheses
    are the class contract; neither finite coverage nor minimality is assumed. -/
theorem class_bound_146 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hr : Reader R) (hj : occ 1 R = 1) (hq : Next Q) :
    146 ≤ SelfintWireCost.wire (assemble T R Q) :=
  class_bound_146_of_coverage SelfintReader30Accounting.minimumLambdaCoverage
    SelfintReader30Enum.fiveRowExclusion hT hfix hr hj hq

#print axioms reader_weight_30
#print axioms class_bound_146
end Blc.SelfintReader30Final
