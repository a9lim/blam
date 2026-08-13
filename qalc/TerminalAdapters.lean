import Std
import PredecessorFiber

/-!
# Typed Halt and Error adapters

The terminal part of Gate 1 is independent of the token details.  A final
readback state enters tick zero directly; halted and error states then advance
on disjoint unilateral chains.  There is no unticked terminal basis state and
no fixed point.  The complete readback machine must supply the injective
`RunDone` entry row and its `NF × garbage × control` factorization; this file
checks the adapter and invariant-sector part once that row exists.
-/

namespace QalcTerminalAdapters

universe u v w

inductive TerminalKind (ErrorKind : Type u) where
  | halt
  | error (reason : ErrorKind)
  deriving DecidableEq, Repr

structure RunDone (ErrorKind : Type u) (Output : Type v)
    (Garbage : Type w) (Control : Type) where
  kind : TerminalKind ErrorKind
  output : Output
  garbage : Garbage
  control : Control
  deriving DecidableEq, Repr

structure Terminal (ErrorKind : Type u) (Output : Type v)
    (Garbage : Type w) (Control : Type) where
  kind : TerminalKind ErrorKind
  output : Output
  garbage : Garbage
  control : Control
  tick : Nat
  deriving DecidableEq, Repr

def enter (source : RunDone ErrorKind Output Garbage Control) :
    Terminal ErrorKind Output Garbage Control :=
  ⟨source.kind, source.output, source.garbage, source.control, 0⟩

def advance (source : Terminal ErrorKind Output Garbage Control) :
    Terminal ErrorKind Output Garbage Control :=
  { source with tick := source.tick + 1 }

theorem enter_injective :
    Function.Injective (@enter ErrorKind Output Garbage Control) := by
  intro left right same
  cases left
  cases right
  simp_all [enter]

theorem advance_injective :
    Function.Injective (@advance ErrorKind Output Garbage Control) := by
  intro left right same
  cases left
  cases right
  simp [advance] at same
  simp_all

theorem enter_advance_ranges_disjoint
    (done : RunDone ErrorKind Output Garbage Control)
    (terminal : Terminal ErrorKind Output Garbage Control) :
    enter done ≠ advance terminal := by
  intro same
  have tickSame := congrArg Terminal.tick same
  simp [enter, advance] at tickSame

def HaltSector (state : Terminal ErrorKind Output Garbage Control) : Prop :=
  state.kind = .halt

def ErrorSector (state : Terminal ErrorKind Output Garbage Control) : Prop :=
  ∃ reason, state.kind = .error reason

theorem halt_forward_invariant
    {state : Terminal ErrorKind Output Garbage Control}
    (halted : HaltSector state) : HaltSector (advance state) := by
  exact halted

theorem error_forward_invariant
    {state : Terminal ErrorKind Output Garbage Control}
    (errored : ErrorSector state) : ErrorSector (advance state) := by
  exact errored

theorem output_fixed (state : Terminal ErrorKind Output Garbage Control) :
    (advance state).output = state.output := by
  rfl

theorem garbage_fixed (state : Terminal ErrorKind Output Garbage Control) :
    (advance state).garbage = state.garbage := by
  rfl

theorem control_fixed (state : Terminal ErrorKind Output Garbage Control) :
    (advance state).control = state.control := by
  rfl

theorem no_fixed_terminal (state : Terminal ErrorKind Output Garbage Control) :
    advance state ≠ state := by
  intro same
  have tickSame := congrArg Terminal.tick same
  simp [advance] at tickSame

/-! Semantic error entry projects a complete offending source to its typed
reason and retains exactly that reason's predecessor-fibre coordinate. -/

structure ErrorEntrySource (ErrorKind : Type u) (Payload : Type v) where
  reason : ErrorKind
  payload : Payload

def errorLogical (source : ErrorEntrySource ErrorKind Payload) : ErrorKind :=
  source.reason

def errorResidue (source : ErrorEntrySource ErrorKind Payload) : Payload :=
  source.payload

def errorRebuild (reason : ErrorKind) (payload : Payload) :
    ErrorEntrySource ErrorKind Payload :=
  ⟨reason, payload⟩

theorem errorRebuild_projects (reason : ErrorKind) (payload : Payload) :
    errorLogical (errorRebuild reason payload) = reason := by
  rfl

theorem errorRebuild_residue (reason : ErrorKind) (payload : Payload) :
    errorResidue (errorRebuild reason payload) = payload := by
  rfl

theorem error_source_rebuild (source : ErrorEntrySource ErrorKind Payload) :
    errorRebuild (errorLogical source) (errorResidue source) = source := by
  cases source
  rfl

def error_entry_fibre_exact (reason : ErrorKind) :
    QalcPredecessorFiber.FibreExact
      (@errorLogical ErrorKind Payload) reason Payload :=
  QalcPredecessorFiber.fibreExact
    (@errorLogical ErrorKind Payload)
    (@errorResidue ErrorKind Payload)
    (@errorRebuild ErrorKind Payload)
    (@errorRebuild_projects ErrorKind Payload)
    (@errorRebuild_residue ErrorKind Payload)
    (@error_source_rebuild ErrorKind Payload)
    reason

/-- Retaining the frozen offending source is forced: two distinct sources
with the same typed reason have the same logical error target. -/
theorem error_payload_forced (reason : ErrorKind)
    {left right : Payload} (different : left ≠ right) :
    errorLogical (⟨reason, left⟩ : ErrorEntrySource ErrorKind Payload) =
      errorLogical ⟨reason, right⟩ ∧
    (⟨reason, left⟩ : ErrorEntrySource ErrorKind Payload) ≠
      ⟨reason, right⟩ := by
  exact ⟨rfl, fun same => different
    (congrArg ErrorEntrySource.payload same)⟩

end QalcTerminalAdapters
