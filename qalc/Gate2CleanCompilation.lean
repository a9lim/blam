import Gate2TerminalGarbage

/-!
# Physical clean-compilation theorem for Gate 2

This file packages the concrete composed-machine refinement as a theorem about
the actual immutable compiler term and its syntax-directed certificate.  It
adds the two global consequences that are easy to lose in local macro proofs:
no branch can halt before the common physical time, and arbitrary finite input
columns evolve linearly inside the same invocation sector.
-/

namespace QalcGate2CleanCompilation

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalRefinement
open QalcGate2PhysicalEvolution
open QalcGate2PhysicalBoundary
open QalcGate2ContextualCompiler
open QalcGate2BoundaryInvariant
open QalcGate2ContextualCircuit
open QalcGate2ContextualOutput
open QalcGate2TerminalGarbage

theorem evolve_done_singleton (term : Term) (certificate : Certificate)
    (time tick : Nat) (kind : DoneKind) (output : Option NFTree)
    (garbage : TerminalGarbage) (amplitude : Dw) :
    evolve term certificate time
        [⟨.done kind output garbage tick, amplitude⟩] =
      [⟨.done kind output garbage (tick + time), amplitude⟩] := by
  induction time generalizing tick with
  | zero => simp
  | succ time ih =>
      simp only [evolve_succ]
      simp [stepColumn, stepBasis, composedStep, readbackStep,
        nfDeterministic, ih] <;> omega

theorem evolved_done_member (term : Term) (certificate : Certificate)
    (time : Nat) (column : PhysicalColumn) (kind : DoneKind)
    (output : Option NFTree) (garbage : TerminalGarbage) (tick : Nat)
    (amplitude : Dw)
    (membership :
      ⟨.done kind output garbage tick, amplitude⟩ ∈ column) :
    ⟨.done kind output garbage (tick + time), amplitude⟩ ∈
      evolve term certificate time column := by
  induction column with
  | nil => simp at membership
  | cons head tail ih =>
      rw [evolve_cons]
      simp only [List.mem_cons] at membership
      rcases membership with same | tailMembership
      · subst head
        rw [evolve_done_singleton]
        simp
      · exact List.mem_append_right _ (ih tailMembership)

theorem cleanHaltedColumn_tick_zero (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) (state : WeightedState)
    (membership : state ∈ cleanHaltedColumn circuit branches) :
    ∃ data amplitude,
      state = ⟨cleanHaltedState circuit data, amplitude⟩ := by
  simp only [cleanHaltedColumn, List.mem_map] at membership
  rcases membership with ⟨branch, _branchMember, rfl⟩
  exact ⟨branch.data, branch.amplitude, rfl⟩

theorem compiled_basis_no_earlier_halt (positiveWidth : 0 < n)
    (circuit : Circuit n) (word : Word n) (time : Nat)
    (early : time < runtime circuit) :
    ∀ kind output garbage tick amplitude,
      ⟨.done kind output garbage tick, amplitude⟩ ∉
        evolve (compiledTerm circuit) (compilerCertificate circuit) time
          [⟨boundaryState n 0 (initialBoundaryData word), one⟩] := by
  intro kind output garbage tick amplitude membership
  let remaining := runtime circuit - time
  have remainingPositive : 0 < remaining := by
    simp [remaining, Nat.sub_pos_iff_lt, early]
  have propagated := evolved_done_member
    (compiledTerm circuit) (compilerCertificate circuit) remaining
    (evolve (compiledTerm circuit) (compilerCertificate circuit) time
      [⟨boundaryState n 0 (initialBoundaryData word), one⟩])
    kind output garbage tick amplitude membership
  have timeSplit : time + remaining = runtime circuit := by
    simp [remaining, Nat.add_sub_of_le (Nat.le_of_lt early)]
  rw [← evolve_add, timeSplit,
    compiled_basis_full_nf_clean positiveWidth circuit word] at propagated
  rcases cleanHaltedColumn_tick_zero circuit
    (compiledBoundaryPaths circuit word)
    ⟨.done kind output garbage (tick + remaining), amplitude⟩ propagated with
    ⟨data, branchAmplitude, stateEqual⟩
  simp [cleanHaltedState] at stateEqual
  omega

