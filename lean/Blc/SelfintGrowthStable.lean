/-
Canonical one-code operands and the stable two-copy state. This module
uses the permanent-block counter, not a bound on constant-function wrappers.
-/
import Blc.SelfintGrowthBlocks
import Blc.SelfintGrowthLabels

namespace Blc.SelfintGrowthStable
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks

def wraps : Nat → Q → Q
  | 0, t => t
  | n + 1, t => .app .k (wraps n t)

@[simp] theorem wraps_red (n : Nat) (t : Q) : red (wraps n t) = red t := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [wraps, red, Nat.zero_add, ih]

@[simp] theorem wraps_blocks (n : Nat) (t : Q) : blocks (wraps n t) = blocks t := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [wraps, blocks, root, Block, if_false, Nat.zero_add, Nat.add_zero, ih]

theorem wraps_norm (n : Nat) (t : Q) : norm (wraps n t) = wraps n (norm t) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change Q.app .k (norm (wraps n t)) = Q.app .k (wraps n (norm t))
    exact congrArg (Q.app .k) ih

theorem wraps_bounded (n : Nat) (t : Q) (l : Nat) :
    SelfintGrowthLabels.Bounded l (wraps n t) ↔ SelfintGrowthLabels.Bounded l t := by
  induction n with
  | zero => rfl
  | succ n ih => exact (and_iff_right True.intro).trans ih

theorem neutral_red_pos (n : Neu) (h : ClosedQ (neutral n)) : 0 < red (neutral n) := by
  cases n with
  | atom a =>
    cases a with
    | var i => exact (Nat.not_lt_zero i h).elim
    | lam b => exact Nat.zero_lt_succ _
  | app n v =>
    have hn := neutral_red_pos n h.1
    simp only [neutral, red]
    omega
termination_by sizeOf n

theorem one_red_neutral (n : Neu) (hc : ClosedQ (neutral n)) (hr : red (neutral n) = 1) :
    (∃ b, neutral n = .lam b ∧ red b = 0 ∧ ClosedQ (.lam b)) ∨
      blocks (neutral n) = 1 := by
  cases n with
  | atom a =>
    cases a with
    | var i => exact (Nat.not_lt_zero i hc).elim
    | lam b => exact .inl ⟨b, rfl, by simp only [neutral, atomTerm, red] at hr; omega, hc⟩
  | app n v =>
    have hp := neutral_red_pos n hc.1
    have hn : red (neutral n) = 1 := by simp only [neutral, red] at hr; omega
    have hv : red (val v) = 0 := by simp only [neutral, red] at hr; omega
    have hbv := blocks_zero (val v) hv
    right
    rcases one_red_neutral n hc.1 hn with ⟨b, he, hb, hbc⟩ | hbn
    · have hroot : Block (neutral n) (val v) := by
        rw [he]
        exact ⟨hb, hbc, hv, hc.2⟩
      have hbb := blocks_zero b hb
      rw [he] at hroot
      simp only [neutral, blocks, root, he, if_pos hroot, hbb, hbv, Nat.zero_add]
    · have hle := blocks_le_red (neutral (.app n v))
      simp only [neutral, blocks, hbn, hbv, Nat.add_zero] at hle ⊢
      simp only [red, hn, hv, Nat.add_zero] at hle
      omega
termination_by sizeOf n

/-- A closed canonical one-program-lambda value is either a constant
wrapper chain around a flat closed lambda or contains a permanent block. -/
theorem one_red_value (v : V) (hc : ClosedQ (val v)) (hr : red (val v) = 1) :
    (∃ n b, val v = wraps n (.lam b) ∧ red b = 0 ∧ ClosedQ (.lam b)) ∨
      blocks (val v) = 1 := by
  cases v with
  | k => cases hr
  | z i => cases hr
  | const v =>
    have hv : red (val v) = 1 := by simpa only [val, red, Nat.zero_add] using hr
    rcases one_red_value v hc.2 hv with ⟨n, b, he, hb, hbc⟩ | hblock
    · exact .inl ⟨n + 1, b, congrArg (Q.app .k) he, hb, hbc⟩
    · right
      simpa only [val, blocks, root, Block, if_false, Nat.zero_add, Nat.add_zero] using hblock
  | neu n =>
    rcases one_red_neutral n hc hr with ⟨b, he, hb, hbc⟩ | hblock
    · exact .inl ⟨0, b, he, hb, hbc⟩
    · exact .inr hblock
