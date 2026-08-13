import Gate2BoundaryInvariant

/-!
# Contextual compiler facts for Gate-2 boundary transport

The physical first-gate traces use preparation wire keys.  At an arbitrary
compiler boundary the same rows consume the current SSA keys.  This module
defines the common wire-key recurrence once and proves that both the physical
boundary data and the structural certificate follow it.
-/

namespace QalcGate2ContextualCompiler

open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalBoundary
open QalcGate2BoundaryInvariant
open QalcGate2PhysicalRefinement

def nextWireKeys (width gateIndex : Nat) (wires : Fin width → Key) :
    Gate width → Fin width → Key
  | .h selected, wire =>
      if wire = selected then
        portKey .second (gateOccurrence width gateIndex)
      else wires wire
  | .t selected, wire =>
      if wire = selected then
        portKey .second (gateOccurrence width gateIndex)
      else wires wire
  | .cx control target _, wire =>
      if wire = control then portKey .first (gateOccurrence width gateIndex)
      else if wire = target then
        portKey .second (gateOccurrence width gateIndex)
      else wires wire

def wireKeysFrom : Nat → (Fin n → Key) → Circuit n → Fin n → Key
  | _, wires, [] => wires
  | gateIndex, wires, gate :: rest =>
      wireKeysFrom (gateIndex + 1) (nextWireKeys n gateIndex wires gate) rest

def nextBoundaryStorage (gateIndex : Nat) (wires : Fin n → Key)
    (storage : List Store) : Gate n → List Store
  | .h wire =>
      let input := wires wire
      .bundle [input] ::
      .cquery (keyPort input) input.inst
        (unaryInputLogged .h n gateIndex) ::
      unaryHistory .h n gateIndex :: storage
  | .t wire =>
      let input := wires wire
      .bundle [input] ::
      .cquery (keyPort input) input.inst
        (unaryInputLogged .t n gateIndex) ::
      unaryHistory .t n gateIndex :: storage
  | .cx control target _ =>
      let controlInput := wires control
      let targetInput := wires target
      .cquery (keyPort targetInput) targetInput.inst
          (cxInputLogged .second n gateIndex) ::
        cxHistory n gateIndex controlInput targetInput ::
        .cquery (keyPort controlInput) controlInput.inst
          (cxInputLogged .first n gateIndex) :: storage

def completedGateHistory (gateIndex : Nat) (wires : Fin n → Key) :
    Gate n → Store
  | .h _ => unaryHistory .h n gateIndex
  | .t _ => unaryHistory .t n gateIndex
  | .cx control target _ =>
      cxHistory n gateIndex (wires control) (wires target)

theorem storedPortBindings_nextBoundaryStorage (path : Path)
    (gateIndex : Nat) (wires : Fin n → Key) (storage : List Store)
    (gate : Gate n) :
    storedPortBindings path
        (nextBoundaryStorage gateIndex wires storage gate) =
      storedPortBindings path [completedGateHistory gateIndex wires gate] ++
        storedPortBindings path storage := by
  cases gate with
  | h wire =>
      change storedPortBindings path
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .h n gateIndex),
            unaryHistory .h n gateIndex] ++ storage) = _
      rw [storedPortBindings_append]
      simp [completedGateHistory, storedPortBindings]
  | t wire =>
      change storedPortBindings path
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .t n gateIndex),
            unaryHistory .t n gateIndex] ++ storage) = _
      rw [storedPortBindings_append]
      simp [completedGateHistory, storedPortBindings]
  | cx control target distinct =>
      change storedPortBindings path
          ([.cquery (keyPort (wires target)) (wires target).inst
              (cxInputLogged .second n gateIndex),
            cxHistory n gateIndex (wires control) (wires target),
            .cquery (keyPort (wires control)) (wires control).inst
              (cxInputLogged .first n gateIndex)] ++ storage) = _
      rw [storedPortBindings_append]
      rfl

theorem storedReturnOccurrences_nextBoundaryStorage (path : Path)
    (gateIndex : Nat) (wires : Fin n → Key) (storage : List Store)
    (gate : Gate n) :
    storedReturnOccurrences path
        (nextBoundaryStorage gateIndex wires storage gate) =
      storedReturnOccurrences path
          [completedGateHistory gateIndex wires gate] ++
        storedReturnOccurrences path storage := by
  cases gate with
  | h wire =>
      change storedReturnOccurrences path
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .h n gateIndex),
            unaryHistory .h n gateIndex] ++ storage) = _
      rw [storedReturnOccurrences_append]
      rfl
  | t wire =>
      change storedReturnOccurrences path
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .t n gateIndex),
            unaryHistory .t n gateIndex] ++ storage) = _
      rw [storedReturnOccurrences_append]
      simp [completedGateHistory, storedReturnOccurrences]
  | cx control target distinct =>
      change storedReturnOccurrences path
          ([.cquery (keyPort (wires target)) (wires target).inst
              (cxInputLogged .second n gateIndex),
            cxHistory n gateIndex (wires control) (wires target),
            .cquery (keyPort (wires control)) (wires control).inst
              (cxInputLogged .first n gateIndex)] ++ storage) = _
      rw [storedReturnOccurrences_append]
      rfl

def boundaryStorageFrom : Nat → (Fin n → Key) → List Store →
    Circuit n → List Store
  | _, _, storage, [] => storage
  | gateIndex, wires, storage, gate :: rest =>
      boundaryStorageFrom (gateIndex + 1)
        (nextWireKeys n gateIndex wires gate)
        (nextBoundaryStorage gateIndex wires storage gate) rest

theorem gateContinuation_ne (width left right : Nat)
    (different : left ≠ right) :
    gateContinuationPath width left ≠ gateContinuationPath width right := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    at lengths
  omega

theorem gateContinuation_body_ne_continuation
    (width left right : Nat) :
    gateContinuationPath width left ++ [.body] ≠
      gateContinuationPath width right := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    at lengths
  omega

theorem gateContinuation_body_ne_body (width left right : Nat)
    (different : left ≠ right) :
    gateContinuationPath width left ++ [.body] ≠
      gateContinuationPath width right ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    at lengths
  omega

theorem gateContinuation_ne_prepContinuation
    (width gateIndex prepared : Nat) (within : prepared < width) :
    gateContinuationPath width gateIndex ≠ prepContinuationPath prepared := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

theorem gateContinuation_ne_prepContinuation_body
    (width gateIndex prepared : Nat) (within : prepared < width) :
    gateContinuationPath width gateIndex ≠
      prepContinuationPath prepared ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

theorem gateContinuation_body_ne_prepContinuation
    (width gateIndex prepared : Nat) (within : prepared < width) :
    gateContinuationPath width gateIndex ++ [.body] ≠
      prepContinuationPath prepared := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

theorem gateContinuation_body_ne_prepContinuation_body
    (width gateIndex prepared : Nat) (within : prepared < width) :
    gateContinuationPath width gateIndex ++ [.body] ≠
      prepContinuationPath prepared ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateContinuationPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

theorem storedPortBindings_gateContinuation_prepStorage_aux
    (width gateIndex stored : Nat) (within : stored ≤ width) :
    storedPortBindings (gateContinuationPath width gateIndex)
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih (by omega)]
      have notContinuation := gateContinuation_ne_prepContinuation
        width gateIndex stored (by omega)
      have notBody := gateContinuation_ne_prepContinuation_body
        width gateIndex stored (by omega)
      simp [storedPortBindings, prepHistory, notContinuation, notBody]

@[simp] theorem storedPortBindings_gateContinuation_prepStorage
    (width gateIndex : Nat) :
    storedPortBindings (gateContinuationPath width gateIndex)
        (prepStorage width) = [] :=
  storedPortBindings_gateContinuation_prepStorage_aux width gateIndex width
    (Nat.le_refl width)

theorem storedPortBindings_gateContinuation_body_prepStorage_aux
    (width gateIndex stored : Nat) (within : stored ≤ width) :
    storedPortBindings (gateContinuationPath width gateIndex ++ [.body])
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih (by omega)]
      have notContinuation := gateContinuation_body_ne_prepContinuation
        width gateIndex stored (by omega)
      have notBody := gateContinuation_body_ne_prepContinuation_body
        width gateIndex stored (by omega)
      have baseNot := gateContinuation_ne_prepContinuation
        width gateIndex stored (by omega)
      simp [storedPortBindings, prepHistory, notContinuation, notBody,
        baseNot]

@[simp] theorem storedPortBindings_gateContinuation_body_prepStorage
    (width gateIndex : Nat) :
    storedPortBindings (gateContinuationPath width gateIndex ++ [.body])
        (prepStorage width) = [] :=
  storedPortBindings_gateContinuation_body_prepStorage_aux width gateIndex
    width (Nat.le_refl width)

theorem gateRoot_ne_prepContinuation
    (width future prepared : Nat) (within : prepared < width) :
    gateRoot width future ≠ prepContinuationPath prepared := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateRoot, prepContinuationPath, preparationRoot, shellBodyPath]
    at lengths
  omega

theorem gateRoot_ne_prepContinuation_body
    (width future prepared : Nat) (within : prepared < width) :
    gateRoot width future ≠ prepContinuationPath prepared ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateRoot, prepContinuationPath, preparationRoot, shellBodyPath]
    at lengths
  omega

theorem storedPortBindings_gateRoot_prepStorage_aux
    (width future stored : Nat) (within : stored ≤ width) :
    storedPortBindings (gateRoot width future) (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih (by omega)]
      have notContinuation := gateRoot_ne_prepContinuation
        width future stored (by omega)
      have notBody := gateRoot_ne_prepContinuation_body
        width future stored (by omega)
      simp [storedPortBindings, prepHistory, notContinuation, notBody]

@[simp] theorem storedPortBindings_gateRoot_prepStorage
    (width future : Nat) :
    storedPortBindings (gateRoot width future) (prepStorage width) = [] :=
  storedPortBindings_gateRoot_prepStorage_aux width future width
    (Nat.le_refl width)

/-! The named compiler carries the same SSA update before lowering.  Keeping
this recurrence explicit lets the physical proof identify the binder named by
each live boundary key after an arbitrary circuit prefix. -/
def nextSourceWires (gateIndex : Nat) (wires : Fin n → SourceName) :
    Gate n → Fin n → SourceName
  | .h selected, wire =>
      if wire = selected then .gateSecond gateIndex else wires wire
  | .t selected, wire =>
      if wire = selected then .gateSecond gateIndex else wires wire
  | .cx control target _, wire =>
      if wire = control then .gateFirst gateIndex
      else if wire = target then .gateSecond gateIndex
      else wires wire

