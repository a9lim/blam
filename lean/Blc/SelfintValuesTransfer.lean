/- Lemma T: a whole-prefix reader converts into a separated-class reader by
   substituting the strip converter `κ = λv. v (λq. c)` for the continuation
   `c`. `docs/classical/self-interpreter/class-bound.md`.

   Whole-prefix reader laws (zero and length-one instances, as in
   `SelfintClass.Reader`): `R Z ⇝ r j` and `R U_1(N) ⇝ c U_1(N) N`.
   Frame at the root of R: c = 0, j = 1; probes N = 2, r = 3.
   The transfer is `substDec 1 κ (shift 1 0 R)`: shift opens a fresh
   slot 0 for the new `c`, the old `c` (now 1) is replaced by κ, and
   everything above slides back. -/
import Blc.SelfintClass
import Blc.SelfintControl

namespace Blc.SelfintValuesTransfer
open Term SelfintClass SelfintControl

/-- Shifting commutes with one β-step. -/
theorem beta_shift : ∀ {t u : Term}, Beta t u → ∀ c, Beta (shift 1 c t) (shift 1 c u) := by
  intro t u h
  induction h with
  | beta b a =>
      intro c
      have e : shift 1 c (contract b a) = contract (shift 1 (c + 1) b) (shift 1 c a) := by
        unfold contract
        exact shift_substDec b a 0 c (Nat.zero_le c)
      rw [e]
      exact Beta.beta _ _
  | appL a _ ih => intro c; exact Beta.appL _ (ih c)
  | appR f _ ih => intro c; exact Beta.appR _ (ih c)
  | lam _ ih => intro c; exact Beta.lam (ih (c + 1))

theorem betas_shift {t u : Term} (h : Betas t u) (c : Nat) :
    Betas (shift 1 c t) (shift 1 c u) := by
  induction h with
  | refl t => exact .refl _
  | head hb _ ih => exact .head (beta_shift hb c) ih

theorem join_shift {t u : Term} (h : BetaJoin t u) (c : Nat) :
    BetaJoin (shift 1 c t) (shift 1 c u) := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨shift 1 c w, betas_shift ht c, betas_shift hu c⟩

theorem join_subst {t u : Term} (h : BetaJoin t u) (j : Nat) (s : Term) :
    BetaJoin (substDec j s t) (substDec j s u) := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨substDec j s w, betas_subst ht j s, betas_subst hu j s⟩

theorem freeUnder_shift : ∀ (t : Term) (k c : Nat), FreeUnder k t →
    FreeUnder (k + 1) (shift 1 c t) := by
  intro t
  induction t with
  | var n =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift]
      split <;> simp only [FreeUnder] <;> omega
  | lam b ih =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift, FreeUnder]
      exact ih (k + 1) (c + 1) h
  | app f a ihf iha =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift, FreeUnder]
      exact ⟨ihf k c h.1, iha k c h.2⟩

theorem freeUnder_substDec : ∀ (t : Term) (s : Term) (k j : Nat), j ≤ k →
    FreeUnder (k + 1) t → FreeUnder k s → FreeUnder k (substDec j s t) := by
  intro t
  induction t with
  | var n =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec]
      split
      · exact hs
      · split <;> simp only [FreeUnder] <;> omega
  | lam b ih =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec, FreeUnder]
      exact ih (shift 1 0 s) (k + 1) (j + 1) (by omega) h (freeUnder_shift s k 0 hs)
  | app f a ihf iha =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec, FreeUnder]
      exact ⟨ihf s k j hj h.1 hs, iha s k j hj h.2 hs⟩

/-- The whole-prefix variable output `c U_1(N) N`. -/
def wOut : Term := .app (.app (.var 0) S) (.var 2)

/-- Zero and length-one instances of the whole-prefix reader laws. -/
structure WReader (R : Term) : Prop where
  scope : FreeUnder 2 R
  zero : BetaJoin (.app R Z) zeroOut
  one : BetaJoin (.app R S) wOut

/-- The strip converter `λv. v (λq. c)`, with `c` free at index 0. -/
def kap : Term := .lam (.app (.var 0) (.lam (.var 2)))

def transfer (R : Term) : Term := substDec 1 kap (shift 1 0 R)

theorem kap_strip : Betas (.app (.app kap S) (.var 2)) varOut :=
  headSteps_beta_star (by decide : headSteps 3 (.app (.app kap S) (.var 2)) = some varOut)

/-- **Lemma T.** Every whole-prefix reader yields a separated-class reader. -/
theorem transfer_reader {R : Term} (h : WReader R) : Reader (transfer R) := by
  refine ⟨?_, ?_, ?_⟩
  · exact freeUnder_substDec _ kap 2 1 (by omega) (freeUnder_shift R 2 0 h.scope) (by decide)
  · have hz := join_subst (join_shift h.zero 0) 1 kap
    have e1 : substDec 1 kap (shift 1 0 (.app R Z)) = .app (transfer R) Z := by
      show Term.app (substDec 1 kap (shift 1 0 R)) (substDec 1 kap (shift 1 0 Z)) = _
      rw [show substDec 1 kap (shift 1 0 Z) = Z by decide]
      rfl
    have e2 : substDec 1 kap (shift 1 0 zeroOut) = zeroOut := by decide
    rw [e1, e2] at hz
    exact hz
  · have ho := join_subst (join_shift h.one 0) 1 kap
    have e1 : substDec 1 kap (shift 1 0 (.app R S)) = .app (transfer R) S := by
      show Term.app (substDec 1 kap (shift 1 0 R)) (substDec 1 kap (shift 1 0 S)) = _
      rw [show substDec 1 kap (shift 1 0 S) = S by decide]
      rfl
    have e2 : substDec 1 kap (shift 1 0 wOut) = .app (.app kap S) (.var 2) := by decide
    rw [e1, e2] at ho
    exact join_trans ho (join_of_betas kap_strip)

/-- The 162-shape whole-prefix reader `λs. s I (λu. c s (s s u)) j` is a
    whole-prefix reader, and its contracted transfer is the 162's reader. -/
def wp162 : Term :=
  .lam (.app (.app (.app (.var 0) (.lam (.var 0)))
    (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
    (.var 2))

theorem wp162_reader : WReader wp162 := by
  refine ⟨by decide, ?_, ?_⟩
  · exact join_of_betas (headSteps_beta_star
      (by decide : headSteps 5 (.app wp162 Z) = some zeroOut))
  · have h1 : Betas (.app wp162 S)
        (.app (.app (.var 0) S) (.app (.app S S) (.var 1))) :=
      headSteps_beta_star (by decide : headSteps 6 (.app wp162 S) =
        some (.app (.app (.var 0) S) (.app (.app S S) (.var 1))))
    have h2 : Betas (.app (.app S S) (.var 1)) (.var 2) :=
      headSteps_beta_star (by decide : headSteps 10 (.app (.app S S) (.var 1)) = some (.var 2))
    exact join_of_betas (betas_trans h1 (betas_appR _ h2))

/-- Lemma T applied to the 162-shape whole-prefix reader. -/
theorem wp162_transfer : Reader (transfer wp162) := transfer_reader wp162_reader

end Blc.SelfintValuesTransfer
