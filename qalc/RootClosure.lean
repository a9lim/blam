import Std
import PredecessorFiber

/-!
# qALC root-closure factorization

`readback.py` admits `rootdone` only at the closed root with upward direction,
empty log, empty tape tail, no virtual-answer phase, and delimiter depth equal
to the output's leading-lambda count.  Those control coordinates are functions
of the output or constants, so terminal garbage must not retain them.  Binder
compression is used only on the separately guarded canonical-order branch;
noncanonical binder tuples take the exact, uncompressed root fibre.

This file states that reachable subtype explicitly and proves the two-sided
predecessor-fibre coding for ordinary/exact carriers and for the virtual
Church-boolean compression used to preserve a lone Hadamard's coherence.
-/

namespace QalcRootClosure

universe u v w x

structure RawRootControl where
  atRoot : Bool
  directionUp : Bool
  logEmpty : Bool
  tailEmpty : Bool
  virtualPhaseEmpty : Bool
  delimiterDepth : Nat
  deriving DecidableEq, Repr

def canonicalControl (depth : Nat) : RawRootControl :=
  ⟨true, true, true, true, true, depth⟩

def ClosedControl (depth : Nat) :=
  { control : RawRootControl // control = canonicalControl depth }

def closedControl (depth : Nat) : ClosedControl depth :=
  ⟨canonicalControl depth, rfl⟩

theorem closed_control_unique (left right : ClosedControl depth) :
    left = right := by
  apply Subtype.ext
  exact left.2.trans right.2.symm

/-! ## Ordinary and exact-prefix roots -/

structure RootSource (Output : Type u) (Carrier : Type v) (Aux : Type w)
    (leading : Output → Nat) where
  output : Output
  control : ClosedControl (leading output)
  carrier : Carrier
  auxiliary : Aux

def rootLogical
    (source : RootSource Output Carrier Aux leading) : Output :=
  source.output

def rootResidue
    (source : RootSource Output Carrier Aux leading) : Carrier × Aux :=
  ⟨source.carrier, source.auxiliary⟩

def rootRebuild (output : Output) (garbage : Carrier × Aux) :
    RootSource Output Carrier Aux leading :=
  ⟨output, closedControl (leading output), garbage.1, garbage.2⟩

theorem rootRebuild_projects (output : Output) (garbage : Carrier × Aux) :
    rootLogical (rootRebuild (leading := leading) output garbage) = output := by
  rfl

theorem rootRebuild_residue (output : Output) (garbage : Carrier × Aux) :
    rootResidue (rootRebuild (leading := leading) output garbage) = garbage := by
  rfl

theorem root_source_rebuild
    (source : RootSource Output Carrier Aux leading) :
    rootRebuild (leading := leading) (rootLogical source)
      (rootResidue source) = source := by
  cases source with
  | mk output control carrier auxiliary =>
      have controlSame := closed_control_unique
        (closedControl (leading output)) control
      cases controlSame
      rfl

/-- After restricting to the executable `rootdone` guard, output plus retained
carrier/auxiliary garbage is exactly the concrete predecessor fibre. -/
def root_fibre_exact (output : Output) :
    QalcPredecessorFiber.FibreExact
      (@rootLogical Output Carrier Aux leading) output (Carrier × Aux) :=
  QalcPredecessorFiber.fibreExact
    (@rootLogical Output Carrier Aux leading)
    (@rootResidue Output Carrier Aux leading)
    (@rootRebuild Output Carrier Aux leading)
    (@rootRebuild_projects Output Carrier Aux leading)
    (@rootRebuild_residue Output Carrier Aux leading)
    (@root_source_rebuild Output Carrier Aux leading)
    output

/-- Root residue coordinates are each forced by concrete logical collisions:
the observable root target is only the normal form, so changing either the
carrier or the remaining token/zipper tuple while holding output fixed gives a
distinct predecessor with the same logical target. -/
theorem root_carrier_forced (output : Output)
    (auxiliary : Aux) {left right : Carrier} (different : left ≠ right) :
    rootLogical
        (⟨output, closedControl (leading output), left, auxiliary⟩ :
          RootSource Output Carrier Aux leading) =
      rootLogical
        ⟨output, closedControl (leading output), right, auxiliary⟩ ∧
    (⟨output, closedControl (leading output), left, auxiliary⟩ :
      RootSource Output Carrier Aux leading) ≠
      ⟨output, closedControl (leading output), right, auxiliary⟩ := by
  exact ⟨rfl, fun same => different (congrArg RootSource.carrier same)⟩

theorem root_auxiliary_forced (output : Output)
    (carrier : Carrier) {left right : Aux} (different : left ≠ right) :
    rootLogical
        (⟨output, closedControl (leading output), carrier, left⟩ :
          RootSource Output Carrier Aux leading) =
      rootLogical
        ⟨output, closedControl (leading output), carrier, right⟩ ∧
    (⟨output, closedControl (leading output), carrier, left⟩ :
      RootSource Output Carrier Aux leading) ≠
      ⟨output, closedControl (leading output), carrier, right⟩ := by
  exact ⟨rfl, fun same => different (congrArg RootSource.auxiliary same)⟩

/-! ## Virtual Church-boolean carrier

The canonical output determines the bit and therefore the erased
`alpha`/`bullet-alpha` shape.  Gate, instance, epoch, and all other independent
coordinates remain in `Independent × Aux`.  `Bool` below is the canonical
boolean-output index; the injection from that index to concrete NF syntax is
proved in `ReadbackController.lean`.
-/

structure VirtualRootSource (Independent : Type u) (Aux : Type v) where
  bit : Bool
  control : ClosedControl 2
  independent : Independent
  auxiliary : Aux

def virtualLogical
    (source : VirtualRootSource Independent Aux) : Bool := source.bit

def virtualResidue
    (source : VirtualRootSource Independent Aux) : Independent × Aux :=
  ⟨source.independent, source.auxiliary⟩

def virtualRebuild (bit : Bool) (garbage : Independent × Aux) :
    VirtualRootSource Independent Aux :=
  ⟨bit, closedControl 2, garbage.1, garbage.2⟩

theorem virtualRebuild_projects (bit : Bool)
    (garbage : Independent × Aux) :
    virtualLogical (virtualRebuild bit garbage) = bit := by
  rfl

theorem virtualRebuild_residue (bit : Bool)
    (garbage : Independent × Aux) :
    virtualResidue (virtualRebuild bit garbage) = garbage := by
  rfl

theorem virtual_source_rebuild
    (source : VirtualRootSource Independent Aux) :
    virtualRebuild (virtualLogical source) (virtualResidue source) = source := by
  cases source with
  | mk bit control independent auxiliary =>
      have controlSame := closed_control_unique (closedControl 2) control
      cases controlSame
      rfl

def virtual_root_fibre_exact (bit : Bool) :
    QalcPredecessorFiber.FibreExact
      (@virtualLogical Independent Aux) bit (Independent × Aux) :=
  QalcPredecessorFiber.fibreExact
    (@virtualLogical Independent Aux)
    (@virtualResidue Independent Aux)
    (@virtualRebuild Independent Aux)
    (@virtualRebuild_projects Independent Aux)
    (@virtualRebuild_residue Independent Aux)
    (@virtual_source_rebuild Independent Aux)
    bit

/-! ## Canonical binder compression

The Python representation stores binder marks in output-preorder.  Removing
the two output-derived virtual marks is invertible by merging them back at
their output paths; their old tuple indices carry no independent information.
`Expanded` is intentionally a constructor rather than an arbitrary list: it
is the reachable canonical-order subtype checked by `_binders_canonical`.
-/

structure CanonicalBinderState (Mark : Type x)
    (merge : List Mark → List Mark → List Mark) (derived : List Mark) where
  remaining : List Mark
  expanded : List Mark
  canonical : expanded = merge remaining derived

def compressBinders
    (source : CanonicalBinderState Mark merge derived) : List Mark :=
  source.remaining

def expandBinders (merge : List Mark → List Mark → List Mark)
    (derived : List Mark) (remaining : List Mark) :
    CanonicalBinderState Mark merge derived :=
  ⟨remaining, merge remaining derived, rfl⟩

theorem binder_compression_roundtrip
    (source : CanonicalBinderState Mark merge derived) :
    expandBinders merge derived (compressBinders source) = source := by
  cases source with
  | mk remaining expanded canonical =>
      subst expanded
      rfl

theorem binder_expanded_is_reconstructed
    (source : CanonicalBinderState Mark merge derived) :
    source.expanded = merge (compressBinders source) derived := by
  exact source.canonical

theorem binder_expansion_roundtrip (remaining : List Mark) :
    compressBinders (expandBinders merge derived remaining) = remaining := by
  rfl

end QalcRootClosure
