/-
The universal machines. For every closed `M` and any `N`,

    U (⌜M⌝ ++ N)  →β*  M N,

which is the figure algorithmic information theory reads its constants
from (`docs/classical/self-interpreter/universal.md`). Tromp's two wirings
(`ref/AIT/ait/uni.lam`) turn any self-interpreter `E = dbl F` into one:

    non-strict:  E dbl                          →β*  dbl (λz. M) N  →β  M N
    strict:      (λa. a F (λb. b (a a))) dbl    →β   E (λb. b Ω)
                                                →β*  (λz. M) Ω N    →β  M N

so each is a corollary of its interpreter's contract
(`uni_nonstrict_of_contract`, `uni_strict_of_contract`). Instantiated at the
162, the 165 and Palmer's 168 they give the 172 / 184, 175 / 187 and Tromp's
178 / 190, each pinned to its wire: the first four to
`data/self-interpreter/machines/uni*.blc`, the 190 to what Tromp's compiler
makes of `ref/AIT/ait/uni.lam`, and the 178 to `uni_non_strict = intL dbl`.

Strictness, that a machine has no normal form on an open program that uses
its free variable, is not proved here; `battery.py --strict` and `blam
selfint wiring --strict` check it on seven probes.

No `sorry`; the axioms are `propext` and `Quot.sound`.
-/

import Blc.Selfint162

namespace Blc
open Term

/-- `dbl = λx. x x`: the knot's self-application and the non-strict
continuation. -/
def dblT : Term := .lam (.app (.var 0) (.var 0))

/-- `λb. b Ω`: the strict continuation, whose base environment is `Ω`. -/
def omegaKT : Term := .lam (.app (.var 0) (.app dblT dblT))