@[simp] theorem nextSourceWires_h (gateIndex : Nat)
    (wires : Fin n → SourceName) (selected wire : Fin n) :
    nextSourceWires gateIndex wires (.h selected) wire =
      if wire = selected then .gateSecond gateIndex else wires wire := by
  rfl

@[simp] theorem nextSourceWires_t (gateIndex : Nat)
    (wires : Fin n → SourceName) (selected wire : Fin n) :
    nextSourceWires gateIndex wires (.t selected) wire =
      if wire = selected then .gateSecond gateIndex else wires wire := by
  rfl

@[simp] theorem nextSourceWires_cx (gateIndex : Nat)
    (wires : Fin n → SourceName) (control target wire : Fin n)
    (distinct : control ≠ target) :
    nextSourceWires gateIndex wires (.cx control target distinct) wire =
      if wire = control then .gateFirst gateIndex
      else if wire = target then .gateSecond gateIndex
      else wires wire := by
  rfl

def sourceWiresFrom : Nat → (Fin n → SourceName) →
    Circuit n → Fin n → SourceName
  | _, wires, [] => wires
  | gateIndex, wires, gate :: rest =>
      sourceWiresFrom (gateIndex + 1)
        (nextSourceWires gateIndex wires gate) rest

def sourceEnvironmentFrom : Nat → List SourceName →
    Circuit n → List SourceName
  | _, environment, [] => environment
  | gateIndex, environment, _ :: rest =>
      sourceEnvironmentFrom (gateIndex + 1)
        (.gateSecond gateIndex :: .gateFirst gateIndex :: environment) rest

def sourceNameKey (width : Nat) : SourceName → Option Key
  | .prepSecond wire =>
      some (portKey .second (preparationOccurrence wire))
  | .gateFirst gateIndex =>
      some (portKey .first (gateOccurrence width gateIndex))
  | .gateSecond gateIndex =>
      some (portKey .second (gateOccurrence width gateIndex))
  | _ => none

def sourceBinderPath (width : Nat) : SourceName → Path
  | .h => hBinderPath
  | .t => tBinderPath
  | .c => cBinderPath
  | .prepFirst wire => prepContinuationPath wire
  | .prepSecond wire => prepContinuationPath wire ++ [.body]
  | .gateFirst gateIndex => gateContinuationPath width gateIndex
  | .gateSecond gateIndex => gateContinuationPath width gateIndex ++ [.body]
  | _ => []

theorem lookupName_positive {name : SourceName}
    {environment : List SourceName} {index : Nat}
    (found : lookupName name environment = some index) : 0 < index := by
  induction environment generalizing index with
  | nil => simp [lookupName] at found
  | cons head tail ih =>
      by_cases same : name = head
      · subst head
        simp [lookupName] at found
        omega
      · cases priorResult : lookupName name tail with
        | none => simp [lookupName, same, priorResult] at found
        | some prior =>
            simp [lookupName, same, priorResult] at found
            omega

theorem getElem?_map_lookupName {name : SourceName}
    {environment : List SourceName} {index : Nat}
    (found : lookupName name environment = some index)
    (mapName : SourceName → α) :
    (environment.map mapName)[index - 1]? = some (mapName name) := by
  induction environment generalizing index with
  | nil => simp [lookupName] at found
  | cons head tail ih =>
      by_cases same : name = head
      · subst head
        simp [lookupName] at found
        subst index
        simp
      · cases priorResult : lookupName name tail with
        | none => simp [lookupName, same, priorResult] at found
        | some prior =>
            simp [lookupName, same, priorResult] at found
            subst index
            have positive := lookupName_positive priorResult
            rw [show prior + 1 - 1 = prior by omega]
            rw [show prior = (prior - 1) + 1 by omega]
            change (mapName head :: tail.map mapName)[prior - 1 + 1]? = _
            rw [List.getElem?_cons_succ]
            exact ih priorResult

@[simp] theorem sourceNameKey_wireName (wire : Fin n) :
    sourceNameKey n (wireName wire) = some (initialWireKeys n wire) := by
  rfl

theorem sourceNameKey_next (gateIndex : Nat) (gate : Gate n)
    (sourceWires : Fin n → SourceName) (keys : Fin n → Key)
    (aligned : ∀ wire, sourceNameKey n (sourceWires wire) = some (keys wire)) :
    ∀ wire,
      sourceNameKey n (nextSourceWires gateIndex sourceWires gate wire) =
        some (nextWireKeys n gateIndex keys gate wire) := by
  intro wire
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · simp [nextSourceWires, nextWireKeys, same, sourceNameKey]
      · simp [nextSourceWires, nextWireKeys, same, aligned]
  | t selected =>
      by_cases same : wire = selected
      · simp [nextSourceWires, nextWireKeys, same, sourceNameKey]
      · simp [nextSourceWires, nextWireKeys, same, aligned]
  | cx control target distinct =>
      by_cases atControl : wire = control
      · simp [nextSourceWires, nextWireKeys, atControl, sourceNameKey]
      · by_cases atTarget : wire = target
        · have targetNeControl : target ≠ control := Ne.symm distinct
          simp [nextSourceWires, nextWireKeys, atControl, atTarget,
            targetNeControl, sourceNameKey]
        · simp [nextSourceWires, nextWireKeys, atControl, atTarget, aligned]

theorem sourceNameKey_sourceWiresFrom (gateIndex : Nat)
    (prior : Circuit n) (sourceWires : Fin n → SourceName)
    (keys : Fin n → Key)
    (aligned : ∀ wire, sourceNameKey n (sourceWires wire) = some (keys wire)) :
    ∀ wire,
      sourceNameKey n (sourceWiresFrom gateIndex sourceWires prior wire) =
        some (wireKeysFrom gateIndex keys prior wire) := by
  induction prior generalizing gateIndex sourceWires keys with
  | nil => exact aligned
  | cons gate rest ih =>
      exact ih (gateIndex + 1)
        (nextSourceWires gateIndex sourceWires gate)
        (nextWireKeys n gateIndex keys gate)
        (sourceNameKey_next gateIndex gate sourceWires keys aligned)

theorem sourceNameKey_compiler_prefix (prior : Circuit n) :
    ∀ wire,
      sourceNameKey n (sourceWiresFrom 0 wireName prior wire) =
        some (wireKeysFrom 0 (initialWireKeys n) prior wire) := by
  exact sourceNameKey_sourceWiresFrom 0 prior wireName (initialWireKeys n)
    sourceNameKey_wireName

theorem gateInvoked_ne (width left right : Nat) (different : left ≠ right) :
    gateInvoked width left ≠ gateInvoked width right := by
  intro equal
  have decoded := congrArg asLP? equal
  have occurrenceEqual :
      gateOccurrence width left = gateOccurrence width right := by
    simpa [gateInvoked] using decoded
  exact different (gateOccurrence_injective occurrenceEqual)

theorem hasPriorCInvocation_append (invoked : Entry)
    (left right : List Store) :
    hasPriorCInvocation invoked (left ++ right) =
      (hasPriorCInvocation invoked left ||
        hasPriorCInvocation invoked right) := by
  simp [hasPriorCInvocation, List.any_append]

theorem gateInvoked_ne_prepInvoked (width gateIndex : Nat)
    (wire : Fin width) :
    gateInvoked width gateIndex ≠ prepInvoked wire.val := by
  intro equal
  have decoded := congrArg asLP? equal
  have occurrenceEqual :
      gateOccurrence width gateIndex = preparationOccurrence wire.val := by
    simpa [gateInvoked, prepInvoked] using decoded
  exact preparationOccurrence_ne_gateOccurrence wire gateIndex
    occurrenceEqual.symm

theorem hasPriorCInvocation_gateInvoked_prepStorage
    (width gateIndex stored : Nat) (bounded : stored ≤ width) :
    hasPriorCInvocation (gateInvoked width gateIndex) (prepStorage stored) =
      false := by
  induction stored with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, hasPriorCInvocation_append]
      have prior := ih (by omega)
      let current : Fin width := ⟨count, by omega⟩
      have currentNe := gateInvoked_ne_prepInvoked width gateIndex current
      rw [prior]
      simp [hasPriorCInvocation, prepHistory, currentNe,
        Ne.symm currentNe]
      change prepInvoked count ≠ gateInvoked width gateIndex
      simpa [current] using Ne.symm currentNe

theorem hasPriorCInvocation_nextBoundaryStorage (invoked : Entry)
    (gateIndex : Nat) (wires : Fin n → Key) (storage : List Store)
    (gate : Gate n) :
    hasPriorCInvocation invoked
        (nextBoundaryStorage gateIndex wires storage gate) =
      (hasPriorCInvocation invoked
          [completedGateHistory gateIndex wires gate] ||
        hasPriorCInvocation invoked storage) := by
  cases gate with
  | h wire =>
      change hasPriorCInvocation invoked
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .h n gateIndex),
            unaryHistory .h n gateIndex] ++ storage) = _
      rw [hasPriorCInvocation_append]
      rfl
  | t wire =>
      change hasPriorCInvocation invoked
          ([.bundle [wires wire],
            .cquery (keyPort (wires wire)) (wires wire).inst
              (unaryInputLogged .t n gateIndex),
            unaryHistory .t n gateIndex] ++ storage) = _
      rw [hasPriorCInvocation_append]
      rfl
  | cx control target distinct =>
      change hasPriorCInvocation invoked
          ([.cquery (keyPort (wires target)) (wires target).inst
              (cxInputLogged .second n gateIndex),
            cxHistory n gateIndex (wires control) (wires target),
            .cquery (keyPort (wires control)) (wires control).inst
              (cxInputLogged .first n gateIndex)] ++ storage) = _
      rw [hasPriorCInvocation_append]
      rfl

theorem hasPriorCInvocation_nonLP_prepStorage
    (invoked : Entry) (stored : Nat)
    (nonLP : asLP? invoked = none) :
    hasPriorCInvocation invoked (prepStorage stored) = false := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, hasPriorCInvocation_append, ih]
      have different : prepInvoked stored ≠ invoked := by
        intro equal
        have decoded := congrArg asLP? equal
        simp [prepInvoked, nonLP] at decoded
      simp [hasPriorCInvocation, prepHistory, different,
        Ne.symm different]