termination_by sizeOf v

theorem one_red_unblocked (v : V) (hc : ClosedQ (val v)) (hr : red (val v) = 1)
    (hb : blocks (val v) = 0) :
    ∃ n b, val v = wraps n (.lam b) ∧ red b = 0 ∧ ClosedQ (.lam b) := by
  rcases one_red_value v hc hr with h | h
  · exact h
  · exact (Nat.zero_ne_one (hb.symm.trans h)).elim

/-- Every opaque program-lambda node is the same closed template. In the
stable application this template itself has no program lambda in its body. -/
def Only (d : Q) : Q → Prop
  | .var _ | .k | .z _ => True
  | .lam b => .lam b = d
  | .app f a => Only d f ∧ Only d a

theorem only_zero (d t : Q) (h : red t = 0) : Only d t := by
  induction t with
  | var | k | z => trivial
  | lam b ih => exact (Nat.succ_ne_zero (red b) h).elim
  | app f a ihf iha =>
    exact ⟨ihf (by simp only [red] at h; omega),
      iha (by simp only [red] at h; omega)⟩

theorem Only.ap (d : Q) (u v : V) (hu : Only d (val u)) (hv : Only d (val v)) :
    Only d (val (ap u v)) := by
  cases u with
  | k => exact ⟨trivial, hv⟩
  | const u => exact hu.2
  | neu n => exact ⟨hu, hv⟩
  | z i =>
    cases v with
    | k => trivial
    | z j => exact ⟨trivial, trivial⟩
    | neu n => exact ⟨⟨hv, trivial⟩, trivial⟩
    | const v =>
      cases v with
      | k | z => exact ⟨trivial, trivial⟩
      | const v => exact hv.2.2
      | neu n => exact ⟨hv.2, trivial⟩

theorem Only.norm {d t : Q} (hd : norm d = d) (h : Only d t) : Only d (norm t) := by
  induction t with
  | var | k | z => trivial
  | lam b ih =>
    change .lam b = d at h
    subst d
    rw [hd]
    exact rfl
  | app f a ihf iha => exact Only.ap d (deep f) (deep a) (ihf h.1) (iha h.2)

theorem Only.subst {d t s : Q} (hd : ClosedQ d) (ht : Only d t) (hs : Only d s)
    (j : Nat) : Only d (substQ j s t) := by
  induction t generalizing j with
  | var n =>
    simp only [substQ]
    split
    · exact hs
    · split <;> trivial
  | lam b ih =>
    change .lam b = d at ht
    have hc : ClosedQ (.lam b) := ht ▸ hd
    rw [subst_closed (.lam b) j s hc]
    exact ht
  | app f a ihf iha => exact ⟨ihf ht.1 j, iha ht.2 j⟩
  | k | z => trivial

theorem wraps_only_iff (d t : Q) (n : Nat) : Only d (wraps n t) ↔ Only d t := by
  induction n with
  | zero => rfl
  | succ n ih => exact (and_iff_right True.intro).trans ih

def apps (f : Q) : List V → Q
  | [] => f
  | v :: vs => apps (.app f (val v)) vs

theorem apps_snoc (f : Q) (vs : List V) (v : V) :
    apps f (vs ++ [v]) = .app (apps f vs) (val v) := by
  induction vs generalizing f with
  | nil => rfl
  | cons v vs ih => exact ih (.app f (val v))

def redWeight : List V → Nat
  | [] => 0
  | v :: vs => red (val v) + redWeight vs

def blockWeight : List V → Nat
  | [] => 0
  | v :: vs => blocks (val v) + blockWeight vs

theorem apps_red (f : Q) (vs : List V) :
    red (apps f vs) = red f + redWeight vs := by
  induction vs generalizing f with
  | nil => exact (Nat.add_zero _).symm
  | cons v vs ih => simp only [apps, ih, red, redWeight, Nat.add_assoc]