theorem compiled_full_no_earlier_halt (positiveWidth : 0 < n)
    (circuit : Circuit n) (time : Nat)
    (early : time < fullPhysicalTime circuit) :
    ∀ kind output garbage tick amplitude,
      ⟨.done kind output garbage tick, amplitude⟩ ∉
        compiledEvolve circuit time
          [⟨QalcComposedMachine.initial, one⟩] := by
  intro kind output garbage tick amplitude membership
  let remaining := fullPhysicalTime circuit - time
  have remainingPositive : 0 < remaining := by
    simp [remaining, Nat.sub_pos_iff_lt, early]
  have propagated := evolved_done_member
    (compiledTerm circuit) (compilerCertificate circuit) remaining
    (compiledEvolve circuit time [⟨QalcComposedMachine.initial, one⟩])
    kind output garbage tick amplitude membership
  have timeSplit : time + remaining = fullPhysicalTime circuit := by
    simp [remaining, Nat.add_sub_of_le (Nat.le_of_lt early)]
  unfold compiledEvolve at propagated
  rw [← evolve_add, timeSplit] at propagated
  change ⟨.done kind output garbage (tick + remaining), amplitude⟩ ∈
    compiledEvolve circuit (fullPhysicalTime circuit)
      [⟨QalcComposedMachine.initial, one⟩] at propagated
  rw [compiled_full_nf_clean positiveWidth circuit] at propagated
  rcases cleanHaltedColumn_tick_zero circuit
    (compiledPreparedBoundaryBranches circuit)
    ⟨.done kind output garbage (tick + remaining), amplitude⟩ propagated with
    ⟨data, branchAmplitude, stateEqual⟩
  simp [cleanHaltedState] at stateEqual
  omega

/-! ## Arbitrary finite columns at the common reachable cut -/

def physicalInputBranch (weighted : WeightedInput n) :
    WeightedBoundaryData n :=
  ⟨initialBoundaryData weighted.word, weighted.amplitude⟩

def physicalInputBranches (inputs : List (WeightedInput n)) :
    List (WeightedBoundaryData n) :=
  inputs.map physicalInputBranch

def physicalInputColumn (inputs : List (WeightedInput n)) : PhysicalColumn :=
  boundaryColumn 0 (physicalInputBranches inputs)

def physicalLinearBranches (circuit : Circuit n)
    (inputs : List (WeightedInput n)) : List (WeightedBoundaryData n) :=
  boundaryPathsFrom 0 circuit (physicalInputBranches inputs)

def idealInputBranches (inputs : List (WeightedInput n)) : List (Branch n) :=
  inputs.map fun weighted => ⟨weighted.word, weighted.amplitude⟩

def idealLinearColumn (circuit : Circuit n)
    (inputs : List (WeightedInput n)) : List (Branch n) :=
  paths circuit (idealInputBranches inputs)

theorem physicalInputBranches_fullWF (inputs : List (WeightedInput n)) :
    ∀ branch ∈ physicalInputBranches inputs,
      CompiledBoundaryWFAt ([] : Circuit n) branch.data := by
  intro branch membership
  simp only [physicalInputBranches, List.mem_map] at membership
  rcases membership with ⟨weighted, _inputMember, rfl⟩
  exact ⟨initialBoundaryWF weighted.word, initialBoundaryStorageWF⟩

theorem physicalLinearBranches_fullWF (circuit : Circuit n)
    (inputs : List (WeightedInput n)) :
    ∀ branch ∈ physicalLinearBranches circuit inputs,
      CompiledBoundaryWFAt circuit branch.data := by
  simpa [physicalLinearBranches] using
    boundaryPathsFrom_compiled_fullWF ([] : Circuit n) circuit
      (physicalInputBranches inputs) (physicalInputBranches_fullWF inputs)

