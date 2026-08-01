/-
The head-factorization bridge: a term with a β-normal form has a
terminating head reduction, hence HeadDiverges → ¬HasNormalForm — for
EVERY term, not only single-redex disciplines. This is the general
theorem that lets any head-divergence certificate (every ratchet in
tools/cert/ratchet_kills.txt) conclude no-normal-form.

Route (Codex round five, Accattoli–Faggian–Guerrieri): the indexed
split peels AT MOST ONE head step from a parallel step — the index
strictly drops, so no head chain is ever absorbed into one parallel
step (the failure of the naive factorization). Internal steps (IPar,
with the redexShell constructor preserving an uncontracted root
redex) reflect head-normality backward and merge with a following
head step into a fresh parallel step; the pullback then runs on the
lexicographic measure (head steps remaining, split index).
-/

import Blc.Par
import Blc.Beta
import Blc.Loop32

namespace Blc
open Term

/-- Parallel reduction, index erased. -/
def Par (t u : Term) : Prop := ∃ n, ParN n t u

/-- One β step is one parallel step. -/
theorem beta_par : ∀ {t u : Term}, Beta t u → Par t u := by
  intro t u h
  induction h with
  | beta b a => exact ⟨_, ParN.beta (parN_refl b) (parN_refl a)⟩
  | appL a _ ih => obtain ⟨n, hn⟩ := ih; exact ⟨_, ParN.app hn (parN_refl a)⟩
  | appR f _ ih => obtain ⟨n, hn⟩ := ih; exact ⟨_, ParN.app (parN_refl f) hn⟩
  | lam _ ih => obtain ⟨n, hn⟩ := ih; exact ⟨n, ParN.lam hn⟩

/-- Internal parallel reduction: a parallel step that contracts no
head redex. `redexShell` is the load-bearing constructor — a root
redex may stay in place (body and argument reducing in parallel)
without the step counting as head reduction. -/
inductive IPar : Term → Term → Prop where
  | var (n : Nat) : IPar (.var n) (.var n)
  | lam {b b' : Term} (h : IPar b b') : IPar (.lam b) (.lam b')
  | redexShell {b b' a a' : Term} (hb : Par b b') (ha : Par a a') :
      IPar (.app (.lam b) a) (.app (.lam b') a')
  | app {f f' a a' : Term} (hf : IPar f f') (ha : Par a a') :
      IPar (.app f a) (.app f' a')

theorem ipar_par : ∀ {t u : Term}, IPar t u → Par t u := by
  intro t u h
  induction h with
  | var n => exact ⟨0, ParN.var n⟩
  | lam _ ih => obtain ⟨n, hn⟩ := ih; exact ⟨n, ParN.lam hn⟩
  | redexShell hb ha =>
      obtain ⟨n₁, h₁⟩ := hb
      obtain ⟨n₂, h₂⟩ := ha
      exact ⟨_, ParN.app (ParN.lam h₁) h₂⟩
  | app _ ha ih =>
      obtain ⟨n₁, h₁⟩ := ih
      obtain ⟨n₂, h₂⟩ := ha
      exact ⟨_, ParN.app h₁ h₂⟩

/-- Internal steps reflect head-normality backward: they never create
a head redex that was not already there. -/
theorem ipar_headNormal : ∀ {t u : Term}, IPar t u →
    headStep u = none → headStep t = none := by
  intro t u h
  induction h with
  | var n => intro _; rfl
  | lam _ ih =>
      intro hu
      simp only [headStep, Option.map_eq_none_iff] at hu ⊢
      exact ih hu
  | redexShell hb ha =>
      intro hu
      simp [headStep] at hu
  | app hf ha ih =>
      intro hu
      cases hf with
      | var n =>
          simp only [headStep] at hu ⊢
          exact hu
      | lam h' => simp [headStep] at hu
      | redexShell hb' ha' =>
          simp only [headStep, Option.map_eq_none_iff] at hu ⊢
          exact ih hu
      | app hf' ha' =>
          simp only [headStep, Option.map_eq_none_iff] at hu ⊢
          exact ih hu

/-- The indexed split: a parallel step is internal, or it exposes
exactly one head step and the index strictly drops. The beta case
spends its `+1` on the exposed root contraction, with the
substitution theorem supplying the remainder at the exact index. -/
theorem indexed_split : ∀ {n : Nat} {t u : Term}, ParN n t u →
    IPar t u ∨ ∃ m v, m < n ∧ HeadStep t v ∧ ParN m v u := by
  intro n t u h
  induction h with
  | var k => exact Or.inl (IPar.var k)
  | lam hb ih =>
      rcases ih with hi | ⟨m, v, hm, hs, hr⟩
      · exact Or.inl (IPar.lam hi)
      · exact Or.inr ⟨m, .lam v, hm, HeadStep.under hs, ParN.lam hr⟩
  | app hf ha ihf iha =>
      rename_i n₁ n₂ f f' a a'
      cases f with
      | lam b =>
          cases hf with
          | lam hb' => exact Or.inl (IPar.redexShell ⟨_, hb'⟩ ⟨_, ha⟩)
      | var k =>
          rcases ihf with hi | ⟨m, v, hm, hs, hr⟩
          · exact Or.inl (IPar.app hi ⟨_, ha⟩)
          · exact Or.inr ⟨m + n₂, .app v a, by omega,
              HeadStep.appL a (by intro b hb; cases hb) hs, ParN.app hr ha⟩
      | app g x =>
          rcases ihf with hi | ⟨m, v, hm, hs, hr⟩
          · exact Or.inl (IPar.app hi ⟨_, ha⟩)
          · exact Or.inr ⟨m + n₂, .app v a, by omega,
              HeadStep.appL a (by intro b hb; cases hb) hs, ParN.app hr ha⟩
  | beta hb ha _ihb _iha =>
      rename_i n₁ n₂ b b' a a'
      exact Or.inr ⟨n₁ + occ 0 b' * n₂, contract b a, by omega,
        HeadStep.beta b a, parN_substDec hb ha 0⟩

/-- Merge: an internal step followed by a head step recombines into a
single parallel step (index forgotten — the pullback's measure drops
on the head count instead). -/
theorem ipar_merge : ∀ {t u : Term}, IPar t u →
    ∀ {v : Term}, HeadStep u v → Par t v := by
  intro t u h
  induction h with
  | var n => intro v hv; cases hv
  | lam _ ih =>
      intro v hv
      cases hv with
      | under h' =>
          obtain ⟨n, hn⟩ := ih h'
          exact ⟨n, ParN.lam hn⟩
  | redexShell hb ha =>
      intro v hv
      cases hv with
      | beta _ _ =>
          obtain ⟨n₁, h₁⟩ := hb
          obtain ⟨n₂, h₂⟩ := ha
          exact ⟨_, ParN.beta h₁ h₂⟩
      | appL _ nonlam _ => exact absurd rfl (nonlam _)
  | app hf ha ih =>
      intro v hv
      cases hv with
      | beta b' _ =>
          cases hf with
          | lam hb' =>
              obtain ⟨n₁, h₁⟩ := ipar_par hb'
              obtain ⟨n₂, h₂⟩ := ha
              exact ⟨_, ParN.beta h₁ h₂⟩
      | appL _ nonlam h' =>
          obtain ⟨n₁, h₁⟩ := ih h'
          obtain ⟨n₂, h₂⟩ := ha
          exact ⟨_, ParN.app h₁ h₂⟩

/-- The pullback: a parallel step into a head-terminating term
head-terminates. Lexicographic descent: the IPar branch consumes one
head step of the target (merge recombines, index reset, head count
down); the split branch keeps the head count and drops the index. -/
theorem parN_head_pullback :
    ∀ (k : Nat), ∀ {n : Nat} {t u p : Term}, ParN n t u →
      headSteps k u = some p → headStep p = none →
      ∃ k' q, headSteps k' t = some q ∧ headStep q = none := by
  intro k
  induction k using Nat.strongRecOn with
  | ind k IHk =>
      intro n
      induction n using Nat.strongRecOn with
      | ind n IHn =>
          intro t u p h hsteps hp
          rcases indexed_split h with hint | ⟨m, v, hm, hstep, hrest⟩
          · cases k with
            | zero =>
                simp only [headSteps] at hsteps
                cases hsteps
                exact ⟨0, t, rfl, ipar_headNormal hint hp⟩
            | succ k' =>
                simp only [headSteps, Option.bind_eq_some_iff] at hsteps
                obtain ⟨u₁, hu₁, hrest'⟩ := hsteps
                obtain ⟨n₂, hpar⟩ := ipar_merge hint (headStep_sound hu₁)
                exact IHk k' (Nat.lt_succ_self k') hpar hrest' hp
          · obtain ⟨k'', q, hq, hqn⟩ := IHn m hm hrest hsteps hp
            refine ⟨k'' + 1, q, ?_, hqn⟩
            simp only [headSteps, headStep_complete hstep, Option.bind_some]
            exact hq

