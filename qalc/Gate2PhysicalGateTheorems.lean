import Gate2PhysicalBoundary

namespace QalcGate2PhysicalBoundary

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalEvolution
open QalcGate2PhysicalRefinement

@[simp] theorem hCheckpoint45_eq_boundary (wire : Fin n)
    (word : Word n) (bit : Bool) :
    hCheckpoint45 n wire word bit =
      boundaryState n 1
        (advanceBoundary 0 (.h wire) bit (initialBoundaryData word)) := by
  have consumed :
      eraseKeys [initialWireKeys n wire] (hFireSurvive n wire word) =
        [initialWireKeys n wire] := by
    simpa only [hFireDead_eq_initialWireKey] using
      eraseKeys_hFireDead_hFireSurvive wire word
  have consumedPort : keyPort (initialWireKeys n wire) = .second := by
    rfl
  have consumedInstance :
      (initialWireKeys n wire).inst = prepInvoked wire.val := by
    rfl
  simp [hCheckpoint45, boundaryState, advanceBoundary,
    initialBoundaryData, circuitBoundaryPath, gateContinuationPath,
    gateBoundaryPath, hCompletedStorage,
    hFireRetained_eq_removeFrameKey,
    unaryInputLogged, hInputLogged, consumed,
    consumedPort, consumedInstance]

theorem compilerCertificate_lookup_first_h (wire : Fin n)
    (rest : Circuit n) :
    certificateLookup (compilerCertificate (.h wire :: rest))
        (gateSecondPath n 0 ++ [.arg]) =
      some [initialWireKeys n wire] := by
  have noPreparation :
      List.find?
          (fun item : Path × List Key =>
            item.1 == gateSecondPath n 0 ++ [.arg])
          (preparationCertificate n) = none := by
    rw [List.find?_eq_none]
    intro item membership selected
    simp only [preparationCertificate, List.mem_map] at membership
    obtain ⟨preparedWire, inRange, rfl⟩ := membership
    have preparedBefore : preparedWire < n := List.mem_range.mp inRange
    have pathEqual :
        preparationRoot preparedWire ++ [.fn, .arg, .arg] =
          gateSecondPath n 0 ++ [.arg] := beq_iff_eq.mp selected
    have lengthEqual := congrArg List.length pathEqual
    simp [preparationRoot, gateSecondPath, gateRoot, shellBodyPath]
      at lengthEqual
    omega
  have headMatches :
      ((gateRoot n 0 ++ [.fn, .arg, .arg]) ==
        (gateSecondPath n 0 ++ [.arg])) = true := by
    simp [gateSecondPath]
  simp [compilerCertificate, certificateLookup, gateCertificate,
    List.find?_append, noPreparation, headMatches]

set_option maxHeartbeats 0 in
theorem first_h_physical (positiveWidth : 0 < n)
    (wire : Fin n) (rest : Circuit n) (word : Word n)
    (amplitude : Dw) :
    evolve (compiledTerm (.h wire :: rest))
        (compilerCertificate (.h wire :: rest)) 47
        [⟨preparedPrefixState n word, amplitude⟩] =
      boundaryColumn 1
        (scatterBoundary 0 (.h wire)
          ⟨initialBoundaryData word, amplitude⟩) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  rw [show 47 = 2 + 45 by omega, evolve_add]
  rw [← initial_boundary_state positiveWidth word]
  rw [first_gate_entry positiveWidth]
  rw [lowerTotal_first_h wire rest]
  rw [first_h_ready_to_45 wire _
    (compilerCertificate (.h wire :: rest)) word amplitude
    (compilerCertificate_lookup_first_h wire rest)]
  simp [boundaryColumn, scatterBoundary, initialBoundaryData] <;> rfl

theorem first_h_physical_superposition (positiveWidth : 0 < n)
    (wire : Fin n) (rest : Circuit n)
    (inputs : List (Word n × Dw)) :
    evolve (compiledTerm (.h wire :: rest))
        (compilerCertificate (.h wire :: rest)) 47
        (inputs.map fun input =>
          ⟨preparedPrefixState n input.1, input.2⟩) =
      inputs.flatMap fun input =>
        boundaryColumn 1
          (scatterBoundary 0 (.h wire)
            ⟨initialBoundaryData input.1, input.2⟩) := by
  apply evolve_map_flatMap
  intro input
  exact first_h_physical positiveWidth wire rest input.1 input.2

