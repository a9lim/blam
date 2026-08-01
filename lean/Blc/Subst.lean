/-
The five nontrivial shift/substitution equations for one-pass
β-substitution (Nipkow–Berghofer's de Bruijn set, stated for our
`shift`/`substDec`). These feed the indexed-parallel-reduction
substitution theorem, which feeds the head-factorization bridge
(HeadDiverges → ¬HasNormalForm for arbitrary certificates) — the
Accattoli–Faggian–Guerrieri staging, Codex round five.

Every proof is induction on the term with the cut indices
generalized; variable cases are finite if-case bashes: unfold, split,
close each leaf by rfl / var-congruence / contradiction, all
arithmetic discharged by omega.
-/

import Blc.Term

namespace Blc
open Term

private theorem var_eq (m n : Nat) (h : m = n) : Term.var m = Term.var n :=
  congrArg Term.var h

/-- The var-case finisher: unfold `shift`/`substDec`, split every
`if`, close leaves. -/
macro "var_bash" : tactic =>
  `(tactic|
    repeat' first
      | rfl
      | (exact var_eq _ _ (by omega))
      | (exfalso; omega)
      | (simp only [Term.shift, Term.substDec])
      | split)

/-- (1) Commuting two lifts: for `c ≤ c'`,
`↑_{c'+1} ∘ ↑_c = ↑_c ∘ ↑_{c'}`. -/
theorem shift_shift : ∀ (t : Term) (c c' : Nat), c ≤ c' →
    shift 1 (c' + 1) (shift 1 c t) = shift 1 c (shift 1 c' t) := by
  intro t
  induction t with
  | var n => intro c c' h; var_bash
  | lam b ih =>
      intro c c' h
      simp only [shift]
      rw [ih (c + 1) (c' + 1) (Nat.succ_le_succ h)]
  | app f a ihf iha =>
      intro c c' h
      simp only [shift]
      rw [ihf c c' h, iha c c' h]

/-- (2) Lift past an outer substitution, cut above the index: for
`j ≤ c`, `↑_c (t[s/j]) = (↑_{c+1} t)[↑_c s / j]`. -/
theorem shift_substDec : ∀ (t : Term) (s : Term) (j c : Nat), j ≤ c →
    shift 1 c (substDec j s t) = substDec j (shift 1 c s) (shift 1 (c + 1) t) := by
  intro t
  induction t with
  | var n => intro s j c h; var_bash
  | lam b ih =>
      intro s j c h
      simp only [shift, substDec]
      rw [ih (shift 1 0 s) (j + 1) (c + 1) (Nat.succ_le_succ h)]
      rw [shift_shift s 0 c (Nat.zero_le c)]
  | app f a ihf iha =>
      intro s j c h
      simp only [shift, substDec]
      rw [ihf s j c h, iha s j c h]

/-- (3) Lift past an outer substitution, cut at or below the index:
for `c ≤ j`, `↑_c (t[s/j]) = (↑_c t)[↑_c s / (j+1)]`. -/
theorem shift_substDec_lt : ∀ (t : Term) (s : Term) (j c : Nat), c ≤ j →
    shift 1 c (substDec j s t) = substDec (j + 1) (shift 1 c s) (shift 1 c t) := by
  intro t
  induction t with
  | var n => intro s j c h; var_bash
  | lam b ih =>
      intro s j c h
      simp only [shift, substDec]
      rw [ih (shift 1 0 s) (j + 1) (c + 1) (Nat.succ_le_succ h)]
      rw [shift_shift s 0 c (Nat.zero_le c)]
  | app f a ihf iha =>
      intro s j c h
      simp only [shift, substDec]
      rw [ihf s j c h, iha s j c h]

/-- (4) Substituting at the cut of a lift is the identity:
`(↑_c t)[s/c] = t`. -/
theorem substDec_shift : ∀ (t : Term) (s : Term) (c : Nat),
    substDec c s (shift 1 c t) = t := by
  intro t
  induction t with
  | var n => intro s c; var_bash
  | lam b ih =>
      intro s c
      simp only [shift, substDec]
      rw [ih (shift 1 0 s) (c + 1)]
  | app f a ihf iha =>
      intro s c
      simp only [shift, substDec]
      rw [ihf s c, iha s c]

/-- (5) The substitution lemma: for `i ≤ j`,
`(t[s/i])[u/j] = (t[↑_i u / (j+1)])[(s[u/j]) / i]`. -/
theorem substDec_substDec : ∀ (t : Term) (s u : Term) (i j : Nat), i ≤ j →
    substDec j u (substDec i s t)
      = substDec i (substDec j u s) (substDec (j + 1) (shift 1 i u) t) := by
  intro t
  induction t with
  | var n =>
      intro s u i j h
      repeat' first
        | rfl
        | (exact var_eq _ _ (by omega))
        | (exact substDec_shift u (substDec j u s) i)
        | (exact (substDec_shift u (substDec j u s) i).symm)
        | (exfalso; omega)
        | (simp only [Term.substDec])
        | split
  | lam b ih =>
      intro s u i j h
      simp only [substDec]
      rw [ih (shift 1 0 s) (shift 1 0 u) (i + 1) (j + 1) (Nat.succ_le_succ h)]
      rw [← shift_substDec_lt s u j 0 (Nat.zero_le j)]
      rw [shift_shift u 0 i (Nat.zero_le i)]
  | app f a ihf iha =>
      intro s u i j h
      simp only [substDec]
      rw [ihf s u i j h, iha s u i j h]

/-- The β-instance of (5) used by parallel-reduction substitutivity:
`(contract b a)[u/j] = contract (b[↑₀u/(j+1)]) (a[u/j])`. -/
theorem substDec_contract (b a u : Term) (j : Nat) :
    substDec j u (contract b a)
      = contract (substDec (j + 1) (shift 1 0 u) b) (substDec j u a) := by
  unfold contract
  exact substDec_substDec b a u 0 j (Nat.zero_le j)

end Blc