theorem gateInvoked_ne_unaryInstance (name : GateName)
    (width gateIndex future : Nat) :
    gateInvoked width gateIndex ≠ unaryInstance name width future := by
  intro equal
  have decoded := congrArg asLP? equal
  have paths := congrArg (Option.map Prod.fst) decoded
  have pathEqual :
      gateOccurrence width gateIndex =
        gateSecondPath width future ++ [.fn] := by
    simpa [gateInvoked, unaryInstance] using paths
  have lengths := congrArg List.length pathEqual
  simp [gateOccurrence, gateSecondPath, gateRoot, preparationRoot,
    shellBodyPath] at lengths
  have indices : gateIndex = future := by omega
  subst future
  simp [gateOccurrence, gateSecondPath] at pathEqual

theorem hasPriorCInvocation_unaryInstance_prepStorage
    (name : GateName) (width gateIndex stored : Nat) :
    hasPriorCInvocation (unaryInstance name width gateIndex)
        (prepStorage stored) = false := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, hasPriorCInvocation_append, ih]
      have different := unaryInstance_ne_prepInvoked
        name width gateIndex stored
      simp [hasPriorCInvocation, prepHistory, different,
        Ne.symm different]

structure BoundaryStorageWFAt (completed : Nat)
    (sources : Fin n → SourceName) (keys : Fin n → Key)
    (storage : List Store) : Prop where
  aligned : ∀ wire, sourceNameKey n (sources wire) = some (keys wire)
  liveBinding : ∀ wire,
    storedPortBindings (sourceBinderPath n (sources wire)) storage =
      [((keys wire).inst, keyPort (keys wire))]
  nativeH : storedPortBindings hBinderPath storage = []
  nativeT : storedPortBindings tBinderPath storage = []
  nativeC : storedPortBindings cBinderPath storage = []
  shellFn : storedPortBindings [.fn] storage = []
  shellArg : storedPortBindings [.arg] storage = []
  returnH : storedReturnOccurrences hBinderPath storage = []
  returnT : storedReturnOccurrences tBinderPath storage = []
  returnC : storedReturnOccurrences cBinderPath storage = []
  returnHGate : storedReturnOccurrences [.fn, .fn, .arg] storage = []
  returnTGate : storedReturnOccurrences [.fn, .arg] storage = []
  futureReturnSecond : ∀ future, completed ≤ future →
    storedReturnOccurrences (gateSecondPath n future ++ [.fn]) storage = []
  futureReturnInput : ∀ future, completed ≤ future →
    storedReturnOccurrences (gateSecondPath n future ++ [.arg]) storage = []
  futureOutputReturn : ∀ future suffix, completed ≤ future →
    storedReturnOccurrences (gateRoot n future ++ .body :: suffix) storage = []
  nonLPInvocation : ∀ invoked, asLP? invoked = none →
    hasPriorCInvocation invoked storage = false
  futureUnaryInvocation : ∀ name future, completed ≤ future →
    hasPriorCInvocation (unaryInstance name n future) storage = false
  freshInvocation : ∀ future, completed ≤ future →
    hasPriorCInvocation (gateInvoked n future) storage = false
  futureRoot : ∀ future, completed ≤ future →
    storedPortBindings (gateRoot n future) storage = []
  futureFirst : ∀ future, completed ≤ future →
    storedPortBindings (gateContinuationPath n future) storage = []
  futureSecond : ∀ future, completed ≤ future →
    storedPortBindings (gateContinuationPath n future ++ [.body]) storage = []
  futureGateFirst : ∀ future, completed ≤ future →
    storedPortBindings (gateFirstPath n future) storage = []
  noStageHead : ∀ kind tail, storage ≠ .cstage kind :: tail
  noDead : ∀ port invoked epoch logged answered,
    .cdead port invoked epoch logged answered ∉ storage

theorem storedReturnOccurrences_futureInput_prepStorage
    (width future count : Nat) :
    storedReturnOccurrences (gateSecondPath width future ++ [.arg])
        (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      have continuationNe :
          prepContinuationPath count ≠
            gateSecondPath width future ++ [.arg] := by
        intro equal
        have lengths := congrArg List.length equal
        simp [prepContinuationPath, gateSecondPath, gateRoot,
          preparationRoot, shellBodyPath] at lengths
        omega
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory, continuationNe]

theorem storedReturnOccurrences_futureSecond_prepStorage
    (width future count : Nat) :
    storedReturnOccurrences (gateSecondPath width future ++ [.fn])
        (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      have continuationNe :
          prepContinuationPath count ≠
            gateSecondPath width future ++ [.fn] := by
        intro equal
        have lengths := congrArg List.length equal
        simp [prepContinuationPath, gateSecondPath, gateRoot,
          preparationRoot, shellBodyPath] at lengths
        omega
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory, continuationNe]