set_option maxHeartbeats 0 in
theorem first_cx_physical (positiveWidth : 0 < n)
    (control target : Fin n) (distinct : control ≠ target)
    (rest : Circuit n) (word : Word n) (amplitude : Dw) :
    evolve (compiledTerm (.cx control target distinct :: rest))
        (compilerCertificate (.cx control target distinct :: rest)) 29
        [⟨preparedPrefixState n word, amplitude⟩] =
      boundaryColumn 1
        (scatterBoundary 0 (.cx control target distinct)
          ⟨initialBoundaryData word, amplitude⟩) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  rw [show 29 = 2 + 27 by omega, evolve_add]
  rw [← initial_boundary_state positiveWidth word]
  rw [first_gate_entry positiveWidth]
  rw [lowerTotal_first_cx control target distinct rest]
  rw [first_cx_ready_to_fired control target distinct]
  simp [cxFired, boundaryColumn, boundaryState, scatterBoundary,
    advanceBoundary, initialBoundaryData, circuitBoundaryPath,
    gateContinuationPath, gateBoundaryPath, gateRoot, cxHistory,
    outputFrames, removeFrameKey, keyPort, initialWireKeys, portKey,
    prepInvoked, preparationOccurrence]

theorem first_cx_physical_superposition (positiveWidth : 0 < n)
    (control target : Fin n) (distinct : control ≠ target)
    (rest : Circuit n) (inputs : List (Word n × Dw)) :
    evolve (compiledTerm (.cx control target distinct :: rest))
        (compilerCertificate (.cx control target distinct :: rest)) 29
        (inputs.map fun input =>
          ⟨preparedPrefixState n input.1, input.2⟩) =
      inputs.flatMap fun input =>
        boundaryColumn 1
          (scatterBoundary 0 (.cx control target distinct)
            ⟨initialBoundaryData input.1, input.2⟩) := by
  apply evolve_map_flatMap
  intro input
  exact first_cx_physical positiveWidth control target distinct rest
    input.1 input.2

theorem first_t_fired_to_55 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 16
        [⟨tFired n wire word, amplitude⟩] =
      [⟨tCheckpoint55 n wire word, amplitude⟩] := by
  have trace40 := first_t_fired_to_40 wire tail certificate word amplitude
  have trace44 := evolve_compose _ _ 1 4 _ _ _ trace40
    (first_t_40_to_44 wire tail certificate word amplitude)
  have trace45 := evolve_compose _ _ 5 1 _ _ _ trace44
    (first_t_44_to_45 wire tail certificate word amplitude)
  have trace47 := evolve_compose _ _ 6 2 _ _ _ trace45
    (first_t_45_to_47 wire tail certificate word amplitude)
  have trace48 := evolve_compose _ _ 8 1 _ _ _ trace47
    (first_t_47_to_48 wire tail certificate word amplitude)
  have trace52 := evolve_compose _ _ 9 4 _ _ _ trace48
    (first_t_48_to_52 wire tail certificate word amplitude)
  have trace53 := evolve_compose _ _ 13 1 _ _ _ trace52
    (first_t_52_to_53 wire tail certificate word amplitude)
  have trace54 := evolve_compose _ _ 14 1 _ _ _ trace53
    (first_t_53_to_54 wire tail certificate word amplitude)
  exact evolve_compose _ _ 15 1 _ _ _ trace54
    (first_t_54_to_55 wire tail certificate word amplitude)

theorem first_t_ready_to_55 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (gateSecondPath n 0 ++ [.arg]) =
        some [initialWireKeys n wire]) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 53
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨tCheckpoint55 n wire word,
        mul (if word wire then omega else one) amplitude⟩] := by
  have trace20 := first_t_local_0_20 wire tail certificate word amplitude
  have trace23 := evolve_compose _ _ 20 3 _ _ _ trace20
    (first_t_local_20_23 wire tail certificate word amplitude)
  have trace28 := evolve_compose _ _ 23 5 _ _ _ trace23
    (first_t_local_23_28 wire tail certificate word amplitude)
  have trace33 := evolve_compose _ _ 28 5 _ _ _ trace28
    (first_t_local_30_35 wire tail certificate word amplitude)
  have trace36 := evolve_compose _ _ 33 3 _ _ _ trace33
    (first_t_input_deliver wire tail certificate word amplitude)
  have fired := first_t_fire wire tail certificate word amplitude admitted
  have trace37 := evolve_compose _ _ 36 1 _ _ _ trace36 fired
  exact evolve_compose _ _ 37 16 _ _ _ trace37
    (first_t_fired_to_55 wire tail certificate word
      (mul (if word wire then omega else one) amplitude))

