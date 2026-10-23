/-
An unbounded source reduction for a hypothetical three-live-binder interpreter.

Every beta step in a term whose live binders lie on one ancestor chain
either removes a live binder or strictly shortens the BLC source. Thus an
interpreter with only three live binders would consist of one nonlinear
sharing application over a closed two-live-binder capture. Reducing only
inside its two components strictly shortens the source, preserves the
three-live-binder budget, and reaches normal components.

This is a source-shape reduction, not an exclusion of that final family.
-/
import Blc.SelfintRound6BoundNext
import Blc.SelfintRound6BoundRedLive

namespace Blc.SelfintRound7SourceShape
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
open SelfintWiden SelfintRound6BoundGlobal SelfintRound6BoundNext

/-- All live binders occupy a single source ancestor chain. -/
def LinearLiveTree : Term → Prop
  | .var _ => True
  | .lam b => LinearLiveTree b
  | .app f a => LinearLiveTree f ∧ LinearLiveTree a ∧ (live f = 0 ∨ live a = 0)

theorem linearLiveTree_of_marked (t : Term)
    (h : QuoteOrigins.Marked.LiveChain (QuoteOrigins.Marked.red t)) : LinearLiveTree t := by
  induction t with
  | var n => trivial
  | lam b ih => exact ih h
  | app f a ihf iha =>
      exact ⟨ihf h.1, iha h.2.1,
        by simpa only [QuoteOrigins.Marked.redLive_red] using h.2.2⟩

theorem linearLiveTree_of_one_live (t : Term) (h : live t ≤ 1) : LinearLiveTree t :=
  linearLiveTree_of_marked t (QuoteOrigins.Marked.one_redLive_chain _
    (by simpa only [QuoteOrigins.Marked.redLive_red] using h))

