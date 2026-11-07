/-
Chead lane: NEXT bounds for the two payload modes of a continuation-headed
interpreter, by the same pruning/merge argument as SelfintClassNext.next_price,
generalized over the pair of rigid branch targets.  Frame: c = var 0 (unused by
the targets), p = var 1, the fresh stream t = var 2.
-/
import Blc.SelfintClass

namespace Blc.Chead
open Term SelfintLowerBound SelfintWireCost SelfintFloor SelfintClass SelfintClassNext

def tgt (tz to : Term) (first : Bool) : Term := if first then tz else to

structure Targets (tz to : Term) : Prop where
  nf : ∀ first, NFt (tgt tz to first)
  scope : ∀ first, FreeUnder 2 (tgt tz to first)
  nonlam : ∀ first, ¬ IsLam (tgt tz to first)
  notK : ∀ g, tz ≠ .app g churchTrue

structure ModeNext (tz to Q : Term) : Prop where
  scope : FreeUnder 2 Q
  normal : NormalForm Q
  twoArm : ∀ b, Q = .lam b → TwoArmUse 0 0 b
  law : ∀ first, BetaJoin (.app (.app Q (tagValue first)) (.var 2)) (.app (tgt tz to first) (.var 2))

theorem ModeNext.lambda {tz to Q : Term} (ht : Targets tz to) (h : ModeNext tz to Q) :
    ∃ b, Q = .lam b := by
  have hn := normal_nft h.normal
  have htn : NormalForm (.app (tgt tz to true) (.var 2)) :=
    nft_normal ⟨ht.nonlam true, ht.nf true, trivial⟩
  have hr := join_normal (h.law true) htn
  cases Q with
  | lam b => exact ⟨b, rfl⟩
  | var n =>
    have hh : NFt (.app (.app (.var n) churchTrue) (.var 2)) :=
      ⟨fun h => h, ⟨fun h => h, hn, by decide⟩, trivial⟩
    have he := normalForm_betas_eq (nft_normal hh) hr
    have h1 := (Term.app.inj he).1
    simp only [tgt, if_true] at h1
    exact (ht.notK (.var n) h1).elim
  | app f a =>
    have hh : NFt (.app (.app (.app f a) churchTrue) (.var 2)) :=
      ⟨fun h => h, ⟨fun h => h, hn, by decide⟩, trivial⟩
    have he := normalForm_betas_eq (nft_normal hh) hr
    have h1 := (Term.app.inj he).1
    simp only [tgt, if_true] at h1
    exact (ht.notK (.app f a) h1).elim

theorem ModeNext.pruned_forms {tz to Q : Term} (ht : Targets tz to) (h : ModeNext tz to Q)
    {b : Term} (he : Q = .lam b) (first : Bool) :
    ∃ e, prune first 0 b = shift 1 0 (etaChoice e (tgt tz to first)) := by
  subst Q
  have hb : Tagged false 0 b :=
    (tagged_of_twoArm b 0 0 (normal_nft (t := .lam b) h.normal) (h.twoArm b rfl)).1 rfl
  let w := substDec 0 churchTrue (prune first 0 b)
  have hw : NFt w := nft_subst_absent _ 0 churchTrue (prune_normal first hb).1 (prune_tag_absent first hb)
  have hr : Betas (.app (.lam b) (tagValue first)) w :=
    .head (.beta b (tagValue first)) (prune_beta first hb)
  have hws : FreeUnder 2 w := SelfintClassNext.betas_scope hr 2 ⟨h.scope, by cases first <;> decide⟩
  have htn := nft_normal (show NFt (.app (tgt tz to first) (.var 2)) from
    ⟨ht.nonlam first, ht.nf first, trivial⟩)
  have hl : Betas (.app w (.var 2)) (.app (tgt tz to first) (.var 2)) :=
    betas_preserve_nf (betas_appL (.var 2) hr) (join_normal (h.law first) htn) htn
  have hp := normal_applied_fresh hw hws (ht.nf first) (ht.nonlam first) (ht.scope first) ⟨_, hl, .refl _⟩
  have hi : shift 1 0 w = prune first 0 b := shift_subst_absent _ 0 churchTrue (prune_tag_absent first hb)
  rcases hp with hp | hp
  · exact ⟨false, hi.symm.trans (congrArg (shift 1 0) hp)⟩
  · exact ⟨true, hi.symm.trans (congrArg (shift 1 0) hp)⟩