theorem physicalLinearBranches_storage (circuit : Circuit n)
    (inputs : List (WeightedInput n)) (output : WeightedBoundaryData n)
    (membership : output ∈ physicalLinearBranches circuit inputs) :
    output.data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit := by
  apply boundaryPathsFrom_storage 0 circuit (physicalInputBranches inputs)
    (initialWireKeys n) (prepStorage n)
  · intro branch member
    simp only [physicalInputBranches, List.mem_map] at member
    rcases member with ⟨weighted, _inputMember, rfl⟩
    exact ⟨rfl, rfl⟩
  · exact membership

theorem physicalLinearBranches_erased (circuit : Circuit n)
    (inputs : List (WeightedInput n)) (output : WeightedBoundaryData n)
    (membership : output ∈ physicalLinearBranches circuit inputs) :
    eraseBoundaryBits output.data = commonBoundaryData circuit := by
  unfold commonBoundaryData
  apply boundaryPathsFrom_erased ([] : Circuit n) circuit
    (physicalInputBranches inputs) (initialBoundaryData (falseWord n))
  · exact physicalInputBranches_fullWF inputs
  · intro branch member
    simp only [physicalInputBranches, List.mem_map] at member
    rcases member with ⟨weighted, _inputMember, rfl⟩
    exact eraseBoundaryBits_initialBoundaryData weighted.word
  · exact membership

theorem physicalLinearBranches_trueFramesLive (circuit : Circuit n)
    (inputs : List (WeightedInput n)) (output : WeightedBoundaryData n)
    (membership : output ∈ physicalLinearBranches circuit inputs) :
    TrueFramesLive output.data := by
  apply boundaryPathsFrom_trueFramesLive 0 circuit
    (physicalInputBranches inputs)
  · intro branch member
    simp only [physicalInputBranches, List.mem_map] at member
    rcases member with ⟨weighted, _inputMember, rfl⟩
    exact initialBoundaryData_trueFramesLive weighted.word
  · exact membership

theorem physicalLinearBranches_terminalFrames (circuit : Circuit n)
    (inputs : List (WeightedInput n)) (output : WeightedBoundaryData n)
    (membership : output ∈ physicalLinearBranches circuit inputs) :
    outputFramesAfter output.data n = commonTerminalFrames circuit := by
  have erased := physicalLinearBranches_erased circuit inputs output membership
  have live := physicalLinearBranches_trueFramesLive circuit inputs output
    membership
  have allFalse : ∀ frame ∈ outputFramesAfter output.data n,
      frame.bit = false := outputFramesAfter_false output.data live
  calc
    outputFramesAfter output.data n =
        (outputFramesAfter output.data n).map eraseFrameBit := by
      symm
      exact map_eraseFrameBit_eq_self _ allFalse
    _ = outputFramesAfter (eraseBoundaryBits output.data) n :=
      (map_eraseFrameBit_outputFramesAfter output.data n).trans
        (outputFramesAfter_eraseBoundaryBits output.data n)
    _ = commonTerminalFrames circuit := by
      rw [erased]
      rfl

theorem physicalLinearBranches_terminalGarbage (circuit : Circuit n)
    (inputs : List (WeightedInput n)) (output : WeightedBoundaryData n)
    (membership : output ∈ physicalLinearBranches circuit inputs) :
    outputTerminalGarbage circuit output.data =
      commonTerminalGarbage circuit := by
  have erased := physicalLinearBranches_erased circuit inputs output membership
  have framesEqual := physicalLinearBranches_terminalFrames circuit inputs
    output membership
  have storageOutput :
      outputStorageAfter circuit output.data n =
        outputStorageAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputStorageAfter_eraseBoundaryBits circuit output.data n, erased]
  have residuesOutput :
      outputResiduesAfter circuit output.data n =
        outputResiduesAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputResiduesAfter_eraseBoundaryBits circuit output.data n, erased]
  unfold commonTerminalGarbage outputTerminalGarbage
  rw [framesEqual, storageOutput, residuesOutput]
  rfl