theorem storedReturnOccurrences_futureOutput_prepStorage
    (width future count : Nat) (bounded : count ≤ width) (suffix : Path) :
    storedReturnOccurrences (gateRoot width future ++ .body :: suffix)
        (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      have countBefore : count < width := by omega
      have continuationNe :
          prepContinuationPath count ≠
            gateRoot width future ++ .body :: suffix := by
        intro equal
        have lengths := congrArg List.length equal
        simp [prepContinuationPath, gateRoot, preparationRoot,
          shellBodyPath] at lengths
        omega
      rw [prepStorage_succ, storedReturnOccurrences_append,
        ih (Nat.le_of_lt countBefore)]
      simp [storedReturnOccurrences, prepHistory, continuationNe]

theorem initialBoundaryStorageWF :
    BoundaryStorageWFAt 0 wireName (initialWireKeys n) (prepStorage n) := by
  constructor
  · exact sourceNameKey_wireName
  · intro wire
    simpa [sourceBinderPath, wireName, initialWireKeys, keyPort, portKey,
      prepInvoked] using storedPortBindings_initialWire n wire
  · exact storedPortBindings_hBinder_prepStorage n
  · exact storedPortBindings_tBinder_prepStorage n
  · exact storedPortBindings_cBinder_prepStorage n
  · induction n with
    | zero => rfl
    | succ count ih =>
        rw [prepStorage_succ, storedPortBindings_append, ih]
        simp [storedPortBindings, prepHistory, prepContinuationPath,
          preparationRoot, shellBodyPath]
  · exact storedPortBindings_shellArgument_prepStorage n
  · exact storedReturnOccurrences_hBinder_prepStorage n
  · induction n with
    | zero => rfl
    | succ count ih =>
        rw [prepStorage_succ, storedReturnOccurrences_append, ih]
        simp [storedReturnOccurrences, prepHistory, tBinderPath,
          prepContinuationPath, preparationRoot, shellBodyPath]
  · exact storedReturnOccurrences_cBinder_prepStorage n
  · exact storedReturnOccurrences_virtual_prepStorage n
  · exact storedReturnOccurrences_tVirtual_prepStorage n
  · intro future _
    exact storedReturnOccurrences_futureSecond_prepStorage n future n
  · intro future _
    exact storedReturnOccurrences_futureInput_prepStorage n future n
  · intro future suffix _
    exact storedReturnOccurrences_futureOutput_prepStorage n future n
      (Nat.le_refl n) suffix
  · intro invoked nonLP
    exact hasPriorCInvocation_nonLP_prepStorage invoked n nonLP
  · intro name future _
    exact hasPriorCInvocation_unaryInstance_prepStorage name n future n
  · intro future _
    exact hasPriorCInvocation_gateInvoked_prepStorage n future n
      (Nat.le_refl n)
  · intro future _
    exact storedPortBindings_gateRoot_prepStorage n future
  · intro future _
    exact storedPortBindings_gateContinuation_prepStorage n future
  · intro future _
    exact storedPortBindings_gateContinuation_body_prepStorage n future
  · intro future _
    exact storedPortBindings_gateFirstPath_prepStorage n future n
  · intro kind tail
    cases n <;> simp [prepStorage]
  · intro port invoked epoch logged answered
    induction n with
    | zero => simp [prepStorage]
    | succ count ih =>
        simp [prepStorage_succ, ih, prepStorage, prepHistory]

theorem liveBinder_ne_futureFirst
    {sources : Fin n → SourceName} {keys : Fin n → Key}
    {storage : List Store} (wf : BoundaryStorageWFAt completed sources keys storage)
    (wire : Fin n) (future : Nat) (notPast : completed ≤ future) :
    sourceBinderPath n (sources wire) ≠ gateContinuationPath n future := by
  intro equal
  have live := wf.liveBinding wire
  rw [equal, wf.futureFirst future notPast] at live
  simp at live

theorem liveBinder_ne_futureSecond
    {sources : Fin n → SourceName} {keys : Fin n → Key}
    {storage : List Store} (wf : BoundaryStorageWFAt completed sources keys storage)
    (wire : Fin n) (future : Nat) (notPast : completed ≤ future) :
    sourceBinderPath n (sources wire) ≠
      gateContinuationPath n future ++ [.body] := by
  intro equal
  have live := wf.liveBinding wire
  rw [equal, wf.futureSecond future notPast] at live
  simp at live

theorem nextBoundaryStorage_wf (gateIndex : Nat) (gate : Gate n)
    (sources : Fin n → SourceName) (keys : Fin n → Key)
    (storage : List Store)
    (wf : BoundaryStorageWFAt gateIndex sources keys storage) :
    BoundaryStorageWFAt (gateIndex + 1)
      (nextSourceWires gateIndex sources gate)
      (nextWireKeys n gateIndex keys gate)
      (nextBoundaryStorage gateIndex keys storage gate) := by
  constructor
  · exact sourceNameKey_next gateIndex gate sources keys wf.aligned
  · intro wire
    have oldNeFirst := liveBinder_ne_futureFirst wf wire gateIndex
      (Nat.le_refl gateIndex)
    have oldNeSecond := liveBinder_ne_futureSecond wf wire gateIndex
      (Nat.le_refl gateIndex)
    cases gate with
    | h selected =>
        by_cases same : wire = selected
        · subst wire
          rw [storedPortBindings_nextBoundaryStorage]
          simp only [nextSourceWires_h, if_pos, sourceBinderPath]
          rw [wf.futureSecond gateIndex (Nat.le_refl gateIndex)]
          simp [nextSourceWires, nextWireKeys, completedGateHistory,
            storedPortBindings, unaryHistory, keyPort, portKey,
            sourceBinderPath, gateInvoked]
        · rw [storedPortBindings_nextBoundaryStorage]
          simp only [nextSourceWires_h, if_neg same]
          rw [wf.liveBinding wire]
          simp [nextSourceWires, nextWireKeys, completedGateHistory,
            storedPortBindings, unaryHistory, same, oldNeFirst,
            oldNeSecond]
    | t selected =>
        by_cases same : wire = selected
        · subst wire
          rw [storedPortBindings_nextBoundaryStorage]
          simp only [nextSourceWires_t, if_pos, sourceBinderPath]
          rw [wf.futureSecond gateIndex (Nat.le_refl gateIndex)]
          simp [nextSourceWires, nextWireKeys, completedGateHistory,
            storedPortBindings, unaryHistory, keyPort, portKey,
            sourceBinderPath, gateInvoked]
        · rw [storedPortBindings_nextBoundaryStorage]
          simp only [nextSourceWires_t, if_neg same]
          rw [wf.liveBinding wire]
          simp [nextSourceWires, nextWireKeys, completedGateHistory,
            storedPortBindings, unaryHistory, same, oldNeFirst,
            oldNeSecond]
    | cx control target distinct =>
        by_cases atControl : wire = control
        · subst wire
          rw [storedPortBindings_nextBoundaryStorage]
          simp only [nextSourceWires_cx, if_pos, sourceBinderPath]
          rw [wf.futureFirst gateIndex (Nat.le_refl gateIndex)]
          simp [nextSourceWires, nextWireKeys, completedGateHistory,
            storedPortBindings, cxHistory, keyPort, portKey,
            sourceBinderPath, gateInvoked]
        · by_cases atTarget : wire = target
          · subst wire
            have targetNeControl : target ≠ control := Ne.symm distinct
            rw [storedPortBindings_nextBoundaryStorage]
            simp only [nextSourceWires_cx, if_neg targetNeControl, if_pos,
              sourceBinderPath]
            rw [wf.futureSecond gateIndex (Nat.le_refl gateIndex)]
            simp [nextSourceWires, nextWireKeys, completedGateHistory,
              storedPortBindings, cxHistory, keyPort, portKey,
              targetNeControl, sourceBinderPath, gateInvoked]
          · rw [storedPortBindings_nextBoundaryStorage]
            simp only [nextSourceWires_cx, if_neg atControl, if_neg atTarget]
            rw [wf.liveBinding wire]
            simp [nextSourceWires, nextWireKeys, completedGateHistory,
              storedPortBindings, cxHistory, atControl, atTarget,
              oldNeFirst, oldNeSecond]
  · rw [storedPortBindings_nextBoundaryStorage, wf.nativeH]
    have firstNe : hBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [hBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have secondNe :
        hBinderPath ≠ gateContinuationPath n gateIndex ++ [.body] := by
      simp [hBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · rw [storedPortBindings_nextBoundaryStorage, wf.nativeT]
    have firstNe : tBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [tBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have secondNe :
        tBinderPath ≠ gateContinuationPath n gateIndex ++ [.body] := by
      simp [tBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · rw [storedPortBindings_nextBoundaryStorage, wf.nativeC]
    have firstNe : cBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [cBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have secondNe :
        cBinderPath ≠ gateContinuationPath n gateIndex ++ [.body] := by
      simp [cBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · rw [storedPortBindings_nextBoundaryStorage, wf.shellFn]
    have firstNe : [.fn] ≠ gateContinuationPath n gateIndex := by
      simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    have secondNe :
        [.fn] ≠ gateContinuationPath n gateIndex ++ [.body] := by
      simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · rw [storedPortBindings_nextBoundaryStorage, wf.shellArg]
    have firstNe : [.arg] ≠ gateContinuationPath n gateIndex := by
      simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    have secondNe :
        [.arg] ≠ gateContinuationPath n gateIndex ++ [.body] := by
      simp [gateContinuationPath, gateRoot, preparationRoot, shellBodyPath]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · have continuationNe :
        hBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [hBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage, wf.returnH]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · have continuationNe :
        tBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [tBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage, wf.returnT]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · have continuationNe :
        cBinderPath ≠ gateContinuationPath n gateIndex := by
      simp [cBinderPath, gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath]
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage, wf.returnC]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · have continuationNe :
        ([.fn, .fn, .arg] : Path) ≠
          gateContinuationPath n gateIndex := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath] at lengths
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage, wf.returnHGate]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · have continuationNe :
        ([.fn, .arg] : Path) ≠ gateContinuationPath n gateIndex := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath] at lengths
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage, wf.returnTGate]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · intro future after
    have continuationNe :
        gateContinuationPath n gateIndex ≠
          gateSecondPath n future ++ [.fn] := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateSecondPath, gateRoot,
        preparationRoot, shellBodyPath] at lengths
      omega
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage,
      wf.futureReturnSecond future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · intro future after
    have continuationNe :
        gateContinuationPath n gateIndex ≠
          gateSecondPath n future ++ [.arg] := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateSecondPath, gateRoot,
        preparationRoot, shellBodyPath] at lengths
      omega
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage,
      wf.futureReturnInput future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · intro future suffix after
    have continuationNe :
        gateContinuationPath n gateIndex ≠
          gateRoot n future ++ .body :: suffix := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath] at lengths
      omega
    have reverseNe := Ne.symm continuationNe
    rw [storedReturnOccurrences_nextBoundaryStorage,
      wf.futureOutputReturn future suffix (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, continuationNe, reverseNe]
  · intro invoked nonLP
    have different : gateInvoked n gateIndex ≠ invoked := by
      intro equal
      have decoded := congrArg asLP? equal
      simp [gateInvoked, nonLP] at decoded
    rw [hasPriorCInvocation_nextBoundaryStorage,
      wf.nonLPInvocation invoked nonLP]
    cases gate <;>
      simp [hasPriorCInvocation, completedGateHistory, unaryHistory, cxHistory,
        different, Ne.symm different]
  · intro name future after
    have different := gateInvoked_ne_unaryInstance
      name n gateIndex future
    rw [hasPriorCInvocation_nextBoundaryStorage,
      wf.futureUnaryInvocation name future (by omega)]
    cases gate <;>
      simp [hasPriorCInvocation, completedGateHistory, unaryHistory, cxHistory,
        different, Ne.symm different]
  · intro future after
    have different : gateIndex ≠ future := by omega
    have invokedNe := gateInvoked_ne n gateIndex future different
    rw [hasPriorCInvocation_nextBoundaryStorage,
      wf.freshInvocation future (by omega)]
    cases gate <;>
      simp [hasPriorCInvocation, completedGateHistory, unaryHistory, cxHistory,
        invokedNe, Ne.symm invokedNe]
  · intro future after
    have rootNe : gateRoot n future ≠
        gateContinuationPath n gateIndex := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath] at lengths
      omega
    have bodyNe : gateRoot n future ≠
        gateContinuationPath n gateIndex ++ [.body] := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateContinuationPath, gateRoot, preparationRoot,
        shellBodyPath] at lengths
      omega
    rw [storedPortBindings_nextBoundaryStorage,
      wf.futureRoot future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        rootNe, bodyNe]
  · intro future after
    have different : future ≠ gateIndex := by omega
    have firstNe := gateContinuation_ne n future gateIndex different
    have firstBodyNe : gateContinuationPath n future ≠
        gateContinuationPath n gateIndex ++ [.body] :=
      Ne.symm (gateContinuation_body_ne_continuation n gateIndex future)
    rw [storedPortBindings_nextBoundaryStorage,
      wf.futureFirst future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, firstBodyNe]
  · intro future after
    have different : future ≠ gateIndex := by omega
    have bodyNe := gateContinuation_body_ne_body n future gateIndex different
    have crossNe := gateContinuation_body_ne_continuation n future gateIndex
    have baseNe := gateContinuation_ne n future gateIndex different
    rw [storedPortBindings_nextBoundaryStorage,
      wf.futureSecond future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        bodyNe, crossNe, baseNe]
  · intro future after
    have firstNe : gateFirstPath n future ≠
        gateContinuationPath n gateIndex := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateFirstPath, gateContinuationPath, gateRoot,
        preparationRoot, shellBodyPath] at lengths
      omega
    have secondNe : gateFirstPath n future ≠
        gateContinuationPath n gateIndex ++ [.body] := by
      intro equal
      have lengths := congrArg List.length equal
      simp [gateFirstPath, gateContinuationPath, gateRoot,
        preparationRoot, shellBodyPath] at lengths
      omega
    rw [storedPortBindings_nextBoundaryStorage,
      wf.futureGateFirst future (by omega)]
    cases gate <;>
      simp [completedGateHistory, storedPortBindings, unaryHistory, cxHistory,
        firstNe, secondNe]
  · intro kind tail
    cases gate <;> simp [nextBoundaryStorage]
  · intro port invoked epoch logged answered
    cases gate <;>
      simpa [nextBoundaryStorage, unaryHistory, cxHistory] using
        wf.noDead port invoked epoch logged answered

theorem boundaryStorageFrom_wf (gateIndex : Nat) (prior : Circuit n)
    (sources : Fin n → SourceName) (keys : Fin n → Key)
    (storage : List Store)
    (wf : BoundaryStorageWFAt gateIndex sources keys storage) :
    BoundaryStorageWFAt (gateIndex + prior.length)
      (sourceWiresFrom gateIndex sources prior)
      (wireKeysFrom gateIndex keys prior)
      (boundaryStorageFrom gateIndex keys storage prior) := by
  induction prior generalizing gateIndex sources keys storage with
  | nil => simpa [sourceWiresFrom, wireKeysFrom, boundaryStorageFrom] using wf
  | cons gate rest ih =>
      have next := nextBoundaryStorage_wf gateIndex gate sources keys storage wf
      have result := ih (gateIndex + 1)
        (nextSourceWires gateIndex sources gate)
        (nextWireKeys n gateIndex keys gate)
        (nextBoundaryStorage gateIndex keys storage gate) next
      simpa [sourceWiresFrom, wireKeysFrom, boundaryStorageFrom,
        Nat.add_assoc, Nat.add_comm] using result

