/-
Finite ordinary weak-head realization with source-lambda colors retained.
Program lambdas are red; the finite zero prefix and supplied red-free suffix
are blue. This transfers Q source-count growth to actual residual-origin
growth, rather than merely preserving a selected contraction count.
-/
import Blc.SelfintGrowthHead
import Blc.SelfintOrigins
import Blc.SelfintGrowth

namespace Blc.SelfintGrowthColored
open Term SelfintZero SelfintGrowthBlue SelfintGrowthHead SelfintLowerBound QuoteOrigins

/-- Coloring all lambdas blue marks an arbitrary input suffix as nonprogram syntax. -/
def blue : Term → Marked
  | .var n => .var n
  | .lam b => .lam true (blue b)
  | .app f a => .app (blue f) (blue a)

theorem blue_erase (t : Term) : Marked.erase (blue t) = t := by
  induction t with
  | var => rfl
  | lam b ih => exact congrArg Term.lam ih
  | app f a ihf iha => simp only [blue, Marked.erase, ihf, iha]

theorem blue_redCount (t : Term) : Marked.redCount (blue t) = 0 := by
  induction t with
  | var => rfl
  | lam b ih => simpa only [blue, Marked.redCount, if_true, Nat.add_zero] using ih
  | app f a ihf iha => simp only [blue, Marked.redCount, ihf, iha, Nat.add_zero]

theorem marked_shift_free (t : Marked) (c : Nat)
    (h : FreeUnder c (Marked.erase t)) : Marked.shift c t = t := by
  induction t generalizing c with
  | var n =>
    have hn : ¬ c ≤ n := by have hh : n < c := h; omega
    exact if_neg hn
  | lam q b ih => exact congrArg (Marked.lam q) (ih (c + 1) h)
  | app f a ihf iha => simp only [Marked.shift, ihf c h.1, iha c h.2]

theorem marked_shift_closed (t : Marked) (c : Nat) (h : Closed (Marked.erase t)) :
    Marked.shift c t = t := marked_shift_free t c (closed_freeUnder h c)

theorem marked_subst_free (t : Marked) (j : Nat) (s : Marked)
    (h : FreeUnder j (Marked.erase t)) : Marked.subst j s t = t := by
  induction t generalizing j s with
  | var n =>
    have hn : n < j := h
    simp only [Marked.subst, if_neg (Nat.ne_of_lt hn), if_neg (Nat.not_lt.mpr (Nat.le_of_lt hn))]
  | lam q b ih => exact congrArg (Marked.lam q) (ih (j + 1) _ h)
  | app f a ihf iha => simp only [Marked.subst, ihf j s h.1, iha j s h.2]

theorem marked_subst_closed (t : Marked) (j : Nat) (s : Marked)
    (h : Closed (Marked.erase t)) : Marked.subst j s t = t :=
  marked_subst_free t j s (closed_freeUnder h j)

def interpC (ρ : Nat → Marked) : Q → Marked
  | .var n => .var n
  | .lam b => .lam false (interpC ρ b)
  | .app f a => .app (interpC ρ f) (interpC ρ a)
  | .k => Marked.bit false
  | .z i => ρ i

theorem interpC_erase (ρ : Nat → Marked) (t : Q) :
    Marked.erase (interpC ρ t) = interp (fun i => Marked.erase (ρ i)) t := by
  induction t with
  | var | k | z => rfl
  | lam b ih => exact congrArg Term.lam ih
  | app f a ihf iha => simp only [interpC, interp, Marked.erase, ihf, iha]

theorem interpC_embed (ρ : Nat → Marked) (t : Term) :
    interpC ρ (embed t) = Marked.red t := by
  induction t with
  | var => rfl
  | lam b ih => exact congrArg (Marked.lam false) ih
  | app f a ihf iha => simp only [interpC, embed, Marked.red, ihf, iha]

