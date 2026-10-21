/-
A simply typed, beta-normal 672-bit self-interpreter.

The type certificate is checked by a proved syntax-directed checker for the
ordinary simply typed lambda calculus. Type inference is not trusted.
An explicit finite beta trace removes the two identity casts and reaches
the literal 165-bit interpreter applied to its original input.

Source and certificates: tools/self-interpreter/theory/typed_normal.py.
-/
import Blc.SelfintSharp
import Blc.SelfintControl

namespace Blc.SelfintTyped
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

inductive Ty where
  | base
  | arr (domain codomain : Ty)
  deriving DecidableEq

/-- The ordinary simply typed lambda-calculus judgment, with de Bruijn variables. -/
inductive HasType : List Ty → Term → Ty → Prop where
  | var {Γ : List Ty} {i : Nat} {τ : Ty} :
      Γ[i]? = some τ → HasType Γ (.var i) τ
  | lam {Γ : List Ty} {b : Term} {σ τ : Ty} :
      HasType (σ :: Γ) b τ → HasType Γ (.lam b) (.arr σ τ)
  | app {Γ : List Ty} {f a : Term} {σ τ : Ty} :
      HasType Γ f (.arr σ τ) → HasType Γ a σ → HasType Γ (.app f a) τ

inductive Annotated where
  | var (i : Nat)
  | lam (domain : Ty) (body : Annotated)
  | app (fn arg : Annotated)

def erase : Annotated → Term
  | .var i => .var i
  | .lam _ b => .lam (erase b)
  | .app f a => .app (erase f) (erase a)

def check (Γ : List Ty) : Annotated → Option Ty
  | .var i => Γ[i]?
  | .lam σ b => (check (σ :: Γ) b).map (Ty.arr σ)
  | .app f a =>
      match check Γ f, check Γ a with
      | some (.arr σ τ), some σ' => if σ = σ' then some τ else none
      | _, _ => none

theorem check_sound {t : Annotated} {Γ : List Ty} {τ : Ty}
    (h : check Γ t = some τ) : HasType Γ (erase t) τ := by
  induction t generalizing Γ τ with
  | var i => exact .var h
  | lam σ b ih =>
      obtain ⟨ρ, hρ, rfl⟩ := Option.map_eq_some_iff.mp h
      exact .lam (ih hρ)
  | app f a ihf iha =>
      cases hf : check Γ f with
      | none => simp [check, hf] at h
      | some ft =>
          cases ha : check Γ a with
          | none => simp [check, hf, ha] at h
          | some argType =>
              cases ft with
              | base => simp [check, hf, ha] at h
              | arr σ ρ =>
                  by_cases he : σ = argType
                  · subst argType
                    have ht : ρ = τ := by simpa [check, hf, ha] using h
                    subst τ
                    exact .app (ihf hf) (iha ha)
                  · simp [check, hf, ha, he] at h

def intL672 : Term := (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.app (.var 4) (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.app (.var 6) (.app (.app (.var 6) (.var 0)) (.app (.var 5) (.lam (.app (.app (.var 7) (.app (.app (.var 7) (.var 0)) (.app (.var 6) (.lam (.app (.var 7) (.lam (.app (.app (.var 9) (.var 0)) (.var 4)))))))) (.var 3)))))) (.app (.app (.var 6) (.app (.app (.var 6) (.var 0)) (.var 0))) (.var 0)))))))) (.app (.var 3) (.lam (.app (.app (.var 5) (.var 2)) (.app (.var 4) (.lam (.app (.app (.var 6) (.app (.app (.var 6) (.var 1)) (.app (.app (.var 6) (.var 2)) (.app (.var 5) (.lam (.app (.var 6) (.lam (.app (.app (.var 8) (.var 2)) (.app (.var 7) (.lam (.app (.var 8) (.lam (.app (.app (.var 10) (.app (.app (.var 10) (.var 1)) (.var 2))) (.app (.app (.var 10) (.var 0)) (.var 3))))))))))))))) (.app (.app (.var 6) (.var 3)) (.app (.var 5) (.lam (.app (.app (.var 7) (.var 3)) (.app (.var 6) (.lam (.app (.app (.var 8) (.app (.app (.var 8) (.var 2)) (.var 0))) (.app (.app (.var 8) (.var 1)) (.var 0))))))))))))))))))))) (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.var 5))) (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 2) (.lam (.var 1))))))) (.var 3)))))))))))))

