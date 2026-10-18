/-
The first 33-bit census survivor is an open-payload head loop.

  D₃ = λx. x x x
  A  = λa b. a (b b b)
  P  = A A A
  T  = D₃ A

T reaches λz. P (z z z) in four head steps. For EVERY term u,
including open terms, P u reaches P (u u u) in four head steps.
Thus the payload grows geometrically while the closed engine repeats.
The ordinary ratchet classes miss this because their growing payload
is required to be closed. This proof uses a direct universal cycle,
with honest de Bruijn substitution and no closedness assumption on u.
The concrete recurrences formalize Tromp's hand arguments in ref/AIT/BB/BB.txt.
-/

import Blc.Ratchet
import Blc.Wire

namespace Blc
open Term

/-- Repeat an arbitrary payload transformation. It may preserve free variables. -/
def pumpPayload (f : Term → Term) (u0 : Term) : Nat → Term
  | 0 => u0
  | n + 1 => f (pumpPayload f u0 n)

/-- A fixed positive head cycle under a leading binder certifies divergence.
The payload is arbitrary and may be open; the cycle premise must therefore
be proved with capture-correct substitution for every concrete term. -/
theorem openPayloadPump_headDiverges
    (P : Term) (f : Term → Term) (k : Nat) (hk : 0 < k)
    (hcycle : ∀ u, HeadReds k (.app P u) (.app P (f u)))
    (T u0 : Term) (i : Nat)
    (hinit : HeadReds i T (.lam (.app P u0))) : HeadDiverges T := by
  have reach : ∀ n : Nat,
      HeadReds (i + k * n) T (.lam (.app P (pumpPayload f u0 n))) := by
    intro n
    induction n with
    | zero => simpa [pumpPayload] using hinit
    | succ n ih =>
        have h := headReds_trans ih (headReds_under (hcycle (pumpPayload f u0 n)))
        simpa [pumpPayload, Nat.mul_succ, Nat.add_assoc] using h
  apply headDiverges_of_unbounded
  intro n
  have hn : n + 1 ≤ k * (n + 1) := by
    simpa using Nat.mul_le_mul_right (n + 1) hk
  exact ⟨i + k * (n + 1), .lam (.app P (pumpPayload f u0 (n + 1))),
    by omega, headSteps_of_headReds (reach (n + 1))⟩

theorem openPayloadPump_noNormalForm
    (P : Term) (f : Term → Term) (k : Nat) (hk : 0 < k)
    (hcycle : ∀ u, HeadReds k (.app P u) (.app P (f u)))
    (T u0 : Term) (i : Nat)
    (hinit : HeadReds i T (.lam (.app P u0))) : ¬ HasNormalForm T :=
  headDiverges_not_hasNormalForm
    (openPayloadPump_headDiverges P f k hk hcycle T u0 i hinit)

end Blc

namespace Blc.BB33First
open Blc Term

/-- Triple self-application, left associated. -/
def triple (u : Term) : Term := .app (.app u u) u

def D3 : Term := .lam (triple (.var 0))

def A : Term := .lam (.lam (.app (.var 1) (triple (.var 0))))

def P : Term := triple A

def T : Term := .app D3 A

theorem wire : blcCode T =
    [false, true, false, false, false, true, false, true, true, false,
     true, false, true, false, false, false, false, false, false, true,
     true, true, false, false, true, false, true, true, false, true,
     false, true, false] := by decide

theorem closed : Closed T := by decide

/-- Exact finite cycle, valid for an arbitrary OPEN payload. -/
theorem cycle (u : Term) :
    HeadReds 4 (.app P u) (.app P (triple u)) := by
  apply headReds_of_headSteps
  rfl

/-- The concrete entry reaches the loop beneath one binder. -/
theorem init : HeadReds 4 T (.lam (.app P (triple (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem headDiverges : HeadDiverges T :=
  openPayloadPump_headDiverges P triple 4 (by decide) cycle
    T (triple (.var 0)) 4 init

/-- The exact 33-bit survivor has no normal form under arbitrary β reduction. -/
theorem noNormalForm : ¬ HasNormalForm T :=
  headDiverges_not_hasNormalForm headDiverges

end Blc.BB33First

namespace Blc.BB34TripleLeft
open Blc Term

def A : Term := .lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))
def P : Term := .app (.app A A) A
def T : Term := .app BB33First.D3 A
def advance (u : Term) : Term := .app (.app u u) P

theorem wire : blcCode T =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, false, true, true, false] := by decide

theorem closed : Closed T := by decide

theorem cycle (u : Term) : HeadReds 4 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init : HeadReds 4 T (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm T :=
  openPayloadPump_noNormalForm P advance 4 (by decide) cycle
    T (advance (.var 0)) 4 init

end Blc.BB34TripleLeft

namespace Blc.BB34TripleMiddle
open Blc Term

def A : Term := .lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))
def P : Term := .app (.app A A) A
def T : Term := .app BB33First.D3 A
def advance (u : Term) : Term := .app (.app u P) u

theorem wire : blcCode T =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, true, false, true, false] := by decide

theorem closed : Closed T := by decide

theorem cycle (u : Term) : HeadReds 4 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init : HeadReds 4 T (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm T :=
  openPayloadPump_noNormalForm P advance 4 (by decide) cycle
    T (advance (.var 0)) 4 init

end Blc.BB34TripleMiddle

namespace Blc.BB34TripleRight
open Blc Term

def A : Term := .lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))
def P : Term := .app (.app A A) A
def T : Term := .app BB33First.D3 A
def advance (u : Term) : Term := .app (.app P u) u

theorem wire : blcCode T =
    [false, true, false, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, false, true, false, true, false] := by decide

theorem closed : Closed T := by decide

theorem cycle (u : Term) : HeadReds 4 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init : HeadReds 4 T (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm T :=
  openPayloadPump_noNormalForm P advance 4 (by decide) cycle
    T (advance (.var 0)) 4 init

end Blc.BB34TripleRight

/- Two 34-bit entries share a slightly longer engine: A = λa b.a(b a),
Q = A A, P = A Q A. Here P u →ₕ⁶ P(u P). -/
namespace Blc.BB34Binary
open Blc Term

def A : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))
def Q : Term := .app A A
def P : Term := .app (.app A Q) A
def advance (u : Term) : Term := .app u P

def T1 : Term :=
  .app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) A
def T2 : Term :=
  .app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) A

theorem cycle (u : Term) : HeadReds 6 (.app P u) (.app P (advance u)) := by
  apply headReds_of_headSteps
  rfl

theorem init1 : HeadReds 6 T1 (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem init2 : HeadReds 8 T2 (.lam (.app P (advance (.var 0)))) := by
  apply headReds_of_headSteps
  decide

theorem wire1 : blcCode T1 =
    [false, true, false, false, false, true, false, true, true, false, false, true, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, true, true, false] := by decide

theorem closed1 : Closed T1 := by decide

theorem noNormalForm1 : ¬ HasNormalForm T1 :=
  openPayloadPump_noNormalForm P advance 6 (by decide) cycle
    T1 (advance (.var 0)) 6 init1

theorem wire2 : blcCode T2 =
    [false, true, false, false, false, true, false, true, false, true, true, false, true, false, true, false, true, false, false, false, false, false, false, true, true, true, false, false, true, true, false, true, true, false] := by decide

theorem closed2 : Closed T2 := by decide

theorem noNormalForm2 : ¬ HasNormalForm T2 :=
  openPayloadPump_noNormalForm P advance 6 (by decide) cycle
    T2 (advance (.var 0)) 8 init2

end Blc.BB34Binary