/-- Tromp's strict wiring around a knot body `F`:
`(λa. a F (λb. b (a a))) dbl`. -/
def uniStrict (F : Term) : Term :=
  .app (.lam (.app (.app (.var 0) F) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) dblT

/-- The universal-machine contract. -/
def IsUniversal (U : Term) : Prop :=
  Closed U ∧ ∀ M, Closed M → ∀ N, Betas (.app U (streamOf (blcCode M) N)) (.app M N)

/-- `UniSizeBound n`: every universal machine has at least `n` bits. -/
def UniSizeBound (n : Nat) : Prop :=
  ∀ U, IsUniversal U → n ≤ (blcCode U).length

/-- The self-interpreter contract, as `selfint_contract`, `selfint_contract165`
and `selfint_contract162` state it. -/
def SelfintContract (E : Term) : Prop :=
  ∀ M, Closed M → ∀ C N,
    Betas (.app (.app E C) (streamOf (blcCode M) N)) (.app (.app C (.lam M)) N)

-- ---------------------------------------------------------------------------
-- §1. The two continuations finish the run.

theorem dbl_finish (M : Term) (hM : Closed M) (N : Term) :
    Betas (.app (.app dblT (.lam M)) N) (.app M N) := by
  have e1 : contract (.app (.var 0) (.var 0)) (.lam M) = .app (.lam M) (.lam M) := by
    simp [contract, substDec]
  have e2 : contract M (.lam M) = M := substDec_closed 0 _ hM
  have h1 := Beta.appL N (Beta.beta (.app (.var 0) (.var 0)) (.lam M))
  have h2 := Beta.appL N (Beta.beta M (.lam M))
  rw [e1] at h1
  rw [e2] at h2
  exact Betas.head h1 (Betas.head h2 (Betas.refl _))

theorem omegaK_finish (M : Term) (hM : Closed M) (N : Term) :
    Betas (.app (.app omegaKT (.lam M)) N) (.app M N) := by
  have e1 : contract (.app (.var 0) (.app dblT dblT)) (.lam M) =
      .app (.lam M) (.app dblT dblT) := by
    simp [contract, substDec, dblT]
  have e2 : contract M (.app dblT dblT) = M := substDec_closed 0 _ hM
  have h1 := Beta.appL N (Beta.beta (.app (.var 0) (.app dblT dblT)) (.lam M))
  have h2 := Beta.appL N (Beta.beta M (.app dblT dblT))
  rw [e1] at h1
  rw [e2] at h2
  exact Betas.head h1 (Betas.head h2 (Betas.refl _))

/-- The strict wiring's first step: `(λa. a F (λb. b (a a))) dbl →β
dbl F (λb. b Ω)`. -/
theorem uniStrict_step (F : Term) (hF : Closed F) :
    Beta (uniStrict F) (.app (.app dblT F) omegaKT) := by
  have e : contract (.app (.app (.var 0) F) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) dblT =
      .app (.app dblT F) omegaKT := by
    simp [contract, substDec, substDec_closed 0 _ hF, omegaKT, dblT, shift]
  have h := Beta.beta (.app (.app (.var 0) F) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) dblT
  rw [e] at h
  exact h

-- ---------------------------------------------------------------------------
-- §2. Every self-interpreter gives both wirings.

theorem uni_nonstrict_of_contract {E : Term} (hE : SelfintContract E)
    (M : Term) (hM : Closed M) (N : Term) :
    Betas (.app (.app E dblT) (streamOf (blcCode M) N)) (.app M N) :=
  betas_trans (hE M hM dblT N) (dbl_finish M hM N)

theorem uni_strict_of_contract {F : Term} (hF : Closed F)
    (hE : SelfintContract (.app dblT F)) (M : Term) (hM : Closed M) (N : Term) :
    Betas (.app (uniStrict F) (streamOf (blcCode M) N)) (.app M N) :=
  betas_trans (betas_appL _ (Betas.head (uniStrict_step F hF) (Betas.refl _)))
    (betas_trans (hE M hM omegaKT N) (omegaK_finish M hM N))

-- ---------------------------------------------------------------------------
-- §3. The machines, pinned to their wires.

/-- 172 bits: `intL162 dbl`. -/
def uni172 : Term := .app intL162 dblT
/-- 184 bits, strict: the strict wiring around the 162's knot body. -/
def uni184 : Term := uniStrict knotW162
/-- 175 bits: `intL165 dbl`. -/
def uni175 : Term := .app intL165 dblT
/-- 187 bits, strict, around the 165's knot body. -/
def uni187 : Term := uniStrict knotW165
/-- Tromp's 178 bits, `uni_non_strict = intL dbl`. -/
def uni178 : Term := .app intL dblT
/-- Tromp's 190 bits, `uni = intL (λz. z omega)`, as his compiler emits it. -/
def uni190 : Term := uniStrict knotW

def uni172Wire : List Bool := [false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, false]

def uni184Wire : List Bool := [false, true, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, true, true, false, true, false]

def uni175Wire : List Bool := [false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true, false, true, false, false, false, false, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, false]

def uni187Wire : List Bool := [false, true, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true, false, true, false, false, false, false, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, true, true, false, true, false]

def uni190Wire : List Bool := [false, true, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, false, true, true, true, true, true, true, false, true, false, false, true, false, true, true, false, true, false, true, false, false, false, false, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, true, true, false, true, false]

set_option maxRecDepth 8192

theorem wire_uni172 : blcCode uni172 = uni172Wire := by decide
theorem wire_uni184 : blcCode uni184 = uni184Wire := by decide
theorem wire_uni175 : blcCode uni175 = uni175Wire := by decide
theorem wire_uni187 : blcCode uni187 = uni187Wire := by decide
theorem wire_uni190 : blcCode uni190 = uni190Wire := by decide
theorem wire_uni178 : blcCode uni178 =
    [false, true] ++ intLWire ++ [false, false, false, true, true, false, true, false] := by
  decide

theorem uni172_length : (blcCode uni172).length = 172 := by decide
theorem uni184_length : (blcCode uni184).length = 184 := by decide
theorem uni175_length : (blcCode uni175).length = 175 := by decide
theorem uni187_length : (blcCode uni187).length = 187 := by decide
theorem uni178_length : (blcCode uni178).length = 178 := by decide
theorem uni190_length : (blcCode uni190).length = 190 := by decide

-- ---------------------------------------------------------------------------
-- §4. They are universal machines.

theorem contract162 : SelfintContract intL162 := selfint_contract162
theorem contract165 : SelfintContract intL165 := selfint_contract165
theorem contract168 : SelfintContract intL := selfint_contract

theorem isUniversal_uni172 : IsUniversal uni172 :=
  ⟨by decide, uni_nonstrict_of_contract contract162⟩

theorem isUniversal_uni184 : IsUniversal uni184 :=
  ⟨by decide, uni_strict_of_contract (by decide) contract162⟩

theorem isUniversal_uni175 : IsUniversal uni175 :=
  ⟨by decide, uni_nonstrict_of_contract contract165⟩

theorem isUniversal_uni187 : IsUniversal uni187 :=
  ⟨by decide, uni_strict_of_contract (by decide) (intL165_eq ▸ contract165)⟩

theorem isUniversal_uni178 : IsUniversal uni178 :=
  ⟨by decide, uni_nonstrict_of_contract contract168⟩

theorem isUniversal_uni190 : IsUniversal uni190 :=
  ⟨by decide, uni_strict_of_contract (by decide) (intL_eq ▸ contract168)⟩

/-- No bound above 172 holds for universal machines. -/
theorem not_uniSizeBound_173 : ¬ UniSizeBound 173 := by
  intro h
  have := h uni172 isUniversal_uni172
  rw [uni172_length] at this
  exact absurd this (by decide)

end Blc