def annotated672 : Annotated := (.lam .base (.lam (.arr (.arr (.arr (.arr (.arr (.arr .base .base) (.arr (.arr .base .base) .base)) .base) (.arr .base (.arr (.arr (.arr .base (.arr .base .base)) (.arr (.arr (.arr .base .base) .base) .base)) .base))) (.arr .base .base)) .base) (.app (.var 0) (.lam (.arr (.arr (.arr (.arr .base .base) (.arr (.arr .base .base) .base)) .base) (.arr .base (.arr (.arr (.arr .base (.arr .base .base)) (.arr (.arr (.arr .base .base) .base) .base)) .base))) (.lam .base (.app (.app (.app (.var 1) (.lam (.arr (.arr .base .base) (.arr (.arr .base .base) .base)) (.app (.app (.var 0) (.lam .base (.var 0))) (.lam .base (.var 0))))) (.var 0)) (.lam (.arr .base (.arr .base .base)) (.lam (.arr (.arr .base .base) .base) (.app (.app (.var 1) (.app (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.lam .base (.app (.app (.var 2) (.var 0)) (.var 0))))) (.app (.var 0) (.lam .base (.app (.app (.var 2) (.app (.var 1) (.lam .base (.app (.var 2) (.lam .base (.app (.app (.var 4) (.app (.var 3) (.lam .base (.app (.var 4) (.lam .base (.app (.app (.var 6) (.app (.app (.var 6) (.var 0)) (.app (.var 5) (.lam .base (.app (.app (.var 7) (.app (.app (.var 7) (.var 0)) (.app (.var 6) (.lam .base (.app (.var 7) (.lam .base (.app (.app (.var 9) (.var 0)) (.var 4)))))))) (.var 3)))))) (.app (.app (.var 6) (.app (.app (.var 6) (.var 0)) (.var 0))) (.var 0)))))))) (.app (.var 3) (.lam .base (.app (.app (.var 5) (.var 2)) (.app (.var 4) (.lam .base (.app (.app (.var 6) (.app (.app (.var 6) (.var 1)) (.app (.app (.var 6) (.var 2)) (.app (.var 5) (.lam .base (.app (.var 6) (.lam .base (.app (.app (.var 8) (.var 2)) (.app (.var 7) (.lam .base (.app (.var 8) (.lam .base (.app (.app (.var 10) (.app (.app (.var 10) (.var 1)) (.var 2))) (.app (.app (.var 10) (.var 0)) (.var 3))))))))))))))) (.app (.app (.var 6) (.var 3)) (.app (.var 5) (.lam .base (.app (.app (.var 7) (.var 3)) (.app (.var 6) (.lam .base (.app (.app (.var 8) (.app (.app (.var 8) (.var 2)) (.var 0))) (.app (.app (.var 8) (.var 1)) (.var 0))))))))))))))))))))) (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.var 5))) (.app (.var 0) (.lam .base (.app (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam .base (.app (.var 2) (.lam .base (.var 1))))))) (.var 3)))))))))))))

def type672 : Ty := (.arr .base (.arr (.arr (.arr (.arr (.arr (.arr (.arr .base .base) (.arr (.arr .base .base) .base)) .base) (.arr .base (.arr (.arr (.arr .base (.arr .base .base)) (.arr (.arr (.arr .base .base) .base) .base)) .base))) (.arr .base .base)) .base) .base))

