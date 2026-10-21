/-
Full normalization of the affine K/Z data rules, including under program
lambdas. No program beta contraction is included in DataStep. This is a
supporting interface for the remainder code-growth argument, not a proof
of that argument's finite-transient or bounded-label assertions.
-/
import Blc.SelfintZero

namespace Blc
namespace SelfintGrowthBlue
open Term SelfintZero

inductive DataStep : Q → Q → Prop where
  | k (a b : Q) : DataStep (.app (.app .k a) b) a
  | z (i : Nat) (a : Q) :
      DataStep (.app (.z i) a) (.app (.app a .k) (.z (i + 1)))
  | left {f g : Q} (a : Q) : DataStep f g → DataStep (.app f a) (.app g a)
  | right (f : Q) {a b : Q} : DataStep a b → DataStep (.app f a) (.app f b)
  | lam {b c : Q} : DataStep b c → DataStep (.lam b) (.lam c)

inductive DataSteps : Q → Q → Prop where
  | refl (t : Q) : DataSteps t t
  | head {t u v : Q} : DataStep t u → DataSteps u v → DataSteps t v

theorem DataSteps.trans {t u v : Q} (h : DataSteps t u) (g : DataSteps u v) :
    DataSteps t v := by
  induction h with
  | refl => exact g
  | head h _ ih => exact .head h (ih g)

theorem DataSteps.one {t u : Q} (h : DataStep t u) : DataSteps t u :=
  .head h (.refl _)

theorem DataSteps.left {f g : Q} (a : Q) (h : DataSteps f g) :
    DataSteps (.app f a) (.app g a) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.left _ h) ih

theorem DataSteps.right (f : Q) {a b : Q} (h : DataSteps a b) :
    DataSteps (.app f a) (.app f b) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.right _ h) ih

theorem DataSteps.lam {b c : Q} (h : DataSteps b c) :
    DataSteps (.lam b) (.lam c) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.lam h) ih

theorem DataStep.red_le {t u : Q} (h : DataStep t u) : red u ≤ red t := by
  induction h with
  | k a b => simp only [red]; omega
  | z i a => simp only [red]; omega
  | left a h ih => simp only [red]; omega
  | right f h ih => simp only [red]; omega
  | lam h ih => simp only [red]; omega

theorem DataStep.occ_le {t u : Q} (h : DataStep t u) (j : Nat) :
    oc j u ≤ oc j t := by
  induction h generalizing j with
  | k a b => simp only [oc_app, oc_k]; omega
  | z i a => simp only [oc_app, oc_k, oc_z]; omega
  | left a h ih => simp only [oc_app]; exact Nat.add_le_add_right (ih j) _
  | right f h ih => simp only [oc_app]; exact Nat.add_le_add_left (ih j) _
  | lam h ih => exact ih (j + 1)

theorem DataStep.freeUnder {t u : Q} (h : DataStep t u) (d : Nat)
    (ht : FreeUnder d (erase t)) : FreeUnder d (erase u) := by
  induction h generalizing d with
  | k a b => exact ht.1.2
  | z i a => exact ⟨⟨ht.2, by simp [erase, FreeUnder]⟩, by simp [erase, FreeUnder]⟩
  | left a h ih => exact ⟨ih d ht.1, ht.2⟩
  | right f h ih => exact ⟨ht.1, ih d ht.2⟩
  | lam h ih => exact ih (d + 1) ht

theorem DataSteps.red_le {t u : Q} (h : DataSteps t u) : red u ≤ red t := by
  induction h with
  | refl => exact Nat.le_refl _
  | head h _ ih => exact Nat.le_trans ih h.red_le

theorem DataSteps.occ_le {t u : Q} (h : DataSteps t u) (j : Nat) :
    oc j u ≤ oc j t := by
  induction h with
  | refl => exact Nat.le_refl _
  | head h _ ih => exact Nat.le_trans ih (h.occ_le j)

theorem DataSteps.freeUnder {t u : Q} (h : DataSteps t u) (d : Nat)
    (ht : FreeUnder d (erase t)) : FreeUnder d (erase u) := by
  induction h with
  | refl => exact ht
  | head h _ ih => exact ih (h.freeUnder d ht)

theorem ap_data (u v : V) : DataSteps (.app (val u) (val v)) (val (ap u v)) := by
  cases u with
  | k => exact .refl _
  | const u => exact .one (.k _ _)
  | neu n => exact .refl _
  | z i =>
    cases v with
    | k => exact .head (.z _ _) (.one (.k _ _))
    | z j =>
      exact .head (.z _ _) (.head (.left _ (.z _ _))
        (.head (.left _ (.k _ _)) (.refl _)))
    | neu n => exact .one (.z _ _)
    | const v =>
      refine .head (.z _ _) (.head (.left _ (.k _ _)) ?_)
      cases v with
      | k => exact .refl _
      | z j =>
        exact .head (.z _ _) (.head (.left _ (.z _ _))
          (.head (.left _ (.k _ _)) (.refl _)))
      | const a => exact .one (.k _ _)
      | neu n => exact .refl _