theorem mode_price {tz to Q : Term} {B F : Nat} (ht : Targets tz to)
    (hB : ∀ e0 e1 : Bool, B ≤ (merged true 0 (shift 1 0 (etaChoice e0 tz)) (shift 1 0 (etaChoice e1 to))).1)
    (hF : ∀ e0 e1 : Bool, F ≤ (merged false 0 (shift 1 0 (etaChoice e0 tz)) (shift 1 0 (etaChoice e1 to))).1)
    (h : ModeNext tz to Q) : B + 2 ≤ wire Q ∧ F ≤ freeLeaves 0 Q := by
  obtain ⟨b, he⟩ := h.lambda ht
  subst Q
  have hb : Tagged false 0 b :=
    (tagged_of_twoArm b 0 0 (normal_nft (t := .lam b) h.normal) (h.twoArm b rfl)).1 rfl
  obtain ⟨e0, h0⟩ := h.pruned_forms ht rfl true
  obtain ⟨e1, h1⟩ := h.pruned_forms ht rfl false
  have hbits := merged_lower true hb
  have hcaps := merged_lower false hb
  simp only [Bool.false_eq_true, ↓reduceIte, h0, h1, tgt] at hbits hcaps
  refine ⟨?_, ?_⟩
  · have hw : B ≤ wire b := Nat.le_trans (hB e0 e1) hbits
    simp only [wire_lam]; omega
  · exact Nat.le_trans (hF e0 e1) hcaps

/-! The two payload modes. -/
def valZero : Term := .app (.var 1) (.lam (.lam (shift 1 0 absVt)))
def valOne  : Term := .app (.var 1) (.lam (.app (.var 2) (.lam (.lam (shift 1 0 appVt)))))
def restZero : Term := .app (.var 1) (.lam (.lam (.var 0)))
def restOne  : Term := .app (.var 1) (.lam (.app (.var 2) (.lam (.lam (.var 0)))))

theorem val_targets : Targets valZero valOne :=
  ⟨by intro first; cases first <;> decide, by intro first; cases first <;> decide,
   by intro first; cases first <;> decide, by intro g hg; cases hg⟩

theorem rest_targets : Targets restZero restOne :=
  ⟨by intro first; cases first <;> decide, by intro first; cases first <;> decide,
   by intro first; cases first <;> decide, by intro g hg; cases hg⟩

/-- Value-mode NEXT: at least 86 bits and two free c/p leaves. -/
theorem value_next_bound {Q : Term} (h : ModeNext valZero valOne Q) :
    86 ≤ wire Q ∧ 2 ≤ freeLeaves 0 Q :=
  mode_price (B := 84) (F := 2) val_targets
    (by intro e0 e1; cases e0 <;> cases e1 <;> decide)
    (by intro e0 e1; cases e0 <;> cases e1 <;> decide) h

/-- Rest-mode NEXT: at least 34 bits and two free c/p leaves. -/
theorem rest_next_bound {Q : Term} (h : ModeNext restZero restOne Q) :
    34 ≤ wire Q ∧ 2 ≤ freeLeaves 0 Q :=
  mode_price (B := 32) (F := 2) rest_targets
    (by intro e0 e1; cases e0 <;> cases e1 <;> decide)
    (by intro e0 e1; cases e0 <;> cases e1 <;> decide) h

#print axioms value_next_bound
#print axioms rest_next_bound

/-! Sharpness: the canonical NEXT of each mode satisfies the laws and attains the bound. -/
def valNext : Term := .lam (.app (.var 2) (.lam (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))))))
theorem valNext_eq : valNext = .lam (.app (.var 2) (.lam (.app (.app (.var 1) (.lam (shift 1 0 absVt)))
  (.app (.var 3) (.lam (.lam (shift 1 0 appVt))))))) := by decide
def restNext : Term := .lam (.app (.var 2) (.lam (.app (.app (.var 1) (.lam (.var 0)))
  (.app (.var 3) (.lam (.lam (.var 0)))))))