theorem compilerBoundaryStorageWF (prior : Circuit n) :
    BoundaryStorageWFAt prior.length
      (sourceWiresFrom 0 wireName prior)
      (wireKeysFrom 0 (initialWireKeys n) prior)
      (boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) prior) := by
  simpa using boundaryStorageFrom_wf 0 prior wireName (initialWireKeys n)
    (prepStorage n) initialBoundaryStorageWF

theorem nextSourceWires_mem (gateIndex : Nat) (gate : Gate n)
    (wires : Fin n → SourceName) (environment : List SourceName)
    (bounded : ∀ wire, wires wire ∈ environment) :
    ∀ wire,
      nextSourceWires gateIndex wires gate wire ∈
        (.gateSecond gateIndex :: .gateFirst gateIndex :: environment) := by
  intro wire
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · simp [nextSourceWires, same]
      · simp [nextSourceWires, same, bounded]
  | t selected =>
      by_cases same : wire = selected
      · simp [nextSourceWires, same]
      · simp [nextSourceWires, same, bounded]
  | cx control target distinct =>
      by_cases atControl : wire = control
      · simp [nextSourceWires, atControl]
      · by_cases atTarget : wire = target
        · have targetNeControl : target ≠ control := Ne.symm distinct
          simp [nextSourceWires, atControl, atTarget, targetNeControl]
        · simp [nextSourceWires, atControl, atTarget, bounded]

theorem sourceWiresFrom_mem (gateIndex : Nat) (prior : Circuit n)
    (wires : Fin n → SourceName) (environment : List SourceName)
    (bounded : ∀ wire, wires wire ∈ environment) :
    ∀ wire,
      sourceWiresFrom gateIndex wires prior wire ∈
        sourceEnvironmentFrom gateIndex environment prior := by
  induction prior generalizing gateIndex wires environment with
  | nil => exact bounded
  | cons gate rest ih =>
      exact ih (gateIndex + 1) (nextSourceWires gateIndex wires gate)
        (.gateSecond gateIndex :: .gateFirst gateIndex :: environment)
        (nextSourceWires_mem gateIndex gate wires environment bounded)

theorem wireName_mem_preparedEnvironment (wire : Fin n) :
    wireName wire ∈ preparedEnvironment n := by
  induction n with
  | zero => exact Fin.elim0 wire
  | succ count ih =>
      by_cases newest : wire.val = count
      · simp [wireName, preparedEnvironment, newest]
      · let older : Fin count := ⟨wire.val, by omega⟩
        have member := ih older
        have oldMember : .prepSecond wire.val ∈ preparedEnvironment count := by
          simpa [wireName, older] using member
        simp [wireName, preparedEnvironment, oldMember]

theorem compilerSourceWire_mem (prior : Circuit n) (wire : Fin n) :
    sourceWiresFrom 0 wireName prior wire ∈
      sourceEnvironmentFrom 0 (preparedEnvironment n) prior := by
  apply sourceWiresFrom_mem 0 prior wireName (preparedEnvironment n)
  exact wireName_mem_preparedEnvironment

theorem compilerSourceWire_lookup (prior : Circuit n) (wire : Fin n) :
    ∃ index,
      lookupName (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior) =
        some index :=
  lookupName_some_of_mem (compilerSourceWire_mem prior wire)

def LiveSourceBefore (width completed : Nat) (source : SourceName) : Prop :=
  (∃ wire : Fin width, source = .prepSecond wire.val) ∨
    ∃ gateIndex < completed,
      source = .gateFirst gateIndex ∨ source = .gateSecond gateIndex

theorem liveSourceBefore_mono {width earlier later : Nat}
    {source : SourceName} (before : LiveSourceBefore width earlier source)
    (bounded : earlier ≤ later) : LiveSourceBefore width later source := by
  rcases before with before | before
  · exact .inl before
  · rcases before with ⟨gateIndex, within, shape⟩
    exact .inr ⟨gateIndex, by omega, shape⟩

theorem nextSourceWires_before (gateIndex : Nat) (gate : Gate n)
    (sources : Fin n → SourceName)
    (before : ∀ wire, LiveSourceBefore n gateIndex (sources wire)) :
    ∀ wire,
      LiveSourceBefore n (gateIndex + 1)
        (nextSourceWires gateIndex sources gate wire) := by
  intro wire
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · subst wire
        exact .inr ⟨gateIndex, by omega, .inr (by
          simp [nextSourceWires])⟩
      · simp only [nextSourceWires_h, if_neg same]
        exact liveSourceBefore_mono (before wire) (by omega)
  | t selected =>
      by_cases same : wire = selected
      · subst wire
        exact .inr ⟨gateIndex, by omega, .inr (by
          simp [nextSourceWires])⟩
      · simp only [nextSourceWires_t, if_neg same]
        exact liveSourceBefore_mono (before wire) (by omega)
  | cx control target distinct =>
      by_cases atControl : wire = control
      · subst wire
        exact .inr ⟨gateIndex, by omega, .inl (by
          simp [nextSourceWires])⟩
      · by_cases atTarget : wire = target
        · subst wire
          have targetNeControl : target ≠ control := Ne.symm distinct
          exact .inr ⟨gateIndex, by omega, .inr (by
            simp [nextSourceWires, targetNeControl])⟩
        · simp only [nextSourceWires_cx, if_neg atControl,
            if_neg atTarget]
          exact liveSourceBefore_mono (before wire) (by omega)

theorem sourceWiresFrom_before (gateIndex : Nat) (prior : Circuit n)
    (sources : Fin n → SourceName)
    (before : ∀ wire, LiveSourceBefore n gateIndex (sources wire)) :
    ∀ wire,
      LiveSourceBefore n (gateIndex + prior.length)
        (sourceWiresFrom gateIndex sources prior wire) := by
  induction prior generalizing gateIndex sources with
  | nil =>
      intro wire
      simpa [sourceWiresFrom] using before wire
  | cons gate rest ih =>
      have next := nextSourceWires_before gateIndex gate sources before
      have result := ih (gateIndex + 1)
        (nextSourceWires gateIndex sources gate) next
      intro wire
      simpa [sourceWiresFrom, Nat.add_assoc, Nat.add_comm] using result wire

theorem compilerSourceWire_before (prior : Circuit n) (wire : Fin n) :
    LiveSourceBefore n prior.length
      (sourceWiresFrom 0 wireName prior wire) := by
  have base : ∀ input : Fin n, LiveSourceBefore n 0 (wireName input) := by
    intro input
    exact .inl ⟨input, by simp [wireName]⟩
  simpa using sourceWiresFrom_before 0 prior wireName base wire

theorem compilerSourceBinder_before_gateFirst (prior : Circuit n)
    (wire : Fin n) :
    1 ≤ level (gateFirstPath n prior.length) -
      level (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior wire) ++ [.body]) := by
  rcases compilerSourceWire_before prior wire with source | source
  · rcases source with ⟨initial, shape⟩
    rw [shape]
    simp [sourceBinderPath, gateFirstPath, gateRoot, preparationRoot,
      prepContinuationPath, shellBodyPath, level]
    omega
  · rcases source with ⟨gateIndex, before, shape⟩
    rcases shape with shape | shape <;> rw [shape] <;>
      simp [sourceBinderPath, gateFirstPath, gateRoot, preparationRoot,
        gateContinuationPath, shellBodyPath, level] <;> omega

theorem compilerSourceBinder_before_gateSecond (prior : Circuit n)
    (wire : Fin n) :
    1 ≤ level (gateSecondPath n prior.length) -
      level (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior wire)) := by
  rcases compilerSourceWire_before prior wire with source | source
  · rcases source with ⟨initial, shape⟩
    rw [shape]
    simp [sourceBinderPath, gateSecondPath, gateRoot, preparationRoot,
      prepContinuationPath, shellBodyPath, level]
    omega
  · rcases source with ⟨gateIndex, before, shape⟩
    rcases shape with shape | shape <;> rw [shape] <;>
      simp [sourceBinderPath, gateSecondPath, gateRoot, preparationRoot,
        gateContinuationPath, shellBodyPath, level] <;> omega

def gateBlock : Path := [.arg, .body, .body]

@[simp] theorem gateBlock_eq_prepBlock : gateBlock = prepBlock := by
  rfl

def gateBinderPathsFrom (width : Nat) : Nat → Circuit width → List Path
  | _, [] => []
  | gateIndex, _ :: rest =>
      gateBinderPathsFrom width (gateIndex + 1) rest ++
        [gateContinuationPath width gateIndex ++ [.body],
         gateContinuationPath width gateIndex]

theorem preparedEnvironment_binderPaths_aux (count width : Nat) :
    (preparedEnvironment count).map (sourceBinderPath width) =
      priorPrepBinders count ++ shellBinders := by
  induction count with
  | zero =>
      simp [preparedEnvironment, sourceBinderPath, priorPrepBinders,
        shellBinders]
  | succ count ih =>
      rw [preparedEnvironment, List.map_cons, List.map_cons, ih,
        priorPrepBinders_succ]
      simp [sourceBinderPath, prepContinuationPath]

@[simp] theorem preparedEnvironment_binderPaths (width : Nat) :
    (preparedEnvironment width).map (sourceBinderPath width) =
      priorPrepBinders width ++ shellBinders := by
  exact preparedEnvironment_binderPaths_aux width width

theorem sourceEnvironmentFrom_binderPaths (width gateIndex : Nat)
    (environment : List SourceName) (prior : Circuit width) :
    (sourceEnvironmentFrom gateIndex environment prior).map
        (sourceBinderPath width) =
      gateBinderPathsFrom width gateIndex prior ++
        environment.map (sourceBinderPath width) := by
  induction prior generalizing gateIndex environment with
  | nil => simp [sourceEnvironmentFrom, gateBinderPathsFrom]
  | cons gate rest ih =>
      simp only [sourceEnvironmentFrom, gateBinderPathsFrom]
      rw [ih]
      simp [sourceBinderPath, List.append_assoc]

theorem gateRoot_succ (width gateIndex : Nat) :
    gateRoot width (gateIndex + 1) =
      gateRoot width gateIndex ++ gateBlock := by
  simp [gateRoot, gateBlock, flatten_replicate_succ_right,
    List.append_assoc]

