/-
Labelled infinite zero streams. Program lambdas are explicit; K and Z_i
are affine data constants with rules K a b -> a and Z_i a -> a K Z_(i+1).
The labels record finite prefix demand and do not affect normalization.
-/
import Blc.SelfintLowerBound
import Blc.SelfintWireCost
import Blc.NormalOrder

namespace Blc
namespace SelfintZero
open Term SelfintLowerBound

inductive Q where
  | var (n : Nat) | lam (b : Q) | app (f a : Q) | k | z (i : Nat)
deriving Repr, DecidableEq

def shiftQ (c : Nat) : Q → Q
  | .var n => if n ≥ c then .var (n + 1) else .var n
  | .lam b => .lam (shiftQ (c + 1) b)
  | .app f a => .app (shiftQ c f) (shiftQ c a)
  | .k => .k
  | .z i => .z i

def substQ (j : Nat) (s : Q) : Q → Q
  | .var n => if n = j then s else if n > j then .var (n - 1) else .var n
  | .lam b => .lam (substQ (j + 1) (shiftQ 0 s) b)
  | .app f a => .app (substQ j s f) (substQ j s a)
  | .k => .k
  | .z i => .z i

/-- Erasure is only for binder accounting, not a model of the Z rule. -/
def erase : Q → Term
  | .var n => .var n
  | .lam b => .lam (erase b)
  | .app f a => .app (erase f) (erase a)
  | .k | .z _ => .lam (.var 0)

theorem erase_shift (t : Q) (c : Nat) :
    erase (shiftQ c t) = shift 1 c (erase t) := by
  induction t generalizing c with
  | var n => simp only [shiftQ, erase, shift]; split <;> rfl
  | lam b ih => simp [shiftQ, erase, shift, ih]
  | app f a ihf iha => simp [shiftQ, erase, shift, ihf, iha]
  | k => simp [shiftQ, erase, shift]
  | z i => simp [shiftQ, erase, shift]

theorem erase_subst (t s : Q) (j : Nat) :
    erase (substQ j s t) = substDec j (erase s) (erase t) := by
  induction t generalizing s j with
  | var n => simp only [substQ, substDec, erase]; split <;> (try rfl); split <;> rfl
  | lam b ih => simp [substQ, substDec, erase, ih, erase_shift]
  | app f a ihf iha => simp [substQ, substDec, erase, ihf, iha]
  | k => exact (substDec_closed j (erase s) (by decide : Closed (.lam (.var 0)))).symm
  | z i => exact (substDec_closed j (erase s) (by decide : Closed (.lam (.var 0)))).symm

def nl (t : Q) : Nat := nonlinear (erase t)
def oc (j : Nat) (t : Q) : Nat := occ j (erase t)
def ClosedQ (t : Q) : Prop := Closed (erase t)

@[simp] theorem nl_var (n : Nat) : nl (.var n) = 0 := rfl
@[simp] theorem nl_lam (b : Q) : nl (.lam b) = nl b + if 1 < oc 0 b then 1 else 0 := rfl
@[simp] theorem nl_app (f a : Q) : nl (.app f a) = nl f + nl a := rfl
@[simp] theorem nl_k : nl .k = 0 := by decide
@[simp] theorem nl_z (i : Nat) : nl (.z i) = 0 := rfl
@[simp] theorem oc_var (j n : Nat) : oc j (.var n) = if n = j then 1 else 0 := rfl
@[simp] theorem oc_lam (j : Nat) (b : Q) : oc j (.lam b) = oc (j + 1) b := rfl
@[simp] theorem oc_app (j : Nat) (f a : Q) : oc j (.app f a) = oc j f + oc j a := rfl
@[simp] theorem oc_k (j : Nat) : oc j .k = 0 := by
  change (if 0 = j + 1 then 1 else 0) = 0
  exact if_neg (Nat.zero_ne_add_one j)
