/-
The selector/unary helper template. For an arbitrary helper A, neither
λs. ((λg. s (g F) (g s)) A) j nor (λg s. s (g F) (g s) j) A is a reader with one
source j below weight 46 (`local_pair_floor`, `root_pair_floor`). The known
capturing helper λx u. x C_1 (x x u) makes both placements beta-reduce to the
162's reader (`capturing_local_normal`, `capturing_root_normal`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintLetSink
namespace Blc.SelfintHelperPair
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist
open SelfintFlatMinimum SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem wire_min (t : Term) : 2 ≤ wire t := by
  cases t <;> simp only [wire_var,wire_lam,wire_app] <;> omega

theorem capture_price (t : Term) (j : Nat) (h : 0 < occ j t) : j+2 ≤ wire t := by
  induction t generalizing j with
  | var n => simp only [occ] at h; split at h <;> simp_all
  | lam b ih =>
    have hb := ih (j+1) h
    simp only [wire_lam]; omega
  | app f a ihf iha =>
    simp only [occ] at h
    by_cases hf : 0 < occ j f
    · have hh := ihf j hf; simp only [wire_app]; omega
    · have ha : 0 < occ j a := by omega
      have hh := iha j ha; simp only [wire_app]; omega

theorem cheap_capture (t : Term) (j : Nat) (h : 0 < occ j t)
    (hw : wire t < j+5) : t = .var j := by
  cases t with
  | var n => simp only [occ] at h; split at h <;> simp_all
  | lam b =>
    have hh := capture_price b (j+1) h
    simp only [wire_lam] at hw; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [occ] at h
    simp only [wire_app] at hw
    by_cases hp : 0 < occ j f
    · have hh := capture_price f j hp; omega
    · have hp' : 0 < occ j a := by omega
      have hh := capture_price a j hp'; omega

theorem cheap_capture_lam (t : Term) (j : Nat) (h : 0 < occ j t)
    (hw : wire t ≤ j+5) : t = .var j ∨ t = .lam (.var (j+1)) := by
  cases t with
  | var n =>
    left
    simp only [occ] at h; split at h <;> simp_all
  | lam b =>
    right
    have hb := cheap_capture b (j+1) h (by simp only [wire_lam] at hw; omega)
    rw [hb]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [occ] at h
    simp only [wire_app] at hw
    by_cases hp : 0 < occ j f
    · have hh := capture_price f j hp; omega
    · have hp' : 0 < occ j a := by omega
      have hh := capture_price a j hp'; omega

theorem wire_two (t : Term) (hw : wire t ≤ 2) : t = .var 0 := by
  cases t with
  | var n =>
    simp only [wire_var] at hw
    have hn : n=0 := by omega
    rw [hn]
  | lam b => have hh := wire_min b; simp only [wire_lam] at hw; omega
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

theorem tiny_nohole (t : Term) (hw : wire t ≤ 4) (hj : occ 2 t = 0) :
    t = .var 0 ∨ t = .var 1 ∨ t = .lam (.var 0) := by
  cases t with
  | var n =>
    simp only [wire_var] at hw
    simp only [occ] at hj
    have hn : n=0 ∨ n=1 := by split at hj <;> omega
    rcases hn with rfl | rfl <;> simp
  | lam b =>
    have hb := wire_two b (by simp only [wire_lam] at hw; omega)
    rw [hb]; simp
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

def smallC : List Term :=
  [.var 1, .lam (.var 2), .lam (.lam (.var 3)),
   .app (.var 1) (.var 0), .app (.var 1) (.var 1),
   .app (.var 1) (.lam (.var 0)), .app (.var 0) (.var 1),
   .app (.lam (.var 0)) (.var 1)]

/-- Every c-containing, j-free source argument of at most nine bits in
    [s,c,j]. Redexes are included: I c is one of the eight cases. -/
theorem nine_bit_capture (a : Term) (hw : wire a ≤ 9)
    (hc : 0 < occ 1 a) (hj : occ 2 a = 0) : a ∈ smallC := by
  cases a with
  | var n =>
    have hn : n=1 := by simp only [occ] at hc; split at hc <;> omega
    rw [hn]; simp [smallC]
  | lam b =>
    have hh := cheap_capture_lam b 2 hc (by simp only [wire_lam] at hw; omega)
    rcases hh with rfl | rfl <;> simp [smallC]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw
    simp only [occ] at hc hj
    by_cases hfc : 0 < occ 1 f
    · have he := cheap_capture f 1 hfc (by omega)
      subst f
      simp only [wire_var] at hw
      have hs := tiny_nohole a (by omega) (by omega)
      rcases hs with rfl | rfl | rfl <;> simp [smallC]
    · have hac : 0 < occ 1 a := by omega
      have he := cheap_capture a 1 hac (by omega)
      subst a
      simp only [wire_var] at hw
      have hs := tiny_nohole f (by omega) (by omega)
      rcases hs with rfl | rfl | rfl <;> simp [smallC]

/-- lambda s. ((lambda g. s (g F) (g s)) a) j. -/
def localPair (a : Term) : Term := .lam
  (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) churchFalse))
    (.app (.var 0) (.var 1)))) a) (.var 2))

/-- (lambda g s. s (g F) (g s) j) a. -/
def rootPair (a : Term) : Term := .app
  (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) churchFalse))
    (.app (.var 1) (.var 0))) (.var 3)))) a

