import Std

/-!
# Clean gate-indexed delta fibres

This file isolates the structural part of the H/T range proof.  A landing is
tagged by gate kind and carries one injective spectator image.  Consequently
H and T ranges are disjoint before scalar arithmetic is consulted, and each
gate block has exactly the two boolean columns required by the architecture.
The exact cyclotomic Gram calculation is executable in `dw.py`.
-/

namespace QalcDeltaFibers

inductive Gate where | h | t
  deriving DecidableEq

inductive Bit where | zero | one
  deriving DecidableEq

structure Source (Spectator : Type) where
  gate : Gate
  bit : Bit
  spectator : Spectator

structure Landing (Image : Type) where
  gate : Gate
  bit : Bit
  image : Image

/-- A certified encoded arrival does not carry G/F as free coordinates: they
are total functions of the boolean and retained spectator on the certified
domain.  This is the formal source type for the concrete erasure arm. -/
structure EncodedArrival (Spectator GValue FValue : Type) where
  gate : Gate
  bit : Bit
  spectator : Spectator
  gValue : GValue
  fValue : FValue

def encodeArrival (G : Bit → Spectator → GValue)
    (F : Bit → Spectator → FValue) (source : Source Spectator) :
    EncodedArrival Spectator GValue FValue :=
  ⟨source.gate, source.bit, source.spectator,
    G source.bit source.spectator, F source.bit source.spectator⟩

theorem encodeArrival_injective (G : Bit → Spectator → GValue)
    (F : Bit → Spectator → FValue) :
    Function.Injective (@encodeArrival Spectator GValue FValue G F) := by
  intro left right same
  cases left
  cases right
  simp_all [encodeArrival]

variable {Spectator Image : Type} {J : Spectator → Image}

def land (J : Spectator → Image) (source : Source Spectator) (bit : Bit) :
    Landing Image :=
  ⟨source.gate, bit, J source.spectator⟩

theorem land_injective_fixed_output
    (injective : Function.Injective J) (gate : Gate) (bit : Bit) :
    Function.Injective
      (fun spectator : Spectator =>
        land J (⟨gate, bit, spectator⟩ : Source Spectator) bit) := by
  intro left right same
  exact injective (congrArg Landing.image same)

theorem gate_ranges_disjoint (left right : Source Spectator)
    (different : left.gate ≠ right.gate) (b c : Bit) :
    land J left b ≠ land J right c := by
  intro same
  exact different (congrArg Landing.gate same)

theorem output_basis_disjoint (source : Source Spectator) :
    land J source .zero ≠ land J source .one := by
  intro same
  have := congrArg Landing.bit same
  contradiction

/-- The spectator coordinate of a gate landing is independent of both the
input and output boolean. -/
theorem clean_spectator (source : Source Spectator) (left right : Bit) :
    (land J source left).image = (land J source right).image := by
  rfl

end QalcDeltaFibers