def bodyOf : Term → Term | .lam b => b | _ => .var 0

theorem modeNext_of {tz to Q : Term} (hs : FreeUnder 2 Q) (hn : NFt Q) (hl : Q = .lam (bodyOf Q))
    (ht2 : TwoArmUse 0 0 (bodyOf Q))
    (hz : substDec 0 churchTrue (prune true 0 (bodyOf Q)) = tz)
    (ho : substDec 0 churchTrue (prune false 0 (bodyOf Q)) = to) : ModeNext tz to Q := by
  refine ⟨hs, fun _ hb => nft_no_beta hn hb, ?_, ?_⟩
  · intro b he; rw [hl] at he; rw [← Term.lam.inj he]; exact ht2
  · intro first
    have hb : Tagged false 0 (bodyOf Q) := (tagged_of_twoArm (bodyOf Q) 0 0 (by
      have := hn; rw [hl] at this; exact this) ht2).1 rfl
    have hr : Betas (.app (.lam (bodyOf Q)) (tagValue first))
        (substDec 0 churchTrue (prune first 0 (bodyOf Q))) :=
      .head (.beta (bodyOf Q) (tagValue first)) (prune_beta first hb)
    rw [← hl] at hr
    cases first
    · rw [ho] at hr; exact ⟨_, betas_appL (.var 2) hr, .refl _⟩
    · rw [hz] at hr; exact ⟨_, betas_appL (.var 2) hr, .refl _⟩

theorem valNext_sharp : ModeNext valZero valOne valNext ∧ wire valNext = 86 ∧ freeLeaves 0 valNext = 2 :=
  ⟨modeNext_of (by decide) (by decide) rfl (by simp only [bodyOf, valNext, TwoArmUse]; decide)
    (by decide) (by decide), by decide, by decide⟩

theorem restNext_sharp : ModeNext restZero restOne restNext ∧ wire restNext = 34 ∧ freeLeaves 0 restNext = 2 :=
  ⟨modeNext_of (by decide) (by decide) rfl (by simp only [bodyOf, restNext, TwoArmUse]; decide)
    (by decide) (by decide), by decide, by decide⟩

#print axioms valNext_sharp
#print axioms restNext_sharp
/-! The continuation-headed split class.  Payload readers live in the frame
    [s = 0, c = 1, j = 2] with exactly one hole j; each NEXT lives in the frame
    [c = 0, p = 1] and is inserted hygienically at its hole. The generator is
    λp c s. c A B. -/
def payload (R Q : Term) : Term := substDec 2 (shift 1 0 Q) R
def cfunctional (RA QA RB QB : Term) : Term :=
  .lam (.lam (.lam (.app (.app (.var 1) (payload RA QA)) (payload RB QB))))
def cassemble (T RA QA RB QB : Term) : Term := substDec 0 (cfunctional RA QA RB QB) T

theorem payload_wire {R Q : Term} (hR : FreeUnder 3 R) (hj : occ 2 R = 1) :
    wire (payload R Q) = holeCost 2 R + wire Q + freeLeaves 0 Q + freeLeaves 0 Q * occDepth 2 R := by
  have hs := wire_hole_subst R (shift 1 0 Q) 2
  have hz := freeLeaves_closed R 3 hR
  have hw := wire_shift Q 1 0
  have hf := freeLeaves_shift Q 1 0 0 (Nat.le_refl 0)
  simp only [hj, Nat.one_mul, hz, Nat.add_zero, hf] at hs hw
  simp only [payload]
  omega

theorem payload_scope {R Q : Term} (hR : FreeUnder 3 R) (hQ : FreeUnder 2 Q) :
    FreeUnder 3 (payload R Q) :=
  SelfintClass.subst_scope R (shift 1 0 Q) 2 3 (by omega) (freeUnder_mono (by omega : 3 ≤ 4) hR)
    (SelfintClass.shift_scope Q 1 0 2 hQ)

theorem cfunctional_closed {RA QA RB QB : Term} (hRA : FreeUnder 3 RA) (hRB : FreeUnder 3 RB)
    (hQA : FreeUnder 2 QA) (hQB : FreeUnder 2 QB) : Closed (cfunctional RA QA RB QB) :=
  ⟨⟨by decide, payload_scope hRA hQA⟩, payload_scope hRB hQB⟩