@[simp] theorem oc_z (j i : Nat) : oc j (.z i) = 0 := by
  change (if 0 = j + 1 then 1 else 0) = 0
  exact if_neg (Nat.zero_ne_add_one j)

theorem nl_subst (t s : Q) (j : Nat) :
    nl (substQ j s t) = nl t + oc j t * nl s := by
  simpa [nl, oc, erase_subst] using nonlinear_subst (erase t) (erase s) j

/-- Only source-program lambdas are counted. -/
def red : Q → Nat
  | .var _ | .k | .z _ => 0
  | .lam b => red b + 1
  | .app f a => red f + red a

theorem red_shift (t : Q) (c : Nat) : red (shiftQ c t) = red t := by
  induction t generalizing c with
  | var n => simp only [shiftQ]; split <;> rfl
  | lam b ih => simp [shiftQ, red, ih]
  | app f a ihf iha => simp [shiftQ, red, ihf, iha]
  | k => rfl
  | z i => rfl

theorem red_subst (t s : Q) (j : Nat) :
    red (substQ j s t) = red t + oc j t * red s := by
  induction t generalizing s j with
  | var n =>
    simp only [substQ, oc_var, red]
    split
    · simp
    · split <;> simp [red]
  | lam b ih => simp only [substQ, red, oc_lam, ih, red_shift]; omega
  | app f a ihf iha => simp only [substQ, red, oc_app, ihf, iha, Nat.add_mul]; omega
  | k => simp [substQ, red]
  | z i => simp [substQ, red]

/-- Weak compatible closure: no step is performed inside a program lambda. -/
inductive Step : Q → Q → Prop where
  | beta (b a : Q) : Step (.app (.lam b) a) (substQ 0 a b)
  | k (a b : Q) : Step (.app (.app .k a) b) a
  | z (i : Nat) (a : Q) : Step (.app (.z i) a) (.app (.app a .k) (.z (i + 1)))
  | left {f g : Q} (a : Q) : Step f g → Step (.app f a) (.app g a)
  | right (f : Q) {a b : Q} : Step a b → Step (.app f a) (.app f b)

inductive Steps : Q → Q → Prop where
  | refl (t : Q) : Steps t t
  | head {t u v : Q} : Step t u → Steps u v → Steps t v

theorem trans {t u v : Q} (h : Steps t u) (g : Steps u v) : Steps t v := by
  induction h with
  | refl => exact g
  | head h _ ih => exact .head h (ih g)

theorem one {t u : Q} (h : Step t u) : Steps t u := .head h (.refl _)

theorem left {f g : Q} (a : Q) (h : Steps f g) : Steps (.app f a) (.app g a) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.left _ h) ih

theorem right (f : Q) {a b : Q} (h : Steps a b) : Steps (.app f a) (.app f b) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.right _ h) ih

inductive Atom where
  | var (n : Nat) | lam (b : Q)
deriving Repr

def atomTerm : Atom → Q
  | .var n => .var n
  | .lam b => .lam b

mutual
inductive V where
  | k | z (i : Nat) | const (v : V) | neu (n : Neu)
inductive Neu where
  | atom (a : Atom) | app (n : Neu) (v : V)
end

mutual
def val : V → Q
  | .k => .k
  | .z i => .z i
  | .const v => .app .k (val v)
  | .neu n => neutral n
def neutral : Neu → Q
  | .atom a => atomTerm a
  | .app n v => .app (neutral n) (val v)
end

/-- Closed finite application table for the two affine data constants. -/
def ap : V → V → V
  | .k, v => .const v
  | .const u, _ => u
  | .neu n, v => .neu (.app n v)
  | .z _, .k => .k
  | .z i, .z _ => .const (.z (i + 1))
  | .z i, .const .k => .const (.z (i + 1))
  | .z _, .const (.z j) => .const (.z (j + 1))
  | .z _, .const (.const a) => a
  | .z i, .const (.neu n) => .neu (.app n (.z (i + 1)))
  | .z i, .neu n => .neu (.app (.app n .k) (.z (i + 1)))