theorem haltedPhysicalLinearColumn_eq_clean (circuit : Circuit n)
    (inputs : List (WeightedInput n)) :
    haltedBoundaryColumn circuit (physicalLinearBranches circuit inputs) =
      cleanHaltedColumn circuit (physicalLinearBranches circuit inputs) := by
  apply List.map_congr_left
  intro branch membership
  have garbage := physicalLinearBranches_terminalGarbage circuit inputs branch
    membership
  simp [outputHaltedState, cleanHaltedState, garbage]

theorem project_physicalLinearBranches (circuit : Circuit n)
    (inputs : List (WeightedInput n)) :
    (physicalLinearBranches circuit inputs).map projectBoundary =
      idealLinearColumn circuit inputs := by
  unfold physicalLinearBranches idealLinearColumn
  rw [project_boundaryPathsFrom]
  unfold physicalInputBranches idealInputBranches
  congr 1
  rw [List.map_map]
  apply List.map_congr_left
  intro weighted _membership
  rfl

theorem outputPrefix_congr_word (left right : BoundaryData n)
    (same : left.word = right.word) (processed : Nat) :
    outputPrefix left processed = outputPrefix right processed := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      simp only [outputPrefix]
      split
      next within =>
        have bitEqual :
            left.word ⟨processed, within⟩ =
              right.word ⟨processed, within⟩ := congrFun same _
        rw [ih, bitEqual]
      next outside => exact ih

theorem outputTreeAfter_congr_word (left right : BoundaryData n)
    (same : left.word = right.word) (processed : Nat) :
    outputTreeAfter left processed = outputTreeAfter right processed := by
  simp [outputTreeAfter, outputPrefix_congr_word left right same processed]

def encodedWordTree (word : Word n) : NFTree :=
  outputTreeAfter (initialBoundaryData word) n

def embedIdealTerminal (circuit : Circuit n) (branch : Branch n) :
    WeightedState :=
  ⟨.done .halt (some (encodedWordTree branch.word))
      (commonTerminalGarbage circuit) 0,
    branch.amplitude⟩

theorem cleanHaltedState_eq_encoded (circuit : Circuit n)
    (data : BoundaryData n) :
    cleanHaltedState circuit data =
      .done .halt (some (encodedWordTree data.word))
        (commonTerminalGarbage circuit) 0 := by
  unfold cleanHaltedState encodedWordTree
  rw [outputTreeAfter_congr_word data (initialBoundaryData data.word) rfl n]

theorem cleanPhysicalLinearColumn_eq_ideal (circuit : Circuit n)
    (inputs : List (WeightedInput n)) :
    cleanHaltedColumn circuit (physicalLinearBranches circuit inputs) =
      (idealLinearColumn circuit inputs).map (embedIdealTerminal circuit) := by
  rw [← project_physicalLinearBranches circuit inputs]
  simp only [List.map_map]
  apply List.map_congr_left
  intro branch _membership
  simp [projectBoundary, embedIdealTerminal,
    cleanHaltedState_eq_encoded]

theorem compiled_arbitrary_superposition_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) (inputs : List (WeightedInput n)) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (runtime circuit) (physicalInputColumn inputs) =
      (idealLinearColumn circuit inputs).map (embedIdealTerminal circuit) := by
  have circuitTrace := contextual_circuit_physical_from positiveWidth
    ([] : Circuit n) circuit (physicalInputBranches inputs)
    (physicalInputBranches_fullWF inputs)
  have outputTrace := compiled_output_column positiveWidth circuit
    (physicalLinearBranches circuit inputs)
    (physicalLinearBranches_fullWF circuit inputs)
    (physicalLinearBranches_storage circuit inputs)
  have circuitTraceExact :
      evolve (compiledTerm circuit) (compilerCertificate circuit)
          (physicalCircuitTime circuit) (physicalInputColumn inputs) =
        boundaryColumn circuit.length
          (physicalLinearBranches circuit inputs) := by
    simpa [physicalInputColumn, physicalLinearBranches] using circuitTrace
  rw [show runtime circuit = physicalCircuitTime circuit +
      physicalOutputTime circuit by
    rw [physicalCircuitTime_add_output]
    unfold runtime
    omega,
    evolve_add]
  rw [circuitTraceExact, outputTrace,
    haltedPhysicalLinearColumn_eq_clean,
    cleanPhysicalLinearColumn_eq_ideal]