@[simp] theorem compileGatesWith_drop_head (gateIndex : Nat)
    (wires : Fin n → SourceName) (gate : Gate n) (rest : Circuit n)
    (environment : List SourceName) :
    subterm?
        (lowerTotal (compileGatesWith n gateIndex wires (gate :: rest))
          environment)
        gateBlock =
      some
        (lowerTotal
          (compileGatesWith n (gateIndex + 1)
            (nextSourceWires gateIndex wires gate) rest)
          (.gateSecond gateIndex :: .gateFirst gateIndex :: environment)) := by
  cases gate with
  | h selected =>
      have nextEq :
          (fun index => if index = selected then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.h selected) := by
        funext index
        exact (nextSourceWires_h gateIndex wires selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        subterm?, nextEq]
  | t selected =>
      have nextEq :
          (fun index => if index = selected then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.t selected) := by
        funext index
        exact (nextSourceWires_t gateIndex wires selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        subterm?, nextEq]
  | cx control target distinct =>
      have nextEq :
          (fun index =>
            if index = control then .gateFirst gateIndex
            else if index = target then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.cx control target distinct) := by
        funext index
        exact (nextSourceWires_cx gateIndex wires control target index
          distinct).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        subterm?, nextEq]

theorem binderPathGo_compileGatesWith_drop_head (gateIndex : Nat)
    (wires : Fin n → SourceName) (gate : Gate n) (rest : Circuit n)
    (environment : List SourceName) (suffix : Path) (binders : List Path) :
    binderPathGo
        (lowerTotal (compileGatesWith n gateIndex wires (gate :: rest))
          environment)
        (gateBlock ++ suffix) (gateRoot n gateIndex) binders =
      binderPathGo
        (lowerTotal
          (compileGatesWith n (gateIndex + 1)
            (nextSourceWires gateIndex wires gate) rest)
          (.gateSecond gateIndex :: .gateFirst gateIndex :: environment))
        suffix (gateRoot n (gateIndex + 1))
        ([gateContinuationPath n gateIndex ++ [.body],
          gateContinuationPath n gateIndex] ++ binders) := by
  have nextRoot := gateRoot_succ n gateIndex
  cases gate with
  | h selected =>
      have nextEq :
          (fun index => if index = selected then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.h selected) := by
        funext index
        exact (nextSourceWires_h gateIndex wires selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        binderPathGo, gateContinuationPath, nextEq] at nextRoot ⊢
      exact nextRoot ▸ rfl
  | t selected =>
      have nextEq :
          (fun index => if index = selected then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.t selected) := by
        funext index
        exact (nextSourceWires_t gateIndex wires selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        binderPathGo, gateContinuationPath, nextEq] at nextRoot ⊢
      exact nextRoot ▸ rfl
  | cx control target distinct =>
      have nextEq :
          (fun index =>
            if index = control then .gateFirst gateIndex
            else if index = target then .gateSecond gateIndex
            else wires index) =
          nextSourceWires gateIndex wires (.cx control target distinct) := by
        funext index
        exact (nextSourceWires_cx gateIndex wires control target index
          distinct).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, gateBlock,
        binderPathGo, gateContinuationPath, nextEq] at nextRoot ⊢
      exact nextRoot ▸ rfl

theorem binderPathGo_compileGatesWith_drop_prefix (gateIndex : Nat)
    (wires : Fin n → SourceName) (prior suffixCircuit : Circuit n)
    (environment : List SourceName) (suffix : Path) (binders : List Path) :
    binderPathGo
        (lowerTotal
          (compileGatesWith n gateIndex wires (prior ++ suffixCircuit))
          environment)
        (List.flatten (List.replicate prior.length gateBlock) ++ suffix)
        (gateRoot n gateIndex) binders =
      binderPathGo
        (lowerTotal
          (compileGatesWith n (gateIndex + prior.length)
            (sourceWiresFrom gateIndex wires prior) suffixCircuit)
          (sourceEnvironmentFrom gateIndex environment prior))
        suffix (gateRoot n (gateIndex + prior.length))
        (gateBinderPathsFrom n gateIndex prior ++ binders) := by
  induction prior generalizing gateIndex wires environment binders with
  | nil => simp [sourceWiresFrom, sourceEnvironmentFrom,
      gateBinderPathsFrom]
  | cons gate rest ih =>
      rw [List.cons_append]
      rw [show List.flatten (List.replicate (gate :: rest).length gateBlock) =
          gateBlock ++ List.flatten (List.replicate rest.length gateBlock) by
        simp [List.replicate_succ]]
      rw [List.append_assoc]
      rw [binderPathGo_compileGatesWith_drop_head]
      simp only [List.length_cons, sourceWiresFrom, sourceEnvironmentFrom,
        gateBinderPathsFrom]
      rw [show gateIndex + (rest.length + 1) =
          gateIndex + 1 + rest.length by omega]
      rw [ih]
      simp [List.append_assoc]
theorem compileGatesWith_drop_prefix (gateIndex : Nat)
    (wires : Fin n → SourceName) (prior suffix : Circuit n)
    (environment : List SourceName) :
    subterm?
        (lowerTotal (compileGatesWith n gateIndex wires (prior ++ suffix))
          environment)
        (List.flatten (List.replicate prior.length gateBlock)) =
      some
        (lowerTotal
          (compileGatesWith n (gateIndex + prior.length)
            (sourceWiresFrom gateIndex wires prior) suffix)
          (sourceEnvironmentFrom gateIndex environment prior)) := by
  induction prior generalizing gateIndex wires environment with
  | nil => simp [compileGatesWith, sourceWiresFrom, sourceEnvironmentFrom,
      subterm?]
  | cons gate rest ih =>
      rw [List.cons_append]
      rw [show List.flatten (List.replicate (gate :: rest).length gateBlock) =
          gateBlock ++ List.flatten (List.replicate rest.length gateBlock) by
        simp [List.replicate_succ]]
      rw [subterm_append, compileGatesWith_drop_head]
      simp only [Option.bind_some, List.length_cons, sourceWiresFrom,
        sourceEnvironmentFrom]
      rw [show gateIndex + (rest.length + 1) =
          gateIndex + 1 + rest.length by omega]
      exact ih (gateIndex + 1) (nextSourceWires gateIndex wires gate)
        (.gateSecond gateIndex :: .gateFirst gateIndex :: environment)

theorem compiledTerm_at_gateRoot (positiveWidth : 0 < n)
    (prior suffix : Circuit n) :
    subterm? (compiledTerm (prior ++ suffix)) (gateRoot n prior.length) =
      some
        (lowerTotal
          (compileGatesWith n prior.length
            (sourceWiresFrom 0 wireName prior) suffix)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  rw [show gateRoot n prior.length = preparationRoot n ++
      List.flatten (List.replicate prior.length gateBlock) by
    rfl]
  rw [subterm_append]
  rw [show subterm?
      (prepProgram n
        (lowerTotal (compileGatesWith n 0 wireName (prior ++ suffix))
          (preparedEnvironment n)))
      (preparationRoot n) =
      some (lowerTotal (compileGatesWith n 0 wireName (prior ++ suffix))
        (preparedEnvironment n)) by
    simpa [prepChain] using subterm_prepProgram_at n 0
      (lowerTotal (compileGatesWith n 0 wireName (prior ++ suffix))
        (preparedEnvironment n))]
  simp only [Option.bind_some]
  simpa using compileGatesWith_drop_prefix 0 wireName prior suffix
    (preparedEnvironment n)

theorem binder_compiledTerm_after_prefix (positiveWidth : 0 < n)
    (prior suffixCircuit : Circuit n) (suffix : Path) :
    binderPath? (compiledTerm (prior ++ suffixCircuit))
        (gateRoot n prior.length ++ suffix) =
      binderPathGo
        (lowerTotal
          (compileGatesWith n prior.length
            (sourceWiresFrom 0 wireName prior) suffixCircuit)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior))
        suffix (gateRoot n prior.length)
        ((sourceEnvironmentFrom 0 (preparedEnvironment n) prior).map
          (sourceBinderPath n)) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  rw [show gateRoot n prior.length ++ suffix =
      preparationRoot n ++
        (List.flatten (List.replicate prior.length gateBlock) ++ suffix) by
    simp [gateRoot, gateBlock, prepBlock, List.append_assoc]]
  rw [binder_prepProgram_tail]
  rw [show preparationRoot n = gateRoot n 0 by simp [gateRoot]]
  rw [binderPathGo_compileGatesWith_drop_prefix]
  rw [sourceEnvironmentFrom_binderPaths,
    preparedEnvironment_binderPaths]
  simp

theorem compilerSourceWire_lookup_binder (prior : Circuit n)
    (wire : Fin n) :
    ∃ index,
      lookupName (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior) =
          some index ∧
      ((sourceEnvironmentFrom 0 (preparedEnvironment n) prior).map
          (sourceBinderPath n))[index - 1]? =
        some (sourceBinderPath n
          (sourceWiresFrom 0 wireName prior wire)) := by
  rcases compilerSourceWire_lookup prior wire with ⟨index, found⟩
  exact ⟨index, found,
    getElem?_map_lookupName found (sourceBinderPath n)⟩

theorem sourceEnvironmentFrom_preserves (gateIndex : Nat)
    (prior : Circuit n) (environment : List SourceName)
    {name : SourceName} (member : name ∈ environment) :
    name ∈ sourceEnvironmentFrom gateIndex environment prior := by
  induction prior generalizing gateIndex environment with
  | nil => exact member
  | cons gate rest ih =>
      apply ih (gateIndex + 1)
        (.gateSecond gateIndex :: .gateFirst gateIndex :: environment)
      simp [member]

theorem compilerConstant_lookup_binder (prior : Circuit n)
    (name : SourceName) (initialMember : name ∈ preparedEnvironment n) :
    ∃ index,
      lookupName name
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior) =
          some index ∧
      ((sourceEnvironmentFrom 0 (preparedEnvironment n) prior).map
          (sourceBinderPath n))[index - 1]? =
        some (sourceBinderPath n name) := by
  have member := sourceEnvironmentFrom_preserves 0 prior
    (preparedEnvironment n) initialMember
  rcases lookupName_some_of_mem member with ⟨index, found⟩
  exact ⟨index, found,
    getElem?_map_lookupName found (sourceBinderPath n)⟩

