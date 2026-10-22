/- The W/B grammar underlying the syntactic omega oracle. This proof is
independent of the engine: marked substitution preserves B, every B with
no marked free variables has a head step, and that step preserves B.
The app-left B rule also permits an unapplied B abstraction; its unmarked
formal parameter can be replaced by an arbitrary term. -/
import Proofs
namespace Blc.Round3Floor38.WGrammar38
open Term SelfintSharp SelfintLowerBound
set_option maxRecDepth 100000
set_option maxHeartbeats 12000000

abbrev Env := Nat → Bool
def empty : Env := fun _ => false
def lift (v : Bool) (m : Env) : Env
  | 0 => v
  | n+1 => m n
def insert (m : Env) (j : Nat) (v : Bool) : Env :=
  fun n => if n < j then m n else if n = j then v else m (n-1)

theorem insert_zero (m : Env) (v : Bool) : insert m 0 v = lift v m := by
  funext n
  cases n <;> simp [insert, lift]
theorem lift_insert (m : Env) (j : Nat) (v q : Bool) :
    lift q (insert m j v) = insert (lift q m) (j+1) v := by
  funext n
  cases n with
  | zero => simp [lift, insert]
  | succ n =>
      by_cases hl : n < j
      · have hls : n+1 < j+1 := by omega
        simp [lift, insert, hl, hls]
      · by_cases he : n = j
        · subst n; simp [lift, insert]
        · have hls : ¬ n+1 < j+1 := by omega
          have hpos : 0 < n := by omega
          cases n with
          | zero => omega
          | succ n => simp [lift, insert, hl, he, hls]
theorem lift_empty : lift false empty = empty := by
  funext n; cases n <;> rfl

mutual
  def W (m : Env) : Term → Prop
    | .var n => m n = true
    | .lam b => B (lift true m) b
    | .app _ _ => False
  def B (m : Env) : Term → Prop
    | .var _ => False
    | .lam b => B (lift false m) b
    | .app f a => B m f ∨ (W m f ∧ (W m a ∨ B m a))
end

mutual
  def decW (m : Env) : (t : Term) → Decidable (W m t)
    | .var n => inferInstanceAs (Decidable (m n = true))
    | .lam b => decB (lift true m) b
    | .app _ _ => isFalse (fun h => h)
  def decB (m : Env) : (t : Term) → Decidable (B m t)
    | .var _ => isFalse (fun h => h)
    | .lam b => decB (lift false m) b
    | .app f a =>
      let _ := decB m f
      let _ := decW m f
      let _ := decW m a
      let _ := decB m a
      inferInstanceAs (Decidable (_ ∨ (_ ∧ (_ ∨ _))))
end
instance (m : Env) (t : Term) : Decidable (W m t) := decW m t
instance (m : Env) (t : Term) : Decidable (B m t) := decB m t

theorem shift_preserves (t : Term) : ∀ (m : Env) (c : Nat) (v : Bool),
    (W m t → W (insert m c v) (shift 1 c t)) ∧
    (B m t → B (insert m c v) (shift 1 c t)) := by
  induction t with
  | var n =>
      intro m c v
      constructor
      · intro h
        by_cases hn : n ≥ c
        · have hl : ¬ n+1 < c := by omega
          have he : n+1 ≠ c := by omega
          simpa [W, shift, insert, hn, hl, he] using h
        · have hl : n < c := by omega
          simpa [W, shift, insert, hn, hl] using h
      · intro h; exact h.elim
  | lam b ih =>
      intro m c v
      constructor
      · intro h
        change B (lift true (insert m c v)) (shift 1 (c+1) b)
        rw [lift_insert]
        exact (ih (lift true m) (c+1) v).2 h
      · intro h
        change B (lift false (insert m c v)) (shift 1 (c+1) b)
        rw [lift_insert]
        exact (ih (lift false m) (c+1) v).2 h
  | app f a ihf iha =>
      intro m c v
      constructor
      · intro h; exact h.elim
      · intro h
        rcases h with hf | ⟨hf, ha⟩
        · exact Or.inl ((ihf m c v).2 hf)
        · refine Or.inr ⟨(ihf m c v).1 hf, ?_⟩
          rcases ha with ha | ha
          · exact Or.inl ((iha m c v).1 ha)
          · exact Or.inr ((iha m c v).2 ha)

theorem shift_zero (m : Env) (v : Bool) {a : Term} (h : W m a ∨ B m a) :
    W (lift v m) (shift 1 0 a) ∨ B (lift v m) (shift 1 0 a) := by
  rw [← insert_zero]
  rcases h with h | h
  · exact Or.inl ((shift_preserves a m 0 v).1 h)
  · exact Or.inr ((shift_preserves a m 0 v).2 h)