theorem ap_sound (u v : V) : Steps (.app (val u) (val v)) (val (ap u v)) := by
  cases u with
  | k => exact .refl _
  | const u => exact one (.k _ _)
  | neu n => exact .refl _
  | z i =>
    cases v with
    | k => exact .head (.z _ _) (one (.k _ _))
    | z j =>
      exact .head (.z _ _) (.head (.left _ (.z _ _))
        (.head (.left _ (.k _ _)) (.refl _)))
    | neu n => exact one (.z _ _)
    | const v =>
      refine .head (.z _ _) (.head (.left _ (.k _ _)) ?_)
      cases v with
      | k => exact .refl _
      | z j =>
        exact .head (.z _ _) (.head (.left _ (.z _ _))
          (.head (.left _ (.k _ _)) (.refl _)))
      | const a => exact one (.k _ _)
      | neu n => exact .refl _

theorem ap_red (u v : V) : red (val (ap u v)) ≤ red (val u) + red (val v) := by
  cases u <;> cases v <;> simp only [ap, val, neutral, red] <;> try omega
  case z.const i v => cases v <;> simp only [val, neutral, red] <;> omega

theorem ap_nl (u v : V) : nl (val (ap u v)) ≤ nl (val u) + nl (val v) := by
  cases u <;> cases v <;> simp only [ap, val, neutral, nl_app, nl_k, nl_z] <;> try omega
  case z.const i v => cases v <;> simp only [val, neutral, nl_app, nl_k, nl_z] <;> omega

def blue : Q → V
  | .var n => .neu (.atom (.var n))
  | .lam b => .neu (.atom (.lam b))
  | .app f a => ap (blue f) (blue a)
  | .k => .k
  | .z i => .z i

theorem blue_sound (t : Q) : Steps t (val (blue t)) := by
  induction t with
  | var n => exact .refl _
  | lam b ih => exact .refl _
  | app f a ihf iha => exact trans (left _ ihf) (trans (right _ iha) (ap_sound _ _))
  | k => exact .refl _
  | z i => exact .refl _

theorem blue_red (t : Q) : red (val (blue t)) ≤ red t := by
  induction t with
  | app f a ihf iha => have h := ap_red (blue f) (blue a); simp only [blue, red]; omega
  | var | lam | k | z => exact Nat.le_refl _

theorem blue_nl (t : Q) : nl (val (blue t)) ≤ nl t := by
  induction t with
  | app f a ihf iha => have h := ap_nl (blue f) (blue a); simp only [blue, nl_app]; omega
  | var | lam | k | z => exact Nat.le_refl _

theorem step_closed {t u : Q} (h : Step t u) (ht : ClosedQ t) : ClosedQ u := by
  induction h with
  | beta b a =>
    unfold ClosedQ at ht ⊢
    rw [erase_subst]
    exact SelfintWireCost.beta_freeUnder (.beta _ _) 0 ht
  | k a b => exact ht.1.2
  | z i a => exact ⟨⟨ht.2, by decide⟩, by simp [erase, FreeUnder]⟩
  | left a h ih => exact ⟨ih ht.1, ht.2⟩
  | right f h ih => exact ⟨ht.1, ih ht.2⟩

theorem steps_closed {t u : Q} (h : Steps t u) (ht : ClosedQ t) : ClosedQ u := by
  induction h with
  | refl => exact ht
  | head h _ ih => exact ih (step_closed h ht)

/-- Red beta contraction on the global function spine. -/
inductive RStep : Q → Q → Prop where
  | beta (b a : Q) : RStep (.app (.lam b) a) (substQ 0 a b)
  | left {f g : Q} (a : Q) : RStep f g → RStep (.app f a) (.app g a)

