import FiniteGram

/-!
# Exact circuit algebra for the native-CNOT Gate-2 compiler

This file proves the gate-set reduction independently of the physical token
model.  The two-port fibre, coloring, structural admission, and arbitrary-list
composition are proved on the actual machine in the physical/contextual Gate-2
modules.
-/

namespace QalcGate2CnotCircuit

open QalcFiniteGram

inductive Gate where
  | h (wire : Nat)
  | t (wire : Nat)
  | cx (control target : Nat)
  deriving DecidableEq, Repr

def neg (x : Dw) : Dw := ⟨-x.a, -x.b, -x.c, -x.d, x.k⟩
def invSqrt2 : Dw := ⟨1, 0, 0, 0, 1⟩
def omega : Dw := ⟨0, 1, 0, 0, 0⟩

def coeff (state : List Dw) (index : Nat) : Dw :=
  state.getD index zero

def dimension (width : Nat) : Nat := 2 ^ width

def basis (width source : Nat) : List Dw :=
  (List.range (dimension width)).map
    (fun index => if index == source then one else zero)

def applyH (width wire : Nat) (state : List Dw) : List Dw :=
  (List.range (dimension width)).map fun target =>
    let flipped := target.xor (2 ^ wire)
    let diagonal := if target.testBit wire then neg invSqrt2 else invSqrt2
    add (mul diagonal (coeff state target))
        (mul invSqrt2 (coeff state flipped))

def applyT (width wire : Nat) (state : List Dw) : List Dw :=
  (List.range (dimension width)).map fun target =>
    if target.testBit wire then mul omega (coeff state target)
    else coeff state target

def applyCX (width control target : Nat) (state : List Dw) : List Dw :=
  (List.range (dimension width)).map fun output =>
    let source := output.xor
      (if output.testBit control then 2 ^ target else 0)
    coeff state source

def applyGate (width : Nat) (state : List Dw) : Gate → List Dw
  | .h wire => applyH width wire state
  | .t wire => applyT width wire state
  | .cx control target => applyCX width control target state

def run (width : Nat) (circuit : List Gate) (source : Nat) : List Dw :=
  circuit.foldl (applyGate width) (basis width source)

def tdg (wire : Nat) : List Gate := List.replicate 7 (.t wire)

def toffoli (control1 control2 target : Nat) : List Gate :=
  [.h target, .cx control2 target] ++ tdg target ++
  [.cx control1 target, .t target, .cx control2 target] ++ tdg target ++
  [.cx control1 target, .t control2, .t target, .h target,
   .cx control1 control2, .t control1] ++ tdg control2 ++
  [.cx control1 control2]

def sameVector (left right : List Dw) : Bool :=
  left.length == right.length &&
    (left.zip right).all fun pair => equivalent pair.1 pair.2

def toffoliImage (source : Nat) : Nat :=
  source.xor
    (if source.testBit 0 && source.testBit 1 then 2 ^ 2 else 0)

def toffoliCorrect : Bool :=
  (List.range 8).all fun source =>
    sameVector (run 3 (toffoli 0 1 2) source)
      (basis 3 (toffoliImage source))

theorem toffoli_exact : toffoliCorrect = true := by
  native_decide

def bell : List Gate := [.h 0, .cx 0 1]
def bellExpected : List Dw := [invSqrt2, zero, zero, invSqrt2]

theorem bell_exact : sameVector (run 2 bell 0) bellExpected = true := by
  native_decide

def bellUncompute : List Gate := [.h 0, .cx 0 1, .cx 0 1, .h 0]

theorem bell_uncompute_exact :
    sameVector (run 2 bellUncompute 0) (basis 2 0) = true := by
  native_decide

def reuseImage (source : Nat) : Nat :=
  let afterToffoli := toffoliImage source
  afterToffoli.xor
    (if afterToffoli.testBit 2 then 2 ^ 3 else 0)

def nonlinearReuseCorrect : Bool :=
  (List.range 16).all fun source =>
    sameVector
      (run 4 (toffoli 0 1 2 ++ [.cx 2 3]) source)
      (basis 4 (reuseImage source))

theorem nonlinear_reuse_exact : nonlinearReuseCorrect = true := by
  native_decide

end QalcGate2CnotCircuit