theorem interpC_shift (ρ : Nat → Marked) (hρ : ∀ i, Closed (Marked.erase (ρ i)))
    (t : Q) (c : Nat) : interpC ρ (shiftQ c t) = Marked.shift c (interpC ρ t) := by
  induction t generalizing c with
  | var n => simp only [shiftQ, interpC, Marked.shift]; split <;> rfl
  | lam b ih => exact congrArg (Marked.lam false) (ih (c + 1))
  | app f a ihf iha => simp only [shiftQ, interpC, Marked.shift, ihf, iha]
  | k => exact (marked_shift_closed (Marked.bit false) c (by decide)).symm
  | z i => exact (marked_shift_closed (ρ i) c (hρ i)).symm

theorem interpC_subst (ρ : Nat → Marked) (hρ : ∀ i, Closed (Marked.erase (ρ i)))
    (t s : Q) (j : Nat) :
    interpC ρ (substQ j s t) = Marked.subst j (interpC ρ s) (interpC ρ t) := by
  induction t generalizing s j with
  | var n => simp only [substQ, interpC, Marked.subst]; split <;> (try rfl); split <;> rfl
  | lam b ih => simp only [substQ, interpC, Marked.subst, ih, interpC_shift ρ hρ]
  | app f a ihf iha => simp only [substQ, interpC, Marked.subst, ihf, iha]
  | k => exact (marked_subst_closed (Marked.bit false) j _ (by decide)).symm
  | z i => exact (marked_subst_closed (ρ i) j _ (hρ i)).symm

theorem interpC_redCount (ρ : Nat → Marked) (hρ : ∀ i, Marked.redCount (ρ i) = 0)
    (t : Q) : Marked.redCount (interpC ρ t) = SelfintZero.red t := by
  induction t with
  | var | k => rfl
  | z i => exact hρ i
  | lam b ih => simp only [interpC, Marked.redCount, Bool.false_eq_true, if_false, red, ih]
  | app f a ihf iha => simp only [interpC, Marked.redCount, red, ihf, iha]

def zerosC : Nat → Marked → Marked
  | 0, T => T
  | n + 1, T => Marked.pair (Marked.bit false) (zerosC n T)

theorem zerosC_erase (n : Nat) (T : Marked) :
    Marked.erase (zerosC n T) = zeros n (Marked.erase T) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [zerosC, zeros, Marked.erase_pair, Marked.erase_bit, churchBit,
      Bool.false_eq_true, if_false, ih]

theorem zerosC_closed (n : Nat) (T : Marked) (hT : Closed (Marked.erase T)) :
    Closed (Marked.erase (zerosC n T)) := by
  rw [zerosC_erase]
  exact zeros_closed n hT

theorem zerosC_redCount (n : Nat) (T : Marked) :
    Marked.redCount (zerosC n T) = Marked.redCount T := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [zerosC, Marked.redCount_pair, Marked.redCount_bit, ih, Nat.zero_add]

def realizeC (m : Nat) (T : Marked) : Q → Marked := interpC (fun i => zerosC (m - i) T)

theorem realizeC_erase (m : Nat) (T : Marked) (t : Q) :
    Marked.erase (realizeC m T t) = realize m (Marked.erase T) t := by
  simp only [realizeC, realize, interpC_erase, zerosC_erase]

theorem realizeC_redCount (m : Nat) (T : Marked) (hT : Marked.redCount T = 0) (t : Q) :
    Marked.redCount (realizeC m T t) = SelfintZero.red t :=
  interpC_redCount _ (fun _ => (zerosC_redCount _ T).trans hT) t

/-- An ordinary weak-head beta contraction retaining the color of every
surviving or copied lambda. No reduction occurs inside an abstraction. -/
inductive ColorHead : Marked → Marked → Prop where
  | beta (q : Bool) (b a : Marked) :
      ColorHead (.app (.lam q b) a) (Marked.subst 0 a b)
  | left {f g : Marked} (a : Marked) : ColorHead f g → ColorHead (.app f a) (.app g a)

theorem ColorHead.step {t u : Marked} (h : ColorHead t u) : Marked.Step t u := by
  induction h with
  | beta q b a => exact .beta _ _ _
  | left a h ih => exact .appL _ ih

