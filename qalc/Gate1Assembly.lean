import Std
import FiniteMachine
import RecallEpoch
import DeltaFibers
import ReadbackController
import RootClosure
import TerminalAdapters
import ApplicationMarker
import ConservativeFallback

/-!
# qALC Gate-1 assembly on the concrete reachable transition table

The previous draft manufactured Boolean fields such as `controllerShape` in
a toy landing record and then classified ranges by those fields.  That did
not prove anything about the physical machine.  This file intentionally has
no target-side range tag and no synthetic target constructors.

For a fixed admitted program, `QalcReadbackGramExport.py` closes the concrete
running/readback graph through two terminal ticks and assigns injective
natural-number ids to the actual physical states.  Its generated `Machine`
retains every exact transition coefficient
and only a *source-row* bit saying whether the row is the two-edge H block.
`FiniteMachine.lean` then executes one global predecessor over literal target
ids.  The same generated theorem checks:

* every non-H row has exactly one edge and `pred` is its left inverse;
* no deterministic target id occurs in an H range;
* H rows have exactly two edges; and
* the full column Gram matrix is the identity in exact
  `Z[omega]/sqrt(2)^k` arithmetic.

Thus the assembly theorem below is about the exported finite operational core.
`TerminalAdapters.lean` proves every later tick row uniformly.  The result
does not upgrade admitted-sector closure into an ambient minimal-carrier
theorem for unexported programs; `semantics.py` totalizes rejection with the
separately proved conservative representation.
-/

namespace QalcGate1Assembly

open QalcFiniteGram QalcFiniteMachine

/-- One checked closed reachable carrier.  The four fields are kept separate
so downstream theorems consume the exact fact they need; `machineChecked` is
the executable conjunction used in generated files. -/
structure ReachableCertificate where
  machine : Machine
  shapes : shapesChecked machine = true
  predecessor : predChecked machine = true
  ranges : rangesChecked machine = true
  gram : gramChecked (columns machine) = true

theorem deterministic_predecessor_left_inverse
    (certificate : ReachableCertificate)
    (source : Fin certificate.machine.size) (target : Nat)
    (steps : stepDet certificate.machine source = some target) :
    pred certificate.machine target = some source := by
  exact pred_left_inverse_of_checked certificate.machine
    certificate.predecessor source target steps

theorem deterministic_step_injective
    (certificate : ReachableCertificate)
    {left right : Fin certificate.machine.size} {target : Nat}
    (leftStep : stepDet certificate.machine left = some target)
    (rightStep : stepDet certificate.machine right = some target) :
    left = right := by
  exact deterministic_injective_of_checked certificate.machine
    certificate.predecessor leftStep rightStep

/-- Exact orthonormal columns on the complete exported carrier. -/
theorem reachable_columns_orthonormal
    (certificate : ReachableCertificate) :
    gramChecked (columns certificate.machine) = true :=
  certificate.gram

/-! ## Analytic local delta blocks

The generated finite-core theorem plus the uniform terminal theorem is the
end-to-end result.  These tiny
tables separately expose the intended H and T matrices so their local
arithmetic is readable without opening a generated file. -/

def hColumns : List Column := [
  [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨1, 0, 0, 0, 1⟩)],
  [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨-1, 0, 0, 0, 1⟩)]]

def tColumns : List Column := [
  [(0, ⟨1, 0, 0, 0, 0⟩)],
  [(1, ⟨0, 1, 0, 0, 0⟩)]]

theorem h_columns_orthonormal : gramChecked hColumns = true := by
  decide +kernel

theorem t_columns_orthonormal : gramChecked tColumns = true := by
  decide +kernel

/-- Literal target ids 0/1 are the H landing pair and 2/3 the T pair.  No
target tag is involved; disjointness is ordinary natural-number inequality. -/
def htColumns : List Column := [
  [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨1, 0, 0, 0, 1⟩)],
  [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨-1, 0, 0, 0, 1⟩)],
  [(2, ⟨1, 0, 0, 0, 0⟩)],
  [(3, ⟨0, 1, 0, 0, 0⟩)]]

theorem ht_full_pairwise_gram : gramChecked htColumns = true := by
  decide +kernel

end QalcGate1Assembly
