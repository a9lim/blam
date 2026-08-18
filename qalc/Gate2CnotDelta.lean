import Std

/-!
# Abstract two-port CNOT delta fibre

This is the local algebraic target for the proposed invocation-supplied `c`
constant.  It proves that the four boolean columns form a permutation and that
the landing spectator is independent of both input bits.  The token-level
encoded-arrival and park/fire schedule are intentionally not assumed here.
-/

namespace QalcGate2CnotDelta

inductive Bit where | zero | one
  deriving DecidableEq, Repr

def xor : Bit → Bit → Bit
  | .zero, bit => bit
  | .one, .zero => .one
  | .one, .one => .zero

structure Pair where
  control : Bit
  target : Bit
  deriving DecidableEq, Repr

def cnot (input : Pair) : Pair :=
  ⟨input.control, xor input.target input.control⟩

theorem cnot_involutive (input : Pair) : cnot (cnot input) = input := by
  cases input with
  | mk control target => cases control <;> cases target <;> rfl

theorem cnot_injective : Function.Injective cnot := by
  intro left right same
  rw [← cnot_involutive left, ← cnot_involutive right, same]

structure Source (Spectator GValue FValue : Type) where
  bits : Pair
  spectator : Spectator
  gValue : GValue
  fValue : FValue

def encode (G : Pair → Spectator → GValue)
    (F : Pair → Spectator → FValue) (bits : Pair)
    (spectator : Spectator) : Source Spectator GValue FValue :=
  ⟨bits, spectator, G bits spectator, F bits spectator⟩

theorem encode_injective (G : Pair → Spectator → GValue)
    (F : Pair → Spectator → FValue) :
    Function.Injective
      (fun pair : Pair × Spectator => encode G F pair.1 pair.2) := by
  intro left right same
  cases left
  cases right
  simp_all [encode]

structure Landing (Image : Type) where
  bits : Pair
  image : Image
  deriving DecidableEq, Repr

def fire (J : Spectator → Image) (bits : Pair)
    (spectator : Spectator) : Landing Image :=
  ⟨cnot bits, J spectator⟩

theorem fire_injective (J : Spectator → Image)
    (hJ : Function.Injective J) :
    Function.Injective
      (fun pair : Pair × Spectator => fire J pair.1 pair.2) := by
  intro left right same
  apply Prod.ext
  · exact cnot_injective (congrArg Landing.bits same)
  · exact hJ (congrArg Landing.image same)

theorem clean_spectator (J : Spectator → Image)
    (left right : Pair) (spectator : Spectator) :
    (fire J left spectator).image = (fire J right spectator).image := by
  rfl

def allPairs : List Pair :=
  [⟨.zero, .zero⟩, ⟨.zero, .one⟩,
   ⟨.one, .zero⟩, ⟨.one, .one⟩]

theorem four_column_permutation :
    (allPairs.map cnot).Nodup ∧ (allPairs.map cnot).length = 4 := by
  decide

end QalcGate2CnotDelta
