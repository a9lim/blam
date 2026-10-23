/-
Source pricing beyond the previous kernel floor.

An open abstraction needs an index bit. A term with at most one live
binder and a closed abstraction subterm is internally separated at every
local depth. Consequently a live closed two-live-binder term with a capture
has at most `indexSum + 1` abstractions.

These symbolic facts exclude the only new count triple at 27 bits. No term
enumeration or new fixed reduction battery is used.
-/
import Blc.SelfintRound6BoundLiteral
import Blc.SelfintFloorApp
import Blc.SelfintProjections

namespace Blc.SelfintRound6BoundGlobal
open Term SelfintLowerBound SelfintCapture SelfintNonlinearChain
open SelfintFloor SelfintWireCost SelfintRound6BoundLiteral

theorem zero_live_freeLeaves (t : Term) (h : live t = 0) :
    freeLeaves 0 t = leafCount t := by
  induction t with
  | var n => simp [freeLeaves, leafCount]
  | app f a ihf iha =>
      have hf : live f = 0 := by change live f + live a = 0 at h; omega
      have ha : live a = 0 := by change live f + live a = 0 at h; omega
      simp only [freeLeaves, leafCount, ihf hf, iha ha]
  | lam b ih =>
      have hb : live b = 0 := by simp only [live] at h; omega
      have ho : occ 0 b = 0 := by
        by_cases hp : 0 < occ 0 b
        · simp only [live, if_pos hp] at h; omega
        · omega
      have hs := freeLeaves_split b 0
      rw [ih hb, ho] at hs
      simpa only [freeLeaves, leafCount, Nat.zero_add] using hs.symm

/-- Every closed lambda term owns at least one live binder. -/
theorem closed_live_pos (t : Term) (ht : Closed t) : 1 ≤ live t := by
  by_cases hz : live t = 0
  · have hf := zero_live_freeLeaves t hz
    rw [freeLeaves_closed t 0 ht] at hf
    have hp := leafCount_pos t
    omega
  · omega

def ClosedSubLam : Term → Prop
  | .var _ => False
  | .lam b => Closed (.lam b) ∨ ClosedSubLam b
  | .app f a => ClosedSubLam f ∨ ClosedSubLam a

theorem closedSubLam_live_pos (t : Term) (h : ClosedSubLam t) : 1 ≤ live t := by
  induction t with
  | var n => exact h.elim
  | lam b ih =>
      rcases h with hc | hb
      · exact closed_live_pos _ hc
      · have hh := ih hb
        simp only [live]
        omega
  | app f a ihf iha =>
      rcases h with hf | ha
      · have hh := ihf hf; simp only [live]; omega
      · have hh := iha ha; simp only [live]; omega

theorem zero_live_separated (t : Term) (d : Nat) (h : live t = 0) :
    Separated d t := by
  induction t generalizing d with
  | var n => trivial
  | app f a ihf iha =>
      have hf : live f = 0 := by change live f + live a = 0 at h; omega
      have ha : live a = 0 := by change live f + live a = 0 at h; omega
      exact ⟨ihf d hf, iha d ha⟩
  | lam b ih =>
      have hb : live b = 0 := by simp only [live] at h; omega
      refine ⟨ih (d + 1) hb, ?_⟩
      intro hp _ _
      simp only [live, if_pos hp] at h
      omega

theorem closed_separated_all (t : Term) (hc : Closed t) (hs : Separated 0 t)
    (d : Nat) : Separated d t := by
  induction d with
  | zero => exact hs
  | succ d ih =>
      have h := separated_shift t d 0 (by omega) ih
      rw [shift_closed 1 0 hc] at h
      exact h

/-- A closed abstraction already owns the only available live binder.
There can be no live capturing abstraction elsewhere or around it. -/
theorem closedSubLam_one_live_separated (t : Term) (d : Nat)
    (hc : ClosedSubLam t) (hl : live t ≤ 1) : Separated d t := by
  induction t generalizing d with
  | var n => exact hc.elim
  | app f a ihf iha =>
      rcases hc with hf | ha
      · have hp := closedSubLam_live_pos f hf
        have hlf : live f ≤ 1 := by change live f + live a ≤ 1 at hl; omega
        have hla : live a = 0 := by change live f + live a ≤ 1 at hl; omega
        exact ⟨ihf d hf hlf, zero_live_separated a d hla⟩
      · have hp := closedSubLam_live_pos a ha
        have hlf : live f = 0 := by change live f + live a ≤ 1 at hl; omega
        have hla : live a ≤ 1 := by change live f + live a ≤ 1 at hl; omega
        exact ⟨zero_live_separated f d hlf, iha d ha hla⟩
  | lam b ih =>
      rcases hc with hc | hb
      · exact closed_separated_all _ hc (SelfintWiden.one_live_separated _ hl) d
      · have hp := closedSubLam_live_pos b hb
        have hbl : live b ≤ 1 := by simp only [live] at hl; omega
        refine ⟨ih (d + 1) hb hbl, ?_⟩
        intro ho _ _
        simp only [live, if_pos ho] at hl
        omega

