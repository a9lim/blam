import Gate2PhysicalCompiler

/-!
# Exact weighted evolution of the physical composed machine

This module supplies the missing multi-step language in which the Gate-2
physical refinement theorem is stated.  Paths remain unmerged; observable
amplitudes are exact `Dw` sums over equal `NFState` targets.  This is equivalent
to sparse-map merging while avoiding an arbitrary list-order normal form in
the theorem statement.
-/

namespace QalcGate2PhysicalEvolution

open QalcFiniteGram QalcComposedMachine QalcGate2Compiler
  QalcGate2PhysicalCompiler

def omegaPhysical : Dw := ⟨0, 1, 0, 0, 0⟩

def powDw : Dw → Nat → Dw
  | _, 0 => one
  | value, power + 1 => mul value (powDw value power)

def edgeCoefficient (edge : Edge) : Dw :=
  mul ⟨edge.sign, 0, 0, 0, edge.denominatorPower⟩
    (powDw omegaPhysical edge.omegaPower.val)

@[simp] theorem mul_one_left (value : Dw) : mul one value = value := by
  cases value
  simp [QalcFiniteGram.mul, QalcFiniteGram.one]

@[simp] theorem mul_one_right (value : Dw) : mul value one = value := by
  cases value
  simp [QalcFiniteGram.mul, QalcFiniteGram.one]

@[simp] theorem deterministic_edge_coefficient (rule : Rule)
    (target : NFState) :
    edgeCoefficient ⟨1, 0, 0, rule, target⟩ = one := by
  simp [edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

structure WeightedState where
  state : NFState
  amplitude : Dw
  deriving Repr, DecidableEq

abbrev PhysicalColumn := List WeightedState

def stepBasis (term : Term) (certificate : Certificate)
    (basis : WeightedState) : PhysicalColumn :=
  (composedStep term basis.state certificate).map fun edge =>
    ⟨edge.target, mul (edgeCoefficient edge) basis.amplitude⟩

def stepColumn (term : Term) (certificate : Certificate)
    (column : PhysicalColumn) : PhysicalColumn :=
  column.flatMap (stepBasis term certificate)

def evolve (term : Term) (certificate : Certificate) :
    Nat → PhysicalColumn → PhysicalColumn
  | 0, column => column
  | time + 1, column => evolve term certificate time
      (stepColumn term certificate column)

def amplitudeAt (column : PhysicalColumn) (state : NFState) : Dw :=
  column.foldl (fun total basis =>
    if basis.state == state then add total basis.amplitude else total) zero

def supportedAt (column : PhysicalColumn) (state : NFState) : Prop :=
  ∃ basis ∈ column, basis.state = state ∧
    equivalent basis.amplitude zero = false

def isDone : NFState → Bool
  | .done _ _ _ _ => true
  | _ => false

def compiledEvolve (circuit : Circuit n) : Nat → PhysicalColumn → PhysicalColumn :=
  evolve (compiledTerm circuit) (compilerCertificate circuit)

@[simp] theorem evolve_zero (term : Term) (certificate : Certificate)
    (column : PhysicalColumn) :
    evolve term certificate 0 column = column := rfl

@[simp] theorem evolve_succ (term : Term) (certificate : Certificate)
    (time : Nat) (column : PhysicalColumn) :
    evolve term certificate (time + 1) column =
      evolve term certificate time (stepColumn term certificate column) := rfl

theorem evolve_add (term : Term) (certificate : Certificate)
    (left right : Nat) (column : PhysicalColumn) :
    evolve term certificate (left + right) column =
      evolve term certificate right
        (evolve term certificate left column) := by
  induction left generalizing column with
  | zero => simp
  | succ left ih =>
      simp only [Nat.succ_add, evolve_succ]
      exact ih (stepColumn term certificate column)

theorem evolve_compose (term : Term) (certificate : Certificate)
    (left right : Nat) (start middle finish : PhysicalColumn)
    (leftTrace : evolve term certificate left start = middle)
    (rightTrace : evolve term certificate right middle = finish) :
    evolve term certificate (left + right) start = finish := by
  rw [evolve_add, leftTrace, rightTrace]

theorem stepColumn_append (term : Term) (certificate : Certificate)
    (left right : PhysicalColumn) :
    stepColumn term certificate (left ++ right) =
      stepColumn term certificate left ++ stepColumn term certificate right := by
  simp [stepColumn, List.flatMap_append]

theorem evolve_append (term : Term) (certificate : Certificate)
    (time : Nat) (left right : PhysicalColumn) :
    evolve term certificate time (left ++ right) =
      evolve term certificate time left ++ evolve term certificate time right := by
  induction time generalizing left right with
  | zero => rfl
  | succ time ih =>
      simp only [evolve_succ, stepColumn_append, ih]

theorem evolve_cons (term : Term) (certificate : Certificate)
    (time : Nat) (head : WeightedState) (tail : PhysicalColumn) :
    evolve term certificate time (head :: tail) =
      evolve term certificate time [head] ++
        evolve term certificate time tail := by
  simpa only [List.singleton_append] using
    evolve_append term certificate time [head] tail

@[simp] theorem stepColumn_nil (term : Term) (certificate : Certificate) :
    stepColumn term certificate [] = [] := rfl

@[simp] theorem evolve_nil (term : Term) (certificate : Certificate)
    (time : Nat) : evolve term certificate time [] = [] := by
  induction time with
  | zero => rfl
  | succ time ih =>
      simpa only [evolve_succ, stepColumn_nil] using ih

theorem evolve_map_flatMap {α : Type}
    (term : Term) (certificate : Certificate) (time : Nat)
    (input : α → WeightedState) (output : α → PhysicalColumn)
    (items : List α)
    (trace : ∀ item, evolve term certificate time [input item] = output item) :
    evolve term certificate time (items.map input) = items.flatMap output := by
  induction items with
  | nil => exact evolve_nil term certificate time
  | cons item items ih =>
      simp only [List.map_cons, List.flatMap_cons, evolve_cons, trace, ih]

/-!
`Gate2PhysicalRefinement` proves the common preparation cut;
`Gate2ContextualCircuit`, `Gate2ContextualOutput`, and
`Gate2CleanCompilation` lift this exact evolution through arbitrary H/T/CNOT
lists, full-NF output, literal common terminal garbage, and no earlier
`isDone` support.  This file supplies only the linear evolution algebra used by
those concrete proofs.
-/

end QalcGate2PhysicalEvolution