theorem apps_blocks_lower (f : Q) (vs : List V) :
    blocks f + blockWeight vs ≤ blocks (apps f vs) := by
  induction vs generalizing f with
  | nil => exact Nat.le_refl _
  | cons v vs ih =>
    have hh := ih (.app f (val v))
    simp only [apps, blockWeight, blocks] at *
    omega

theorem apps_blocks_app (f a : Q) (vs : List V) :
    blocks (apps (.app f a) vs) = blocks (.app f a) + blockWeight vs := by
  induction vs generalizing f a with
  | nil => exact (Nat.add_zero _).symm
  | cons v vs ih =>
    simp only [apps, ih, blockWeight, blocks, root, Block, if_false,
      Nat.add_zero, Nat.add_assoc]

theorem apps_data {f g : Q} (h : DataSteps f g) (vs : List V) :
    DataSteps (apps f vs) (apps g vs) := by
  induction vs generalizing f g with
  | nil => exact h
  | cons v vs ih => exact ih (h.left (val v))

theorem apps_head {f g : Q} (h : RedHead f g) (vs : List V) :
    RedHead (apps f vs) (apps g vs) := by
  induction vs generalizing f g with
  | nil => exact h
  | cons v vs ih => exact ih (.left (val v) h)

theorem apps_append (f : Q) (us vs : List V) :
    apps f (us ++ vs) = apps (apps f us) vs := by
  induction us generalizing f with
  | nil => rfl
  | cons u us ih => exact ih (.app f (val u))

theorem apps_bounded (f : Q) (vs : List V) (l : Nat) :
    SelfintGrowthLabels.Bounded l (apps f vs) ↔
      SelfintGrowthLabels.Bounded l f ∧
        ∀ v ∈ vs, SelfintGrowthLabels.Bounded l (val v) := by
  induction vs generalizing f with
  | nil => exact ⟨fun h => ⟨h, by simp⟩, fun h => h.1⟩
  | cons v vs ih =>
    rw [apps, ih]
    constructor
    · intro h
      exact ⟨h.1.1, fun w hw => by
        rcases List.mem_cons.mp hw with he | hh
        · exact he ▸ h.1.2
        · exact h.2 w hh⟩
    · intro h
      exact ⟨⟨h.1, h.2 v (by simp)⟩, fun w hw => h.2 w (List.mem_cons_of_mem v hw)⟩

def normArgs (vs : List V) : List V := vs.map (fun v => deep (val v))

theorem norm_app_neutral (f a : Q) (hf : ∃ n, deep f = .neu n) :
    norm (.app f a) = .app (norm f) (norm a) := by
  obtain ⟨n, hn⟩ := hf
  simp only [norm, deep, hn, ap, val, neutral]

theorem apps_deep_neutral (f : Q) (vs : List V) (hf : ∃ n, deep f = .neu n) :
    ∃ n, deep (apps f vs) = .neu n := by
  induction vs generalizing f with
  | nil => exact hf
  | cons v vs ih =>
    obtain ⟨n, hn⟩ := hf
    exact ih (.app f (val v)) ⟨.app n (deep (val v)), by simp only [deep, hn, ap]⟩

theorem norm_apps (f : Q) (vs : List V) (hf : ∃ n, deep f = .neu n) :
    norm (apps f vs) = apps (norm f) (normArgs vs) := by
  induction vs generalizing f with
  | nil => rfl
  | cons v vs ih =>
    obtain ⟨n, hn⟩ := hf
    have ha : ∃ n, deep (.app f (val v)) = .neu n :=
      ⟨.app n (deep (val v)), by simp only [deep, hn, ap]⟩
    rw [apps, ih _ ha, norm_app_neutral f (val v) ⟨n, hn⟩]
    rfl

theorem apps_normArgs (f : Q) (vs : List V)
    (hv : ∀ v ∈ vs, norm (val v) = val v) : apps f (normArgs vs) = apps f vs := by
  induction vs generalizing f with
  | nil => rfl
  | cons v vs ih =>
    change apps (.app f (norm (val v))) (normArgs vs) = apps (.app f (val v)) vs
    rw [hv v (by simp)]
    exact ih _ (fun w hw => hv w (List.mem_cons_of_mem v hw))