/-- Residual index charge of globals after traversing d binders. -/
def freeIndex : Nat → Term → Nat
  | d, .var n => n - d
  | d, .lam b => freeIndex (d + 1) b
  | d, .app f a => freeIndex d f + freeIndex d a

theorem freeIndex_split (t : Term) (d : Nat) :
    freeIndex d t = freeIndex (d + 1) t + freeLeaves (d + 1) t := by
  induction t generalizing d with
  | var n => simp only [freeIndex, freeLeaves]; split <;> omega
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha =>
      have hf := ihf d
      have ha := iha d
      simp only [freeIndex, freeLeaves]
      omega

/-- If every abstraction is open, each costs at least one index bit.
The remaining global-index charge is retained so induction is additive. -/
theorem no_closedSubLam_index_bound (t : Term) (h : ¬ ClosedSubLam t) :
    lamCount t + freeIndex 0 t ≤ indexSum t := by
  induction t with
  | var n => simp [lamCount, freeIndex, indexSum]
  | app f a ihf iha =>
      have hf := ihf (fun hh => h (Or.inl hh))
      have ha := iha (fun hh => h (Or.inr hh))
      simp only [lamCount, freeIndex, indexSum]
      omega
  | lam b ih =>
      have hb := ih (fun hh => h (Or.inr hh))
      have hf : 1 ≤ freeLeaves 1 b := by
        by_cases hz : freeLeaves 1 b = 0
        · exact (h (Or.inl (SelfintProjections.freeLeaves_zero_closed b 1 hz))).elim
        · omega
      have hs := freeIndex_split b 0
      simp only [lamCount, freeIndex, indexSum, Nat.zero_add]
      simp only [Nat.zero_add] at hs
      omega

theorem zero_live_zero_index_lamfree (t : Term) (hl : live t = 0)
    (hx : indexSum t = 0) : lamCount t = 0 := by
  have hn : ¬ ClosedSubLam t := by
    intro hc
    have h := closedSubLam_live_pos t hc
    omega
  have hh := no_closedSubLam_index_bound t hn
  omega

/-- With only two live binders and an internal capture, a live root cannot
hide closed abstraction subterms. All internal lambdas therefore cost an
index bit. This prices the source rather than a reduction trace. -/
theorem live_root_capture_index_bound (b : Term) (hl : live (.lam b) ≤ 2)
    (hr : 0 < occ 0 b) (hc : ¬ Separated 0 (.lam b)) :
    lamCount (.lam b) ≤ indexSum (.lam b) + 1 := by
  have hbl : live b ≤ 1 := by simp only [live, if_pos hr] at hl; omega
  have hn : ¬ ClosedSubLam b := by
    intro hh
    exact hc ⟨closedSubLam_one_live_separated b 1 hh hbl, by intro _ i hi; omega⟩
  have hh := no_closedSubLam_index_bound b hn
  simp only [lamCount, indexSum]
  omega

/-- A body with at most one lambda and one available global has at most
one index bit per leaf, and each live binder saves one of those bits. -/
theorem one_lam_index_bound (t : Term) (hl : lamCount t ≤ 1) (hf : FreeUnder 1 t) :
    indexSum t + live t ≤ leafCount t := by
  induction t with
  | var n => have : n < 1 := hf; simp only [indexSum, live, leafCount]; omega
  | app f a ihf iha =>
      have hlf : lamCount f ≤ 1 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      have hla : lamCount a ≤ 1 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      have hhf := ihf hlf hf.1
      have hha := iha hla hf.2
      simp only [indexSum, live, leafCount]
      omega
  | lam b ih =>
      have hb : lamCount b = 0 := by simp only [lamCount] at hl; omega
      have hx := lamfree_indexSum_eq_occ1 b hb hf
      have hv := lamfree_leafCount_eq b hb hf
      simp only [indexSum, live, leafCount, lamfree_live b hb]
      split <;> omega