theorem RStep.step {t u : Q} (h : RStep t u) : Step t u := by
  induction h with
  | beta b a => exact .beta b a
  | left a h ih => exact .left a ih

theorem red_progress {t u : Q} (h : RStep t u) (ht : nl t ≤ 1) :
    (red u < red t ∧ nl u ≤ nl t) ∨ (nl t = 1 ∧ nl u = 0) := by
  induction h with
  | beta b a =>
    by_cases hb : oc 0 b ≤ 1
    · left
      have hn : ¬1 < oc 0 b := by omega
      simp only [red_subst, red, nl_subst, nl_app, nl_lam, if_neg hn, Nat.add_zero]
      rcases Nat.le_one_iff_eq_zero_or_eq_one.mp hb with h | h
      · simp only [h, Nat.zero_mul, Nat.add_zero]; constructor <;> omega
      · simp only [h, Nat.one_mul]; constructor <;> omega
    · right
      have hn : 1 < oc 0 b := by omega
      simp only [nl_app, nl_lam, if_pos hn] at ht ⊢
      have hnb : nl b = 0 := by omega
      have hna : nl a = 0 := by omega
      rw [nl_subst, hnb, hna]
      constructor <;> omega
  | @left f g a h ih =>
    have hf : nl f ≤ 1 := by simp only [nl_app] at ht; omega
    rcases ih hf with ⟨hr, hn⟩ | ⟨hn, hz⟩
    · left; simp only [red, nl_app] at *; constructor <;> omega
    · right; simp only [nl_app] at *; constructor <;> omega

/-- The four kinds of lambda-like weak-head answer. -/
inductive Done : Q → Prop where
  | k : Done .k
  | z (i : Nat) : Done (.z i)
  | const (t : Q) : Done (.app .k t)
  | lam (b : Q) : Done (.lam b)

theorem neutral_progress (n : Neu) (hc : ClosedQ (neutral n)) :
    (∃ b, neutral n = .lam b) ∨ ∃ u, RStep (neutral n) u := by
  cases n with
  | atom a =>
    cases a with
    | var i => exact (Nat.not_lt_zero i hc).elim
    | lam b => exact Or.inl ⟨b, rfl⟩
  | app n v =>
    rcases neutral_progress n hc.1 with ⟨b, hb⟩ | ⟨u, hu⟩
    · right; simp only [neutral, hb]; exact ⟨_, .beta _ _⟩
    · right; exact ⟨_, .left _ hu⟩
termination_by sizeOf n

theorem val_progress (v : V) (hc : ClosedQ (val v)) :
    Done (val v) ∨ ∃ u, RStep (val v) u := by
  cases v with
  | k => exact Or.inl .k
  | z i => exact Or.inl (.z i)
  | const a => exact Or.inl (.const _)
  | neu n =>
    rcases neutral_progress n hc with ⟨b, hb⟩ | hr
    · left; rw [val, hb]; exact .lam b
    · exact Or.inr hr