theorem ColorHead.erase {t u : Marked} (h : ColorHead t u) :
    weakStep (Marked.erase t) = some (Marked.erase u) := by
  induction h with
  | beta q b a => simp only [Marked.erase, weakStep, Marked.erase_subst, contract]
  | left a h ih => exact WeakHeadClock.weak_app ih _

/-- The selected head contractor itself has source-program origin. -/
inductive RedColorHead : Marked → Marked → Prop where
  | beta (b a : Marked) :
      RedColorHead (.app (.lam false b) a) (Marked.subst 0 a b)
  | left {f g : Marked} (a : Marked) : RedColorHead f g →
      RedColorHead (.app f a) (.app g a)

theorem RedColorHead.color {t u : Marked} (h : RedColorHead t u) : ColorHead t u := by
  induction h with
  | beta b a => exact .beta _ _ _
  | left a h ih => exact .left _ ih

theorem RedColorHead.growth_dup {t u : Marked} (h : RedColorHead t u)
    (hg : Marked.redCount t < Marked.redCount u) : Marked.CodeDup t u := by
  induction h with
  | beta b a =>
    have hs := Marked.redCount_subst b a 0
    have harg : 0 < Marked.redCount a := by
      by_cases hz : Marked.redCount a = 0
      · simp only [Marked.redCount, Bool.false_eq_true, if_false, hz,
          Nat.mul_zero, Nat.add_zero] at hg hs
        omega
      · omega
    have hn : 1 < occ 0 (Marked.erase b) := by
      by_cases hn : 1 < occ 0 (Marked.erase b)
      · exact hn
      · have hm := Nat.mul_le_mul_right (Marked.redCount a) (show occ 0 (Marked.erase b) ≤ 1 by omega)
        simp only [Marked.redCount, Bool.false_eq_true, if_false] at hg
        simp only [Nat.one_mul] at hm
        omega
    exact .beta hn harg
  | left a h ih => exact .appL a (ih (by simp only [Marked.redCount] at hg; omega))

theorem red_head_origin {t u : Q} (h : RedHead t u) (m : Nat) (T : Marked)
    (hT : Closed (Marked.erase T)) : RedColorHead (realizeC m T t) (realizeC m T u) := by
  induction h with
  | beta b a =>
    unfold realizeC
    rw [interpC_subst _ (fun i => zerosC_closed _ T hT)]
    exact .beta _ _
  | left a h ih => exact .left _ ih

theorem red_head_color {t u : Q} (h : RedHead t u) (m : Nat) (T : Marked)
    (hT : Closed (Marked.erase T)) : ColorHead (realizeC m T t) (realizeC m T u) := by
  induction h with
  | beta b a =>
    unfold realizeC
    rw [interpC_subst _ (fun i => zerosC_closed _ T hT)]
    exact .beta _ _ _
  | left a h ih => exact .left _ ih

theorem marked_subst_shift (t s : Marked) (c : Nat) :
    Marked.subst c s (Marked.shift c t) = t := by
  induction t generalizing s c with
  | var n =>
    by_cases hn : c ≤ n
    · have hne : n + 1 ≠ c := by omega
      have hgt : c < n + 1 := by omega
      simp only [Marked.shift, if_pos hn, Marked.subst, if_neg hne, if_pos hgt,
        Nat.add_sub_cancel_right]
    · have hne : n ≠ c := by omega
      have hgt : ¬ c < n := by omega
      simp only [Marked.shift, if_neg hn, Marked.subst, if_neg hne, if_neg hgt]
  | lam q b ih => exact congrArg (Marked.lam q) (ih (Marked.shift 0 s) (c + 1))
  | app f a ihf iha => simp only [Marked.shift, Marked.subst, ihf, iha]

inductive ColorTrace : Nat → Marked → Marked → Prop where
  | refl (t : Marked) : ColorTrace 0 t t
  | step {n : Nat} {t u v : Marked} : ColorHead t u →
      ColorTrace n u v → ColorTrace (n + 1) t v

theorem ColorTrace.trans {n m : Nat} {t u v : Marked} (h : ColorTrace n t u)
    (g : ColorTrace m u v) : ColorTrace (n + m) t v := by
  induction h with
  | refl => simpa only [Nat.zero_add] using g
  | step h hs ih =>
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using ColorTrace.step h (ih g)