/-- Unlike `SelfintZero.blue`, this also normalizes data inside lambdas. -/
def deep : Q → V
  | .var n => .neu (.atom (.var n))
  | .lam b => .neu (.atom (.lam (val (deep b))))
  | .app f a => ap (deep f) (deep a)
  | .k => .k
  | .z i => .z i

def norm (t : Q) : Q := val (deep t)

theorem norm_sound (t : Q) : DataSteps t (norm t) := by
  induction t with
  | var n => exact .refl _
  | lam b ih => exact ih.lam
  | app f a ihf iha =>
    exact (ihf.left _).trans ((iha.right _).trans (ap_data _ _))
  | k => exact .refl _
  | z i => exact .refl _

theorem norm_red (t : Q) : red (norm t) ≤ red t := (norm_sound t).red_le
theorem norm_occ (t : Q) (j : Nat) : oc j (norm t) ≤ oc j t :=
  (norm_sound t).occ_le j
theorem norm_freeUnder (t : Q) (d : Nat) (ht : FreeUnder d (erase t)) :
    FreeUnder d (erase (norm t)) := (norm_sound t).freeUnder d ht

theorem ap_z (i : Nat) (v : V) :
    ap (ap v .k) (.z (i + 1)) = ap (.z i) v := by
  cases v with
  | k => rfl
  | z j => rfl
  | neu n => rfl
  | const v => cases v <;> rfl

theorem DataStep.deep_eq {t u : Q} (h : DataStep t u) : deep t = deep u := by
  induction h with
  | k a b => rfl
  | z i a => exact (ap_z i (deep a)).symm
  | left a h ih => simp only [deep, ih]
  | right f h ih => simp only [deep, ih]
  | lam h ih => simp only [deep, ih]

theorem DataSteps.deep_eq {t u : Q} (h : DataSteps t u) : deep t = deep u := by
  induction h with
  | refl => rfl
  | head h _ ih => exact h.deep_eq.trans ih

theorem DataSteps.norm_eq {t u : Q} (h : DataSteps t u) : norm t = norm u :=
  congrArg val h.deep_eq

theorem norm_idempotent (t : Q) : norm (norm t) = norm t :=
  (norm_sound t).norm_eq.symm

theorem deep_norm (t : Q) : deep (norm t) = deep t :=
  (norm_sound t).deep_eq.symm

/-- Every two data reducts have the same explicit common data reduct. -/
theorem data_confluent {t u v : Q} (hu : DataSteps t u) (hv : DataSteps t v) :
    ∃ w, DataSteps u w ∧ DataSteps v w := by
  refine ⟨norm t, ?_, ?_⟩
  · rw [hu.norm_eq]
    exact norm_sound u
  · rw [hv.norm_eq]
    exact norm_sound v

theorem DataStep.shift {t u : Q} (h : DataStep t u) (c : Nat) :
    DataStep (shiftQ c t) (shiftQ c u) := by
  induction h generalizing c with
  | k a b => exact .k _ _
  | z i a => exact .z _ _
  | left a h ih => exact .left _ (ih c)
  | right f h ih => exact .right _ (ih c)
  | lam h ih => exact .lam (ih (c + 1))

theorem DataSteps.shift {t u : Q} (h : DataSteps t u) (c : Nat) :
    DataSteps (shiftQ c t) (shiftQ c u) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (h.shift c) ih

theorem DataStep.subst {t u : Q} (h : DataStep t u) (s : Q) (j : Nat) :
    DataStep (substQ j s t) (substQ j s u) := by
  induction h generalizing s j with
  | k a b => exact .k _ _
  | z i a => exact .z _ _
  | left a h ih => exact .left _ (ih s j)
  | right f h ih => exact .right _ (ih s j)
  | lam h ih => exact .lam (ih (shiftQ 0 s) (j + 1))

theorem DataSteps.subst {t u : Q} (h : DataSteps t u) (s : Q) (j : Nat) :
    DataSteps (substQ j s t) (substQ j s u) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (h.subst s j) ih