theorem norm_apps_fixed (f : Q) (vs : List V) (hf : ∃ n, deep f = .neu n)
    (hn : norm f = f) (hv : ∀ v ∈ vs, norm (val v) = val v) :
    norm (apps f vs) = apps f vs := by
  rw [norm_apps f vs hf, hn]
  exact apps_normArgs f vs hv

/-- A nonterminal result has consumed every leading constant wrapper.
Exactly an initial segment of the old pending spine was discarded. -/
theorem peel_wrappers (m : Nat) (f : Q) (pending : List V)
    (hn : ¬ Done (norm (apps (wraps m f) pending))) :
    ∃ pre post, pending = pre ++ post ∧ pre.length = m ∧
      norm (apps (wraps m f) pending) = norm (apps f post) := by
  induction m generalizing pending with
  | zero => exact ⟨[], pending, rfl, rfl, rfl⟩
  | succ m ih =>
    cases pending with
    | nil =>
      have hd : Done (norm (apps (wraps (m + 1) f) [])) := by
        change Done (.app .k (norm (wraps m f)))
        exact .const _
      exact (hn hd).elim
    | cons v vs =>
      have hh : norm (apps (wraps (m + 1) f) (v :: vs)) =
          norm (apps (wraps m f) vs) :=
        (apps_data (.one (.k (wraps m f) (val v))) vs).norm_eq
      obtain ⟨pre, post, hp, hl, he⟩ := ih vs (hh ▸ hn)
      exact ⟨v :: pre, post, congrArg (List.cons v) hp, congrArg Nat.succ hl, hh.trans he⟩

/-- Global conservation across the pending spine forces conservation
inside the fixed flat body. Any local block would persist to the endpoint. -/
theorem flat_spine_local_counts (b a : Q) (vs : List V)
    (hb : red b = 0) (hk : oc 0 b = 2) (ha : red a = 1) (hab : blocks a = 0)
    (hr : red (norm (apps (substQ 0 a b) vs)) =
      red (apps (.app (.lam b) a) vs))
    (hz : blocks (norm (apps (substQ 0 a b) vs)) =
      blocks (apps (.app (.lam b) a) vs)) :
    red (norm (substQ 0 a b)) = red (substQ 0 a b) ∧
      blocks (norm (substQ 0 a b)) = 0 := by
  have hraw : red (substQ 0 a b) = 2 := by
    rw [red_subst, hb, hk, ha]
  have hstart : red (.app (.lam b) a) = 2 := by simp only [red, hb, ha]
  have hp := apps_data (norm_sound (substQ 0 a b)) vs
  have hs : DataSteps (apps (norm (substQ 0 a b)) vs)
      (norm (apps (substQ 0 a b) vs)) := by
    rw [hp.norm_eq]
    exact norm_sound _
  have hrp := hp.red_le
  have hrs := hs.red_le
  have he : red (apps (norm (substQ 0 a b)) vs) =
      red (norm (apps (substQ 0 a b) vs)) := by
    rw [hr, apps_red, apps_red, hstart]
    simp only [apps_red, hraw] at hrp
    simp only [hr, apps_red, hstart] at hrs
    omega
  have hbmid := data_steps_blocks_le hs he.symm
  have hblower := apps_blocks_lower (norm (substQ 0 a b)) vs
  have hroot := root_program_arg b a (by omega)
  have hbb := blocks_zero b hb
  have hzstart : blocks (apps (.app (.lam b) a) vs) = blockWeight vs := by
    simp only [apps_blocks_app, blocks, hbb, hab, hroot, Nat.zero_add]
  constructor
  · simp only [apps_red, hr, hstart] at he
    omega
  · rw [hz, hzstart] at hbmid
    omega