theorem linearLiveTree_beta_live {t u : Term} (h : Beta t u)
    (ht : LinearLiveTree t) : live u ≤ live t := by
  induction h with
  | beta b a =>
      by_cases hz : occ 0 b = 0
      · simp only [contract, live_subst, hz, Nat.zero_mul, Nat.add_zero,
          live, Nat.lt_irrefl, if_false]
        omega
      · have hp : 0 < occ 0 b := by omega
        have ha : live a = 0 := by
          rcases ht.2.2 with hf | ha
          · simp only [live, if_pos hp] at hf; omega
          · exact ha
        simp only [contract, live_subst, ha, Nat.mul_zero, Nat.add_zero,
          live, if_pos hp]
        omega
  | @appL f g a h ih =>
      have hh := ih ht.1
      simp only [live]; omega
  | @appR f a b h ih =>
      have hh := ih ht.2.1
      simp only [live]; omega
  | @lam b c h ih =>
      have hh := ih ht
      by_cases hz : occ 0 b = 0
      · have hz' := QuoteOrigins.occ_zero_beta h 0 hz
        simpa only [live, hz, hz', Nat.lt_irrefl, if_false, Nat.add_zero] using hh
      · have hp : 0 < occ 0 b := by omega
        simp only [live, if_pos hp]
        split <;> omega

/-- A live contraction cannot copy another live binder across this chain.
An erasing contraction strictly reduces the wire size instead. The
statement includes arbitrary reduction below surrounding lambdas. -/
theorem linearLiveTree_beta_progress {t u : Term} (h : Beta t u)
    (ht : LinearLiveTree t) : live u < live t ∨ wire u < wire t := by
  induction h with
  | beta b a =>
      by_cases hz : occ 0 b = 0
      · exact Or.inr (erasing_beta_shrinks b a hz)
      · have hp : 0 < occ 0 b := by omega
        have ha : live a = 0 := by
          rcases ht.2.2 with hf | ha
          · simp only [live, if_pos hp] at hf; omega
          · exact ha
        left
        simp only [contract, live_subst, ha, Nat.mul_zero, Nat.add_zero,
          live, if_pos hp]
        omega
  | @appL f g a h ih =>
      rcases ih ht.1 with hl | hw
      · left; simp only [live]; omega
      · right; simp only [wire_app]; omega
  | @appR f a b h ih =>
      rcases ih ht.2.1 with hl | hw
      · left; simp only [live]; omega
      · right; simp only [wire_app]; omega
  | @lam b c h ih =>
      rcases ih ht with hl | hw
      · left
        by_cases hz : occ 0 b = 0
        · have hz' := QuoteOrigins.occ_zero_beta h 0 hz
          simp only [live, hz, hz', Nat.lt_irrefl, if_false, Nat.add_zero]
          exact hl
        · have hp : 0 < occ 0 b := by omega
          simp only [live, if_pos hp]
          split <;> omega
      · right; simp only [wire_lam]; omega

theorem closed_normal_lam {t : Term} (hc : Closed t) (hn : NFt t) : IsLam t := by
  induction t with
  | var n => exact (Nat.not_lt_zero n hc).elim
  | lam b => trivial
  | app f a ihf iha => exact (hn.1 (ihf hc.1 hn.2.1)).elim

/-- Three closed operands already spend all three live binders. They are
then individually separated, which is incompatible with interpretation. -/
theorem three_live_no_double_application {f a b : Term}
    (hE : IsSelfInterpreter (.app (.app f a) b))
    (hl : live (.app (.app f a) b) ≤ 3) : False := by
  have hf := closed_live_pos f hE.1.1.1
  have ha := closed_live_pos a hE.1.1.2
  have hb := closed_live_pos b hE.1.2
  simp only [live] at hl
  exact selfinterpreter_not_separated _ hE
    ⟨⟨one_live_separated f (by omega), one_live_separated a (by omega)⟩,
      one_live_separated b (by omega)⟩

/-- An interpreter with only three live binders is one root
sharing redex. Its closed operand owns both remaining live binders and
the necessary internal capture; the body has no live binder. -/
theorem three_live_root_resources {E : Term} (hE : IsSelfInterpreter E)
    (hl : live E ≤ 3) :
    ∃ B A, E = .app (.lam B) A ∧ FreeUnder 1 B ∧ Closed A ∧
      2 ≤ occ 0 B ∧ live B = 0 ∧ live A = 2 ∧ ¬ Separated 0 A := by
  cases E with
  | var n => exact (Nat.not_lt_zero n hE.1).elim
  | lam b => have hh := one_lambda_four_live hE; omega
  | app f A =>
      cases f with
      | var n => exact (Nat.not_lt_zero n hE.1.1).elim
      | app f a => exact (three_live_no_double_application hE hl).elim
      | lam B =>
          have hla := closed_live_pos A hE.1.2
          have hi := descend_interpreter hE
          have hli := selfInterpreter_three_live hi
          have ho : 2 ≤ occ 0 B := by
            by_cases hz : occ 0 B = 0
            · simp only [contract, live_subst, hz, Nat.zero_mul, Nat.add_zero] at hli
              simp only [live, hz, Nat.lt_irrefl, if_false] at hl
              omega
            by_cases h1 : occ 0 B = 1
            · simp only [contract, live_subst, h1, Nat.one_mul] at hli
              simp only [live, h1, Nat.zero_lt_succ, if_true] at hl
              omega
            omega
          have hp : 0 < occ 0 B := by omega
          have hbl : live B ≤ 1 := by simp only [live, if_pos hp] at hl; omega
          have ha2 : live A = 2 := by
            by_cases ha1 : live A ≤ 1
            · exact (selfinterpreter_not_separated _ hi
                (separated_global_subst B A 0 (one_live_separated B hbl)
                  (one_live_separated A ha1))).elim
            · simp only [live, if_pos hp] at hl; omega
          have hb0 : live B = 0 := by simp only [live, if_pos hp] at hl; omega
          refine ⟨B, A, rfl, hE.1.1, hE.1.2, ho, hb0, ha2, ?_⟩
          intro hs
          exact selfinterpreter_not_separated _ hE
            ⟨⟨zero_live_separated B 1 hb0, by intro _ i hi; omega⟩, hs⟩

/-- Both sides of the remaining sharing application are beta-normal.
No bound on dead lambdas, leaves, source length or contraction length is
used. -/
theorem three_live_root_normal {B A : Term}
    (hm : MinimalInterpreter (.app (.lam B) A))
    (hb : live B = 0) (ha : live A = 2) (hc : ¬ Separated 0 A) :
    NFt B ∧ NFt A := by
  have hchain := linearLiveTree_of_marked A
    (QuoteOrigins.Marked.two_live_capture_chain A (by omega) hc)
  have hnB : NormalForm B := by
    intro B' h
    have hw := zero_live_beta_shrinks h hb
    have hmin := minimal_beta_nonshrinking hm (.appL A (.lam h))
    simp only [wire_app, wire_lam] at hmin
    omega
  have hnA : NormalForm A := by
    intro A' h
    rcases linearLiveTree_beta_progress h hchain with hl | hw
    · have hi := selfInterpreter_beta hm.1 (.appR (.lam B) h)
      have hp := selfInterpreter_three_live hi
      simp only [live, hb, Nat.zero_add] at hp
      split at hp <;> omega
    · have hmin := minimal_beta_nonshrinking hm (.appR (.lam B) h)
      simp only [wire_app] at hmin
      omega
  exact ⟨SelfintClassNext.normal_nft hnB, SelfintClassNext.normal_nft hnA⟩

def NormalRoot (E : Term) : Prop := ∃ B A, E = .app (.lam B) A ∧ NFt B ∧ NFt A

private theorem exists_beta_of_not_nf {t : Term} (h : ¬ NFt t) : ∃ u, Beta t u := by
  apply Classical.byContradiction
  intro hn
  apply h
  exact SelfintClassNext.normal_nft (by intro u hu; exact hn ⟨u,hu⟩)

/-- Every hypothetical three-live-binder interpreter reduces, without
increasing its wire size or live count, to a single sharing redex whose
two components are normal. No minimum assumption or finite source bound
is used; the induction measure is the actual source wire length. -/
theorem three_live_normal_reduction {E : Term} (hE : IsSelfInterpreter E)
    (hl : live E ≤ 3) :
    ∃ E', Betas E E' ∧ IsSelfInterpreter E' ∧ wire E' ≤ wire E ∧
      live E' ≤ 3 ∧ NormalRoot E' := by
  generalize he : wire E = n
  induction n using Nat.strongRecOn generalizing E with
  | ind n ih =>
      obtain ⟨B,A,rfl,hB,hA,ho,hb0,ha2,hcap⟩ := three_live_root_resources hE hl
      have hchain := linearLiveTree_of_marked A
        (QuoteOrigins.Marked.two_live_capture_chain A (by omega) hcap)
      by_cases hnB : NFt B
      · by_cases hnA : NFt A
        · exact ⟨_, .refl _, hE, by omega, hl, B, A, rfl, hnB, hnA⟩
        · obtain ⟨A',h⟩ := exists_beta_of_not_nf hnA
          have hp : Beta (.app (.lam B) A) (.app (.lam B) A') := .appR _ h
          have hE' := selfInterpreter_beta hE hp
          have hal := linearLiveTree_beta_live h hchain
          have hl' : live (.app (.lam B) A') ≤ 3 := by
            simp only [live, hb0, Nat.zero_add]
            split <;> omega
          have hw : wire A' < wire A := by
            rcases linearLiveTree_beta_progress h hchain with hdrop | hwire
            · have hh := selfInterpreter_three_live hE'
              simp only [live, hb0, Nat.zero_add] at hh
              split at hh <;> omega
            · exact hwire
          have hwhole : wire (.app (.lam B) A') < n := by
            simp only [wire_app] at he ⊢; omega
          obtain ⟨E',ht,hi,hw',hl'',hn⟩ := ih _ hwhole hE' hl' rfl
          exact ⟨E', .head hp ht, hi, by omega, hl'',hn⟩
      · obtain ⟨B',h⟩ := exists_beta_of_not_nf hnB
        have hp : Beta (.app (.lam B) A) (.app (.lam B') A) := .appL _ (.lam h)
        have hE' := selfInterpreter_beta hE hp
        have hbl := linearLiveTree_beta_live h (linearLiveTree_of_one_live B (by omega))
        have hb' : live B' = 0 := by omega
        have hl' : live (.app (.lam B') A) ≤ 3 := by
          simp only [live, hb', ha2]
          split <;> omega
        have hw := zero_live_beta_shrinks h hb0
        have hwhole : wire (.app (.lam B') A) < n := by
          simp only [wire_app, wire_lam] at he ⊢; omega
        obtain ⟨E',ht,hi,hw',hl'',hn⟩ := ih _ hwhole hE' hl' rfl
        exact ⟨E', .head hp ht, hi, by omega, hl'',hn⟩

#print axioms linearLiveTree_beta_progress
#print axioms three_live_root_resources
#print axioms three_live_root_normal
#print axioms three_live_normal_reduction
end Blc.SelfintRound7SourceShape