theorem affine_terminates (t : Q) (hc : ClosedQ t) (hn : nl t = 0) :
    ∃ u, Steps t u ∧ Done u := by
  generalize hm : red t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    have hb := blue_sound t
    have hbr := blue_red t
    have hbn : nl (val (blue t)) = 0 := Nat.eq_zero_of_le_zero (hn ▸ blue_nl t)
    rcases val_progress (blue t) (steps_closed hb hc) with hd | ⟨u, hu⟩
    · exact ⟨_, hb, hd⟩
    · rcases red_progress hu (by omega) with ⟨hr, hn'⟩ | ⟨hn', _⟩
      · obtain ⟨v, hv, hd⟩ := ih (red u) (by omega) u
          (step_closed hu.step (steps_closed hb hc)) (by omega) rfl
        exact ⟨v, trans hb (.head hu.step hv), hd⟩
      · exact (Nat.zero_ne_one (hbn.symm.trans hn')).elim

/-- At most one nonlinear program binder cannot diverge while scanning
the infinite all-zero Scott stream. The proof alternates finite blue
normalization with global red head contraction. -/
theorem one_nonlinear_terminates (t : Q) (hc : ClosedQ t) (hn : nl t ≤ 1) :
    ∃ u, Steps t u ∧ Done u := by
  generalize hm : red t = m
  induction m using Nat.strongRecOn generalizing t with
  | ind m ih =>
    have hb := blue_sound t
    have hbr := blue_red t
    have hbn : nl (val (blue t)) ≤ 1 := Nat.le_trans (blue_nl t) hn
    rcases val_progress (blue t) (steps_closed hb hc) with hd | ⟨u, hu⟩
    · exact ⟨_, hb, hd⟩
    · rcases red_progress hu hbn with ⟨hr, hn'⟩ | ⟨_, hn'⟩
      · obtain ⟨v, hv, hd⟩ := ih (red u) (by omega) u
          (step_closed hu.step (steps_closed hb hc)) (by omega) rfl
        exact ⟨v, trans hb (.head hu.step hv), hd⟩
      · obtain ⟨v, hv, hd⟩ := affine_terminates u
          (step_closed hu.step (steps_closed hb hc)) hn'
        exact ⟨v, trans hb (.head hu.step hv), hd⟩

/-- Interpretation of the data constants by closed ordinary terms. -/
def interp (ρ : Nat → Term) : Q → Term
  | .var n => .var n
  | .lam b => .lam (interp ρ b)
  | .app f a => .app (interp ρ f) (interp ρ a)
  | .k => churchTrue
  | .z i => ρ i

theorem interp_shift (ρ : Nat → Term) (hρ : ∀ i, Closed (ρ i))
    (t : Q) (c : Nat) : interp ρ (shiftQ c t) = shift 1 c (interp ρ t) := by
  induction t generalizing c with
  | var n => simp only [shiftQ, interp, shift]; split <;> rfl
  | lam b ih => simp [shiftQ, interp, shift, ih]
  | app f a ihf iha => simp [shiftQ, interp, shift, ihf, iha]
  | k => exact (shift_churchTrue _ _).symm
  | z i => exact (shift_closed _ _ (hρ i)).symm

theorem interp_subst (ρ : Nat → Term) (hρ : ∀ i, Closed (ρ i))
    (t s : Q) (j : Nat) :
    interp ρ (substQ j s t) = substDec j (interp ρ s) (interp ρ t) := by
  induction t generalizing s j with
  | var n => simp only [substQ, interp, substDec]; split <;> (try rfl); split <;> rfl
  | lam b ih => simp [substQ, interp, substDec, ih, interp_shift ρ hρ]
  | app f a ihf iha => simp [substQ, interp, substDec, ihf, iha]
  | k => exact (substDec_churchTrue _ _).symm
  | z i => exact (substDec_closed _ _ (hρ i)).symm

def zeros : Nat → Term → Term
  | 0, T => T
  | n + 1, T => pairT churchTrue (zeros n T)

theorem pair_closed {a b : Term} (ha : Closed a) (hb : Closed b) : Closed (pairT a b) := by
  unfold pairT
  rw [shift_closed _ _ ha, shift_closed _ _ hb]
  exact ⟨⟨by decide, closed_freeUnder ha 1⟩, closed_freeUnder hb 1⟩

theorem zeros_closed (n : Nat) {T : Term} (hT : Closed T) : Closed (zeros n T) := by
  induction n with
  | zero => exact hT
  | succ n ih => exact pair_closed (by decide) ih

def realize (m : Nat) (T : Term) : Q → Term := interp (fun i => zeros (m - i) T)

/-- One above the largest demanded zero-cell label. -/
def demand : Q → Nat
  | .var _ | .k => 0
  | .lam b => demand b
  | .app f a => max (demand f) (demand a)
  | .z i => i + 1

theorem step_sim {t u : Q} (h : Step t u) (m : Nat) (T : Term)
    (hT : Closed T) (hm : demand t ≤ m) : Betas (realize m T t) (realize m T u) := by
  induction h with
  | beta b a =>
    unfold realize
    rw [interp_subst _ (fun i => zeros_closed _ hT)]
    exact .head (.beta _ _) (.refl _)
  | k a b => exact betas_of_spineReds (spine_true2 _ _)
  | z i a =>
    have he : m - i = (m - (i + 1)) + 1 := by simp only [demand] at hm; omega
    simp only [realize, interp, he, zeros]
    exact betas_of_spineReds (spine_pairT _ _ _)
  | left a h ih =>
    exact betas_appL _ (ih (Nat.le_trans (Nat.le_max_left _ _) hm))
  | right f h ih =>
    exact betas_appR _ (ih (Nat.le_trans (Nat.le_max_right _ _) hm))

/-- Every finite labelled trace has a finite prefix that simulates it. -/
theorem steps_sim {t u : Q} (h : Steps t u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T → Betas (realize m T t) (realize m T u) := by
  induction h with
  | refl t => exact ⟨0, fun _ _ _ _ => .refl _⟩
  | @head t u v h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨max (demand t) b, fun m hm T hT => ?_⟩
    exact betas_trans (step_sim h m T hT (Nat.le_trans (Nat.le_max_left _ _) hm))
      (hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T hT)

theorem done_sim {t : Q} (h : Done t) :
    ∃ b, ∀ m, b ≤ m → ∀ T, ∃ B, Betas (realize m T t) (.lam B) := by
  cases h with
  | k => exact ⟨0, fun _ _ _ => ⟨_, .refl _⟩⟩
  | z i =>
    refine ⟨i + 1, fun m hm T => ?_⟩
    have he : m - i = (m - (i + 1)) + 1 := by omega
    simp only [realize, interp, he, zeros, pairT]
    exact ⟨_, .refl _⟩
  | const t =>
    refine ⟨0, fun m _ T => ⟨_, .head (.beta _ _) (.refl _)⟩⟩
  | lam b => exact ⟨0, fun _ _ _ => ⟨_, .refl _⟩⟩

/-- The infinite-zero proof produces a uniform finite cutoff, independent
of the closed suffix eventually placed after the zero prefix. -/
theorem finite_prefix_answer (t : Q) (hc : ClosedQ t) (hn : nl t ≤ 1) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T → ∃ B, Betas (realize m T t) (.lam B) := by
  obtain ⟨u, hu, hd⟩ := one_nonlinear_terminates t hc hn
  obtain ⟨a, ha⟩ := steps_sim hu
  obtain ⟨b, hb⟩ := done_sim hd
  refine ⟨max a b, fun m hm T hT => ?_⟩
  obtain ⟨B, hB⟩ := hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T
  exact ⟨B, betas_trans (ha m (Nat.le_trans (Nat.le_max_left _ _) hm) T hT) hB⟩

def embed : Term → Q
  | .var n => .var n
  | .lam b => .lam (embed b)
  | .app f a => .app (embed f) (embed a)

@[simp] theorem erase_embed (t : Term) : erase (embed t) = t := by
  induction t <;> simp_all [embed, erase]

@[simp] theorem interp_embed (ρ : Nat → Term) (t : Term) : interp ρ (embed t) = t := by
  induction t <;> simp_all [embed, interp]

private def omegaTerm : Term :=
  .app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))

private theorem omega_beta_eq {u : Term} (h : Beta omegaTerm u) : u = omegaTerm := by
  have hs := headStep_complete (spine_beta_head (Spine.redex (by decide) (by decide)) h)
  exact Option.some.inj hs.symm

private theorem omega_betas_eq {u : Term} (h : Betas omegaTerm u) : u = omegaTerm := by
  have aux : ∀ t v, Betas t v → t = omegaTerm → v = omegaTerm := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb _ ih =>
      intro ht
      apply ih
      subst ht
      exact omega_beta_eq hb
  exact aux _ _ h rfl

private theorem omega_not_lam {B : Term} : ¬ BetaJoin (.lam B) omegaTerm := by
  rintro ⟨u, hu, ho⟩
  have he := omega_betas_eq ho
  subst u
  obtain ⟨v, hv, _⟩ := lam_betas_shape hu
  cases hv

def tower : Nat → Term
  | 0 => .lam (.var 0)
  | n + 1 => .lam (tower n)

theorem tower_closed (n : Nat) : Closed (tower n) := by
  induction n with
  | zero => decide
  | succ n ih => exact closed_freeUnder ih 1

theorem tower_stream (n : Nat) (N : Term) :
    streamOf (blcCode (tower n)) N = zeros (2 * n) (streamOf (blcCode (.lam (.var 0))) N) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    have he : 2 * (n + 1) = (2 * n + 1) + 1 := by omega
    change pairT churchTrue (pairT churchTrue (streamOf (blcCode (tower n)) N)) = _
    rw [he]
    simp only [zeros, ih]

/-- Any body which returns the exact suffix after every closed BLC term
contains at least two nonlinear binders, excluding its outer stream binder.
Only closed suffixes and beta-join correctness are required. -/
theorem remainder_body_two_nonlinear (B : Term) (hB : FreeUnder 1 B)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (contract B (streamOf (blcCode M) N)) N) :
    2 ≤ nonlinear B := by
  by_cases hn : 2 ≤ nonlinear B
  · exact hn
  exfalso
  have hsmall : nonlinear B ≤ 1 := by omega
  let t : Q := substQ 0 (.z 0) (embed B)
  have hc : ClosedQ t := by
    unfold ClosedQ t
    rw [erase_subst, erase_embed]
    exact SelfintWireCost.beta_freeUnder (.beta B (.lam (.var 0))) 0 ⟨hB, by decide⟩
  have hnl : nl t ≤ 1 := by
    change nl (substQ 0 (.z 0) (embed B)) ≤ 1
    rw [nl_subst, nl_z, Nat.mul_zero, Nat.add_zero]
    simpa only [nl, erase_embed] using hsmall
  obtain ⟨b, hb⟩ := finite_prefix_answer t hc hnl
  let T := streamOf (blcCode (.lam (.var 0))) omegaTerm
  have hT : Closed T := by decide
  obtain ⟨D, hD⟩ := hb (2 * b) (by omega) T hT
  have he : realize (2 * b) T t = contract B (streamOf (blcCode (tower b)) omegaTerm) := by
    simp only [t, realize, interp_subst _ (fun i => zeros_closed _ hT),
      interp, interp_embed, Nat.sub_zero, contract, tower_stream, T]
  rw [he] at hD
  obtain ⟨u, hu, ho⟩ := hR (tower b) (tower_closed b) omegaTerm (by decide)
  obtain ⟨v, hv, hv'⟩ := betas_confluent hD hu
  exact omega_not_lam ⟨v, hv, betas_trans ho hv'⟩

/-- The corresponding whole-program bound. -/
theorem remainder_two_nonlinear (R : Term) (hR : Closed R)
    (hcorrect : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) :
    2 ≤ nonlinear R := by
  have hbody := remainder_body_two_nonlinear (.app (shift 1 0 R) (.var 0))
    (by rw [shift_closed _ _ hR]; exact ⟨closed_freeUnder hR 1, by decide⟩)
    (by
      intro M hM N hN
      simpa only [contract, substDec, substDec_shift, ↓reduceIte] using hcorrect M hM N hN)
  simpa only [nonlinear, nonlinear_shift, Nat.add_zero] using hbody
end SelfintZero
end Blc