theorem h_mem_preparedEnvironment (n : Nat) :
    SourceName.h ∈ preparedEnvironment n := by
  induction n with
  | zero => simp [preparedEnvironment]
  | succ n ih => simp [preparedEnvironment, ih]

theorem t_mem_preparedEnvironment (n : Nat) :
    SourceName.t ∈ preparedEnvironment n := by
  induction n with
  | zero => simp [preparedEnvironment]
  | succ n ih => simp [preparedEnvironment, ih]

theorem c_mem_preparedEnvironment (n : Nat) :
    SourceName.c ∈ preparedEnvironment n := by
  induction n with
  | zero => simp [preparedEnvironment]
  | succ n ih => simp [preparedEnvironment, ih]

theorem binder_compiledTerm_current_h_input (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    binderPath? (compiledTerm (prior ++ .h wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior wire)) := by
  rw [show gateSecondPath n prior.length ++ [.arg] =
      gateRoot n prior.length ++ [.fn, .arg, .arg] by
    simp [gateSecondPath, List.append_assoc]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior (.h wire :: rest)
    [.fn, .arg, .arg]]
  rcases compilerSourceWire_lookup_binder prior wire with
    ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe]

theorem binder_compiledTerm_current_t_input (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    binderPath? (compiledTerm (prior ++ .t wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior wire)) := by
  rw [show gateSecondPath n prior.length ++ [.arg] =
      gateRoot n prior.length ++ [.fn, .arg, .arg] by
    simp [gateSecondPath, List.append_assoc]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior (.t wire :: rest)
    [.fn, .arg, .arg]]
  rcases compilerSourceWire_lookup_binder prior wire with
    ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe]

theorem binder_compiledTerm_current_h_native (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    binderPath? (compiledTerm (prior ++ .h wire :: rest))
        (gateSecondPath n prior.length ++ [.fn]) = some hBinderPath := by
  rw [show gateSecondPath n prior.length ++ [.fn] =
      gateRoot n prior.length ++ [.fn, .arg, .fn] by
    simp [gateSecondPath, List.append_assoc]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior (.h wire :: rest)
    [.fn, .arg, .fn]]
  rcases compilerConstant_lookup_binder prior .h
      (h_mem_preparedEnvironment n) with ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe, sourceBinderPath]

theorem binder_compiledTerm_current_t_native (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    binderPath? (compiledTerm (prior ++ .t wire :: rest))
        (gateSecondPath n prior.length ++ [.fn]) = some tBinderPath := by
  rw [show gateSecondPath n prior.length ++ [.fn] =
      gateRoot n prior.length ++ [.fn, .arg, .fn] by
    simp [gateSecondPath, List.append_assoc]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior (.t wire :: rest)
    [.fn, .arg, .fn]]
  rcases compilerConstant_lookup_binder prior .t
      (t_mem_preparedEnvironment n) with ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe, sourceBinderPath]

theorem binder_compiledTerm_current_cx_control (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n) :
    binderPath?
        (compiledTerm (prior ++ .cx control target distinct :: rest))
        (gateFirstPath n prior.length) =
      some (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior control)) := by
  rw [show gateFirstPath n prior.length =
      gateRoot n prior.length ++ [.fn, .fn, .arg] by
    simp [gateFirstPath]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior
    (.cx control target distinct :: rest) [.fn, .fn, .arg]]
  rcases compilerSourceWire_lookup_binder prior control with
    ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe]

theorem binder_compiledTerm_current_cx_target (positiveWidth : 0 < n)
    (prior : Circuit n) (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n) :
    binderPath?
        (compiledTerm (prior ++ .cx control target distinct :: rest))
        (gateSecondPath n prior.length) =
      some (sourceBinderPath n
        (sourceWiresFrom 0 wireName prior target)) := by
  rw [show gateSecondPath n prior.length =
      gateRoot n prior.length ++ [.fn, .arg] by
    simp [gateSecondPath]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior
    (.cx control target distinct :: rest) [.fn, .arg]]
  rcases compilerSourceWire_lookup_binder prior target with
    ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
    found, binder, indexNe]

theorem binder_compiledTerm_current_c (positiveWidth : 0 < n)
    (prior : Circuit n) (gate : Gate n) (rest : Circuit n) :
    binderPath? (compiledTerm (prior ++ gate :: rest))
        (gateOccurrence n prior.length) = some cBinderPath := by
  rw [show gateOccurrence n prior.length =
      gateRoot n prior.length ++ [.fn, .fn, .fn] by
    simp [gateOccurrence]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior (gate :: rest)
    [.fn, .fn, .fn]]
  rcases compilerConstant_lookup_binder prior .c
      (c_mem_preparedEnvironment n) with ⟨index, found, binder⟩
  have indexNe : index ≠ 0 := Nat.ne_of_gt (lookupName_positive found)
  cases gate <;>
    simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
      found, binder, indexNe, sourceBinderPath]

def compiledTailAfter (prior : Circuit n) (gate : Gate n)
    (rest : Circuit n) : Term :=
  lowerTotal
    (compileGatesWith n (prior.length + 1)
      (nextSourceWires prior.length
        (sourceWiresFrom 0 wireName prior) gate) rest)
    (.gateSecond prior.length :: .gateFirst prior.length ::
      sourceEnvironmentFrom 0 (preparedEnvironment n) prior)

theorem subterm_compiledTerm_current_continuation
    (positiveWidth : 0 < n) (prior : Circuit n) (gate : Gate n)
    (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ gate :: rest))
        (gateContinuationPath n prior.length) =
      some (.lam (.lam (compiledTailAfter prior gate rest))) := by
  rw [show gateContinuationPath n prior.length =
      gateRoot n prior.length ++ [.arg] by
    simp [gateContinuationPath]]
  rw [subterm_append,
    compiledTerm_at_gateRoot positiveWidth prior (gate :: rest)]
  cases gate with
  | h selected =>
      have nextEq :
          (fun index => if index = selected then
            .gateSecond prior.length
          else sourceWiresFrom 0 wireName prior index) =
          nextSourceWires prior.length
            (sourceWiresFrom 0 wireName prior) (.h selected) := by
        funext index
        exact (nextSourceWires_h prior.length
          (sourceWiresFrom 0 wireName prior) selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, subterm?,
        compiledTailAfter, nextEq]
  | t selected =>
      have nextEq :
          (fun index => if index = selected then
            .gateSecond prior.length
          else sourceWiresFrom 0 wireName prior index) =
          nextSourceWires prior.length
            (sourceWiresFrom 0 wireName prior) (.t selected) := by
        funext index
        exact (nextSourceWires_t prior.length
          (sourceWiresFrom 0 wireName prior) selected index).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, subterm?,
        compiledTailAfter, nextEq]
  | cx control target distinct =>
      have nextEq :
          (fun index =>
            if index = control then .gateFirst prior.length
            else if index = target then .gateSecond prior.length
            else sourceWiresFrom 0 wireName prior index) =
          nextSourceWires prior.length
            (sourceWiresFrom 0 wireName prior)
            (.cx control target distinct) := by
        funext index
        exact (nextSourceWires_cx prior.length
          (sourceWiresFrom 0 wireName prior) control target index distinct).symm
      simp [compileGatesWith, cnot, apps, lams, lowerTotal, subterm?,
        compiledTailAfter, nextEq]

theorem subterm_compiledTerm_current_continuation_body
    (positiveWidth : 0 < n) (prior : Circuit n) (gate : Gate n)
    (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ gate :: rest))
        (gateContinuationPath n prior.length ++ [.body]) =
      some (.lam (compiledTailAfter prior gate rest)) := by
  rw [subterm_append,
    subterm_compiledTerm_current_continuation positiveWidth prior gate rest]
  simp [subterm?]

theorem subterm_compiledTerm_current_continuation_body_body
    (positiveWidth : 0 < n) (prior : Circuit n) (gate : Gate n)
    (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ gate :: rest))
        (gateContinuationPath n prior.length ++ [.body, .body]) =
      some (compiledTailAfter prior gate rest) := by
  rw [subterm_append,
    subterm_compiledTerm_current_continuation positiveWidth prior gate rest]
  simp [subterm?]

theorem cArguments_compiledTerm_current (positiveWidth : 0 < n)
    (prior : Circuit n) (gate : Gate n) (rest : Circuit n) :
    cArguments? (compiledTerm (prior ++ gate :: rest))
        (gateOccurrence n prior.length) =
      some (gateFirstPath n prior.length,
        gateSecondPath n prior.length,
        gateContinuationPath n prior.length) := by
  simp [cArguments?, gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, subterm_append,
    compiledTerm_at_gateRoot positiveWidth prior (gate :: rest)]
  cases gate <;>
    simp [compileGatesWith, cnot, apps, lams, lowerTotal, subterm?] <;> rfl

@[simp] theorem advanceBoundary_wires (gateIndex : Nat) (gate : Gate n)
    (outputBit : Bool) (data : BoundaryData n) :
    (advanceBoundary gateIndex gate outputBit data).wires =
      nextWireKeys n gateIndex data.wires gate := by
  cases gate <;> rfl

@[simp] theorem advanceBoundary_storage (gateIndex : Nat) (gate : Gate n)
    (outputBit : Bool) (data : BoundaryData n) :
    (advanceBoundary gateIndex gate outputBit data).storage =
      nextBoundaryStorage gateIndex data.wires data.storage gate := by
  cases gate <;> rfl

theorem scatterBoundary_wires (gateIndex : Nat) (gate : Gate n)
    (branch output : WeightedBoundaryData n)
    (membership : output ∈ scatterBoundary gateIndex gate branch) :
    output.data.wires = nextWireKeys n gateIndex branch.data.wires gate := by
  cases gate with
  | h wire =>
      simp [scatterBoundary] at membership
      rcases membership with rfl | rfl <;> rfl
  | t wire =>
      simp [scatterBoundary] at membership
      subst output
      rfl
  | cx control target distinct =>
      simp [scatterBoundary] at membership
      subst output
      rfl