@[simp] theorem tCheckpoint55_eq_boundary (wire : Fin n)
    (word : Word n) :
    tCheckpoint55 n wire word =
      boundaryState n 1
        (advanceBoundary 0 (.t wire) false (initialBoundaryData word)) := by
  have consumed :
      eraseKeys [initialWireKeys n wire] (tFireSurvive n wire word) =
        [initialWireKeys n wire] := by
    simpa only [tFireDead_eq_initialWireKey] using
      eraseKeys_tFireDead_tFireSurvive wire word
  have consumedPort : keyPort (initialWireKeys n wire) = .second := by
    rfl
  have consumedInstance :
      (initialWireKeys n wire).inst = prepInvoked wire.val := by
    rfl
  simp [tCheckpoint55, boundaryState, advanceBoundary,
    initialBoundaryData, circuitBoundaryPath, gateContinuationPath,
    gateBoundaryPath, tCompletedStorage,
    tFireRetained_eq_removeFrameKey,
    unaryInputLogged, tInputLogged, consumed,
    consumedPort, consumedInstance]

theorem compilerCertificate_lookup_first_t (wire : Fin n)
    (rest : Circuit n) :
    certificateLookup (compilerCertificate (.t wire :: rest))
        (gateSecondPath n 0 ++ [.arg]) =
      some [initialWireKeys n wire] := by
  have noPreparation :
      List.find?
          (fun item : Path × List Key =>
            item.1 == gateSecondPath n 0 ++ [.arg])
          (preparationCertificate n) = none := by
    rw [List.find?_eq_none]
    intro item membership selected
    simp only [preparationCertificate, List.mem_map] at membership
    obtain ⟨preparedWire, inRange, rfl⟩ := membership
    have preparedBefore : preparedWire < n := List.mem_range.mp inRange
    have pathEqual :
        preparationRoot preparedWire ++ [.fn, .arg, .arg] =
          gateSecondPath n 0 ++ [.arg] := beq_iff_eq.mp selected
    have lengthEqual := congrArg List.length pathEqual
    simp [preparationRoot, gateSecondPath, gateRoot, shellBodyPath]
      at lengthEqual
    omega
  have headMatches :
      ((gateRoot n 0 ++ [.fn, .arg, .arg]) ==
        (gateSecondPath n 0 ++ [.arg])) = true := by
    simp [gateSecondPath]
  simp [compilerCertificate, certificateLookup, gateCertificate,
    List.find?_append, noPreparation, headMatches]

set_option maxHeartbeats 0 in
theorem first_t_physical (positiveWidth : 0 < n)
    (wire : Fin n) (rest : Circuit n) (word : Word n)
    (amplitude : Dw) :
    evolve (compiledTerm (.t wire :: rest))
        (compilerCertificate (.t wire :: rest)) 55
        [⟨preparedPrefixState n word, amplitude⟩] =
      boundaryColumn 1
        (scatterBoundary 0 (.t wire)
          ⟨initialBoundaryData word, amplitude⟩) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  rw [show 55 = 2 + 53 by omega, evolve_add]
  rw [← initial_boundary_state positiveWidth word]
  rw [first_gate_entry positiveWidth]
  rw [lowerTotal_first_t wire rest]
  rw [first_t_ready_to_55 wire _
    (compilerCertificate (.t wire :: rest)) word amplitude
    (compilerCertificate_lookup_first_t wire rest)]
  simp [boundaryColumn, scatterBoundary, initialBoundaryData] <;> rfl

theorem first_t_physical_superposition (positiveWidth : 0 < n)
    (wire : Fin n) (rest : Circuit n)
    (inputs : List (Word n × Dw)) :
    evolve (compiledTerm (.t wire :: rest))
        (compilerCertificate (.t wire :: rest)) 55
        (inputs.map fun input =>
          ⟨preparedPrefixState n input.1, input.2⟩) =
      inputs.flatMap fun input =>
        boundaryColumn 1
          (scatterBoundary 0 (.t wire)
            ⟨initialBoundaryData input.1, input.2⟩) := by
  apply evolve_map_flatMap
  intro input
  exact first_t_physical positiveWidth wire rest input.1 input.2

end QalcGate2PhysicalBoundary