theorem compiled_basis_restricted_matrix (positiveWidth : 0 < n)
    (circuit : Circuit n) (word : Word n) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (runtime circuit)
        [⟨boundaryState n 0 (initialBoundaryData word), one⟩] =
      (column circuit word).map (embedIdealTerminal circuit) := by
  let input : WeightedInput n := ⟨word, one⟩
  simpa [physicalInputColumn, physicalInputBranches, physicalInputBranch,
    boundaryColumn,
    idealLinearColumn, idealInputBranches, input, column] using
    compiled_arbitrary_superposition_physical positiveWidth circuit [input]

/-! ## The encoded input basis is a common reachable cut -/

theorem extendWord_prefix_last (word : Word (count + 1)) :
    extendWord (wordPrefix word) (wordLast word) = word := by
  funext index
  simp only [extendWord]
  split
  next within => simp [wordPrefix]
  next outside =>
    have atLast : index.val = count := by omega
    have indexEqual : index = ⟨count, Nat.lt_succ_self count⟩ := by
      apply Fin.ext
      exact atLast
    subst index
    rfl

theorem every_word_in_preparationBranches :
    ∀ word : Word n, ∃ amplitude,
      (⟨word, amplitude⟩ : Branch n) ∈ preparationBranches n := by
  induction n with
  | zero =>
      intro word
      have wordEqual : word = fun wire => Fin.elim0 wire := by
        funext wire
        exact Fin.elim0 wire
      subst word
      exact ⟨one, by simp [preparationBranches]⟩
  | succ count ih =>
      intro word
      rcases ih (wordPrefix word) with ⟨amplitude, member⟩
      refine ⟨mul invSqrt2 amplitude, ?_⟩
      simp only [preparationBranches]
      apply List.mem_flatMap.mpr
      refine ⟨⟨wordPrefix word, amplitude⟩, member, ?_⟩
      cases last : wordLast word
      · have reconstructed := extendWord_prefix_last word
        rw [last] at reconstructed
        simp [preparationScatter, reconstructed]
      · have reconstructed := extendWord_prefix_last word
        rw [last] at reconstructed
        simp [preparationScatter, reconstructed]

theorem every_word_in_preparedBoundaryBranches (word : Word n) :
    ∃ amplitude,
      (⟨initialBoundaryData word, amplitude⟩ : WeightedBoundaryData n) ∈
        preparedBoundaryBranches n := by
  rcases every_word_in_preparationBranches word with ⟨amplitude, member⟩
  exact ⟨amplitude, by
    simp only [preparedBoundaryBranches, List.mem_map]
    exact ⟨⟨word, amplitude⟩, member, rfl⟩⟩

theorem every_input_basis_reachable (positiveWidth : 0 < n)
    (circuit : Circuit n) (word : Word n) :
    ∃ amplitude,
      ⟨boundaryState n 0 (initialBoundaryData word), amplitude⟩ ∈
        compiledEvolve circuit (preparedAt n)
          [⟨QalcComposedMachine.initial, one⟩] := by
  rcases every_word_in_preparedBoundaryBranches word with
    ⟨amplitude, member⟩
  refine ⟨amplitude, ?_⟩
  rw [compiled_preparation_physical positiveWidth circuit,
    preparationBoundaryColumn_eq_boundaryColumn positiveWidth]
  exact List.mem_map_of_mem
    (f := fun branch : WeightedBoundaryData n =>
      (⟨boundaryState n 0 branch.data, branch.amplitude⟩ : WeightedState))
    member

