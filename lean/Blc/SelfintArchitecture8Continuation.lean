/-
Canonical NEXT forgets the beta distinction between a continuation and its
one-argument eta expansion. Therefore no fixed lambda decoder can recover
an arbitrary bare continuation from NEXT alone. The parser parameter is
arbitrary; no normality, size, or termination assumption is made about it.

This is a service obstruction, not an interpreter lower bound: returning
C already applied to a value remains possible, and a redesigned NEXT may
retain additional continuation information.
-/
import Blc.SelfintClass

namespace Blc.SelfintArchitecture8Continuation
open Term SelfintControl SelfintClass SelfintClassNext

/-- One ordinary eta expansion, kept as syntax rather than eta equality. -/
def expand (C : Term) : Term := .lam (.app (shift 1 0 C) (.var 0))

theorem expand_apply (C A : Term) :
    Betas (.app (expand C) A) (.app C A) := by
  simpa only [expand, contract, substDec, substDec_shift, ↓reduceIte] using
    (Betas.head (Beta.beta (.app (shift 1 0 C) (.var 0)) A) (.refl _))

theorem shift_expand (n : Nat) (C : Term) :
    shift n 0 (expand C) = expand (shift n 0 C) := by
  simp only [expand, shift, Nat.reduceAdd]
  rw [shift_shift0 n 1 1 C (by omega), shift_shift0 1 n 0 C (by omega)]
  simp [Nat.add_comm]

/-- The canonical NEXT with both parameters left arbitrary:
`lambda b. P (lambda f. b (C (ABS f)) (P (lambda g. C (APP f g))))`.
The literal constructor bodies are the same ones as the 162 interpreter. -/
def next (P C : Term) : Term :=
  .lam (.app (shift 1 0 P)
    (.lam (.app (.app (.var 1) (.app (shift 2 0 C) absVt))
      (.app (shift 2 0 P) (.lam (.app (shift 3 0 C) appVt))))))

theorem next_canonical : next (.var 1) (.var 0) = canonicalNext := by decide

/-- Two ordinary beta contractions erase the eta expansion at the two
already-applied occurrences of C, even when P itself is not normal. -/
theorem next_expand (P C : Term) : Betas (next P (expand C)) (next P C) := by
  simp only [next, shift_expand]
  apply betas_lam
  apply betas_appR
  apply betas_lam
  apply betas_app
  · exact betas_appR _ (expand_apply _ _)
  · exact betas_appR _ (betas_lam (expand_apply _ _))

/-- NEXT likewise sees its parser parameter only already applied. -/
theorem next_expand_parser (P C : Term) : Betas (next (expand P) C) (next P C) := by
  simp only [next, shift_expand]
  apply betas_lam
  apply betas_trans (expand_apply _ _)
  apply betas_appR
  apply betas_lam
  apply betas_appR
  exact expand_apply _ _

private theorem rigid_not_expand : ¬ BetaJoin (.var 0) (expand (.var 0)) := by
  intro h
  obtain ⟨w, hv, he⟩ := h
  have hnv : NormalForm (.var 0) := fun _ hb => by cases hb
  have hne : NormalForm (expand (.var 0)) := fun _ hb => nft_no_beta (by decide) hb
  have bad := (normalForm_betas_eq hnv hv).symm.trans (normalForm_betas_eq hne he)
  cases bad

/-- Any representation which identifies these two beta-distinct inputs
has no uniform beta-exact lambda decoder. No properties of D are needed. -/
theorem no_decoder_of_eta_collision (encode : Term → Term)
    (collision : BetaJoin (encode (expand (.var 0))) (encode (.var 0)))
    (D : Term) : ¬ (∀ C, BetaJoin (.app D (encode C)) C) := by
  intro h
  exact rigid_not_expand (join_trans (join_symm (h (.var 0)))
    (join_trans (join_appR D (join_symm collision)) (h (expand (.var 0)))))

/-- In particular, no arbitrary program (with arbitrarily many calls,
sharing, and reductions) can retrieve the bare continuation from NEXT. -/
theorem next_no_continuation_decoder (P D : Term) :
    ¬ (∀ C, BetaJoin (.app D (next P C)) C) :=
  no_decoder_of_eta_collision (next P)
    (join_of_betas (next_expand P (.var 0))) D

/-- Uniform recovery of an arbitrary bare parser is impossible too.
This quantifies over P; it does not exclude recovering one specific parser
whose own off-domain behavior supplies an additional service. -/
theorem next_no_parser_decoder (C D : Term) :
    ¬ (∀ P, BetaJoin (.app D (next P C)) P) :=
  no_decoder_of_eta_collision (fun P => next P C)
    (join_of_betas (next_expand_parser (.var 0) C)) D

/-- A whole family beta-equivalent to canonical NEXT retains the same
obstruction; inserting source lets or other administrative redexes does
not restore the discarded distinction. -/
theorem equivalent_next_no_decoder (P D : Term) (encode : Term → Term)
    (he : ∀ C, BetaJoin (encode C) (next P C)) :
    ¬ (∀ C, BetaJoin (.app D (encode C)) C) := by
  apply no_decoder_of_eta_collision encode _ D
  exact join_trans (he (expand (.var 0)))
    (join_trans (join_of_betas (next_expand P (.var 0))) (join_symm (he (.var 0))))

#print axioms next_expand
#print axioms next_no_continuation_decoder
#print axioms next_no_parser_decoder
#print axioms equivalent_next_no_decoder
end Blc.SelfintArchitecture8Continuation