def trace672 : List (List SelfintSharp.Direction) := [[.left], [], [], [.left], [], [.left, .left], [.left], [], [.left], [], [.left], [.left, .left], [.left, .left, .left], [.left, .left, .left], [.left, .left, .left, .under, .left], [.left, .left, .right], [.left, .left, .right, .under, .left], [.left, .left, .right, .under, .left], [.left, .left, .right, .under, .left, .under], [.left, .left, .right, .under, .left, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right, .under, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right, .under, .left, .right], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right, .under, .left, .right, .under], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .left, .right, .under, .left, .right, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .right, .left], [.left, .left, .right, .under, .left, .under, .under, .left, .under, .under, .right, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .right, .under], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .right, .under, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .right, .under, .under, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .right, .right, .under, .under, .right, .under, .under, .right, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .left, .left], [.left, .left, .right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .right, .left], [.left, .left, .right, .under, .right, .left], [.right], [.right, .under, .left], [.right, .under, .left, .left], [.right, .under, .left, .right], [.right, .under, .left, .right, .under]]

theorem annotated672_erases : erase annotated672 = intL672 := by decide

theorem check672 : check [] annotated672 = some type672 := by decide

/-- An ordinary closed STLC typing derivation, obtained from the checked annotation. -/
theorem intL672_typed : HasType [] intL672 type672 := by
  rw [← annotated672_erases]
  exact check_sound check672

theorem intL672_closed : Closed intL672 := by decide

theorem intL672_length : (blcCode intL672).length = 672 := by decide

theorem intL672_nft : NFt intL672 := by decide

theorem intL672_normal : NormalForm intL672 := fun _ h => nft_no_beta intL672_nft h

theorem run_root672 :
    SelfintSharp.replay trace672
      (.app (.app intL672 (.var 0)) (pairT churchTrue (.var 1)))
      = some (.app (.app intL165 (.var 0)) (pairT churchTrue (.var 1))) := by decide

theorem substDec_intL672 (j : Nat) (s : Term) : substDec j s intL672 = intL672 :=
  substDec_closed j s intL672_closed

theorem substDec_intL165' (j : Nat) (s : Term) : substDec j s intL165 = intL165 :=
  substDec_closed j s isSelfInterpreter_intL165.1

theorem root672 (C R : Term) :
    Betas (.app (.app intL672 C) (pairT churchTrue R))
      (.app (.app intL165 C) (pairT churchTrue R)) := by
  have h := SelfintControl.betas_inst [C, R] 0 (SelfintSharp.replay_sound run_root672)
  simpa [instN, pairT, substDec, shift, substDec_intL672, substDec_intL165',
    shift_churchTrue, substDec_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

/-- Directed beta correctness for every closed source and arbitrary continuation and suffix. -/
theorem selfint_contract672 (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL672 C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) := by
  have hzero : ∃ R, streamOf (blcCode M) N = pairT churchTrue R := by
    cases M with
    | var i => simp [Closed, FreeUnder] at hM
    | lam M => exact ⟨_, rfl⟩
    | app M P => exact ⟨_, rfl⟩
  obtain ⟨R, hR⟩ := hzero
  have hroot : Betas (.app (.app intL672 C) (streamOf (blcCode M) N))
      (.app (.app intL165 C) (streamOf (blcCode M) N)) := by
    rw [hR]
    exact root672 C R
  exact betas_trans hroot (selfint_contract165 M hM C N)

theorem isSelfInterpreter_intL672 : IsSelfInterpreter intL672 :=
  ⟨intL672_closed, fun M hM =>
    ⟨_, selfint_contract672 M hM (.var 0) (.var 1), .refl _⟩⟩

/-- A simply typed normal interpreter exists; its invocation need not be typable. -/
theorem typed_normal_selfInterpreter : ∃ E τ, IsSelfInterpreter E ∧
    NormalForm E ∧ HasType [] E τ :=
  ⟨intL672, type672, isSelfInterpreter_intL672, intL672_normal, intL672_typed⟩

end Blc.SelfintTyped
