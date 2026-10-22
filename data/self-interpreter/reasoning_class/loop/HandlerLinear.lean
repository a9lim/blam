import Blc.SelfintSourceFront

/- Arithmetic endpoints and the remaining lambda-tower refutation for the
   minimum literal-handler source theorem in REPORT.md section 6.
   The structural tree-price inequalities and their extraction of the two
   tower forms are handwritten. This is not the full s-spine floor. -/
namespace Blc.LoopHandlerLinear
open Term SelfintClass SelfintSourceFront SelfintControl

theorem critical_base (F d : Nat) (h : 7 ≤ (F-1)*d) :
    28 ≤ 4*F+3*d+4 := by
  by_cases hgood : 28 ≤ 4*F+3*d+4
  · exact hgood
  · have hf : F ≤ 5 := by omega
    have cases : F=0 ∨ F=1 ∨ F=2 ∨ F=3 ∨ F=4 ∨ F=5 := by omega
    rcases cases with he | he | he | he | he | he <;> subst F <;> simp_all <;> omega

theorem critical_c (F d : Nat) (h : 7 ≤ (F-1)*d) :
    30 ≤ 4*F+3*d+6 := by have := critical_base F d h; omega

theorem two_small_shapes (F d : Nat) (h : 7 ≤ (F-1)*d)
    (hb : 4*F+3*d+6 ≤ 31) : (F=3 ∧ d=4) ∨ (F=4 ∧ d=3) := by
  have hf : F ≤ 6 := by omega
  have cases : F=0 ∨ F=1 ∨ F=2 ∨ F=3 ∨ F=4 ∨ F=5 ∨ F=6 := by omega
  rcases cases with he | he | he | he | he | he | he <;> subst F <;> simp_all <;> omega

theorem handler_budget (q B S : Nat) (hq : 1 ≤ q)
    (hw : 12+2*q+B+S ≤ 45) : B ≤ 31 := by omega

theorem large_handler_tail (q B S : Nat) (hq : 1 ≤ q)
    (hs : 2*q ≤ S+2) (hw : 12+2*q+B+S ≤ 45) (hb : 30 ≤ B) :
    q=1 ∧ S≤1 ∧ B≤31 := by omega

theorem c_in_tails_budget (q B S : Nat) (hq : 1 ≤ q)
    (h1 : q=1 → 5≤S) (h2 : 2≤q → 2*q≤S+1)
    (hw : 12+2*q+B+S ≤ 45) : B≤26 := by
  by_cases he : q=1
  · have := h1 he; omega
  · have := h2 (by omega); omega

theorem high_mult_c_argument (m A : Nat) (hm : 6≤m) (ha : 4≤A)
    (hb : 4*m+2+A≤31) : m=6 ∧ A≤5 := by omega

theorem high_mult_c_elsewhere (m : Nat) (hm : 6≤m)
    (hb : 4*m+8≤31) : False := by omega

theorem high_mult_c_outside (m : Nat) (hm : 6≤m)
    (hb : 4*m+4≤26) : False := by omega

-- x, followed by d ignored binders. Applied to A, then r and j.
def tower3 : Term := .lam (.lam (.lam (.lam (.var 3))))
def tower4 : Term := .lam (.lam (.lam (.lam (.lam (.var 4)))))
def badReader (tower A : Term) : Term := .lam
  (.app (.app (.var 0) (.lam (.app tower A))) (.var 2))

theorem tower3_prefix (A : Term) :
    ∃ b, headSteps 6 (.app (badReader tower3 A) Z) = some (.lam b) := by
  simp [headSteps, headStep, badReader, tower3, Z, pairT, churchTrue,
    contract, substDec, shift]

theorem tower4_prefix (A : Term) :
    ∃ b, headSteps 6 (.app (badReader tower4 A) Z) = some (.lam b) := by
  simp [headSteps, headStep, badReader, tower4, Z, pairT, churchTrue,
    contract, substDec, shift]

theorem prefix_lam_refutes {R : Term} {n : Nat}
    (h : ∃ b, headSteps n (.app R Z) = some (.lam b)) : ¬ Reader R := by
  rintro hr
  obtain ⟨b,hb⟩ := h
  have red := headSteps_beta_star hb
  have out := betas_preserve_nf red hr.zero_red zeroOut_normal
  have hl := lam_betas out (by trivial : IsLam (.lam b))
  exact hl

theorem tower3_not_reader (A : Term) : ¬ Reader (badReader tower3 A) :=
  prefix_lam_refutes (tower3_prefix A)
theorem tower4_not_reader (A : Term) : ¬ Reader (badReader tower4 A) :=
  prefix_lam_refutes (tower4_prefix A)

#print axioms critical_base
#print axioms two_small_shapes
#print axioms tower3_not_reader
#print axioms tower4_not_reader
end Blc.LoopHandlerLinear
