import Std
import FiniteGram

/-!
# Exact finite reachable-machine certificate

This checker is the bridge from a concrete, closed Python carrier to Lean.
Targets are the injective state identifiers assigned by the exporter; a
column retains its actual coefficient list and whether its source is an H
arrival.  Nothing here invents a range tag on the *target*: deterministic and
Hadamard ranges are compared by literal target-id equality.

The exporter orders every column-bearing state before its two retained
frontier ticks, so a source's array index is also its physical state id.

`stepDet` and `pred` are executable.  `predChecked` says that `pred` is a
left inverse of every non-H column.  Consequently it simultaneously rejects
two deterministic sources with one target, a malformed deterministic column,
and an H/deterministic common target.  H/H sharing remains legal and is
adjudicated by the exact Gram checker.
-/

namespace QalcFiniteMachine

open QalcFiniteGram

structure MachineColumn where
  hadamard : Bool
  entries : Column
  deriving DecidableEq, Repr

abbrev Machine := Array MachineColumn

/-- The concrete deterministic one-step target.  H columns deliberately have
no deterministic image; their two exact-amplitude edges remain in `entries`.
-/
def stepDet (machine : Machine) (source : Fin machine.size) : Option Nat :=
  let column := machine[source]
  if column.hadamard then none
  else
    match column.entries with
    | [(target, _coefficient)] => some target
    | _ => none

/-- One global executable predecessor on literal physical target ids. -/
def pred (machine : Machine) (target : Nat) : Option (Fin machine.size) :=
  (List.finRange machine.size).find?
    (fun source => stepDet machine source = some target)

/-- H rows must have two edges; every other row exactly one. -/
def shapesChecked (machine : Machine) : Bool :=
  (List.finRange machine.size).all fun source =>
    let column := machine[source]
    if column.hadamard then column.entries.length == 2
    else column.entries.length == 1

/-- `pred` is a left inverse on every deterministic source. -/
def predChecked (machine : Machine) : Bool :=
  (List.finRange machine.size).all fun source =>
    match stepDet machine source with
    | none => machine[source].hadamard
    | some target => pred machine target == some source

/-- Compare actual target ids: no deterministic landing may be an H landing.
There is no target-side class field whose construction assumes the result. -/
def rangesChecked (machine : Machine) : Bool :=
  (List.finRange machine.size).all fun source =>
    match stepDet machine source with
    | none => true
    | some target =>
        (List.finRange machine.size).all fun other =>
          !machine[other].hadamard ||
            !(machine[other].entries.any fun entry => entry.1 == target)

def columns (machine : Machine) : List Column :=
  machine.toList.map MachineColumn.entries

/-- The complete finite operational-core certificate.  The exporter closes
all running/readback states and two terminal ticks; the universal unilateral
tail is discharged separately by `TerminalAdapters.lean`.  This is not a
claim about unexported programs. -/
def machineChecked (machine : Machine) : Bool :=
  shapesChecked machine && predChecked machine && rangesChecked machine &&
    gramChecked (columns machine)

theorem pred_left_inverse_of_checked
    (machine : Machine) (checked : predChecked machine = true)
    (source : Fin machine.size) (target : Nat)
    (steps : stepDet machine source = some target) :
    pred machine target = some source := by
  have member : source ∈ List.finRange machine.size := by
    simp
  have row := (List.all_eq_true.mp checked) source member
  simp [steps] at row
  exact row

theorem deterministic_injective_of_checked
    (machine : Machine) (checked : predChecked machine = true)
    {left right : Fin machine.size} {target : Nat}
    (leftStep : stepDet machine left = some target)
    (rightStep : stepDet machine right = some target) :
    left = right := by
  have leftPred := pred_left_inverse_of_checked machine checked left target leftStep
  have rightPred := pred_left_inverse_of_checked machine checked right target rightStep
  rw [leftPred] at rightPred
  exact Option.some.inj rightPred

end QalcFiniteMachine