theorem scatterBoundary_storage (gateIndex : Nat) (gate : Gate n)
    (branch output : WeightedBoundaryData n)
    (membership : output ∈ scatterBoundary gateIndex gate branch) :
    output.data.storage =
      nextBoundaryStorage gateIndex branch.data.wires branch.data.storage
        gate := by
  cases gate with
  | h wire =>
      simp [scatterBoundary] at membership
      rcases membership with rfl | rfl <;> rfl
  | t wire =>
      simp [scatterBoundary] at membership
      subst output
      rfl
  | cx control target distinct =>
      simp [scatterBoundary] at membership
      subst output
      rfl

theorem boundaryPathsFrom_wires (gateIndex : Nat) (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) (base : Fin n → Key)
    (baseWires : ∀ branch ∈ branches, branch.data.wires = base)
    (output : WeightedBoundaryData n)
    (membership : output ∈ boundaryPathsFrom gateIndex circuit branches) :
    output.data.wires = wireKeysFrom gateIndex base circuit := by
  induction circuit generalizing gateIndex branches base with
  | nil =>
      simp [boundaryPathsFrom] at membership
      exact baseWires output membership
  | cons gate rest ih =>
      apply ih (gateIndex := gateIndex + 1)
        (branches := branches.flatMap (scatterBoundary gateIndex gate))
        (base := nextWireKeys n gateIndex base gate)
      · intro next nextMember
        rcases List.mem_flatMap.mp nextMember with
          ⟨source, sourceMember, produced⟩
        rw [scatterBoundary_wires gateIndex gate source next produced,
          baseWires source sourceMember]
      · exact membership

theorem boundaryPathsFrom_storage (gateIndex : Nat) (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) (baseWires : Fin n → Key)
    (baseStorage : List Store)
    (aligned : ∀ branch ∈ branches,
      branch.data.wires = baseWires ∧ branch.data.storage = baseStorage)
    (output : WeightedBoundaryData n)
    (membership : output ∈ boundaryPathsFrom gateIndex circuit branches) :
    output.data.storage =
      boundaryStorageFrom gateIndex baseWires baseStorage circuit := by
  induction circuit generalizing gateIndex branches baseWires baseStorage with
  | nil =>
      simp [boundaryPathsFrom, boundaryStorageFrom] at membership ⊢
      exact (aligned output membership).2
  | cons gate rest ih =>
      apply ih (gateIndex := gateIndex + 1)
        (branches := branches.flatMap (scatterBoundary gateIndex gate))
        (baseWires := nextWireKeys n gateIndex baseWires gate)
        (baseStorage :=
          nextBoundaryStorage gateIndex baseWires baseStorage gate)
      · intro next nextMember
        rcases List.mem_flatMap.mp nextMember with
          ⟨source, sourceMember, produced⟩
        constructor
        · rw [scatterBoundary_wires gateIndex gate source next produced,
            (aligned source sourceMember).1]
        · rw [scatterBoundary_storage gateIndex gate source next produced,
            (aligned source sourceMember).1,
            (aligned source sourceMember).2]
      · exact membership

theorem compiledBoundaryPaths_wires (circuit : Circuit n) (word : Word n)
    (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    output.data.wires = wireKeysFrom 0 (initialWireKeys n) circuit := by
  apply boundaryPathsFrom_wires 0 circuit
    [⟨initialBoundaryData word, QalcFiniteGram.one⟩]
    (initialWireKeys n)
  · intro branch member
    simp at member
    subst branch
    rfl
  · exact membership

theorem compiledBoundaryPaths_storage (circuit : Circuit n) (word : Word n)
    (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    output.data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit := by
  apply boundaryPathsFrom_storage 0 circuit
    [⟨initialBoundaryData word, QalcFiniteGram.one⟩]
    (initialWireKeys n) (prepStorage n)
  · intro branch member
    simp at member
    subst branch
    exact ⟨rfl, rfl⟩
  · exact membership

theorem compiledBoundaryPath_storageWF (prior : Circuit n) (word : Word n)
    (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths prior word) :
    BoundaryStorageWFAt prior.length
      (sourceWiresFrom 0 wireName prior)
      output.data.wires output.data.storage := by
  rw [compiledBoundaryPaths_wires prior word output membership,
    compiledBoundaryPaths_storage prior word output membership]
  exact compilerBoundaryStorageWF prior

structure CompiledBoundaryWFAt (prior : Circuit n)
    (data : BoundaryData n) : Prop where
  machine : BoundaryWFAt prior.length data
  storage : BoundaryStorageWFAt prior.length
    (sourceWiresFrom 0 wireName prior) data.wires data.storage

theorem compiledBoundaryPath_fullWF (prior : Circuit n) (word : Word n)
    (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths prior word) :
    CompiledBoundaryWFAt prior output.data := by
  constructor
  · exact compiledBoundaryPaths_wf prior word output membership
  · exact compiledBoundaryPath_storageWF prior word output membership

@[simp] theorem gateCertificate_next (width gateIndex : Nat)
    (wires : Fin width → Key) (gate : Gate width)
    (rest : Circuit width) :
    gateCertificate width gateIndex wires (gate :: rest) =
      (match gate with
       | .h wire =>
          [(gateRoot width gateIndex ++ [.fn, .arg, .arg], [wires wire])]
       | .t wire =>
          [(gateRoot width gateIndex ++ [.fn, .arg, .arg], [wires wire])]
       | .cx _ _ _ => []) ++
      gateCertificate width (gateIndex + 1)
        (nextWireKeys width gateIndex wires gate) rest := by
  cases gate <;> rfl

theorem gateCertificate_append (width gateIndex : Nat)
    (wires : Fin width → Key) (prior suffix : Circuit width) :
    gateCertificate width gateIndex wires (prior ++ suffix) =
      gateCertificate width gateIndex wires prior ++
        gateCertificate width (gateIndex + prior.length)
          (wireKeysFrom gateIndex wires prior) suffix := by
  induction prior generalizing gateIndex wires with
  | nil => simp [gateCertificate, wireKeysFrom]
  | cons gate rest ih =>
      rw [List.cons_append, gateCertificate_next, gateCertificate_next]
      rw [ih]
      simp [wireKeysFrom, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

theorem preparationCertificate_misses_gate (width gateIndex : Nat)
    (path : Path) (atGate : path = gateRoot width gateIndex ++ [.fn, .arg, .arg]) :
    List.find? (fun item : Path × List Key => item.1 == path)
      (preparationCertificate width) = none := by
  subst path
  rw [List.find?_eq_none]
  intro item membership selected
  simp only [preparationCertificate, List.mem_map] at membership
  obtain ⟨preparedWire, inRange, rfl⟩ := membership
  have preparedBefore : preparedWire < width := List.mem_range.mp inRange
  have pathEqual :
      preparationRoot preparedWire ++ [.fn, .arg, .arg] =
        gateRoot width gateIndex ++ [.fn, .arg, .arg] :=
    beq_iff_eq.mp selected
  have lengthEqual := congrArg List.length pathEqual
  simp [preparationRoot, gateRoot, shellBodyPath] at lengthEqual
  omega

theorem earlierGateCertificate_misses (width start : Nat)
    (wires : Fin width → Key) (prior : Circuit width)
    (path : Path)
    (atNext : path = gateRoot width (start + prior.length) ++
      [.fn, .arg, .arg]) :
    List.find? (fun item : Path × List Key => item.1 == path)
      (gateCertificate width start wires prior) = none := by
  induction prior generalizing start wires with
  | nil => simp [gateCertificate]
  | cons gate rest ih =>
      rw [gateCertificate_next]
      simp only [List.length_cons] at atNext
      cases gate with
      | h selected =>
          simp only [List.find?_append, List.find?_cons, List.find?_nil]
          have headMiss :
              ((gateRoot width start ++ [.fn, .arg, .arg]) == path) = false := by
            cases selectedHead :
                (gateRoot width start ++ [.fn, .arg, .arg]) == path with
            | false => rfl
            | true =>
                have equal := beq_iff_eq.mp selectedHead
                rw [atNext] at equal
                have lengthEqual := congrArg List.length equal
                simp [gateRoot, preparationRoot, shellBodyPath] at lengthEqual
                omega
          rw [headMiss]
          apply ih
          rw [atNext]
          congr 2
          omega
      | t selected =>
          simp only [List.find?_append, List.find?_cons, List.find?_nil]
          have headMiss :
              ((gateRoot width start ++ [.fn, .arg, .arg]) == path) = false := by
            cases selectedHead :
                (gateRoot width start ++ [.fn, .arg, .arg]) == path with
            | false => rfl
            | true =>
                have equal := beq_iff_eq.mp selectedHead
                rw [atNext] at equal
                have lengthEqual := congrArg List.length equal
                simp [gateRoot, preparationRoot, shellBodyPath] at lengthEqual
                omega
          rw [headMiss]
          apply ih
          rw [atNext]
          congr 2
          omega
      | cx control target distinct =>
          simp only [List.nil_append]
          apply ih
          rw [atNext]
          congr 2
          omega

theorem compilerCertificate_lookup_after_prefix_h
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    certificateLookup
        (compilerCertificate (prior ++ .h wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some [wireKeysFrom 0 (initialWireKeys n) prior wire] := by
  have prepMiss := preparationCertificate_misses_gate n prior.length
    (gateSecondPath n prior.length ++ [.arg]) (by
      simp [gateSecondPath])
  have earlierMiss := earlierGateCertificate_misses n 0
    (initialWireKeys n) prior
    (gateSecondPath n prior.length ++ [.arg]) (by
      simp [gateSecondPath])
  rw [compilerCertificate, gateCertificate_append]
  unfold certificateLookup
  rw [List.find?_append, prepMiss, List.find?_append, earlierMiss]
  simp [gateCertificate, gateSecondPath]

theorem compilerCertificate_lookup_after_prefix_t
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    certificateLookup
        (compilerCertificate (prior ++ .t wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some [wireKeysFrom 0 (initialWireKeys n) prior wire] := by
  have prepMiss := preparationCertificate_misses_gate n prior.length
    (gateSecondPath n prior.length ++ [.arg]) (by
      simp [gateSecondPath])
  have earlierMiss := earlierGateCertificate_misses n 0
    (initialWireKeys n) prior
    (gateSecondPath n prior.length ++ [.arg]) (by
      simp [gateSecondPath])
  rw [compilerCertificate, gateCertificate_append]
  unfold certificateLookup
  rw [List.find?_append, prepMiss, List.find?_append, earlierMiss]
  simp [gateCertificate, gateSecondPath]

end QalcGate2ContextualCompiler