theorem local_price (a : Term) (hj : occ 2 a = 0) :
    weight 0 (localPair a) = 36 + wire a := by
  have ha := weight_no_hole a 1 hj
  simp only [localPair,weight,churchFalse,Nat.reduceAdd,Nat.reduceEqDiff,
    ↓reduceIte,ha]
  omega

theorem root_price (a : Term) (hj : occ 1 a = 0) :
    weight 0 (rootPair a) = 40 + wire a := by
  have ha := weight_no_hole a 0 hj
  simp only [rootPair,weight,churchFalse,Nat.reduceAdd,Nat.reduceEqDiff,
    ↓reduceIte,ha]

/-- A bounded trace returns a term only after reaching normal form. A
    fuel failure is never used as an exclusion certificate. -/
def normalizeUntil : Nat → Term → Option Term
  | 0,_ => none
  | n+1,t => match normalStep t with
    | none => some t
    | some u => normalizeUntil n u

theorem normalizeUntil_sound {n : Nat} {t u : Term}
    (h : normalizeUntil n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp [normalizeUntil] at h
  | succ n ih =>
    simp only [normalizeUntil] at h
    cases hh : normalStep t with
    | none => simp only [hh,Option.some.injEq] at h; subst u; exact .refl _
    | some v => simp only [hh] at h; exact .head (normalStep_sound hh) (ih h)

def rejectsZero (r : Term) : Bool := match normalizeUntil 32 (.app r Z) with
  | none => false
  | some t => decide (NFt t) && decide (t ≠ zeroOut)

theorem rejectsZero_sound {r : Term} (h : rejectsZero r = true) : ¬ Reader r := by
  intro hr
  unfold rejectsZero at h
  cases hn : normalizeUntil 32 (.app r Z) with
  | none => simp [hn] at h
  | some t =>
    simp only [hn,Bool.and_eq_true,decide_eq_true_eq] at h
    have he := normalForm_unique (normalizeUntil_sound hn) hr.zero_red
      (SelfintClassNext.nft_normal h.1) zeroOut_normal
    exact h.2 he

/-- Eight pinned zero-branch traces, justified by nine_bit_capture. -/
theorem smallC_reject : smallC.all (fun a => rejectsZero (localPair a)) = true := by decide

theorem local_pair_floor {a : Term} (hr : Reader (localPair a))
    (hj : occ 1 (localPair a) = 1) : 46 ≤ weight 0 (localPair a) := by
  apply Classical.byContradiction
  intro hbad
  have ha : occ 2 a = 0 := by simpa [localPair,occ,churchFalse] using hj
  have hc : 0 < occ 1 a := by
    have hh := reader_c hr
    simp only [localPair,occ,churchFalse,Nat.reduceAdd,Nat.reduceEqDiff,
      ↓reduceIte,Nat.zero_add,Nat.add_zero] at hh
    omega
  have hw : wire a ≤ 9 := by have hp := local_price a ha; omega
  have hm := nine_bit_capture a hw hc ha
  have hh := List.all_eq_true.mp smallC_reject a hm
  exact rejectsZero_sound hh hr

/-- At the root, the same budget leaves only c and lambda x.c. -/
theorem root_pair_floor {a : Term} (hr : Reader (rootPair a))
    (hj : occ 1 (rootPair a) = 1) : 46 ≤ weight 0 (rootPair a) := by
  apply Classical.byContradiction
  intro hbad
  have ha : occ 1 a = 0 := by simpa [rootPair,occ,churchFalse] using hj
  have hc : 0 < occ 0 a := by
    have hh := reader_c hr
    simp only [rootPair,occ,churchFalse,Nat.reduceAdd,Nat.reduceEqDiff,
      ↓reduceIte,Nat.zero_add,Nat.add_zero] at hh
    omega
  have hw : wire a ≤ 5 := by have hp := root_price a ha; omega
  have hm := cheap_capture_lam a 0 hc hw
  rcases hm with rfl | rfl
  · exact rejectsZero_sound (by decide : rejectsZero (rootPair (.var 0)) = true) hr
  · exact rejectsZero_sound (by decide : rejectsZero (rootPair (.lam (.var 1))) = true) hr

/-- c is the source index before the two helper binders. -/
def capturingHelper (c : Nat) : Term := .lam (.lam
  (.app (.app (.var 1) (.lam (.var (c+3))))
    (.app (.app (.var 1) (.var 1)) (.var 0))))

theorem capturing_prices :
    wire (capturingHelper 1) = 31 ∧ wire (capturingHelper 0) = 30 ∧
    weight 0 (localPair (capturingHelper 1)) = 67 ∧
    weight 0 (rootPair (capturingHelper 0)) = 70 := by decide

/-- Source beta equivalence, hence valid at every stream length. -/
theorem capturing_local_normal : Betas (localPair (capturingHelper 1)) reader162 :=
  normalizeUntil_sound (by decide :
    normalizeUntil 64 (localPair (capturingHelper 1)) = some reader162)

theorem capturing_root_normal : Betas (rootPair (capturingHelper 0)) reader162 :=
  normalizeUntil_sound (by decide :
    normalizeUntil 64 (rootPair (capturingHelper 0)) = some reader162)

#print axioms local_pair_floor
#print axioms root_pair_floor
#print axioms capturing_local_normal
#print axioms capturing_root_normal
end Blc.SelfintHelperPair
