import Gate2ContextualUnary

/-!
# Literal circuit transport at arbitrary compiler boundaries

This file composes the exact contextual H, T, and CNOT traces.  The theorem
keeps one immutable compiled term and its compiler certificate throughout the
whole circuit, while the induction state ranges over the coherent boundary
column produced by the already-executed prefix.
-/

namespace QalcGate2ContextualCircuit

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalBoundary
open QalcGate2ContextualCompiler
open QalcGate2BoundaryInvariant
open QalcGate2PhysicalEvolution
open QalcGate2ContextualPhysical
open QalcGate2ContextualUnary

theorem sourceWiresFrom_append (gateIndex : Nat)
    (wires : Fin n → SourceName) (left right : Circuit n) :
    sourceWiresFrom gateIndex wires (left ++ right) =
      sourceWiresFrom (gateIndex + left.length)
        (sourceWiresFrom gateIndex wires left) right := by
  induction left generalizing gateIndex wires with
  | nil => simp [sourceWiresFrom]
  | cons gate rest ih =>
      simp only [List.cons_append, sourceWiresFrom, List.length_cons]
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        ih (gateIndex := gateIndex + 1)
          (wires := nextSourceWires gateIndex wires gate)

@[simp] theorem sourceWiresFrom_append_singleton (prior : Circuit n)
    (gate : Gate n) :
    sourceWiresFrom 0 wireName (prior ++ [gate]) =
      nextSourceWires prior.length
        (sourceWiresFrom 0 wireName prior) gate := by
  rw [sourceWiresFrom_append]
  simp [sourceWiresFrom]

theorem advanceBoundary_compiled_wf (prior : Circuit n)
    (data : BoundaryData n) (gate : Gate n) (outputBit : Bool)
    (wf : CompiledBoundaryWFAt prior data) :
    CompiledBoundaryWFAt (prior ++ [gate])
      (advanceBoundary prior.length gate outputBit data) := by
  constructor
  · simpa using advanceBoundary_wf wf.machine gate outputBit
  · simpa using nextBoundaryStorage_wf prior.length gate
      (sourceWiresFrom 0 wireName prior) data.wires data.storage wf.storage

theorem scatterBoundary_compiled_wf (prior : Circuit n)
    (gate : Gate n) (branch output : WeightedBoundaryData n)
    (wf : CompiledBoundaryWFAt prior branch.data)
    (membership : output ∈ scatterBoundary prior.length gate branch) :
    CompiledBoundaryWFAt (prior ++ [gate]) output.data := by
  cases gate with
  | h wire =>
      simp [scatterBoundary] at membership
      rcases membership with rfl | rfl <;>
        exact advanceBoundary_compiled_wf prior branch.data (.h wire) _ wf
  | t wire =>
      simp [scatterBoundary] at membership
      subst output
      exact advanceBoundary_compiled_wf prior branch.data (.t wire) false wf
  | cx control target distinct =>
      simp [scatterBoundary] at membership
      subst output
      exact advanceBoundary_compiled_wf prior branch.data
        (.cx control target distinct) false wf

theorem flatMap_scatterBoundary_compiled_wf (prior : Circuit n)
    (gate : Gate n) (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches, CompiledBoundaryWFAt prior branch.data) :
    ∀ output ∈ branches.flatMap (scatterBoundary prior.length gate),
      CompiledBoundaryWFAt (prior ++ [gate]) output.data := by
  intro output membership
  rcases List.mem_flatMap.mp membership with
    ⟨branch, branchMember, outputMember⟩
  exact scatterBoundary_compiled_wf prior gate branch output
    (wf branch branchMember) outputMember

def physicalGateTime : Gate n → Nat
  | .h _ => 47
  | .t _ => 55
  | .cx _ _ _ => 29

def physicalCircuitTime : Circuit n → Nat
  | [] => 0
  | gate :: rest => physicalGateTime gate + physicalCircuitTime rest

theorem contextual_circuit_physical_from (positiveWidth : 0 < n)
    (prior remaining : Circuit n)
    (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches, CompiledBoundaryWFAt prior branch.data) :
    evolve (compiledTerm (prior ++ remaining))
        (compilerCertificate (prior ++ remaining))
        (physicalCircuitTime remaining)
        (boundaryColumn prior.length branches) =
      boundaryColumn (prior.length + remaining.length)
        (boundaryPathsFrom prior.length remaining branches) := by
  induction remaining generalizing prior branches with
  | nil => simp [physicalCircuitTime, boundaryPathsFrom]
  | cons gate rest ih =>
      have nextWF := flatMap_scatterBoundary_compiled_wf prior gate branches wf
      have tailTrace := ih (prior := prior ++ [gate])
        (branches := branches.flatMap (scatterBoundary prior.length gate))
        nextWF
      cases gate with
      | h wire =>
          rw [physicalCircuitTime, evolve_add]
          simp only [physicalGateTime]
          rw [contextual_h_physical_column positiveWidth prior wire rest
            branches wf]
          simpa [boundaryPathsFrom, physicalGateTime, List.append_assoc,
            Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using tailTrace
      | t wire =>
          rw [physicalCircuitTime, evolve_add]
          simp only [physicalGateTime]
          rw [contextual_t_physical_column positiveWidth prior wire rest
            branches wf]
          simpa [boundaryPathsFrom, physicalGateTime, List.append_assoc,
            Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using tailTrace
      | cx control target distinct =>
          rw [physicalCircuitTime, evolve_add]
          simp only [physicalGateTime]
          rw [contextual_cx_physical_column positiveWidth prior control target
            distinct rest (compilerCertificate
              (prior ++ .cx control target distinct :: rest)) branches wf]
          simpa [boundaryPathsFrom, physicalGateTime, List.append_assoc,
            Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using tailTrace

theorem compiled_circuit_boundary_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) (word : Word n) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (physicalCircuitTime circuit)
        [⟨boundaryState n 0 (initialBoundaryData word), one⟩] =
      boundaryColumn circuit.length (compiledBoundaryPaths circuit word) := by
  have initialWF : ∀ branch ∈
      ([⟨initialBoundaryData word, one⟩] :
        List (WeightedBoundaryData n)),
      CompiledBoundaryWFAt ([] : Circuit n) branch.data := by
    intro branch membership
    simp at membership
    subst branch
    exact compiledBoundaryPath_fullWF [] word
      ⟨initialBoundaryData word, one⟩ (by simp [compiledBoundaryPaths,
        boundaryPathsFrom])
  simpa [compiledBoundaryPaths, boundaryColumn] using
    contextual_circuit_physical_from positiveWidth ([] : Circuit n) circuit
      [⟨initialBoundaryData word, one⟩] initialWF

end QalcGate2ContextualCircuit