theorem subst_preserves (t : Term) : ∀ (m : Env) (j : Nat) (v : Bool) (a : Term),
    (v = true → W m a ∨ B m a) →
    (W (insert m j v) t → W m (substDec j a t) ∨ B m (substDec j a t)) ∧
    (B (insert m j v) t → B m (substDec j a t)) := by
  induction t with
  | var n =>
      intro m j v a ha
      constructor
      · intro h
        by_cases he : n = j
        · subst n
          have hv : v = true := by simpa [W, insert] using h
          simpa [substDec] using ha hv
        · by_cases hg : n > j
          · have hl : ¬ n < j := by omega
            apply Or.inl
            simpa [W, substDec, insert, he, hg, hl] using h
          · have hl : n < j := by omega
            apply Or.inl
            simpa [W, substDec, insert, he, hg, hl] using h
      · intro h; exact h.elim
  | lam b ih =>
      intro m j v a ha
      constructor
      · intro h
        apply Or.inl
        change B (lift true m) (substDec (j+1) (shift 1 0 a) b)
        apply (ih (lift true m) (j+1) v (shift 1 0 a)
          (fun hv => shift_zero m true (ha hv))).2
        simpa only [W, lift_insert] using h
      · intro h
        change B (lift false m) (substDec (j+1) (shift 1 0 a) b)
        apply (ih (lift false m) (j+1) v (shift 1 0 a)
          (fun hv => shift_zero m false (ha hv))).2
        simpa only [B, lift_insert] using h
  | app f b ihf ihb =>
      intro m j v a ha
      constructor
      · intro h; exact h.elim
      · intro h
        rcases h with hf | ⟨hf, hb⟩
        · exact Or.inl ((ihf m j v a ha).2 hf)
        · rcases (ihf m j v a ha).1 hf with hf | hf
          · refine Or.inr ⟨hf, ?_⟩
            rcases hb with hb | hb
            · exact (ihb m j v a ha).1 hb
            · exact Or.inr ((ihb m j v a ha).2 hb)
          · exact Or.inl hf

theorem contract_marked {m : Env} {b a : Term}
    (hb : B (lift true m) b) (ha : W m a ∨ B m a) : B m (contract b a) := by
  apply (subst_preserves b m 0 true a (fun _ => ha)).2
  simpa only [insert_zero] using hb
theorem contract_unmarked {m : Env} {b : Term}
    (hb : B (lift false m) b) (a : Term) : B m (contract b a) := by
  apply (subst_preserves b m 0 false a (by intro h; cases h)).2
  simpa only [insert_zero] using hb

theorem progress (t : Term) : B empty t → ∃ u, headStep t = some u ∧ B empty u := by
  induction t with
  | var n => intro h; exact h.elim
  | lam b ih =>
      intro h
      have hb : B empty b := by simpa only [B, lift_empty] using h
      obtain ⟨u, hu, hb⟩ := ih hb
      refine ⟨.lam u, ?_, ?_⟩
      · simp only [headStep, hu, Option.map_some]
      · simpa only [B, lift_empty] using hb
  | app f a ihf iha =>
      intro h
      rcases h with hf | ⟨hf, ha⟩
      · cases f with
        | var n => exact hf.elim
        | lam b => exact ⟨_, rfl, contract_unmarked hf a⟩
        | app g b =>
            obtain ⟨u, hu, hb⟩ := ihf hf
            exact ⟨.app u a, by simp only [headStep] at hu ⊢; rw [hu]; rfl, Or.inl hb⟩
      · cases f with
        | var n => cases hf
        | lam b => exact ⟨_, rfl, contract_marked hf ha⟩
        | app g b => exact hf.elim

theorem head_preserves {t u : Term} (ht : B empty t) (hs : headStep t = some u) :
    B empty u := by
  obtain ⟨v, hv, hb⟩ := progress t ht
  have he := Option.some.inj (hv.symm.trans hs)
  subst u
  exact hb
theorem steps_preserve (n : Nat) {t u : Term} (ht : B empty t)
    (hs : headSteps n t = some u) : B empty u := by
  induction n generalizing t with
  | zero => cases hs; exact ht
  | succ n ih =>
      simp only [headSteps, Option.bind_eq_some_iff] at hs
      obtain ⟨v, hv, hrest⟩ := hs
      exact ih (head_preserves ht hv) hrest
theorem no_normal_form {t : Term} (ht : B empty t) : ¬ HasNormalForm t := by
  intro hn
  obtain ⟨n, u, hs, hu⟩ := hasNormalForm_headTerminates hn
  obtain ⟨v, hv, hb⟩ := progress u (steps_preserve n ht hs)
  simp [hu] at hv
theorem not_selfinterpreter {e : Term} (h : B empty e) : ¬ IsSelfInterpreter e := by
  intro he
  exact no_normal_form
    (t := .app (.app e (.var 1)) (SelfintControl.quoteI (.var 0)))
    (Or.inl (Or.inl h)) (identity_has_normal_form he)

#print axioms not_selfinterpreter
end Blc.Round3Floor38.WGrammar38