theorem two_red_neutral (d : Q) (hd : red d = 1) (n : Neu)
    (hc : ClosedQ (neutral n)) (ho : Only d (neutral n))
    (hr : red (neutral n) = 2) (hb : blocks (neutral n) = 0) :
    ∃ q vs, neutral n = apps (.app d (wraps q d)) vs ∧
      ∀ v ∈ vs, red (val v) = 0 := by
  cases n with
  | atom a =>
    cases a with
    | var i => exact (Nat.not_lt_zero i hc).elim
    | lam b =>
      change .lam b = d at ho
      simp only [neutral, atomTerm, ho, hd] at hr
      exact (Nat.succ_ne_self 1 hr.symm).elim
  | app n v =>
    have hp := neutral_red_pos n hc.1
    have hbn : blocks (neutral n) = 0 := by simp only [neutral, blocks] at hb; omega
    have hbv : blocks (val v) = 0 := by simp only [neutral, blocks] at hb; omega
    have hn : red (neutral n) = 1 ∨ red (neutral n) = 2 := by
      simp only [neutral, red] at hr
      omega
    rcases hn with hn | hn
    · have hv : red (val v) = 1 := by simp only [neutral, red] at hr; omega
      have he : neutral n = d := by
        rcases one_red_neutral n hc.1 hn with ⟨b, he, _, _⟩ | hh
        · have hh := ho.1
          rw [he] at hh
          exact he.trans hh
        · exact (Nat.zero_ne_one (hbn.symm.trans hh)).elim
      obtain ⟨q, b, hvb, _, _⟩ := one_red_unblocked v hc.2 hv hbv
      have hbd : .lam b = d := by
        have hh := ho.2
        rw [hvb] at hh
        exact (wraps_only_iff d (.lam b) q).mp hh
      exact ⟨q, [], by simp only [neutral, he, hvb, hbd, apps], by simp⟩
    · have hv : red (val v) = 0 := by simp only [neutral, red] at hr; omega
      obtain ⟨q, vs, he, hs⟩ := two_red_neutral d hd n hc.1 ho.1 hn hbn
      refine ⟨q, vs ++ [v], ?_, ?_⟩
      · simp only [neutral, apps_snoc, he]
      · intro w hw
        rcases List.mem_append.mp hw with hw | hw
        · exact hs w hw
        · have hew : w = v := by simpa only [List.mem_singleton] using hw
          exact hew ▸ hv
termination_by sizeOf n

/-- The two surviving copies already supply the next recursive operand.
All other body arguments are program-free, regardless of wrapper depth. -/
theorem two_red_value (d : Q) (hd : red d = 1) (v : V)
    (hc : ClosedQ (val v)) (ho : Only d (val v))
    (hr : red (val v) = 2) (hb : blocks (val v) = 0) :
    ∃ m q vs, val v = wraps m (apps (.app d (wraps q d)) vs) ∧
      ∀ w ∈ vs, red (val w) = 0 := by
  cases v with
  | k | z => cases hr
  | const v =>
    have hr' : red (val v) = 2 := by simpa only [val, red, Nat.zero_add] using hr
    have hb' : blocks (val v) = 0 := by
      simpa only [val, blocks, root, Block, if_false, Nat.zero_add, Nat.add_zero] using hb
    obtain ⟨m, q, vs, he, hs⟩ := two_red_value d hd v hc.2 ho.2 hr' hb'
    exact ⟨m + 1, q, vs, congrArg (Q.app .k) he, hs⟩
  | neu n =>
    obtain ⟨q, vs, he, hs⟩ := two_red_neutral d hd n hc ho hr hb
    exact ⟨0, q, vs, he, hs⟩
termination_by sizeOf v

theorem wraps_closed (n : Nat) (t : Q) (h : ClosedQ t) : ClosedQ (wraps n t) := by
  induction n with
  | zero => exact h
  | succ n ih => exact ⟨by decide, ih⟩

/-- A flat binary body, supplied one wrapped flat template, has exactly
the stable two-copy shape after any count-preserving, block-free data phase.
The next head template is the operand template, not the old contractor. -/
theorem flat_body_transition (b d : Q) (n : Nat)
    (hb : red b = 0) (hk : oc 0 b = 2) (hbc : FreeUnder 1 (erase b))
    (hd : red d = 0) (hdc : ClosedQ (.lam d)) (hdn : norm (.lam d) = .lam d)
    (hr : red (norm (substQ 0 (wraps n (.lam d)) b)) =
      red (substQ 0 (wraps n (.lam d)) b))
    (hz : blocks (norm (substQ 0 (wraps n (.lam d)) b)) = 0) :
    ∃ m q vs,
      norm (substQ 0 (wraps n (.lam d)) b) =
        wraps m (apps (.app (.lam d) (wraps q (.lam d))) vs) ∧
      ∀ v ∈ vs, red (val v) = 0 := by
  have ha := wraps_closed n (.lam d) hdc
  have hc := SelfintZero.step_closed (.beta b (wraps n (.lam d))) ⟨hbc, ha⟩
  have ho : Only (.lam d) (wraps n (.lam d)) :=
    (wraps_only_iff (.lam d) (.lam d) n).mpr rfl
  have hs := (only_zero (.lam d) b hb).subst hdc ho 0
  have hn := hs.norm hdn
  have htwo : red (norm (substQ 0 (wraps n (.lam d)) b)) = 2 := by
    rw [hr, red_subst, wraps_red]
    simp only [hb, hk, red, hd, Nat.zero_add, Nat.mul_one]
  exact two_red_value (.lam d) (by simp only [red, hd]) _
    (norm_freeUnder _ 0 hc) hn htwo hz

