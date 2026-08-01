/-
Indexed parallel β-reduction (Accattoli–Faggian–Guerrieri style): the
index counts contracted redexes, weighted by duplication, and is the
termination measure that lets the head/internal split iterate without
ever absorbing a head chain into one parallel step. Feeds the
factorization bridge HeadDiverges → ¬HasNormalForm.

`occ j t` counts free occurrences of variable `j` (cutoff raised
under binders); the five occ lemmas mirror the substitution geometry
of Blc/Subst.lean.
-/

import Blc.Subst

namespace Blc
open Term

/-- Occurrences of variable `j` in `t`. -/
def occ (j : Nat) : Term → Nat
  | .var n => if n = j then 1 else 0
  | .lam b => occ (j + 1) b
  | .app f a => occ j f + occ j a

/-- Nat-goal finisher for the occ var cases. -/
macro "occ_bash" : tactic =>
  `(tactic|
    repeat' first
      | omega
      | (simp only [occ, Term.shift, Term.substDec])
      | split)

theorem occ_shift_lt : ∀ (t : Term) (v c : Nat), v < c →
    occ v (shift 1 c t) = occ v t := by
  intro t
  induction t with
  | var n => intro v c h; occ_bash
  | lam b ih =>
      intro v c h
      simp only [shift, occ]
      exact ih (v + 1) (c + 1) (Nat.succ_lt_succ h)
  | app f a ihf iha =>
      intro v c h
      simp only [shift, occ]
      rw [ihf v c h, iha v c h]

theorem occ_shift_eq : ∀ (t : Term) (c : Nat), occ c (shift 1 c t) = 0 := by
  intro t
  induction t with
  | var n => intro c; occ_bash
  | lam b ih =>
      intro c
      simp only [shift, occ]
      exact ih (c + 1)
  | app f a ihf iha =>
      intro c
      simp only [shift, occ]
      rw [ihf c, iha c]

theorem occ_shift_ge : ∀ (t : Term) (v c : Nat), c ≤ v →
    occ (v + 1) (shift 1 c t) = occ v t := by
  intro t
  induction t with
  | var n => intro v c h; occ_bash
  | lam b ih =>
      intro v c h
      simp only [shift, occ]
      exact ih (v + 1) (c + 1) (Nat.succ_le_succ h)
  | app f a ihf iha =>
      intro v c h
      simp only [shift, occ]
      rw [ihf v c h, iha v c h]

/-- Counting below the substitution index: copies of `u` contribute,
nothing else moves across `v`. -/
theorem occ_substDec_lt : ∀ (t u : Term) (v k : Nat), v < k →
    occ v (substDec k u t) = occ v t + occ k t * occ v u := by
  intro t
  induction t with
  | var n => intro u v k h; occ_bash
  | lam b ih =>
      intro u v k h
      simp only [substDec, occ]
      rw [ih (shift 1 0 u) (v + 1) (k + 1) (Nat.succ_lt_succ h)]
      rw [occ_shift_ge u v 0 (Nat.zero_le v)]
  | app f a ihf iha =>
      intro u v k h
      simp only [substDec, occ]
      rw [ihf u v k h, iha u v k h]
      rw [Nat.add_mul]
      omega

/-- Counting at or above the substitution index: `v` in the result
comes from `v+1` in the source, plus copies of `u`. -/
theorem occ_substDec_ge : ∀ (t u : Term) (v k : Nat), k ≤ v →
    occ v (substDec k u t) = occ (v + 1) t + occ k t * occ v u := by
  intro t
  induction t with
  | var n => intro u v k h; occ_bash
  | lam b ih =>
      intro u v k h
      simp only [substDec, occ]
      rw [ih (shift 1 0 u) (v + 1) (k + 1) (Nat.succ_le_succ h)]
      rw [occ_shift_ge u v 0 (Nat.zero_le v)]
  | app f a ihf iha =>
      intro u v k h
      simp only [substDec, occ]
      rw [ihf u v k h, iha u v k h]
      rw [Nat.add_mul]
      omega

/-- Indexed parallel reduction: the index counts contracted redexes,
each weighted by how many times duplication replays its argument's
redexes. `ParN 0 t u` are the internal-only... no — `ParN 0 t t` is
reflexivity; a positive index bounds the head steps the split can
extract. -/
inductive ParN : Nat → Term → Term → Prop where
  | var (n : Nat) : ParN 0 (.var n) (.var n)
  | lam {n : Nat} {b b' : Term} (h : ParN n b b') : ParN n (.lam b) (.lam b')
  | app {n m : Nat} {f f' a a' : Term}
      (hf : ParN n f f') (ha : ParN m a a') :
      ParN (n + m) (.app f a) (.app f' a')
  | beta {n m : Nat} {b b' a a' : Term}
      (hb : ParN n b b') (ha : ParN m a a') :
      ParN (n + occ 0 b' * m + 1) (.app (.lam b) a) (contract b' a')

theorem parN_cast {n n' : Nat} {t u : Term} (h : n = n') :
    ParN n t u → ParN n' t u := by
  subst h; exact id

theorem parN_refl : ∀ t : Term, ParN 0 t t := by
  intro t
  induction t with
  | var n => exact ParN.var n
  | lam b ih => exact ParN.lam ih
  | app f a ihf iha => exact parN_cast (by omega) (ParN.app ihf iha)

/-- Lifting preserves the index (shifting relocates no redex). -/
theorem parN_shift : ∀ {n : Nat} {t t' : Term}, ParN n t t' →
    ∀ c, ParN n (shift 1 c t) (shift 1 c t') := by
  intro n t t' h
  induction h with
  | var m => intro c; simp only [shift]; split <;> exact ParN.var _
  | lam _ ih => intro c; exact ParN.lam (ih (c + 1))
  | app _ _ ihf iha => intro c; exact ParN.app (ihf c) (iha c)
  | beta hb ha ihb iha =>
      intro c
      rename_i nb m b b' a a'
      simp only [shift, contract]
      rw [shift_substDec b' a' 0 c (Nat.zero_le c)]
      refine parN_cast ?_ (ParN.beta (ihb (c + 1)) (iha c))
      rw [occ_shift_lt b' 0 (c + 1) (Nat.succ_pos c)]

/-- The substitution theorem: substituting a parallel step into a
parallel step is a parallel step, with the exact index
`n + occ j t' * m`. This is the engine of the indexed split. -/
theorem parN_substDec : ∀ {n : Nat} {t t' : Term}, ParN n t t' →
    ∀ {m : Nat} {s s' : Term}, ParN m s s' → ∀ j,
    ParN (n + occ j t' * m) (substDec j s t) (substDec j s' t') := by
  intro n t t' h
  induction h with
  | var k =>
      intro m s s' hs j
      by_cases hk : k = j
      · subst hk
        have e1 : substDec k s (.var k) = s := by simp [substDec]
        have e2 : substDec k s' (.var k) = s' := by simp [substDec]
        have e3 : occ k (Term.var k) = 1 := by simp [occ]
        rw [e1, e2, e3]
        exact parN_cast (by omega) hs
      · have e3 : occ j (Term.var k) = 0 := by simp [occ, hk]
        by_cases hgt : k > j
        · have e1 : ∀ u : Term, substDec j u (.var k) = .var (k - 1) := by
            intro u; simp [substDec, hk, hgt]
          rw [e1 s, e1 s', e3]
          exact parN_cast (by omega) (ParN.var _)
        · have e1 : ∀ u : Term, substDec j u (.var k) = .var k := by
            intro u; simp [substDec, hk, hgt]
          rw [e1 s, e1 s', e3]
          exact parN_cast (by omega) (ParN.var _)
  | lam _ ih =>
      intro m s s' hs j
      simp only [substDec]
      exact ParN.lam (ih (parN_shift hs 0) (j + 1))
  | app _ _ ihf iha =>
      intro m s s' hs j
      rename_i nf ma f f' a a'
      simp only [substDec]
      refine parN_cast ?_ (ParN.app (ihf hs j) (iha hs j))
      simp only [occ, Nat.add_mul]
      omega
  | beta hb ha ihb iha =>
      intro m s s' hs j
      rename_i nb ma b b' a a'
      simp only [substDec]
      rw [substDec_contract b' a' s' j]
      refine parN_cast ?_ (ParN.beta (ihb (parN_shift hs 0) (j + 1)) (iha hs j))
      rw [occ_substDec_lt b' (shift 1 0 s') 0 (j + 1) (Nat.succ_pos j)]
      rw [occ_shift_eq s' 0]
      have hc : occ j (contract b' a') = occ (j + 1) b' + occ 0 b' * occ j a' := by
        unfold contract
        exact occ_substDec_ge b' a' j 0 (Nat.zero_le j)
      rw [hc]
      simp only [Nat.mul_add, Nat.add_mul, Nat.mul_assoc, Nat.mul_zero, Nat.add_zero]
      omega

end Blc