theorem ColorTrace.left {n : Nat} {t u : Marked} (h : ColorTrace n t u) (a : Marked) :
    ColorTrace n (.app t a) (.app u a) := by
  induction h with
  | refl => exact .refl _
  | step h hs ih => exact .step (.left _ h) ih

theorem ColorTrace.erase {n : Nat} {t u : Marked} (h : ColorTrace n t u) :
    WeakTrace n (Marked.erase t) (Marked.erase u) := by
  induction h with
  | refl => exact .refl _
  | step h hs ih => exact .step h.erase ih

theorem ColorTrace.steps {n : Nat} {t u : Marked} (h : ColorTrace n t u) : Marked.Steps t u := by
  induction h with
  | refl => exact .refl _
  | step h hs ih => exact .step h.step ih

theorem color_true2 (a b : Marked) : ColorTrace 2 (.app (.app (Marked.bit false) a) b) a := by
  refine .step (.left b (.beta true (.lam true (.var 1)) a)) ?_
  have hs := ColorHead.beta true (Marked.shift 0 a) b
  rw [marked_subst_shift] at hs
  exact .step hs (.refl _)

theorem color_pair (a b x : Marked) :
    ColorHead (.app (Marked.pair a b) x) (.app (.app x a) b) := by
  have hs := ColorHead.beta true (.app (.app (.var 0) (Marked.shift 0 a)) (Marked.shift 0 b)) x
  simpa only [Marked.pair, Marked.subst, if_true, marked_subst_shift] using hs

/-- Administrative K/Z rules are represented by blue ordinary head
contractions; all source colors in their arguments are retained literally. -/
theorem data_head_color {t u : Q} (h : DataHead t u) (m : Nat) (T : Marked)
    (hm : demand t ≤ m) :
    ∃ n, ColorTrace n (realizeC m T t) (realizeC m T u) := by
  induction h with
  | k a b => exact ⟨2, color_true2 _ _⟩
  | z i a =>
    have he : m - i = (m - (i + 1)) + 1 := by simp only [demand] at hm; omega
    refine ⟨1, .step ?_ (.refl _)⟩
    simpa only [realizeC, interpC, he, zerosC] using
      color_pair (Marked.bit false) (zerosC (m - (i + 1)) T) (realizeC m T a)
  | @left f g a h ih =>
    obtain ⟨n, hn⟩ := ih (Nat.le_trans (Nat.le_max_left _ _) hm)
    exact ⟨n, hn.left _⟩