/-- A normal form is head-normal. -/
theorem normalForm_headStep_none {t : Term} (h : NormalForm t) :
    headStep t = none := by
  cases hs : headStep t with
  | none => rfl
  | some v => exact absurd (beta_of_headStep (headStep_sound hs)) (h v)

/-- Head normalization: a term with a β-normal form has a
terminating head reduction. -/
theorem hasNormalForm_headTerminates : ∀ {t : Term}, HasNormalForm t →
    ∃ k p, headSteps k t = some p ∧ headStep p = none := by
  intro t ⟨nf, hred, hnf⟩
  induction hred with
  | refl t => exact ⟨0, t, rfl, normalForm_headStep_none hnf⟩
  | head hb _ ih =>
      obtain ⟨k, p, hk, hp⟩ := ih hnf
      obtain ⟨n, hn⟩ := beta_par hb
      obtain ⟨k', q, hq, hqn⟩ := parN_head_pullback k hn hk hp
      exact ⟨k', q, hq, hqn⟩

/-- **The general bridge**: head divergence rules out a normal form —
for every term. Any head-divergence certificate now concludes
¬HasNormalForm with no side conditions. -/
theorem headDiverges_not_hasNormalForm {t : Term}
    (hd : HeadDiverges t) : ¬ HasNormalForm t := by
  intro hnf
  obtain ⟨k, p, hk, hp⟩ := hasNormalForm_headTerminates hnf
  obtain ⟨u, hu, hnext⟩ := hd k
  rw [hk] at hu
  cases hu
  exact hnext hp

/-- The flagship, re-derived through the general theorem (the
single-redex proof in Blc/NoNf.lean stands independently). -/
theorem loop32_noNormalForm' : ¬ HasNormalForm loop32 :=
  headDiverges_not_hasNormalForm loop32_headDiverges

end Blc