/-- Every member of the split class costs at least 157 bits plus its two
    readers' hole costs plus the depth charges of the two NEXTs. -/
theorem cassembly_lower {T RA QA RB QB : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hRA : FreeUnder 3 RA) (hjA : occ 2 RA = 1) (hRB : FreeUnder 3 RB) (hjB : occ 2 RB = 1)
    (hQA : ModeNext valZero valOne QA) (hQB : ModeNext restZero restOne QB) :
    157 + holeCost 2 RA + holeCost 2 RB + 2 * occDepth 2 RA + 2 * occDepth 2 RB
      ≤ wire (cassemble T RA QA RB QB) := by
  have he := knot_fill_wire hT (cfunctional_closed hRA hRB hQA.scope hQB.scope)
  have hg := SelfintKnot.opaque_knot_twenty hfix
  have hk := SelfintKnot.fixedpoint_has_hole hfix
  have hm := Nat.mul_le_mul_right (wire (cfunctional RA QA RB QB)) hk
  have ha := payload_wire (Q := QA) hRA hjA
  have hb := payload_wire (Q := QB) hRB hjB
  obtain ⟨va, fa⟩ := value_next_bound hQA
  obtain ⟨vb, fb⟩ := rest_next_bound hQB
  have hda := Nat.mul_le_mul_right (occDepth 2 RA) fa
  have hdb := Nat.mul_le_mul_right (occDepth 2 RB) fb
  have hc : wire (cfunctional RA QA RB QB) = 13 + wire (payload RA QA) + wire (payload RB QB) := by
    simp only [cfunctional, wire_lam, wire_app, wire_var]; omega
  simp only [Nat.one_mul] at hm
  change _ ≤ wire (substDec 0 (cfunctional RA QA RB QB) T)
  omega

theorem holeCost_two {j : Nat} {t : Term} (h : t ≠ .var j) : 2 ≤ holeCost j t := by
  cases t with
  | var n => simp only [holeCost]; split <;> simp_all
  | lam b => simp only [holeCost]; omega
  | app f a => simp only [holeCost]; omega

/-- A one-hole application costs at least 4 bits with the hole priced at zero. -/
theorem holeCost_app_four {j : Nat} {f a : Term} (hj : occ j (.app f a) = 1) :
    4 ≤ holeCost j (.app f a) := by
  simp only [holeCost]
  by_cases hf : f = .var j
  · subst hf
    have ha : a ≠ .var j := by
      intro h; subst h; simp [occ] at hj
    have := holeCost_two ha; omega
  · have := holeCost_two hf; omega

/-- The split-class bound: application readers give at least 165 bits. -/
theorem split_class_165 {T fA aA fB aB QA QB : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hRA : FreeUnder 3 (.app fA aA)) (hjA : occ 2 (.app fA aA) = 1)
    (hRB : FreeUnder 3 (.app fB aB)) (hjB : occ 2 (.app fB aB) = 1)
    (hQA : ModeNext valZero valOne QA) (hQB : ModeNext restZero restOne QB) :
    165 + 2 * occDepth 2 (.app fA aA) + 2 * occDepth 2 (.app fB aB)
      ≤ wire (cassemble T (.app fA aA) QA (.app fB aB) QB) := by
  have h := cassembly_lower hT hfix hRA hjA hRB hjB hQA hQB
  have h1 := holeCost_app_four hjA
  have h2 := holeCost_app_four hjB
  omega

#print axioms cassembly_lower
#print axioms split_class_165
/-! spec200 (the lane's c-headed construction) is literally a split-class member. -/
def readerA : Term := .app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 2)
def readerB : Term := .app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2)
def spec200 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 3) (.lam (.app (.app (.var 1) (.lam (.lam (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 4) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))))))))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 4) (.lam (.lam (.var 0))))))))))))) (.app (.var 0) (.var 0)))))
set_option maxRecDepth 20000 in
theorem spec200_member : cassemble SelfintKnot.knot readerA valNext readerB restNext = spec200 ∧
    wire spec200 = 200 := by decide
#print axioms spec200_member
end Blc.Chead