theorem closed_two_lam_index_bound (t : Term) (hc : Closed t)
    (hl : lamCount t = 2) (hv : live t = 2) : indexSum t + 1 ≤ leafCount t := by
  cases t with
  | var n => exact (Nat.not_lt_zero n hc).elim
  | app f a =>
      have hf := closed_lamCount_pos f hc.1
      have ha := closed_lamCount_pos a hc.2
      simp only [lamCount] at hl
      obtain ⟨b, rfl, hb⟩ := closed_lam_one f hc.1 (by omega)
      obtain ⟨c, rfl, hcc⟩ := closed_lam_one a hc.2 (by omega)
      have hxb := lamfree_indexSum b hb hc.1
      have hxc := lamfree_indexSum c hcc hc.2
      have hp := leafCount_pos (.app (.lam b) (.lam c))
      simp only [indexSum, hxb, hxc]
      exact hp
  | lam b =>
      have hb : lamCount b ≤ 1 := by simp only [lamCount] at hl; omega
      have hbl := live_le_lamCount b
      have hbl' : live b = 1 := by simp only [live] at hv; split at hv <;> omega
      have hh := one_lam_index_bound b hb hc
      simp only [indexSum, leafCount]
      omega

/-- The previous 27-bit floor plus source pricing excludes equality.
The only new count triple has four lambdas, five leaves and one index bit. -/
theorem minimal_bound_28 {E : Term} (hm : MinimalInterpreter E) : 28 ≤ wire E := by
  have hE := hm.1
  apply Classical.byContradiction
  intro hbad
  have hold := selfintSizeBound_27 E hE
  change 27 ≤ wire E at hold
  have heq : wire E = 27 := by omega
  have hnl := selfInterpreter_two_nonlinear hE
  have hli := selfInterpreter_three_live hE
  have hll := live_le_lamCount E
  have hle := leaves_bound E
  have hx := selfinterpreter_indexSum_pos E hE
  have hw := wire_identity E
  have hv5 : leafCount E = 5 := by omega
  have hl3 : live E = 3 := by omega
  have hn2 : nonlinear E = 2 := by omega
  have hL4 : lamCount E ≤ 4 := by omega
  cases E with
  | var n => exact (Nat.not_lt_zero n hE.1).elim
  | lam b =>
      have hh := one_lambda_interface_bound_31 hE
      change 31 ≤ wire (.lam b) at hh
      omega
  | app f a =>
      have hc : Closed (.app f a) := hE.1
      cases f with
      | var n => exact (Nat.not_lt_zero n hc.1).elim
      | app g x =>
          have hg := closed_live_pos g hc.1.1
          have hx' := closed_live_pos x hc.1.2
          have ha := closed_live_pos a hc.2
          have hgs : live g ≤ 1 := by simp only [live] at hl3; omega
          have hxs : live x ≤ 1 := by simp only [live] at hl3; omega
          have has : live a ≤ 1 := by simp only [live] at hl3; omega
          exact selfinterpreter_not_separated _ hE
            ⟨⟨SelfintWiden.one_live_separated g hgs,
                SelfintWiden.one_live_separated x hxs⟩,
              SelfintWiden.one_live_separated a has⟩
      | lam b =>
          have hk := minimal_head_nonlinear hm hc.2
          have hkpos : 0 < occ 0 b := by omega
          have hla := closed_live_pos a hc.2
          have hbal : live b + live a = 2 := by
            simp only [live, if_pos hkpos] at hl3
            omega
          have hia := descend_interpreter hE
          have ha2 : live a = 2 := by
            apply Classical.byContradiction
            intro hn
            have has : live a ≤ 1 := by omega
            have hbs : live b ≤ 1 := by omega
            exact selfinterpreter_not_separated _ hia
              (SelfintWiden.separated_global_subst b a 0
                (SelfintWiden.one_live_separated b hbs)
                (SelfintWiden.one_live_separated a has))
          have hb0 : live b = 0 := by omega
          have hbn : nonlinear b = 0 := by have hh := nonlinear_le_live b; omega
          have han : nonlinear a = 1 := by
            simp only [nonlinear, hbn, if_pos (show 1 < occ 0 b by omega)] at hn2
            omega
          have hav := leaves_bound a
          have hbo := occ_le_leafCount b 0
          have hav3 : leafCount a = 3 := by simp only [leafCount] at hv5; omega
          have hbv2 : leafCount b = 2 := by simp only [leafCount] at hv5; omega
          have hcap : ¬ Separated 0 a := by
            intro hs
            exact selfinterpreter_not_separated _ hia
              (SelfintWiden.separated_global_subst b a 0
                (zero_live_separated b 0 hb0) hs)
          have hax : 1 ≤ indexSum a := by
            by_cases hz : indexSum a = 0
            · exact (hcap (zeroIndices_separated a (zeroIndices_of_indexSum_zero a hz) 0)).elim
            · omega
          have hal := live_le_lamCount a
          by_cases hL3 : lamCount (.app (.lam b) a) = 3
          · have hbl0 : lamCount b = 0 := by simp only [lamCount] at hL3; omega
            have hal2 : lamCount a = 2 := by simp only [lamCount] at hL3; omega
            have hbx0 := lamfree_indexSum b hbl0 hc.1
            have hax2 := closed_two_lam_index_bound a hc.2 hal2 ha2
            simp only [indexSum, hbx0, Nat.zero_add] at hw
            omega
          · have hL4' : lamCount (.app (.lam b) a) = 4 := by
              have hll' := live_le_lamCount (.app (.lam b) a)
              omega
            have hx1 : indexSum (.app (.lam b) a) = 1 := by omega
            have hbx0 : indexSum b = 0 := by simp only [indexSum] at hx1; omega
            have hbl0 := zero_live_zero_index_lamfree b hb0 hbx0
            have hal3 : lamCount a = 3 := by simp only [lamCount] at hL4'; omega
            have hax1 : indexSum a ≤ 1 := by simp only [indexSum] at hx1; omega
            obtain ⟨n, m, rfl⟩ := lamfree_leaf2 b hbl0 hbv2
            have hn : n = 0 := by have hh : n < 1 := hc.1.1; omega
            have hM : m = 0 := by have hh : m < 1 := hc.1.2; omega
            subst n m
            have hAA : IsSelfInterpreter (.app a a) := by
              simpa only [contract_self] using hia
            cases a with
            | var n => exact (Nat.not_lt_zero n hc.2).elim
            | app p q =>
                have hp := closed_live_pos p hc.2.1
                have hq := closed_live_pos q hc.2.2
                have hps : live p ≤ 1 := by simp only [live] at ha2; omega
                have hqs : live q ≤ 1 := by simp only [live] at ha2; omega
                exact hcap ⟨SelfintWiden.one_live_separated p hps,
                  SelfintWiden.one_live_separated q hqs⟩
            | lam d =>
                have hd0 : occ 0 d = 0 := by
                  apply Classical.byContradiction
                  intro hn
                  have hh := live_root_capture_index_bound d (by omega) (by omega) hcap
                  omega
                have hout := descend_interpreter hAA
                have hmin := hm.2 _ hout
                have hcost := wire_subst d (.lam d) 0
                simp only [hd0, occDepth_zero hd0, Nat.zero_add, Nat.zero_mul,
                  Nat.mul_zero, Nat.add_zero] at hcost
                have haWire : wire (.app (.lam (.app (.var 0) (.var 0))) (.lam d)) =
                    wire d + 12 := by simp; omega
                rw [haWire] at hmin
                change wire (substDec 0 (.lam d) d) + freeLeaves 1 d = wire d at hcost
                change wire d + 12 ≤ wire (substDec 0 (.lam d) d) at hmin
                omega

/-- Unconditional kernel-checked floor, without Statman or new enumeration. -/
theorem selfintSizeBound_28 : SelfintSizeBound 28 := by
  have key : ∀ n, ∀ E : Term, IsSelfInterpreter E → wire E = n → 28 ≤ n := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
        intro E hE hn
        by_cases hm : ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'
        · have hh := minimal_bound_28 ⟨hE, hm⟩
          omega
        · have he : ∃ E', IsSelfInterpreter E' ∧ wire E' < wire E := by
            classical
            apply Classical.byContradiction
            intro hno
            apply hm
            intro E' hE'
            apply Classical.byContradiction
            intro hbad
            exact hno ⟨E', hE', by omega⟩
          obtain ⟨E', hE', hh⟩ := he
          have hh' := ih (wire E') (by omega) E' hE' rfl
          omega
  intro E hE
  exact key _ E hE rfl

#print axioms live_root_capture_index_bound
#print axioms selfintSizeBound_28
end Blc.SelfintRound6BoundGlobal