theorem trace_color {n : Nat} {t u : Q} (h : Trace n t u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed (Marked.erase T) →
      ∃ k, ColorTrace k (realizeC m T t) (realizeC m T u) := by
  induction h with
  | refl t => exact ⟨0, fun _ _ _ _ => ⟨0, .refl _⟩⟩
  | red h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨b, fun m hm T hT => ?_⟩
    obtain ⟨k, hk⟩ := hb m hm T hT
    exact ⟨k + 1, .step (red_head_color h m T hT) hk⟩
  | @data n t v u h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨max (demand t) b, fun m hm T hT => ?_⟩
    obtain ⟨k, hk⟩ := hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T hT
    obtain ⟨j, hj⟩ := data_head_color h m T (Nat.le_trans (Nat.le_max_left _ _) hm)
    exact ⟨j + k, hj.trans hk⟩

/-- A finite Q source-count growth event transfers to an actual colored
ordinary weak-head event with exactly the same source-lambda counts. -/
theorem finite_growth_color {n : Nat} {t a b : Q} (ht : Trace n t a)
    (hh : RedHead a b) (hg : SelfintZero.red a < SelfintZero.red b) :
    ∃ B, ∀ m, B ≤ m → ∀ T, Closed (Marked.erase T) → Marked.redCount T = 0 →
      ∃ k, ColorTrace k (realizeC m T t) (realizeC m T a) ∧
        ColorHead (realizeC m T a) (realizeC m T b) ∧
        Marked.CodeDup (realizeC m T a) (realizeC m T b) ∧
        Marked.redCount (realizeC m T a) < Marked.redCount (realizeC m T b) := by
  obtain ⟨B, hB⟩ := trace_color ht
  refine ⟨B, fun m hm T hT hz => ?_⟩
  obtain ⟨k, hk⟩ := hB m hm T hT
  have hi : Marked.redCount (realizeC m T a) < Marked.redCount (realizeC m T b) := by
    simpa only [realizeC_redCount m T hz] using hg
  exact ⟨k, hk, red_head_color hh m T hT, (red_head_origin hh m T hT).growth_dup hi, hi⟩

theorem tower_streamC (n : Nat) (T : Marked) :
    Marked.stream (blcCode (SelfintZero.tower n)) T =
      zerosC (2 * n) (Marked.stream (blcCode (.lam (.var 0))) T) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    have he : 2 * (n + 1) = (2 * n + 1) + 1 := by omega
    change Marked.pair (Marked.bit false) (Marked.pair (Marked.bit false)
      (Marked.stream (blcCode (SelfintZero.tower n)) T)) = _
    rw [he]
    simp only [zerosC, ih]

/-- The finite-prefix event occurs on every sufficiently long valid
lambda-tower source and every closed suffix. The initial coloring marks
precisely the remainder program's lambdas red and the whole input blue. -/
theorem growth_on_towers (R : Term) {n : Nat} {a b : Q}
    (ht : Trace n (.app (embed R) (.z 0)) a)
    (hh : RedHead a b) (hg : SelfintZero.red a < SelfintZero.red b) :
    ∃ B, ∀ j, B ≤ j → ∀ N, Closed N →
      ∃ k x y, ColorTrace k (.app (Marked.red R)
        (Marked.stream (blcCode (SelfintZero.tower j)) (blue N))) x ∧
        ColorHead x y ∧ Marked.CodeDup x y ∧ Marked.redCount x < Marked.redCount y := by
  obtain ⟨B, hB⟩ := finite_growth_color ht hh hg
  refine ⟨B, fun j hj N hN => ?_⟩
  let T := Marked.stream (blcCode (.lam (.var 0))) (blue N)
  have hT : Closed (Marked.erase T) := by
    simp only [T, Marked.erase_stream, blue_erase]
    exact streamOf_closed _ hN
  have hz : Marked.redCount T = 0 := by
    simp only [T, Marked.redCount_stream, blue_redCount]
  obtain ⟨k, hk, hh, hdup, hinc⟩ := hB (2 * j) (by omega) T hT hz
  have he : realizeC (2 * j) T (.app (embed R) (.z 0)) =
      .app (Marked.red R) (Marked.stream (blcCode (SelfintZero.tower j)) (blue N)) := by
    simp only [realizeC, interpC, interpC_embed, Nat.sub_zero, tower_streamC, T]
  rw [he] at hk
  exact ⟨k, _, _, hk, hh, hdup, hinc⟩

theorem colored_input_erase (R M N : Term) :
    Marked.erase (.app (Marked.red R) (Marked.stream (blcCode M) (blue N))) =
      .app R (streamOf (blcCode M) N) := by
  simp only [Marked.erase, Marked.erase_red, Marked.erase_stream, blue_erase]

/-- Every closed exact remainder extractor has actual weak-head source-code
growth on all sufficiently long valid lambda-tower inputs. Input and suffix
lambdas are blue throughout; only residual copies of the original R count red.
The selected growth contraction itself is red and copies a red-containing operand. -/
theorem remainder_grows_on_towers (R : Term) (hc : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) :
    ∃ B, ∀ j, B ≤ j → ∀ N, Closed N →
      ∃ k x y, ColorTrace k (.app (Marked.red R)
        (Marked.stream (blcCode (SelfintZero.tower j)) (blue N))) x ∧
        ColorHead x y ∧ Marked.CodeDup x y ∧ Marked.redCount x < Marked.redCount y := by
  obtain ⟨n, a, b, ht, hh, hg⟩ := SelfintGrowth.remainder_growth R hc hR
  exact growth_on_towers R ht hh hg

end Blc.SelfintGrowthColored