theorem DataSteps.subst_arg {s s' : Q} (h : DataSteps s s') (t : Q) (j : Nat) :
    DataSteps (substQ j s t) (substQ j s' t) := by
  induction t generalizing j s s' with
  | var n =>
    simp only [substQ]
    split
    · exact h
    · split <;> exact .refl _
  | lam b ih => exact (ih (h.shift 0) (j + 1)).lam
  | app f a ihf iha => exact ((ihf h j).left _).trans ((iha h j).right _)
  | k => exact .refl _
  | z i => exact .refl _

/-- Normalizing the body and operand before substitution gives the same
data normal form as normalizing their substitution instance afterward. -/
theorem norm_subst (t s : Q) (j : Nat) :
    norm (substQ j s t) = norm (substQ j (norm s) (norm t)) := by
  exact ((norm_sound t).subst s j |>.trans
    ((norm_sound s).subst_arg (norm t) j)).norm_eq

/-- A program beta contraction on the global function spine. -/
inductive RedHead : Q → Q → Prop where
  | beta (b a : Q) : RedHead (.app (.lam b) a) (substQ 0 a b)
  | left {f g : Q} (a : Q) : RedHead f g → RedHead (.app f a) (.app g a)

theorem RedHead.neutral {t u : Q} (h : RedHead t u) : ∃ n, deep t = .neu n := by
  induction h with
  | beta b a => exact ⟨_, rfl⟩
  | left a h ih =>
    obtain ⟨n, hn⟩ := ih
    exact ⟨.app n (deep a), by simp only [deep, hn, ap]⟩

/-- Full data normalization preserves an exposed program head redex.
The normalized reduct agrees after one further finite data phase. -/
theorem RedHead.norm_sim {t u : Q} (h : RedHead t u) :
    ∃ v, RedHead (norm t) v ∧ norm v = norm u := by
  induction h with
  | beta b a =>
    exact ⟨_, .beta (norm b) (norm a), (norm_subst b a 0).symm⟩
  | @left f g a h ih =>
    obtain ⟨v, hv, he⟩ := ih
    obtain ⟨n, hn⟩ := h.neutral
    have ht : norm (.app f a) = .app (norm f) (norm a) := by
      simp only [norm, deep, hn, ap, val, SelfintZero.neutral]
    refine ⟨.app v (norm a), ht ▸ .left _ hv, ?_⟩
    have hd : deep v = deep g := by
      have hh := congrArg deep he
      simpa only [deep_norm] using hh
    change val (ap (deep v) (deep (norm a))) = val (ap (deep g) (deep a))
    rw [deep_norm, hd]

theorem RedHead.norm_steps {t u : Q} (h : RedHead t u) :
    ∃ v, RedHead (norm t) v ∧ DataSteps v (norm u) := by
  obtain ⟨v, hv, he⟩ := h.norm_sim
  exact ⟨v, hv, he ▸ norm_sound v⟩

private theorem noGrowth_mono (k a l b : Nat) (h : k * a ≤ a + 1)
    (hl : l ≤ k) (hb : b ≤ a) : l * b ≤ b + 1 := by
  cases l with
  | zero => simp
  | succ l =>
    have hm := Nat.mul_le_mul_right a hl
    have ha : l * a ≤ 1 := by
      simp only [Nat.succ_mul] at hm
      omega
    have hb' := Nat.mul_le_mul_left l hb
    simp only [Nat.succ_mul]
    omega

/-- Removing data redexes cannot turn a nongrowing program contraction
into a growing one: both its bound-occurrence and operand counts decrease. -/
theorem beta_norm_noGrowth (b a : Q)
    (h : red (substQ 0 a b) ≤ red (.app (.lam b) a)) :
    red (substQ 0 (norm a) (norm b)) ≤ red (.app (.lam (norm b)) (norm a)) := by
  rw [red_subst] at h ⊢
  simp only [red] at h ⊢
  have hp : oc 0 b * red a ≤ red a + 1 := by omega
  have hm := noGrowth_mono (oc 0 b) (red a) (oc 0 (norm b)) (red (norm a))
    hp (norm_occ b 0) (norm_red a)
  omega

theorem RedHead.norm_noGrowth {t u : Q} (h : RedHead t u)
    (hr : red u ≤ red t) :
    ∃ v, RedHead (norm t) v ∧ norm v = norm u ∧ red v ≤ red (norm t) := by
  induction h with
  | beta b a =>
    exact ⟨_, .beta (norm b) (norm a), (norm_subst b a 0).symm,
      beta_norm_noGrowth b a hr⟩
  | @left f g a h ih =>
    have hf : red g ≤ red f := by simpa only [red, Nat.add_le_add_iff_right] using hr
    obtain ⟨v, hv, he, hvred⟩ := ih hf
    obtain ⟨n, hn⟩ := h.neutral
    have ht : norm (.app f a) = .app (norm f) (norm a) := by
      simp only [norm, deep, hn, ap, val, SelfintZero.neutral]
    have hd : deep v = deep g := by
      have hh := congrArg deep he
      simpa only [deep_norm] using hh
    refine ⟨.app v (norm a), ht ▸ .left _ hv, ?_, ?_⟩
    · change val (ap (deep v) (deep (norm a))) = val (ap (deep g) (deep a))
      rw [deep_norm, hd]
    · rw [ht]
      exact Nat.add_le_add_right hvred _

end SelfintGrowthBlue
end Blc