/-- The local two-copy transition follows from conservation of the
whole canonical state, with an arbitrary pending application spine. -/
theorem flat_spine_transition (b d : Q) (n : Nat) (pending : List V)
    (hb : red b = 0) (hk : oc 0 b = 2) (hbc : FreeUnder 1 (erase b))
    (hd : red d = 0) (hdc : ClosedQ (.lam d)) (hdn : norm (.lam d) = .lam d)
    (hr : red (norm (apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      red (apps (.app (.lam b) (wraps n (.lam d))) pending))
    (hz : blocks (norm (apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      blocks (apps (.app (.lam b) (wraps n (.lam d))) pending)) :
    ∃ m q vs,
      norm (substQ 0 (wraps n (.lam d)) b) =
        wraps m (apps (.app (.lam d) (wraps q (.lam d))) vs) ∧
      ∀ v ∈ vs, red (val v) = 0 := by
  have ha : red (wraps n (.lam d)) = 1 := by simp only [wraps_red, red, hd]
  have hab : blocks (wraps n (.lam d)) = 0 := by
    simp only [wraps_blocks, blocks, blocks_zero d hd]
  obtain ⟨he, hz'⟩ := flat_spine_local_counts b (wraps n (.lam d)) pending hb hk ha hab hr hz
  exact flat_body_transition b d n hb hk hbc hd hdc hdn he hz'

/-- After the stable head contraction, the next template is the copied
template. New arguments are program-free and uniformly label-bounded;
the old pending spine contributes only an untouched suffix. -/
theorem stable_spine_next (b d : Q) (n l : Nat) (pending : List V)
    (hb : red b = 0) (hk : oc 0 b = 2) (hbc : FreeUnder 1 (erase b))
    (hd : red d = 0) (hdc : ClosedQ (.lam d)) (hdn : norm (.lam d) = .lam d)
    (hp : ∀ v ∈ pending, norm (val v) = val v)
    (hbl : SelfintGrowthLabels.Bounded l b)
    (hdl : SelfintGrowthLabels.Bounded l (.lam d))
    (hr : red (norm (apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      red (apps (.app (.lam b) (wraps n (.lam d))) pending))
    (hz : blocks (norm (apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      blocks (apps (.app (.lam b) (wraps n (.lam d))) pending))
    (hn : ¬ Done (norm (apps (substQ 0 (wraps n (.lam d)) b) pending))) :
    ∃ q pre post fresh, pending = pre ++ post ∧
      norm (apps (substQ 0 (wraps n (.lam d)) b) pending) =
        apps (.app (.lam d) (wraps q (.lam d))) (fresh ++ post) ∧
      ∀ v ∈ fresh, red (val v) = 0 ∧ norm (val v) = val v ∧
        SelfintGrowthLabels.Bounded (l + 5 * SelfintGrowthLabels.apps b) (val v) := by
  obtain ⟨m, q, vs, he, hs⟩ := flat_spine_transition b d n pending hb hk hbc hd hdc hdn hr hz
  let f := Q.app (.lam d) (wraps q (.lam d))
  have hfd : ∃ a, deep f = .neu a := ⟨_, rfl⟩
  have hfn : norm f = f := by
    rw [norm_app_neutral (.lam d) (wraps q (.lam d)) ⟨_, rfl⟩,
      hdn, wraps_norm, hdn]
  have hfresh : ∀ v ∈ normArgs vs, red (val v) = 0 ∧ norm (val v) = val v := by
    intro v hv
    obtain ⟨w, hw, hew⟩ := List.mem_map.mp hv
    subst v
    exact ⟨Nat.eq_zero_of_le_zero (hs w hw ▸ norm_red (val w)), norm_idempotent (val w)⟩
  have he' : norm (substQ 0 (wraps n (.lam d)) b) =
      wraps m (apps f (normArgs vs)) := by
    calc
      _ = norm (norm (substQ 0 (wraps n (.lam d)) b)) := (norm_idempotent _).symm
      _ = norm (wraps m (apps f vs)) := congrArg norm he
      _ = wraps m (apps f (normArgs vs)) := by rw [wraps_norm, norm_apps f vs hfd, hfn]
  have ha : norm (wraps n (.lam d)) = wraps n (.lam d) := by rw [wraps_norm, hdn]
  obtain ⟨k, hk', htrace⟩ := SelfintGrowthLabels.flat_subst_count b (wraps n (.lam d)) 0 hb ha
  have hbound : SelfintGrowthLabels.Bounded (l + 5 * SelfintGrowthLabels.apps b)
      (norm (substQ 0 (wraps n (.lam d)) b)) := by
    have hi := SelfintGrowthLabels.bounded_subst b (wraps n (.lam d)) 0 l hbl
      ((wraps_bounded n (.lam d) l).mpr hdl)
    exact SelfintGrowthLabels.bounded_mono _ (Nat.add_le_add_left hk' l) (htrace.bounded l hi)
  have hfreshbound : ∀ v ∈ normArgs vs,
      SelfintGrowthLabels.Bounded (l + 5 * SelfintGrowthLabels.apps b) (val v) := by
    rw [he'] at hbound
    exact ((apps_bounded f (normArgs vs) _).mp
      ((wraps_bounded m _ _).mp hbound)).2
  have hglobal : norm (apps (substQ 0 (wraps n (.lam d)) b) pending) =
      norm (apps (wraps m (apps f (normArgs vs))) pending) := by
    rw [(apps_data (norm_sound (substQ 0 (wraps n (.lam d)) b)) pending).norm_eq, he']
  obtain ⟨pre, post, hpend, _, hpeel⟩ :=
    peel_wrappers m (apps f (normArgs vs)) pending (hglobal ▸ hn)
  have hpost : ∀ v ∈ post, norm (val v) = val v := by
    intro v hv
    apply hp v
    rw [hpend]
    exact List.mem_append_right pre hv
  have hargs : ∀ v ∈ normArgs vs ++ post, norm (val v) = val v := by
    intro v hv
    rcases List.mem_append.mp hv with hv | hv
    · exact (hfresh v hv).2
    · exact hpost v hv
  refine ⟨q, pre, post, normArgs vs, hpend, ?_, ?_⟩
  · calc
      _ = norm (apps (wraps m (apps f (normArgs vs))) pending) := hglobal
      _ = norm (apps (apps f (normArgs vs)) post) := hpeel
      _ = norm (apps f (normArgs vs ++ post)) := congrArg norm (apps_append f _ _).symm
      _ = apps f (normArgs vs ++ post) := norm_apps_fixed f _ hfd hfn hargs
  · intro v hv
    exact ⟨(hfresh v hv).1, (hfresh v hv).2, hfreshbound v hv⟩

/-- The selected data phase has a demand bound independent of the
number of constant-function wrappers around the copied template. -/
theorem flat_body_bound (b d : Q) (n l : Nat)
    (hb : red b = 0) (hd : norm d = d)
    (hbl : SelfintGrowthLabels.Bounded l b)
    (hdl : SelfintGrowthLabels.Bounded l d) :
    ∃ k, k ≤ 5 * SelfintGrowthLabels.apps b ∧
      SelfintGrowthLabels.BoundTrace (l + k)
        (substQ 0 (wraps n d) b) (norm (substQ 0 (wraps n d) b)) := by
  have hn : norm (wraps n d) = wraps n d := by rw [wraps_norm, hd]
  exact SelfintGrowthLabels.flat_subst_bound b (wraps n d) 0 l hb hn hbl
    ((wraps_bounded n d l).mpr hdl)

end Blc.SelfintGrowthStable