/-! ## Load-bearing theorem package -/

structure PhysicalCleanCompiled (n : Nat) (circuit : Circuit n) where
  positiveWidth : 0 < n
  code : Term
  certificate : Certificate
  codeExact : code = compiledTerm circuit
  certificateExact : certificate = compilerCertificate circuit
  compilerClosed : compileTerm? circuit = some code
  inputBoundary : Word n → NFState
  inputBoundaryExact : ∀ word,
    inputBoundary word = boundaryState n 0 (initialBoundaryData word)
  commonCutTime : Nat
  commonCutTimeExact : commonCutTime = preparedAt n
  inputReachable : ∀ word, ∃ amplitude,
    ⟨inputBoundary word, amplitude⟩ ∈
      evolve code certificate commonCutTime
        [⟨QalcComposedMachine.initial, one⟩]
  runTime : Nat
  runTimeExact : runTime = runtime circuit
  terminalGarbage : TerminalGarbage
  terminalGarbageExact : terminalGarbage = commonTerminalGarbage circuit
  basisMatrix : ∀ word,
    evolve code certificate runTime [⟨inputBoundary word, one⟩] =
      (column circuit word).map (embedIdealTerminal circuit)
  arbitraryLinearExtension : ∀ inputs,
    evolve code certificate runTime (physicalInputColumn inputs) =
      (idealLinearColumn circuit inputs).map (embedIdealTerminal circuit)
  basisNoEarly : ∀ word time, time < runTime →
    ∀ kind output garbage tick amplitude,
      ⟨.done kind output garbage tick, amplitude⟩ ∉
        evolve code certificate time [⟨inputBoundary word, one⟩]
  fullTime : Nat
  fullTimeExact : fullTime = commonCutTime + runTime
  closedInvocationTrace :
    evolve code certificate fullTime
        [⟨QalcComposedMachine.initial, one⟩] =
      cleanHaltedColumn circuit (compiledPreparedBoundaryBranches circuit)
  closedInvocationNoEarly : ∀ time, time < fullTime →
    ∀ kind output garbage tick amplitude,
      ⟨.done kind output garbage tick, amplitude⟩ ∉
        evolve code certificate time
          [⟨QalcComposedMachine.initial, one⟩]

def physicalCleanCompile (positiveWidth : 0 < n) (circuit : Circuit n) :
    PhysicalCleanCompiled n circuit where
  positiveWidth := positiveWidth
  code := compiledTerm circuit
  certificate := compilerCertificate circuit
  codeExact := rfl
  certificateExact := rfl
  compilerClosed := compileTerm_eq positiveWidth circuit
  inputBoundary := fun word =>
    boundaryState n 0 (initialBoundaryData word)
  inputBoundaryExact := fun _word => rfl
  commonCutTime := preparedAt n
  commonCutTimeExact := rfl
  inputReachable := every_input_basis_reachable positiveWidth circuit
  runTime := runtime circuit
  runTimeExact := rfl
  terminalGarbage := commonTerminalGarbage circuit
  terminalGarbageExact := rfl
  basisMatrix := compiled_basis_restricted_matrix positiveWidth circuit
  arbitraryLinearExtension :=
    compiled_arbitrary_superposition_physical positiveWidth circuit
  basisNoEarly := compiled_basis_no_earlier_halt positiveWidth circuit
  fullTime := fullPhysicalTime circuit
  fullTimeExact := by rw [fullPhysicalTime_eq_prepared_runtime]
  closedInvocationTrace := compiled_full_nf_clean positiveWidth circuit
  closedInvocationNoEarly := compiled_full_no_earlier_halt positiveWidth circuit

theorem clean_compile_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    Nonempty (PhysicalCleanCompiled n circuit) :=
  ⟨physicalCleanCompile positiveWidth circuit⟩

end QalcGate2CleanCompilation
