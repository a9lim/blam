import Blc.SelfintClass


namespace Blc.Lean146
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

#print axioms absent_subst_weight
#print axioms Erase.reader_single_hole
#print axioms Minimum.no_erasing
#print axioms counterexample_minimum
end Blc.Lean146


namespace Blc.Lean146Live
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
  | konst {t : Term} : Flat t → Flat (Lean146Live.konst t)

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
  | konst {a b : Term} : PairValue a b → PairValue (Lean146Live.konst a) (Lean146Live.konst b)
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

/-- The five count rows from reader30.md, now proved for every lambda-rooted
    sub-30 reader. Normality and finite-layout membership are separate steps. -/
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

#print axioms reader_weight_24
#print axioms class_bound_140
#print axioms sub30_lambda_shape
#print axioms beta_one_live
#print axioms sub30_lambda_normal
#print axioms reader_leaf_charge
#print axioms lambda_count_rows
#print axioms depth_five_weight_46
#print axioms live_subst
#print axioms weakStep_one_live
#print axioms reader_two_live
#print axioms flat_pair_algebra
#print axioms no_flat_reader
end Blc.Lean146Live


namespace Blc.Lean146
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintFloor Lean146Live

/-- Minimum-source boundary, discharged by Lean146Accounting.minimumLambdaCoverage. -/
def MinimumLambdaCoverage : Prop := ∀ R, Minimum R → weight R < 30 →
  ∃ B, R = .lam B

/-- Finite-grammar exclusion boundary, discharged by Lean146Enum.fiveRowExclusion
    using the proved source enumerator and 3484 recorded certificates. -/
def FiveRowExclusion : Prop := ∀ B,
  FreeUnder 3 B → occ 1 (.lam B) = 1 → NFt (.lam B) → Head 0 B →
  2 ≤ live (.lam B) → 1 ≤ nonlinear (.lam B) →
  CountRows (lamCount (.lam B)) (leafCount (.lam B)) (tax 1 (.lam B))
    (depth (.lam B)) (occ 0 (.lam B)) → ¬ Reader (.lam B)

/-- Modular integration theorem. Both named coverage assumptions are discharged
    in Final146.lean. -/
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
    Lean146Final.class_bound_146 in Final146.lean. -/
theorem class_bound_146_of_coverage
    (hmin : MinimumLambdaCoverage) (hrows : FiveRowExclusion)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hr : Reader R) (hj : occ 1 R = 1) (hq : Next Q) :
    146 ≤ SelfintWireCost.wire (assemble T R Q) := by
  have hw := reader_weight_30_of_coverage hmin hrows hr hj
  have hc := SelfintClassNext.assembly_lower hT hfix hr.scope hj hq
  change 30 ≤ cost R + 4 * depth R at hw
  omega

#print axioms reader_weight_30_of_coverage
#print axioms class_bound_146_of_coverage
end Blc.Lean146
