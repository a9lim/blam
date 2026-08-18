import Gate2ContextualCompiler

/-!
# Literal boundary entry at every compiled gate

The first-gate refinements used the preparation boundary directly.  Circuit
induction also needs the two ordinary beta rows which enter every later SSA
gate continuation.  These lemmas run the actual composed machine over the
immutable compiled term; boundary data are arbitrary and pass through
unchanged.
-/

namespace QalcGate2ContextualPhysical

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalRefinement
open QalcGate2PhysicalBoundary
open QalcGate2ContextualCompiler
open QalcGate2BoundaryInvariant
open QalcGate2PhysicalEvolution

theorem finishCStage_none_of_noStageHead
    (storage : List Store)
    (noStage : ∀ kind tail, storage ≠ .cstage kind :: tail)
    (path : Path) (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    finishCStage?
        ⟨path, direction, log, tape, vb, frames, storage⟩ = none := by
  cases storage with
  | nil => rfl
  | cons head tail =>
      cases head <;> try rfl
      exact (noStage _ tail rfl).elim

theorem deliverPort_none_of_emptyBindings
    (term : Term) (path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store)
    (empty : storedPortBindings path storage = []) :
    deliverPort term
        ⟨path, direction, log, tape, vb, frames, storage⟩ = none := by
  unfold deliverPort
  by_cases wrongDirection : direction != .up
  · simp [wrongDirection]
  · rw [if_neg wrongDirection]
    cases logged : tape.head?.bind asLP? with
    | none => simp [logged]
    | some value =>
        rcases value with ⟨occurrence, slice⟩
        simp [logged, empty]

theorem returnContinuation_none_of_emptyOccurrences
    (path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store)
    (empty : storedReturnOccurrences path storage = []) :
    returnContinuation
        ⟨path, direction, log, tape, vb, frames, storage⟩ = none := by
  simp [returnContinuation, empty]

def boundaryWireAnswer (data : BoundaryData n) (wire : Fin n) : Entry :=
  alpha .c (some (keyPort (data.wires wire))) (data.wires wire).inst
    (data.word wire) (.recalledAbsent .fresh)

theorem liveWireKey_normalized {completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (wire : Fin n) :
    (⟨.c, some (keyPort (data.wires wire)),
      (data.wires wire).inst⟩ : Key) = data.wires wire := by
  rcases wf.wireSource wire with source | source
  · rcases source with ⟨initial, source⟩
    rw [source]
    simp [initialWireKeys, portKey, keyPort]
  · rcases source with ⟨gateIndex, before, port, source⟩
    rw [source]
    cases port <;> simp [portKey, keyPort]

@[simp] theorem decodeInput_boundaryWire {completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (wire : Fin n) :
    decodeInput (data.word wire) (boundaryWireAnswer data wire)
        data.frames =
      some (consumedDescriptor (data.wires wire),
        [consumedFrameDescriptor (data.wires wire)],
        removeFrameKey data.frames (data.wires wire)) := by
  let answerKey : Key :=
    ⟨.c, some (keyPort (data.wires wire)), (data.wires wire).inst⟩
  have keyEqual : answerKey = data.wires wire :=
    liveWireKey_normalized wf wire
  have normalized :
      some (keyPort (data.wires wire)) = (data.wires wire).port ∧
        (data.wires wire).gate = .c :=
    ⟨congrArg Key.port keyEqual, (congrArg Key.gate keyEqual).symm⟩
  have matching : sameKeyFrames data.frames answerKey =
      [liveWireFrame data wire] := by
    rw [keyEqual]
    exact wf.liveFrame wire
  have matchingFilter :
      List.filter (fun frame => frame.key == answerKey) data.frames =
        [liveWireFrame data wire] := by
    simpa [sameKeyFrames] using matching
  cases bit : data.word wire
  all_goals
    simp only [decodeInput, boundaryWireAnswer, asAlpha_alpha, bit,
      Bool.false_eq_true, if_false]
    rw [matchingFilter]
    unfold removeFrameKey
    rw [wf.liveFrame wire]
    simp [answerKey, keyEqual, liveWireFrame, consumedDescriptor,
      consumedFrameDescriptor, bit]
    exact normalized

@[simp] theorem decodeInput_boundaryWire_after_remove {completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (control target : Fin n) (distinct : control ≠ target) :
    decodeInput (data.word target) (boundaryWireAnswer data target)
        (removeFrameKey data.frames (data.wires control)) =
      some (consumedDescriptor (data.wires target),
        [consumedFrameDescriptor (data.wires target)],
        removeFrameKey
          (removeFrameKey data.frames (data.wires control))
          (data.wires target)) := by
  let retained := removeFrameKey data.frames (data.wires control)
  let answerKey : Key :=
    ⟨.c, some (keyPort (data.wires target)), (data.wires target).inst⟩
  change decodeInput (data.word target) (boundaryWireAnswer data target)
      retained = _
  have keyEqual : answerKey = data.wires target :=
    liveWireKey_normalized wf target
  have normalized :
      some (keyPort (data.wires target)) = (data.wires target).port ∧
        (data.wires target).gate = .c :=
    ⟨congrArg Key.port keyEqual, (congrArg Key.gate keyEqual).symm⟩
  have matching : sameKeyFrames retained answerKey =
      [liveWireFrame data target] := by
    rw [keyEqual]
    exact sameKeyFrames_remove_other_live wf control target distinct
  have matchingFilter :
      List.filter (fun frame => frame.key == answerKey) retained =
        [liveWireFrame data target] := by
    simpa [sameKeyFrames] using matching
  have removedTarget :
      removeFrameKey retained (data.wires target) =
        retained.filter fun frame =>
          ![liveWireFrame data target].contains frame := by
    unfold removeFrameKey
    rw [sameKeyFrames_remove_other_live wf control target distinct]
  cases bit : data.word target
  all_goals
    simp only [decodeInput, boundaryWireAnswer, asAlpha_alpha, bit,
      Bool.false_eq_true, if_false]
    rw [matchingFilter, removedTarget]
    simp [answerKey, keyEqual, liveWireFrame, consumedDescriptor,
      consumedFrameDescriptor, bit]
    exact normalized

set_option maxHeartbeats 0 in
theorem first_compiled_gate_entry (positiveWidth : 0 < n)
    (gate : Gate n) (rest : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (gate :: rest)) certificate 2
        [⟨boundaryState n 0 data, amplitude⟩] =
      [⟨gateReadyState n 0 data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal (compileGatesWith n 0 wireName (gate :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2
      [⟨boundaryState n 0 data, amplitude⟩] = _
  obtain ⟨prior, widthEq⟩ := Nat.exists_eq_succ_of_ne_zero
    (Nat.ne_of_gt positiveWidth)
  subst n
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have finishNone := finishCStage_none_of_noStageHead data.storage noStage
  have continuation :
      subterm? (prepProgram (prior + 1) tail)
          (preparationRoot prior ++ [.arg]) =
        some (.lam (.lam tail)) := by
    simpa [prepContinuationPath] using
      subterm_prepProgram_last_continuation prior tail
  have continuationBody :
      subterm? (prepProgram (prior + 1) tail)
          (preparationRoot prior ++ [.arg, .body]) =
        some (.lam tail) := by
    simpa [prepContinuationPath, List.append_assoc] using
      subterm_prepProgram_last_continuation_body prior tail
  simp [evolve, stepColumn, stepBasis, boundaryState, gateReadyState,
    circuitBoundaryPath, inputBoundaryPath, continuation, continuationBody,
    finishNone,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, mapKernelEdge,
    kernelDeterministic, nfDeterministic, directionDifferent, appNotRB,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    gateRoot, preparationRoot_succ, prepBlock,
    prepContinuationPath, List.append_assoc]

set_option maxHeartbeats 0 in
theorem later_compiled_gate_entry (positiveWidth : 0 < n)
    (prior : Circuit n) (previous current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve
        (compiledTerm (prior ++ previous :: current :: rest))
        certificate 2
        [⟨boundaryState n (prior.length + 1) data, amplitude⟩] =
      [⟨gateReadyState n (prior.length + 1) data, amplitude⟩] := by
  have continuation :=
    subterm_compiledTerm_current_continuation positiveWidth prior previous
      (current :: rest)
  have continuationBody :=
    subterm_compiledTerm_current_continuation_body positiveWidth prior previous
      (current :: rest)
  have continuationAtRoot :
      subterm? (compiledTerm (prior ++ previous :: current :: rest))
          (gateRoot n prior.length ++ [.arg]) =
        some (.lam (.lam (compiledTailAfter prior previous
          (current :: rest)))) := by
    simpa [gateContinuationPath] using continuation
  have continuationBodyAtRoot :
      subterm? (compiledTerm (prior ++ previous :: current :: rest))
          (gateRoot n prior.length ++ [.arg, .body]) =
        some (.lam (compiledTailAfter prior previous (current :: rest))) := by
    simpa [gateContinuationPath, List.append_assoc] using continuationBody
  have nextRoot := gateRoot_succ n prior.length
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have finishNone := finishCStage_none_of_noStageHead data.storage noStage
  simp [evolve, stepColumn, stepBasis, boundaryState, gateReadyState,
    circuitBoundaryPath, gateBoundaryPath, continuation, continuationBody,
    continuationAtRoot, continuationBodyAtRoot, finishNone,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, mapKernelEdge,
    kernelDeterministic, nfDeterministic, directionDifferent, appNotRB,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    nextRoot, gateBlock, prepBlock, List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_gate_entry (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 2
        [⟨boundaryState n prior.length data, amplitude⟩] =
      [⟨gateReadyState n prior.length data, amplitude⟩] := by
  rcases List.eq_nil_or_concat prior with rfl | ⟨earlier, priorGate, rfl⟩
  · simpa using first_compiled_gate_entry positiveWidth current rest
      certificate data amplitude noStage
  · simpa [List.concat_eq_append, List.append_assoc] using
      later_compiled_gate_entry positiveWidth earlier priorGate current rest
        certificate data amplitude noStage

def cxHeadStateAt (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateOccurrence width gateIndex, .down, [],
      [appBullet, appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxHeadStep1At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateRoot width gateIndex ++ [.fn], .down, [],
      [appBullet, rb 0 [] []], none, data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxHeadStep2At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateRoot width gateIndex ++ [.fn, .fn], .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxCRecalledAt (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨cBinderPath, .up, [],
      [lp (gateOccurrence width gateIndex) [], appBullet, appBullet,
       appBullet, rb 0 [] []], none, data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxCallSourceAt (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.arg], .down, [gateInvoked width gateIndex],
      [appBullet, appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxCalledAt (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.arg], .up, [gateInvoked width gateIndex],
      [gateMarker .first width gateIndex, appBullet, appBullet,
       cmu .first (gateInvoked width gateIndex), appBullet, appBullet,
       rb 0 [] []], none, data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxControlArrivalAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (control : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨sourceBinderPath width (sources control), .up, [],
      [lp (gateFirstPath width gateIndex)
          [gateMarker .first width gateIndex],
       appBullet, appBullet, cmu .first (gateInvoked width gateIndex),
       appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxControlDeliveredAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (control : Fin width)
    (data : BoundaryData width) : NFState :=
  let input := data.wires control
  .run
    ⟨gateFirstPath width gateIndex, .up,
      [gateMarker .first width gateIndex],
      List.replicate (bitNat (data.word control)) appBullet ++
        [boundaryWireAnswer data control,
         cmu .first (gateInvoked width gateIndex), appBullet, appBullet,
         rb 0 [] []], none, data.frames,
      .cquery (keyPort input) input.inst
          (cxInputLogged .first width gateIndex) :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxParkedAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (control : Fin width)
    (data : BoundaryData width) : NFState :=
  let invoked := gateInvoked width gateIndex
  let input := data.wires control
  .run
    ⟨gateSecondPath width gateIndex, .down,
      [gateMarker .second width gateIndex],
      [appBullet, appBullet, cmu .second invoked, appBullet, rb 0 [] []],
      none, removeFrameKey data.frames input,
      .cpark invoked (data.word control)
          (consumedDescriptor input) [consumedFrameDescriptor input]
          (gateOccurrence width gateIndex)
          (gateContinuationPath width gateIndex) ::
        .cquery (keyPort input) input.inst
          (cxInputLogged .first width gateIndex) :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxTargetArrivalAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (control target : Fin width)
    (data : BoundaryData width) : NFState :=
  let invoked := gateInvoked width gateIndex
  let input := data.wires control
  .run
    ⟨sourceBinderPath width (sources target), .up, [],
      [lp (gateSecondPath width gateIndex)
          [gateMarker .second width gateIndex],
       appBullet, appBullet, cmu .second invoked, appBullet, rb 0 [] []],
      none, removeFrameKey data.frames input,
      .cpark invoked (data.word control)
          (consumedDescriptor input) [consumedFrameDescriptor input]
          (gateOccurrence width gateIndex)
          (gateContinuationPath width gateIndex) ::
        .cquery (keyPort input) input.inst
          (cxInputLogged .first width gateIndex) :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxTargetDeliveredAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (control target : Fin width)
    (data : BoundaryData width) : NFState :=
  let invoked := gateInvoked width gateIndex
  let controlInput := data.wires control
  let targetInput := data.wires target
  .run
    ⟨gateSecondPath width gateIndex, .up,
      [gateMarker .second width gateIndex],
      List.replicate (bitNat (data.word target)) appBullet ++
        [boundaryWireAnswer data target, cmu .second invoked,
         appBullet, rb 0 [] []], none,
      removeFrameKey data.frames controlInput,
      .cquery (keyPort targetInput) targetInput.inst
          (cxInputLogged .second width gateIndex) ::
        .cpark invoked (data.word control)
          (consumedDescriptor controlInput)
          [consumedFrameDescriptor controlInput]
          (gateOccurrence width gateIndex)
          (gateContinuationPath width gateIndex) ::
        .cquery (keyPort controlInput) controlInput.inst
          (cxInputLogged .first width gateIndex) :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxFiredAt (width gateIndex : Nat) (control target : Fin width)
    (data : BoundaryData width) : NFState :=
  let controlInput := data.wires control
  let targetInput := data.wires target
  let retained := removeFrameKey
    (removeFrameKey data.frames controlInput) targetInput
  .run
    ⟨gateContinuationPath width gateIndex, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width gateIndex (data.word control)
        (xor (data.word target) (data.word control)) retained,
      .cquery (keyPort targetInput) targetInput.inst
          (cxInputLogged .second width gateIndex) ::
        cxHistory width gateIndex controlInput targetInput ::
        .cquery (keyPort controlInput) controlInput.inst
          (cxInputLogged .first width gateIndex) :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

theorem filterCparkBEq_none_of_noPrior (invoked : Entry)
    (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) (start : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if (other == invoked) = true then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        (storage.zipIdx start) = [] := by
  apply List.filterMap_eq_nil_iff.mpr
  intro pair membership
  have stored := List.fst_mem_of_mem_zipIdx membership
  have freshExpanded : storage.any
      (fun item =>
        match item with
        | .cpark other _ _ _ _ _ => other == invoked
        | .chistory other _ _ _ _ _ _ => other == invoked
        | _ => false) = false := by
    exact fresh
  have current := List.any_eq_false.mp freshExpanded pair.fst stored
  cases pair with
  | mk item index =>
      cases item <;> simp_all

theorem cparkMatches_one_over_fresh (invoked firstQueryInvoked
    firstQueryLogged secondQueryInvoked secondQueryLogged : Entry)
    (firstQueryPort secondQueryPort : Port) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation : Path) (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) :
    cparkMatches invoked
        (.cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
          .cpark invoked bit descriptor descriptors occurrence continuation ::
          .cquery secondQueryPort secondQueryInvoked secondQueryLogged ::
          storage) =
      [(1, bit, descriptor, descriptors, occurrence, continuation)] := by
  unfold cparkMatches
  have tailNone := filterCparkBEq_none_of_noPrior invoked storage fresh 3
  rw [show
      (.cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
        .cpark invoked bit descriptor descriptors occurrence continuation ::
        .cquery secondQueryPort secondQueryInvoked secondQueryLogged ::
        storage).zipIdx 0 =
      (.cquery firstQueryPort firstQueryInvoked firstQueryLogged, 0) ::
        (.cpark invoked bit descriptor descriptors occurrence continuation, 1) ::
        (.cquery secondQueryPort secondQueryInvoked secondQueryLogged, 2) ::
        storage.zipIdx 3 by rfl]
  simp only [List.filterMap_cons]
  have selfEq : (invoked == invoked) = true := entryBEq_refl invoked
  rw [selfEq]
  change (1, bit, descriptor, descriptors, occurrence, continuation) ::
      List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other foundBit foundDescriptor foundDescriptors
              foundOccurrence foundContinuation =>
              if (other == invoked) = true then
                some (x.snd, foundBit, foundDescriptor, foundDescriptors,
                  foundOccurrence, foundContinuation)
              else none
          | _ => none)
        (storage.zipIdx 3) =
      [(1, bit, descriptor, descriptors, occurrence, continuation)]
  rw [tailNone]

set_option maxHeartbeats 0 in
theorem contextual_cx_reaches_head (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 3
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨cxHeadStateAt n prior.length data, amplitude⟩] := by
  have atRoot := compiledTerm_at_gateRoot positiveWidth prior
    (.cx control target distinct :: rest)
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let next := fun index : Fin n =>
    if index = control then SourceName.gateFirst prior.length
    else if index = target then SourceName.gateSecond prior.length
    else sources index
  let tail := lowerTotal
    (compileGatesWith n (prior.length + 1) next rest)
    (.gateSecond prior.length :: .gateFirst prior.length :: environment)
  let cVar : Term := .var ((lookupName .c environment).getD 1)
  let controlVar : Term :=
    .var ((lookupName (sources control) environment).getD 1)
  let targetVar : Term :=
    .var ((lookupName (sources target) environment).getD 1)
  let node : Term :=
    .app (.app (.app cVar controlVar) targetVar) (.lam (.lam tail))
  have atRootShape :
      subterm? (compiledTerm (prior ++ .cx control target distinct :: rest))
          (gateRoot n prior.length) = some node := by
    rw [atRoot]
    rfl
  have atFnShape :
      subterm? (compiledTerm (prior ++ .cx control target distinct :: rest))
          (gateRoot n prior.length ++ [.fn]) =
        some (.app (.app cVar controlVar) targetVar) := by
    rw [subterm_append, atRootShape]
    rfl
  have atFnFnShape :
      subterm? (compiledTerm (prior ++ .cx control target distinct :: rest))
          (gateRoot n prior.length ++ [.fn, .fn]) =
        some (.app cVar controlVar) := by
    rw [subterm_append, atRootShape]
    rfl
  have finishNone := finishCStage_none_of_noStageHead data.storage noStage
  have step1 :
      evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
          certificate 1 [⟨gateReadyState n prior.length data, amplitude⟩] =
        [⟨cxHeadStep1At n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, gateReadyState, cxHeadStep1At,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      atRootShape, node, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul]
  have step2 :
      evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
          certificate 1 [⟨cxHeadStep1At n prior.length data, amplitude⟩] =
        [⟨cxHeadStep2At n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, cxHeadStep1At, cxHeadStep2At,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      atFnShape, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul]
  have step3 :
      evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
          certificate 1 [⟨cxHeadStep2At n prior.length data, amplitude⟩] =
        [⟨cxHeadStateAt n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, cxHeadStep2At, cxHeadStateAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      gateOccurrence, atFnFnShape, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul]
  exact evolve_compose _ _ 2 1 _ _ _
    (evolve_compose _ _ 1 1 _ _ _ step1 step2) step3

set_option maxHeartbeats 0 in
theorem contextual_cx_head_recall (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 1
        [⟨cxHeadStateAt n prior.length data, amplitude⟩] =
      [⟨cxCRecalledAt n prior.length data, amplitude⟩] := by
  have atC :
      subterm? (compiledTerm (prior ++ .cx control target distinct :: rest))
          (gateOccurrence n prior.length) =
        some (.var
          ((lookupName .c
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [show gateOccurrence n prior.length =
      gateRoot n prior.length ++ [.fn, .fn, .fn] by
        simp [gateOccurrence]]
    rw [subterm_append,
      compiledTerm_at_gateRoot positiveWidth prior
        (.cx control target distinct :: rest)]
    rfl
  have binderC := binder_compiledTerm_current_c positiveWidth prior
    (.cx control target distinct) rest
  have binderCExpanded :
      binderPath? (compiledTerm
          (prior ++ .cx control target distinct :: rest))
          (preparationRoot n ++
            List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn]) = some cBinderPath := by
    simpa [gateOccurrence, gateRoot, gateBlock, List.append_assoc] using
      binderC
  have finishNone := finishCStage_none_of_noStageHead data.storage noStage
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxHeadStateAt, cxCRecalledAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
    gateInvoked, gateOccurrence,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_recalled_to_call (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 5
      [⟨cxCRecalledAt n prior.length data, amplitude⟩] =
      [⟨cxCallSourceAt n prior.length data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 5
      [⟨cxCRecalledAt n prior.length data, amplitude⟩] =
    [⟨cxCallSourceAt n prior.length data, amplitude⟩]
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort
          (prepProgram n tail)
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeC
  have deliverHNone : ∀ direction log tape vb frames,
      deliverPort (prepProgram n tail)
          ⟨hBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeH
  have deliverTNone : ∀ direction log tape vb frames,
      deliverPort (prepProgram n tail)
          ⟨tBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeT
  have deliverShellFnNone : ∀ direction log tape vb frames,
      deliverPort (prepProgram n tail)
          ⟨[.fn], direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.shellFn
  have returnHNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨hBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnH
  have returnHExpanded : ∀ direction log tape vb frames,
      returnContinuation
          ⟨[.fn, .fn, .fn], direction, log, tape, vb, frames,
            data.storage⟩ = none := by
    intro direction log tape vb frames
    simpa [hBinderPath] using
      returnHNone direction log tape vb frames
  have returnTNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨tBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnT
  have returnCNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnC
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCRecalledAt, cxCallSourceAt,
    composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    firstRB, rbAfterOutputBullets, treeAt?, returnSuccessor?,
    closeVirtualPort,
    deliverCNone, deliverHNone, deliverTNone, deliverShellFnNone,
    returnCNone, returnHNone, returnHExpanded, returnTNone, finishNone,
    subterm_prepProgram_cBinderPath,
    hBinderPath, tBinderPath, cBinderPath,
    gateInvoked, gateOccurrence, gateRoot,
    gateContinuationPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_call (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 1
        [⟨cxCallSourceAt n prior.length data, amplitude⟩] =
      [⟨cxCalledAt n prior.length data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 1
      [⟨cxCallSourceAt n prior.length data, amplitude⟩] =
    [⟨cxCalledAt n prior.length data, amplitude⟩]
  have arguments :
      cArguments? (prepProgram n tail) (gateOccurrence n prior.length) =
        some (gateFirstPath n prior.length, gateSecondPath n prior.length,
          gateContinuationPath n prior.length) := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      cArguments_compiledTerm_current positiveWidth prior
        (.cx control target distinct) rest
  have argumentsExpanded :
      cArguments? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) =
        some (gateFirstPath n prior.length, gateSecondPath n prior.length,
          gateContinuationPath n prior.length) := by
    simpa [gateOccurrence, gateRoot, gateBlock, List.append_assoc] using
      arguments
  have noPrior := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have noPriorExpanded :
      hasPriorCInvocation
          (lp (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) []) data.storage = false := by
    simpa [gateInvoked, gateOccurrence, gateRoot, gateBlock,
      List.append_assoc] using noPrior
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have directionSame :
      (Direction.down == Direction.down) = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCallSourceAt, cxCalledAt,
    composedStep, readbackStep, delegateStep,
    cnotStepToken, freshCCall, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    arguments, argumentsExpanded, noPrior, noPriorExpanded,
    directionSame, finishNone,
    gateInvoked, gateOccurrence, gateRoot, gateMarker,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_to_control (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 8
      [⟨cxCalledAt n prior.length data, amplitude⟩] =
      [⟨cxControlArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 8
      [⟨cxCalledAt n prior.length data, amplitude⟩] =
    [⟨cxControlArrivalAt n prior.length
      (sourceWiresFrom 0 wireName prior) control data, amplitude⟩]
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let controlVar : Term :=
    .var ((lookupName (sources control) environment).getD 1)
  let cVar : Term := .var ((lookupName .c environment).getD 1)
  have atC :
      subterm? (prepProgram n tail) (gateOccurrence n prior.length) =
        some cVar := by
    have original :
        subterm?
            (compiledTerm (prior ++ .cx control target distinct :: rest))
            (gateOccurrence n prior.length) = some cVar := by
      rw [show gateOccurrence n prior.length =
        gateRoot n prior.length ++ [.fn, .fn, .fn] by
          simp [gateOccurrence]]
      rw [subterm_append,
        compiledTerm_at_gateRoot positiveWidth prior
          (.cx control target distinct :: rest)]
      rfl
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using original
  have atCExpanded :
      subterm? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .fn])) =
        some cVar := by
    simpa [gateOccurrence, gateRoot, List.append_assoc] using atC
  have atControl :
      subterm? (prepProgram n tail) (gateFirstPath n prior.length) =
        some controlVar := by
    have original :
        subterm?
            (compiledTerm (prior ++ .cx control target distinct :: rest))
            (gateFirstPath n prior.length) = some controlVar := by
      rw [show gateFirstPath n prior.length =
        gateRoot n prior.length ++ [.fn, .fn, .arg] by
          simp [gateFirstPath]]
      rw [subterm_append,
        compiledTerm_at_gateRoot positiveWidth prior
          (.cx control target distinct :: rest)]
      rfl
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using original
  have atControlExpanded :
      subterm? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .arg])) =
        some controlVar := by
    simpa [gateFirstPath, gateRoot, List.append_assoc] using atControl
  have binderControl :
      binderPath? (prepProgram n tail) (gateFirstPath n prior.length) =
        some (sourceBinderPath n (sources control)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_cx_control positiveWidth prior control target
        distinct rest
  have binderControlExpanded :
      binderPath? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .arg])) =
        some (sourceBinderPath n (sources control)) := by
    simpa [gateFirstPath, gateRoot, List.append_assoc] using binderControl
  have binderC :
      binderPath? (prepProgram n tail) (gateOccurrence n prior.length) =
        some cBinderPath := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_c positiveWidth prior
        (.cx control target distinct) rest
  have binderCExpanded :
      binderPath? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .fn])) =
        some cBinderPath := by
    simpa [gateOccurrence, gateRoot, List.append_assoc] using binderC
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  have downNotUp :
      (Direction.down != Direction.up) = true := by native_decide
  have downEqUp :
      (Direction.down == Direction.up) = false := by native_decide
  have markerNotBullet :
      isBullet (gateMarker .first n prior.length) = false := by rfl
  have markerNotAppBullet :
      isAppBullet (gateMarker .first n prior.length) = false := by rfl
  have controlDepthPositiveWithBody :=
    compilerSourceBinder_before_gateFirst prior control
  have controlDepthPositive :
      1 ≤ level (gateFirstPath n prior.length) -
        level (sourceBinderPath n (sources control)) := by
    simpa [sources, level] using controlDepthPositiveWithBody
  have controlSlice :
      List.take
          (level (gateFirstPath n prior.length) -
            level (sourceBinderPath n (sources control)))
          [gateMarker .first n prior.length] =
        [gateMarker .first n prior.length] :=
    List.take_of_length_le controlDepthPositive
  have controlPathNe :
      sourceBinderPath n (sources control) ≠
        gateFirstPath n prior.length := by
    intro equal
    rw [equal] at controlDepthPositive
    omega
  have controlPathNeSymm :
      gateFirstPath n prior.length ≠
        sourceBinderPath n (sources control) :=
    Ne.symm controlPathNe
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverShellArgNone : ∀ direction log tape vb frames,
      deliverPort
          (prepProgram n tail)
          ⟨[.arg], direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.shellArg
  have deliverGateMarkerNone : ∀ direction log tape vb frames,
      deliverPort (prepProgram n tail)
          ⟨gateOccurrence n prior.length, direction, log,
            gateMarker .first n prior.length :: tape, vb, frames,
            data.storage⟩ = none := by
    intro direction log tape vb frames
    simp [deliverPort, gateMarker, cgam, entry, asLP?]
  have deliverCurrentNone :
      deliverPort (prepProgram n tail)
          ⟨gateOccurrence n prior.length, .up, [],
            [gateMarker .first n prior.length, bullet, bullet,
             cmu .first (gateInvoked n prior.length), bullet, bullet,
             rb 0 [] []], none, data.frames, data.storage⟩ = none :=
    deliverGateMarkerNone .up []
      [bullet, bullet, cmu .first (gateInvoked n prior.length),
       bullet, bullet, rb 0 [] []] none data.frames
  have deliverCurrentExpanded :
      deliverPort (prepProgram n tail)
          ⟨preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++ [.fn, .fn, .fn]),
            .up, [],
            [gateMarker .first n prior.length, bullet, bullet,
             cmu .first (lp (preparationRoot n ++
               (List.flatten (List.replicate prior.length
                 [.arg, .body, .body]) ++ [.fn, .fn, .fn])) []),
             bullet, bullet, rb 0 [] []], none,
            data.frames, data.storage⟩ = none := by
    simpa [gateOccurrence, gateRoot, gateInvoked, List.append_assoc] using
      deliverCurrentNone
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCalledAt, cxControlArrivalAt,
    composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    firstRB, rbAfterOutputBullets, treeAt?, closeVirtualPort,
    headBang_cons, returnContinuation, deliverShellArgNone,
    deliverGateMarkerNone, deliverCurrentNone, deliverCurrentExpanded,
    finishNone,
    atC, atCExpanded, atControl, atControlExpanded,
    binderControl, binderControlExpanded, binderC, binderCExpanded,
    directionSame, directionOpposite, downNotUp, downEqUp,
    markerNotBullet, markerNotAppBullet, controlSlice,
    controlPathNe, controlPathNeSymm,
    gateInvoked, gateOccurrence, gateRoot,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    cBinderPath, sources, controlVar,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]
  constructor
  · simpa [gateFirstPath, gateRoot, List.append_assoc, sources] using
      controlDepthPositive
  · have lifted := congrArg (fun entries =>
      lp (gateFirstPath n prior.length) entries) controlSlice
    simpa [gateFirstPath, gateRoot, List.append_assoc, sources] using lifted

set_option maxHeartbeats 0 in
theorem contextual_cx_control_deliver (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 2
      [⟨cxControlArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] =
      [⟨cxControlDeliveredAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  have binderControl :
      binderPath? (prepProgram n tail) (gateFirstPath n prior.length) =
        some (sourceBinderPath n (sources control)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_cx_control positiveWidth prior control target
        distinct rest
  have binding := wf.storage.liveBinding control
  have matching := wf.machine.liveFrame control
  have keyEqual := liveWireKey_normalized wf.machine control
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases controlBit : data.word control <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      cxControlArrivalAt, cxControlDeliveredAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic,
      finishNone, finishStageRow, deliverPort, binderControl,
      binding, matching, keyEqual, splitCustom, stageRow,
      directionSame, appIs, controlBit, bitNat, headBang_cons,
      boundaryWireAnswer, liveWireFrame, gateMarker, cxInputLogged, sources,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_control_park_finish (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 2
      [⟨cxControlDeliveredAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] =
      [⟨cxParkedAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let controlVar : Term :=
    .var ((lookupName (sources control) environment).getD 1)
  have atControl :
      subterm? (prepProgram n tail) (gateFirstPath n prior.length) =
        some controlVar := by
    have original :
        subterm?
            (compiledTerm (prior ++ .cx control target distinct :: rest))
            (gateFirstPath n prior.length) = some controlVar := by
      rw [show gateFirstPath n prior.length =
        gateRoot n prior.length ++ [.fn, .fn, .arg] by
          simp [gateFirstPath]]
      rw [subterm_append,
        compiledTerm_at_gateRoot positiveWidth prior
          (.cx control target distinct :: rest)]
      rfl
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using original
  have directionEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have portSame : (Port.first != Port.first) = false := by native_decide
  have pairSame :
      ((Port.first, gateInvoked n prior.length) ==
        (Port.first, gateInvoked n prior.length)) = true := by
    change (true && entryBEq (gateInvoked n prior.length)
      (gateInvoked n prior.length)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.first, gateInvoked n prior.length) !=
        some (Port.first, gateInvoked n prior.length)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have decoded := decodeInput_boundaryWire wf.machine control
  have decodedExpanded :
      decodeInput (data.word control)
          (alpha .c (some (keyPort (data.wires control)))
            (data.wires control).inst (data.word control)
            (.recalledAbsent .fresh))
          data.frames =
        some (consumedDescriptor (data.wires control),
          [consumedFrameDescriptor (data.wires control)],
          removeFrameKey data.frames (data.wires control)) := by
    simpa [boundaryWireAnswer] using decoded
  have closeNoneTrue :
      closeVirtualPort
          ⟨gateFirstPath n prior.length, .up,
            [gateMarker .first n prior.length],
            [bullet,
             alpha .c (some (keyPort (data.wires control)))
               (data.wires control).inst true (.recalledAbsent .fresh),
             cmu .first (gateInvoked n prior.length), bullet, bullet,
             rb 0 [] []], none, data.frames,
            .cquery (keyPort (data.wires control))
                (data.wires control).inst
                (cxInputLogged .first n prior.length) :: data.storage⟩ =
        none := by
    simp [closeVirtualPort]
    intro _ _
    split
    · rfl
    · simp [bitNat]
  have closeNoneTrueExpanded :
      closeVirtualPort
          ⟨gateFirstPath n prior.length, .up,
            [cgam .first (gateInvoked n prior.length)
              (gateOccurrence n prior.length)
              (gateFirstPath n prior.length)
              (gateSecondPath n prior.length)
              (gateContinuationPath n prior.length)],
            [bullet,
             alpha .c (some (keyPort (data.wires control)))
               (data.wires control).inst true (.recalledAbsent .fresh),
             cmu .first (gateInvoked n prior.length), bullet, bullet,
             rb 0 [] []], none, data.frames,
            .cquery (keyPort (data.wires control))
                (data.wires control).inst
                (lp (gateFirstPath n prior.length)
                  [cgam .first (gateInvoked n prior.length)
                    (gateOccurrence n prior.length)
                    (gateFirstPath n prior.length)
                    (gateSecondPath n prior.length)
                    (gateContinuationPath n prior.length)]) ::
              data.storage⟩ = none := by
    simpa only [gateMarker, cxInputLogged] using closeNoneTrue
  cases controlBit : data.word control
  all_goals rw [controlBit] at decoded
  all_goals rw [controlBit] at decodedExpanded
  all_goals
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      cxControlDeliveredAt, cxParkedAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cquery, finishStageRow, kernelStepToken,
      kernelToken, composedToken, tokenWith, mapKernelEdge,
      kernelDeterministic, nfDeterministic, firstRB, treeAt?,
      rbAfterOutputBullets, deliverPort, returnContinuation,
      classifyArrival, parkFirst, splitCustom, stageRow,
      atControl, decodedExpanded, closeNoneTrue, closeNoneTrueExpanded,
      directionEqual, directionSame, portSame, probeSame, bulletIs,
      controlBit, bitNat, headBang_cons, boundaryWireAnswer,
      consumedDescriptor, consumedFrameDescriptor,
      gateMarker, cxInputLogged, sources, controlVar,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_target_arrival (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 1
      [⟨cxParkedAt n prior.length
        (sourceWiresFrom 0 wireName prior) control data, amplitude⟩] =
      [⟨cxTargetArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) control target data,
        amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 1 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let targetVar : Term :=
    .var ((lookupName (sources target) environment).getD 1)
  have atTarget :
      subterm? (prepProgram n tail) (gateSecondPath n prior.length) =
        some targetVar := by
    have original :
        subterm?
            (compiledTerm (prior ++ .cx control target distinct :: rest))
            (gateSecondPath n prior.length) = some targetVar := by
      rw [show gateSecondPath n prior.length =
        gateRoot n prior.length ++ [.fn, .arg] by
          simp [gateSecondPath]]
      rw [subterm_append,
        compiledTerm_at_gateRoot positiveWidth prior
          (.cx control target distinct :: rest)]
      rfl
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using original
  have atTargetExpanded :
      subterm? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg])) =
        some targetVar := by
    simpa [gateSecondPath, gateRoot, List.append_assoc] using atTarget
  have binderTarget :
      binderPath? (prepProgram n tail) (gateSecondPath n prior.length) =
        some (sourceBinderPath n (sources target)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_cx_target positiveWidth prior control target
        distinct rest
  have binderTargetExpanded :
      binderPath? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg])) =
        some (sourceBinderPath n (sources target)) := by
    simpa [gateSecondPath, gateRoot, List.append_assoc] using binderTarget
  have targetDepthPositive :=
    compilerSourceBinder_before_gateSecond prior target
  have targetSlice :
      List.take
          (level (gateSecondPath n prior.length) -
            level (sourceBinderPath n (sources target)))
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le targetDepthPositive
  have targetDrop :
      List.drop
          (level (gateSecondPath n prior.length) -
            level (sourceBinderPath n (sources target)))
          [gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le targetDepthPositive
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionNotEqual :
      (Direction.down == Direction.up) = false := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxParkedAt, cxTargetArrivalAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    mapKernelEdge, kernelDeterministic, nfDeterministic,
    deliverPort, returnContinuation,
    atTarget, atTargetExpanded, binderTarget, binderTargetExpanded,
    targetSlice, targetDrop,
    directionDifferent, directionNotEqual,
    gateInvoked, gateOccurrence, gateRoot, gateSecondPath,
    gateContinuationPath, gateMarker, cxInputLogged,
    consumedDescriptor, consumedFrameDescriptor,
    sources, targetVar,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]
  constructor
  · simpa [gateSecondPath, gateRoot, List.append_assoc, sources] using
      targetDepthPositive
  · have lifted := congrArg (fun entries =>
      lp (gateSecondPath n prior.length) entries) targetSlice
    simpa [gateSecondPath, gateRoot, gateInvoked, gateOccurrence,
      gateContinuationPath, gateMarker, List.append_assoc, sources] using lifted

set_option maxHeartbeats 0 in
theorem contextual_cx_target_deliver (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 2
      [⟨cxTargetArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) control target data,
        amplitude⟩] =
      [⟨cxTargetDeliveredAt n prior.length
        (sourceWiresFrom 0 wireName prior) control target data,
        amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  have binderTarget :
      binderPath? (prepProgram n tail) (gateSecondPath n prior.length) =
        some (sourceBinderPath n (sources target)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_cx_target positiveWidth prior control target
        distinct rest
  have binding := wf.storage.liveBinding target
  have matching := sameKeyFrames_remove_other_live wf.machine
    control target distinct
  have keyEqual := liveWireKey_normalized wf.machine target
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases targetBit : data.word target <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      cxTargetArrivalAt, cxTargetDeliveredAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cpark, finishStageRow, kernelStepToken,
      kernelToken, composedToken, tokenWith, mapKernelEdge,
      kernelDeterministic, nfDeterministic, deliverPort, binderTarget,
      binding, matching, keyEqual, splitCustom, stageRow,
      directionSame, appIs, targetBit, bitNat, headBang_cons,
      boundaryWireAnswer, liveWireFrame, gateMarker, cxInputLogged,
      sources,
      consumedDescriptor, consumedFrameDescriptor,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_target_fire (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 2
      [⟨cxTargetDeliveredAt n prior.length
        (sourceWiresFrom 0 wireName prior) control target data,
        amplitude⟩] =
      [⟨cxFiredAt n prior.length control target data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName
      (prior ++ .cx control target distinct :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let targetVar : Term :=
    .var ((lookupName (sources target) environment).getD 1)
  have atTarget :
      subterm? (prepProgram n tail) (gateSecondPath n prior.length) =
        some targetVar := by
    have original :
        subterm?
            (compiledTerm (prior ++ .cx control target distinct :: rest))
            (gateSecondPath n prior.length) = some targetVar := by
      rw [show gateSecondPath n prior.length =
        gateRoot n prior.length ++ [.fn, .arg] by
          simp [gateSecondPath]]
      rw [subterm_append,
        compiledTerm_at_gateRoot positiveWidth prior
          (.cx control target distinct :: rest)]
      rfl
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using original
  have atTargetExpanded :
      subterm? (prepProgram n tail)
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg])) =
        some targetVar := by
    simpa [gateSecondPath, gateRoot, List.append_assoc] using atTarget
  have directionEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have portSame : (Port.second != Port.second) = false := by native_decide
  have pairSame :
      ((Port.second, gateInvoked n prior.length) ==
        (Port.second, gateInvoked n prior.length)) = true := by
    change (true && entryBEq (gateInvoked n prior.length)
      (gateInvoked n prior.length)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n prior.length) !=
        some (Port.second, gateInvoked n prior.length)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have rbNotBullet : isBullet (rb 0 [] []) = false := by native_decide
  have rbNotApp : isAppBullet (rb 0 [] []) = false := by native_decide
  have decoded := decodeInput_boundaryWire_after_remove wf.machine
    control target distinct
  have decodedExpanded :
      decodeInput (data.word target)
          (alpha .c (some (keyPort (data.wires target)))
            (data.wires target).inst (data.word target)
            (.recalledAbsent .fresh))
          (removeFrameKey data.frames (data.wires control)) =
        some (consumedDescriptor (data.wires target),
          [consumedFrameDescriptor (data.wires target)],
          removeFrameKey
            (removeFrameKey data.frames (data.wires control))
            (data.wires target)) := by
    simpa [boundaryWireAnswer] using decoded
  have fresh := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have parked := cparkMatches_one_over_fresh
    (gateInvoked n prior.length)
    (data.wires target).inst (cxInputLogged .second n prior.length)
    (data.wires control).inst (cxInputLogged .first n prior.length)
    (keyPort (data.wires target)) (keyPort (data.wires control))
    (data.word control) (consumedDescriptor (data.wires control))
    [consumedFrameDescriptor (data.wires control)]
    (gateOccurrence n prior.length) (gateContinuationPath n prior.length)
    data.storage fresh
  have continuation :
      subterm? (prepProgram n tail)
          (gateContinuationPath n prior.length) =
        some (.lam (.lam
          (compiledTailAfter prior (.cx control target distinct) rest))) := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      subterm_compiledTerm_current_continuation positiveWidth prior
        (.cx control target distinct) rest
  have continuationBody :
      subterm? (prepProgram n tail)
          (gateContinuationPath n prior.length ++ [.body]) =
        some (.lam
          (compiledTailAfter prior (.cx control target distinct) rest)) := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      subterm_compiledTerm_current_continuation_body positiveWidth prior
        (.cx control target distinct) rest
  have fired :
      fireSecond (prepProgram n tail)
          ⟨gateSecondPath n prior.length, .up,
            [gateMarker .second n prior.length],
            List.replicate (bitNat (data.word target)) bullet ++
              [boundaryWireAnswer data target,
               cmu .second (gateInvoked n prior.length),
               bullet, rb 0 [] []], none,
            removeFrameKey data.frames (data.wires control),
            .cquery (keyPort (data.wires target))
                (data.wires target).inst
                (cxInputLogged .second n prior.length) ::
              .cpark (gateInvoked n prior.length) (data.word control)
                (consumedDescriptor (data.wires control))
                [consumedFrameDescriptor (data.wires control)]
                (gateOccurrence n prior.length)
                (gateContinuationPath n prior.length) ::
              .cquery (keyPort (data.wires control))
                (data.wires control).inst
                (cxInputLogged .first n prior.length) :: data.storage⟩
          (data.word target, boundaryWireAnswer data target,
            [bullet, rb 0 [] []]) =
        splitCustom .fire
          (kernelDeterministic .fireC1 (.run
            ⟨gateContinuationPath n prior.length, .down, [],
              [bullet, bullet, rb 0 [] []], none,
              outputFrames n prior.length (data.word control)
                (xor (data.word target) (data.word control))
                (removeFrameKey
                  (removeFrameKey data.frames (data.wires control))
                  (data.wires target)),
              .cquery (keyPort (data.wires target))
                  (data.wires target).inst
                  (cxInputLogged .second n prior.length) ::
                cxHistory n prior.length (data.wires control)
                  (data.wires target) ::
                .cquery (keyPort (data.wires control))
                  (data.wires control).inst
                  (cxInputLogged .first n prior.length) :: data.storage⟩)) := by
    cases controlBit : data.word control <;>
      cases targetBit : data.word target
    all_goals rw [targetBit] at decodedExpanded
    all_goals rw [controlBit] at parked
    all_goals unfold fireSecond
    all_goals simp only [gateMarker, bitNat, portSame, probeSame,
      Bool.false_eq_true, if_false, if_true, List.replicate_zero,
      List.replicate_succ, List.nil_append, List.cons_append,
      List.head?_cons, Option.bind_some, asCGam_cgam, asCMu_cmu,
      List.getElem?_cons_zero, List.getElem?_cons_succ]
    all_goals rw [parked]
    all_goals
      simp (config := { maxSteps := 1000000 })
        [targetBit, decodedExpanded, continuation, continuationBody,
        replaceStoreAt?, headBang_cons, bulletIs,
        boundaryWireAnswer,
        consumedDescriptor, consumedFrameDescriptor,
        cxHistory, outputFrames]
  have firedExpanded := fired
  simp only [gateMarker, cxInputLogged, gateSecondPath, gateRoot,
    List.append_assoc, boundaryWireAnswer, consumedDescriptor,
    consumedFrameDescriptor] at firedExpanded
  have closeNoneTargetTrue :
      closeVirtualPort
          ⟨gateSecondPath n prior.length, .up,
            [gateMarker .second n prior.length],
            [bullet,
             alpha .c (some (keyPort (data.wires target)))
               (data.wires target).inst true (.recalledAbsent .fresh),
             cmu .second (gateInvoked n prior.length), bullet,
             rb 0 [] []], none,
            removeFrameKey data.frames (data.wires control),
            .cquery (keyPort (data.wires target))
                (data.wires target).inst
                (cxInputLogged .second n prior.length) ::
              .cpark (gateInvoked n prior.length) (data.word control)
                (consumedDescriptor (data.wires control))
                [consumedFrameDescriptor (data.wires control)]
                (gateOccurrence n prior.length)
                (gateContinuationPath n prior.length) ::
              .cquery (keyPort (data.wires control))
                (data.wires control).inst
                (cxInputLogged .first n prior.length) :: data.storage⟩ =
        none := by
    simp [closeVirtualPort]
    intro _ _
    split
    · rfl
    · simp [bitNat]
  have closeNoneTargetTrueExpanded :
      closeVirtualPort
          ⟨gateSecondPath n prior.length, .up,
            [cgam .second (gateInvoked n prior.length)
              (gateOccurrence n prior.length)
              (gateFirstPath n prior.length)
              (gateSecondPath n prior.length)
              (gateContinuationPath n prior.length)],
            [bullet,
             alpha .c (some (keyPort (data.wires target)))
               (data.wires target).inst true (.recalledAbsent .fresh),
             cmu .second (gateInvoked n prior.length), bullet,
             rb 0 [] []], none,
            removeFrameKey data.frames (data.wires control),
            .cquery (keyPort (data.wires target))
                (data.wires target).inst
                (lp (gateSecondPath n prior.length)
                  [cgam .second (gateInvoked n prior.length)
                    (gateOccurrence n prior.length)
                    (gateFirstPath n prior.length)
                    (gateSecondPath n prior.length)
                    (gateContinuationPath n prior.length)]) ::
              .cpark (gateInvoked n prior.length) (data.word control)
                (consumedDescriptor (data.wires control))
                [consumedFrameDescriptor (data.wires control)]
                (gateOccurrence n prior.length)
                (gateContinuationPath n prior.length) ::
              .cquery (keyPort (data.wires control))
                (data.wires control).inst
                (lp (gateFirstPath n prior.length)
                  [cgam .first (gateInvoked n prior.length)
                    (gateOccurrence n prior.length)
                    (gateFirstPath n prior.length)
                    (gateSecondPath n prior.length)
                    (gateContinuationPath n prior.length)]) ::
              data.storage⟩ = none := by
    simpa only [gateMarker, cxInputLogged] using closeNoneTargetTrue
  have closeNoneFully := closeNoneTargetTrueExpanded
  simp only [gateSecondPath, gateRoot, List.append_assoc,
    consumedDescriptor, consumedFrameDescriptor] at closeNoneFully
  cases controlBit : data.word control <;>
    cases targetBit : data.word target
  all_goals rw [targetBit] at decodedExpanded
  all_goals rw [controlBit, targetBit] at firedExpanded
  all_goals rw [controlBit] at closeNoneFully
  all_goals simp only [bitNat, List.replicate_zero, List.replicate_succ,
    List.nil_append, List.cons_append] at firedExpanded
  all_goals
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      cxTargetDeliveredAt, cxFiredAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cquery, kernelToken, firstRB, treeAt?,
      deliverPort, returnContinuation, classifyArrival,
      controlBit, targetBit,
      atTargetExpanded, closeNoneFully,
      directionEqual, directionSame, bulletIs, bitNat,
      boundaryWireAnswer, consumedDescriptor, consumedFrameDescriptor,
      cxHistory, outputFrames, gateMarker, cxInputLogged,
      gateSecondPath, gateRoot, List.getLast?_append, sources, targetVar,
      edgeCoefficient, QalcFiniteGram.mul]
  all_goals rw [firedExpanded]
  all_goals
    simp (config := { maxSteps := 1000000 })
      [stepBasis, splitCustom, stageRow,
      composedStep, finishCStage?, finishStageRow,
      kernelDeterministic, kernelToken, kernelEntry,
      composedToken, composedEntry,
      rbNotBullet, rbNotApp,
      outputFrames, cxHistory, consumedDescriptor, consumedFrameDescriptor,
      mapKernelEdge, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_cx_ready_to_fired (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 27
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨cxFiredAt n prior.length control target data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .cx control target distinct :: rest)
  let sources := sourceWiresFrom 0 wireName prior
  have trace3 := contextual_cx_reaches_head positiveWidth prior control target
    distinct rest certificate data amplitude wf.storage.noStageHead
  have trace4 := evolve_compose term certificate 3 1 _ _ _ trace3
    (contextual_cx_head_recall positiveWidth prior control target distinct rest
      certificate data amplitude wf.storage.noStageHead)
  have trace9 := evolve_compose term certificate 4 5 _ _ _ trace4
    (contextual_cx_recalled_to_call positiveWidth prior control target distinct
      rest certificate data amplitude wf)
  have trace10 := evolve_compose term certificate 9 1 _ _ _ trace9
    (contextual_cx_call positiveWidth prior control target distinct rest
      certificate data amplitude wf)
  have trace18 := evolve_compose term certificate 10 8 _ _ _ trace10
    (contextual_cx_to_control positiveWidth prior control target distinct rest
      certificate data amplitude wf)
  have trace20 := evolve_compose term certificate 18 2 _ _ _ trace18
    (contextual_cx_control_deliver positiveWidth prior control target distinct
      rest certificate data amplitude wf)
  have trace22 := evolve_compose term certificate 20 2 _ _ _ trace20
    (contextual_cx_control_park_finish positiveWidth prior control target
      distinct rest certificate data amplitude wf)
  have trace23 := evolve_compose term certificate 22 1 _ _ _ trace22
    (contextual_cx_target_arrival positiveWidth prior control target distinct
      rest certificate data amplitude wf)
  have trace25 := evolve_compose term certificate 23 2 _ _ _ trace23
    (contextual_cx_target_deliver positiveWidth prior control target distinct
      rest certificate data amplitude wf)
  exact evolve_compose term certificate 25 2 _ _ _ trace25
    (contextual_cx_target_fire positiveWidth prior control target distinct rest
      certificate data amplitude wf)

@[simp] theorem cxFiredAt_eq_boundaryState (gateIndex : Nat)
    (control target : Fin n) (distinct : control ≠ target)
    (data : BoundaryData n) :
    cxFiredAt n gateIndex control target data =
      boundaryState n (gateIndex + 1)
        (advanceBoundary gateIndex (.cx control target distinct) false data) := by
  simp [cxFiredAt, boundaryState, advanceBoundary, circuitBoundaryPath,
    gateBoundaryPath, gateContinuationPath, gateRoot]

set_option maxHeartbeats 0 in
theorem contextual_cx_physical (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 29
        [⟨boundaryState n prior.length data, amplitude⟩] =
      boundaryColumn (prior.length + 1)
        (scatterBoundary prior.length (.cx control target distinct)
          ⟨data, amplitude⟩) := by
  rw [show 29 = 2 + 27 by omega, evolve_add]
  rw [compiled_gate_entry positiveWidth prior (.cx control target distinct)
    rest certificate data amplitude wf.storage.noStageHead]
  rw [contextual_cx_ready_to_fired positiveWidth prior control target distinct
    rest certificate data amplitude wf]
  change [(⟨cxFiredAt n prior.length control target data,
      amplitude⟩ : WeightedState)] =
    [(⟨boundaryState n (prior.length + 1)
      (advanceBoundary prior.length (.cx control target distinct) false data),
      amplitude⟩ : WeightedState)]
  rw [cxFiredAt_eq_boundaryState prior.length control target distinct data]

theorem contextual_cx_physical_column (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n)
    (certificate : Certificate) (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches, CompiledBoundaryWFAt prior branch.data) :
    evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
        certificate 29 (boundaryColumn prior.length branches) =
      boundaryColumn (prior.length + 1)
        (branches.flatMap
          (scatterBoundary prior.length (.cx control target distinct))) := by
  induction branches with
  | nil => simp [boundaryColumn]
  | cons branch branches ih =>
      have headWF := wf branch (by simp)
      have tailWF : ∀ item ∈ branches,
          CompiledBoundaryWFAt prior item.data := by
        intro item member
        exact wf item (by simp [member])
      simp only [boundaryColumn, List.map_cons, List.flatMap_cons]
      rw [evolve_cons]
      rw [contextual_cx_physical positiveWidth prior control target distinct
        rest certificate branch.data branch.amplitude headWF]
      change boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.cx control target distinct) branch) ++
          evolve (compiledTerm (prior ++ .cx control target distinct :: rest))
            certificate 29 (boundaryColumn prior.length branches) =
        boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.cx control target distinct) branch ++
            branches.flatMap
              (scatterBoundary prior.length (.cx control target distinct)))
      rw [ih tailWF]
      simp [boundaryColumn, List.map_append]

end QalcGate2ContextualPhysical
