import Gate2PhysicalRefinement

/-!
# Compiler gate boundaries for the physical qALC machine

This file gives the literal actual-machine state represented by the ideal
schedule's boundary projection.  Unlike `PhysicalBranch`, the data below retain
every frame and predecessor record; the logical word is redundant bookkeeping
used to state the refinement.
-/

namespace QalcGate2PhysicalBoundary

open QalcFiniteGram QalcComposedMachine QalcGate2Compiler
  QalcGate2PhysicalCompiler QalcGate2PhysicalEvolution
  QalcGate2PhysicalRefinement

@[simp] theorem preparationRoot_ne_nil (index : Nat) :
    preparationRoot index ≠ [] := by
  simp [preparationRoot, shellBodyPath]

@[simp] theorem tBinderPath_ne_prepContinuation (index : Nat) :
    tBinderPath ≠ prepContinuationPath index := by
  intro equal
  have lengths := congrArg List.length equal
  simp [tBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem tBinderPath_ne_prepContinuation_body (index : Nat) :
    tBinderPath ≠ prepContinuationPath index ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [tBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem tBinderPath_ne_tVirtual :
    tBinderPath ≠ [.fn, .fn] := by
  simp [tBinderPath]

@[simp] theorem storedPortBindings_tBinder_prepStorage (count : Nat) :
    storedPortBindings tBinderPath (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory]

@[simp] theorem storedPortBindings_cPath_prepStorage (count : Nat) :
    storedPortBindings [.fn, .fn, .fn, .body, .body]
        (prepStorage count) = [] := by
  simpa [cBinderPath] using storedPortBindings_cBinder_prepStorage count

@[simp] theorem storedPortBindings_tPath_prepStorage (count : Nat) :
    storedPortBindings [.fn, .fn, .fn, .body]
        (prepStorage count) = [] := by
  simpa [tBinderPath] using storedPortBindings_tBinder_prepStorage count

@[simp] theorem storedPortBindings_hPath_prepStorage (count : Nat) :
    storedPortBindings [.fn, .fn, .fn] (prepStorage count) = [] := by
  simpa [hBinderPath] using storedPortBindings_hBinder_prepStorage count

@[simp] theorem storedReturnOccurrences_hPath_prepStorage (count : Nat) :
    storedReturnOccurrences [.fn, .fn, .fn] (prepStorage count) = [] := by
  simpa [hBinderPath] using
    storedReturnOccurrences_hBinder_prepStorage count

@[simp] theorem storedPortBindings_shellArgument_prepStorage (count : Nat) :
    storedPortBindings [.arg] (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory, prepContinuationPath,
        preparationRoot, shellBodyPath]

theorem preparationOccurrence_ne_prepContinuation
    (fresh stored : Nat) :
    preparationOccurrence fresh ≠ prepContinuationPath stored := by
  intro equal
  have lengths := congrArg List.length equal
  simp [preparationOccurrence, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths
  omega

theorem preparationOccurrence_ne_prepContinuation_body
    (fresh stored : Nat) :
    preparationOccurrence fresh ≠
      prepContinuationPath stored ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [preparationOccurrence, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths
  omega

@[simp] theorem storedPortBindings_preparationOccurrence_prepStorage
    (fresh stored : Nat) :
    storedPortBindings (preparationOccurrence fresh) (prepStorage stored) =
      [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory,
        preparationOccurrence_ne_prepContinuation,
        preparationOccurrence_ne_prepContinuation_body]

@[simp] theorem storedPortBindings_gateOccurrencePath_prepStorage
    (fresh stored : Nat) :
    storedPortBindings
        (preparationRoot fresh ++ [.fn, .fn, .fn])
        (prepStorage stored) = [] := by
  simpa [preparationOccurrence] using
    storedPortBindings_preparationOccurrence_prepStorage fresh stored

theorem prepContinuation_body_ne_continuation (left right : Nat) :
    prepContinuationPath left ++ [.body] ≠ prepContinuationPath right := by
  intro equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengths
  omega

theorem prepContinuation_body_ne_body (left right : Nat)
    (different : left ≠ right) :
    prepContinuationPath left ++ [.body] ≠
      prepContinuationPath right ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengths
  exact different (by omega)

theorem prepContinuation_ne (left right : Nat) (different : left ≠ right) :
    prepContinuationPath left ≠ prepContinuationPath right := by
  intro equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengths
  exact different (by omega)

@[simp] theorem storedPortBindings_futureWire (stored fresh : Nat)
    (notFuture : stored ≤ fresh) :
    storedPortBindings (prepContinuationPath fresh ++ [.body])
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      have different : fresh ≠ stored := by omega
      have priorNotFuture : stored ≤ fresh := by omega
      rw [prepStorage_succ, storedPortBindings_append,
        ih priorNotFuture]
      simp [storedPortBindings, prepHistory,
        prepContinuation_body_ne_continuation,
        prepContinuation_ne _ _ different]

@[simp] theorem storedPortBindings_initialWire (width : Nat)
    (wire : Fin width) :
    storedPortBindings (prepContinuationPath wire.val ++ [.body])
        (prepStorage width) = [(prepInvoked wire.val, .second)] := by
  induction width with
  | zero => exact Fin.elim0 wire
  | succ count ih =>
      refine Fin.lastCases ?_ (fun prior => ?_) wire
      · change
          storedPortBindings (prepContinuationPath count ++ [.body])
              (prepStorage (count + 1)) = [(prepInvoked count, .second)]
        rw [prepStorage_succ, storedPortBindings_append,
          storedPortBindings_futureWire count count (Nat.le_refl count)]
        simp [storedPortBindings, prepHistory]
      · change
          storedPortBindings (prepContinuationPath prior.val ++ [.body])
              (prepStorage (count + 1)) =
            [(prepInvoked prior.val, .second)]
        rw [prepStorage_succ, storedPortBindings_append, ih prior]
        have different : prior.val ≠ count := by omega
        simp [storedPortBindings, prepHistory,
          prepContinuation_body_ne_continuation,
          prepContinuation_ne _ _ different]

@[simp] theorem storedPortBindings_initialWire_prepPark (width : Nat)
    (wire : Fin width) :
    storedPortBindings (prepContinuationPath wire.val ++ [.body])
        (prepPark width :: prepStorage width) =
      [(prepInvoked wire.val, .second)] := by
  change storedPortBindings (prepContinuationPath wire.val ++ [.body])
      (prepStorage width) = _
  exact storedPortBindings_initialWire width wire

@[simp] theorem deliverPort_tBinder_prepStorage (term : Term)
    (count : Nat) (occurrence : Path) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort term
      ⟨tBinderPath, .up, log, lp occurrence slice :: tape,
        vb, frames, prepStorage count⟩ = none := by
  simp [deliverPort, storedPortBindings_tBinder_prepStorage]

@[simp] theorem storedPortBindings_tBinder_prepPark (width : Nat) :
    storedPortBindings tBinderPath
      (prepPark width :: prepStorage width) = [] := by
  change storedPortBindings tBinderPath (prepStorage width) = []
  exact storedPortBindings_tBinder_prepStorage width

@[simp] theorem storedPortBindings_tBinder_expanded_prepPark (width : Nat) :
    storedPortBindings [.fn, .fn, .fn, .body]
      (prepPark width :: prepStorage width) = [] := by
  simpa [tBinderPath] using storedPortBindings_tBinder_prepPark width

@[simp] theorem finishCStage_cquery (port : Port) (invoked logged : Entry)
    (path : Path) (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames,
        .cquery port invoked logged :: storage⟩ = none := by
  rfl

@[simp] theorem storedPortBindings_cpark_cquery
    (path : Path) (parkInvoked : Entry) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation : Path) (queryPort : Port)
    (queryInvoked queryLogged : Entry) (storage : List Store) :
    storedPortBindings path
        (.cpark parkInvoked bit descriptor descriptors occurrence continuation ::
          .cquery queryPort queryInvoked queryLogged :: storage) =
      storedPortBindings path storage := by
  rfl

@[simp] theorem deliverPort_hBinder_prepStorage (term : Term)
    (count : Nat) (occurrence : Path) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort term
      ⟨hBinderPath, .up, log, lp occurrence slice :: tape,
        vb, frames, prepStorage count⟩ = none := by
  simp [deliverPort, storedPortBindings_hBinder_prepStorage]

def circuitBoundaryPath (width completed : Nat) : Path :=
  match completed with
  | 0 => inputBoundaryPath width
  | gateIndex + 1 => gateBoundaryPath width gateIndex

def gateInvoked (width gateIndex : Nat) : Entry :=
  lp (gateOccurrence width gateIndex) []

def gateFirstPath (width gateIndex : Nat) : Path :=
  gateRoot width gateIndex ++ [.fn, .fn, .arg]

def gateSecondPath (width gateIndex : Nat) : Path :=
  gateRoot width gateIndex ++ [.fn, .arg]

def gateContinuationPath (width gateIndex : Nat) : Path :=
  gateRoot width gateIndex ++ [.arg]

def gateMarker (port : Port) (width gateIndex : Nat) : Entry :=
  cgam port (gateInvoked width gateIndex)
    (gateOccurrence width gateIndex)
    (gateFirstPath width gateIndex)
    (gateSecondPath width gateIndex)
    (gateContinuationPath width gateIndex)

@[simp] theorem kernelEntry_gateMarker (port : Port)
    (width gateIndex : Nat) :
    kernelEntry (gateMarker port width gateIndex) =
      gateMarker port width gateIndex := by
  rfl

@[simp] theorem composedEntry_gateMarker (port : Port)
    (width gateIndex : Nat) :
    composedEntry (gateMarker port width gateIndex) =
      gateMarker port width gateIndex := by
  rfl

@[simp] theorem asRB_gateMarker (port : Port) (width gateIndex : Nat) :
    asRB? (gateMarker port width gateIndex) = none := by
  rfl

@[simp] theorem asCGam_gateMarker (port : Port) (width gateIndex : Nat) :
    asCGam? (gateMarker port width gateIndex) =
      some (port, gateInvoked width gateIndex,
        gateOccurrence width gateIndex, gateFirstPath width gateIndex,
        gateSecondPath width gateIndex, gateContinuationPath width gateIndex) := by
  rfl

@[simp] theorem isBullet_gateMarker (port : Port) (width gateIndex : Nat) :
    isBullet (gateMarker port width gateIndex) = false := by
  rfl

@[simp] theorem lpLike_gateMarker (port : Port) (width gateIndex : Nat) :
    lpLike (gateMarker port width gateIndex) = true := by
  rfl

@[simp] theorem deliverPort_shellArgument_gateMarker_prepStorage
    (term : Term) (width gateIndex : Nat) (port : Port)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨[.arg], .up, log, gateMarker port width gateIndex :: tape,
        vb, frames, prepStorage width⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have directionEq :
      (Direction.up == Direction.up) = true := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  have downNotUp :
      (Direction.down != Direction.up) = true := by native_decide
  have downEqUp :
      (Direction.down == Direction.up) = false := by native_decide
  simp only [deliverPort, directionSame, Bool.false_eq_true, if_false]
  split <;> simp_all [storedPortBindings_shellArgument_prepStorage]

@[simp] theorem deliverPort_preparationOccurrence_prepStorage
    (term : Term) (fresh stored : Nat) (head : Entry)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨preparationOccurrence fresh, .up, log, head :: tape,
        vb, frames, prepStorage stored⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  simp only [deliverPort, directionSame, Bool.false_eq_true, if_false]
  split <;> simp_all [storedPortBindings_preparationOccurrence_prepStorage]

@[simp] theorem deliverPort_gateOccurrencePath_prepStorage
    (term : Term) (fresh stored : Nat) (head : Entry)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨preparationRoot fresh ++ [.fn, .fn, .fn], .up, log,
        head :: tape, vb, frames, prepStorage stored⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  simp only [deliverPort, directionSame, Bool.false_eq_true, if_false]
  split <;> simp_all [storedPortBindings_gateOccurrencePath_prepStorage]

def gateFirstLogged (width gateIndex : Nat) : Entry :=
  lp (gateFirstPath width gateIndex ++ [.body, .body]) []

theorem gateFirstPath_zero (width : Nat) :
    gateFirstPath width 0 = prepFirstPath width := by
  simp [gateFirstPath, gateRoot, prepFirstPath]

theorem gateSecondPath_zero (width : Nat) :
    gateSecondPath width 0 = prepSecondPath width := by
  simp [gateSecondPath, gateRoot, prepSecondPath]

theorem gateContinuationPath_zero (width : Nat) :
    gateContinuationPath width 0 = prepContinuationPath width := by
  simp [gateContinuationPath, gateRoot, prepContinuationPath]

theorem gateFirstLogged_zero (width : Nat) :
    gateFirstLogged width 0 = prepFirstLogged width := by
  simp [gateFirstLogged, gateFirstPath_zero, prepFirstLogged]

theorem gateInvoked_zero (width : Nat) :
    gateInvoked width 0 = prepInvoked width := by
  simp [gateInvoked, prepInvoked, gateOccurrence, gateRoot,
    preparationOccurrence]

theorem gateMarker_zero (port : Port) (width : Nat) :
    gateMarker port width 0 = prepMarker port width := by
  simp [gateMarker, prepMarker, gateInvoked_zero, gateOccurrence,
    gateRoot, preparationOccurrence, gateFirstPath_zero,
    gateSecondPath_zero, gateContinuationPath_zero]

theorem gateFirstPath_ne_prepContinuation
    (width gateIndex stored : Nat) :
    gateFirstPath width gateIndex ≠ prepContinuationPath stored := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateFirstPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

theorem gateFirstPath_ne_prepContinuation_body
    (width gateIndex stored : Nat) :
    gateFirstPath width gateIndex ≠
      prepContinuationPath stored ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [gateFirstPath, gateRoot, prepContinuationPath,
    preparationRoot, shellBodyPath] at lengths
  omega

@[simp] theorem storedPortBindings_gateFirstPath_prepStorage
    (width gateIndex stored : Nat) :
    storedPortBindings (gateFirstPath width gateIndex)
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory,
        gateFirstPath_ne_prepContinuation,
        gateFirstPath_ne_prepContinuation_body]

@[simp] theorem deliverPort_gateFirstLogged_prepStorage
    (term : Term) (width gateIndex stored : Nat)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨gateFirstPath width gateIndex, .up, log,
        gateFirstLogged width gateIndex :: tape, vb, frames,
        prepStorage stored⟩ = none := by
  simp [deliverPort, gateFirstLogged,
    storedPortBindings_gateFirstPath_prepStorage]

@[simp] theorem deliverPort_futurePrepFirstLogged_prepStorage
    (term : Term) (fresh stored : Nat)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨prepFirstPath fresh, .up, log, prepFirstLogged fresh :: tape,
        vb, frames, prepStorage stored⟩ = none := by
  simpa [gateFirstPath_zero, gateFirstLogged_zero] using
    deliverPort_gateFirstLogged_prepStorage term fresh 0 stored log tape vb
      frames

theorem gateMarker_ne_prepInvoked (port : Port) (width gateIndex stored : Nat) :
    gateMarker port width gateIndex ≠ prepInvoked stored := by
  simp [gateMarker, cgam, prepInvoked, lp, entry]

@[simp] theorem gateMarker_beq_prepInvoked (port : Port)
    (width gateIndex stored : Nat) :
    (gateMarker port width gateIndex == prepInvoked stored) = false :=
  beq_eq_false_iff_ne.mpr
    (gateMarker_ne_prepInvoked port width gateIndex stored)

@[simp] theorem findHistory_gateMarker_prepStorage (port : Port)
    (width gateIndex stored : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if gateMarker port width gateIndex == invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      rw [List.findSome?_append, ih]
      simp [prepHistory, gateMarker_ne_prepInvoked]

theorem findHistoryEq_gateMarker_prepStorage (port : Port)
    (width gateIndex stored : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if gateMarker port width gateIndex = invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, List.findSome?_append, ih]
      simp [prepHistory, gateMarker_ne_prepInvoked]

@[simp] theorem matchingHistoryInvocations_gateMarker_prepStorage
    (port : Port) (width gateIndex stored : Nat) :
    matchingHistoryInvocations (gateMarker port width gateIndex)
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, matchingHistoryInvocations_append, ih]
      simp [matchingHistoryInvocations, prepHistory,
        gateMarker_ne_prepInvoked]

theorem gam_ne_prepInvoked (name : GateName) (stored : Nat) :
    gam name ≠ prepInvoked stored := by
  simp [gam, prepInvoked, lp, entry]

theorem findHistoryEq_gam_prepStorage (name : GateName) (stored : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if gam name = invoked then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, List.findSome?_append, ih]
      simp [prepHistory, gam_ne_prepInvoked]

@[simp] theorem matchingHistoryInvocations_gam_prepStorage
    (name : GateName) (stored : Nat) :
    matchingHistoryInvocations (gam name) (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, matchingHistoryInvocations_append, ih]
      simp [matchingHistoryInvocations, prepHistory, gam_ne_prepInvoked]

@[simp] theorem closeVirtualPort_gam_cquery_cpark_prepStorage
    (name : GateName) (firstQueryPort : Port)
    (width stored : Nat) (path : Path) (tape : List Entry)
    (firstQueryInvoked firstQueryLogged parkInvoked : Entry)
    (parkBit : Bool) (descriptor : Descriptor)
    (descriptors : List FrameDescriptor) (occurrence continuation : Path)
    (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [gam name, gateMarker .second width 0], bullet :: tape,
        none, frames,
        .cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
          .cpark parkInvoked parkBit descriptor descriptors
            occurrence continuation :: prepStorage stored⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [closeVirtualPort, directionSame, bulletIs, headBang_cons,
    matchingHistoryInvocations_gam_prepStorage]

@[simp] theorem filterCparkBEq_any_prepStorage (invoked : Entry)
    (stored start : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if (other == invoked) = true then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepStorage stored).zipIdx start) = [] := by
  induction stored generalizing start with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, List.zipIdx_append, List.filterMap_append]
      rw [show start + [Store.bundle [], prepHistory stored].length =
          start + 2 by simp]
      rw [ih (start + 2)]
      simp [prepHistory]

@[simp] theorem filterCparkEq_any_prepStorage (invoked : Entry)
    (stored start : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = invoked then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepStorage stored).zipIdx start) = [] := by
  simpa only [beq_iff_eq] using
    filterCparkBEq_any_prepStorage invoked stored start

@[simp] theorem filterCparkBEq_one_cquery_cpark_prepStorage
    (invoked firstQueryInvoked firstQueryLogged
      secondQueryInvoked secondQueryLogged : Entry)
    (firstQueryPort secondQueryPort : Port) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation : Path) (stored start : Nat) :
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
        ((.cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
          .cpark invoked bit descriptor descriptors occurrence continuation ::
          .cquery secondQueryPort secondQueryInvoked secondQueryLogged ::
          prepStorage stored).zipIdx start) =
      [(start + 1, bit, descriptor, descriptors, occurrence, continuation)] := by
  simp [entryBEq_refl, filterCparkBEq_any_prepStorage]

@[simp] theorem cparkMatches_one_cquery_cpark_prepStorage
    (invoked firstQueryInvoked firstQueryLogged
      secondQueryInvoked secondQueryLogged : Entry)
    (firstQueryPort secondQueryPort : Port) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation : Path) (stored : Nat) :
    cparkMatches invoked
        (.cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
          .cpark invoked bit descriptor descriptors occurrence continuation ::
          .cquery secondQueryPort secondQueryInvoked secondQueryLogged ::
          prepStorage stored) =
      [(1, bit, descriptor, descriptors, occurrence, continuation)] := by
  unfold cparkMatches
  exact filterCparkBEq_one_cquery_cpark_prepStorage
    invoked firstQueryInvoked firstQueryLogged
    secondQueryInvoked secondQueryLogged firstQueryPort secondQueryPort
    bit descriptor descriptors occurrence continuation stored 0

@[simp] theorem filterCparkBEq_one_expanded
    (invoked firstQueryInvoked firstQueryLogged
      secondQueryInvoked secondQueryLogged : Entry)
    (firstQueryPort secondQueryPort : Port) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation : Path) (stored start : Nat) :
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
        ((.cquery firstQueryPort firstQueryInvoked firstQueryLogged, start) ::
          (.cpark invoked bit descriptor descriptors occurrence continuation,
            start + 1) ::
          (.cquery secondQueryPort secondQueryInvoked secondQueryLogged,
            start + 2) ::
          (prepStorage stored).zipIdx (start + 3)) =
      [(start + 1, bit, descriptor, descriptors, occurrence, continuation)] := by
  simp [entryBEq_refl, filterCparkBEq_any_prepStorage]

@[simp] theorem closeVirtualPort_gateMarker_prepStorage (port queryPort : Port)
    (width gateIndex stored : Nat) (path : Path) (tape : List Entry)
    (queryInvoked queryLogged : Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [gateMarker port width gateIndex], bullet :: tape,
        none, frames,
        .cquery queryPort queryInvoked queryLogged :: prepStorage stored⟩ =
      none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [closeVirtualPort, directionSame, bulletIs,
    headBang_cons, matchingHistoryInvocations_gateMarker_prepStorage]

@[simp] theorem closeVirtualPort_gateMarker_cquery_cpark_prepStorage
    (port firstQueryPort secondQueryPort : Port)
    (width gateIndex stored : Nat) (path : Path) (tape : List Entry)
    (firstQueryInvoked firstQueryLogged parkInvoked : Entry)
    (parkBit : Bool) (descriptor : Descriptor)
    (descriptors : List FrameDescriptor) (occurrence continuation : Path)
    (secondQueryInvoked secondQueryLogged : Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [gateMarker port width gateIndex], bullet :: tape,
        none, frames,
        .cquery firstQueryPort firstQueryInvoked firstQueryLogged ::
          .cpark parkInvoked parkBit descriptor descriptors
            occurrence continuation ::
          .cquery secondQueryPort secondQueryInvoked secondQueryLogged ::
          prepStorage stored⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [closeVirtualPort, directionSame, bulletIs, headBang_cons,
    matchingHistoryInvocations_gateMarker_prepStorage]

def unaryGateName : Gate n → Option GateName
  | .h _ => some .h
  | .t _ => some .t
  | .cx _ _ _ => none

def unaryInstance (name : GateName) (width gateIndex : Nat) : Entry :=
  lp (gateSecondPath width gateIndex ++ [.fn])
    [gateMarker .second width gateIndex]

theorem unaryInstance_ne_prepInvoked (name : GateName)
    (width gateIndex stored : Nat) :
    unaryInstance name width gateIndex ≠ prepInvoked stored := by
  simp [unaryInstance, gateMarker, prepInvoked, lp, cgam, entry]
  intro _ impossible
  cases impossible

theorem findHistoryEq_unaryInstance_prepStorage (name : GateName)
    (width gateIndex stored : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if unaryInstance name width gateIndex = invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, List.findSome?_append, ih]
      simp [prepHistory, unaryInstance_ne_prepInvoked]

@[simp] theorem matchingHistoryInvocations_unaryInstance_prepStorage
    (name : GateName) (width gateIndex stored : Nat) :
    matchingHistoryInvocations (unaryInstance name width gateIndex)
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, matchingHistoryInvocations_append, ih]
      simp [matchingHistoryInvocations, prepHistory,
        unaryInstance_ne_prepInvoked]

def unaryInputLogged (name : GateName) (width gateIndex : Nat) : Entry :=
  lp (gateSecondPath width gateIndex ++ [.arg])
    [gam name, gateMarker .second width gateIndex]

def cxInputLogged (port : Port) (width gateIndex : Nat) : Entry :=
  lp (match port with
      | .first => gateFirstPath width gateIndex
      | .second => gateSecondPath width gateIndex)
    [gateMarker port width gateIndex]

@[simp] theorem gateFirstPath_getLast (width gateIndex : Nat) :
    (gateFirstPath width gateIndex).getLast? = some .arg := by
  simp [gateFirstPath]

@[simp] theorem gateFirstPath_ne_nil (width gateIndex : Nat) :
    gateFirstPath width gateIndex ≠ [] := by
  simp [gateFirstPath]

@[simp] theorem gateSecondPath_getLast (width gateIndex : Nat) :
    (gateSecondPath width gateIndex).getLast? = some .arg := by
  simp [gateSecondPath]

@[simp] theorem gateSecondPath_ne_nil (width gateIndex : Nat) :
    gateSecondPath width gateIndex ≠ [] := by
  simp [gateSecondPath]

def keyPort (key : Key) : Port := key.port.getD .first

def removeFrameKey (frames : List Frame) (key : Key) : List Frame :=
  let popped := sameKeyFrames frames key
  frames.filter fun frame => !(popped.contains frame)

@[simp] theorem key_beq_refl (key : Key) : (key == key) = true := by
  rcases key with ⟨gate, port, inst⟩
  change ((gate == gate) && (port == port && inst == inst)) = true
  rw [Bool.and_eq_true, Bool.and_eq_true]
  refine ⟨by cases gate <;> rfl, ?_, entryBEq_refl inst⟩
  cases port with
  | none => rfl
  | some port => cases port <;> rfl

theorem key_beq_false_of_ne (left right : Key) (different : left ≠ right) :
    (left == right) = false := by
  cases equal : left == right with
  | false => rfl
  | true => exact (different (key_eq_of_beq left right equal)).elim

theorem frame_key_eq_of_beq (left right : Frame)
    (equal : (left == right) = true) : left.key = right.key := by
  rcases left with ⟨leftKey, leftBit, leftEpoch⟩
  rcases right with ⟨rightKey, rightBit, rightEpoch⟩
  change
    ((leftKey == rightKey) &&
      (leftBit == rightBit && leftEpoch == rightEpoch)) = true at equal
  rw [Bool.and_eq_true] at equal
  exact key_eq_of_beq leftKey rightKey equal.1

theorem epoch_eq_of_beq {left right : Epoch}
    (equal : (left == right) = true) : left = right := by
  induction left generalizing right with
  | fresh =>
      cases right with
      | fresh => rfl
      | recalledAbsent _ => contradiction
      | recalledPresent _ _ => contradiction
  | recalledAbsent ticket ih =>
      cases right with
      | fresh => contradiction
      | recalledAbsent other =>
          change (ticket == other) = true at equal
          exact congrArg Epoch.recalledAbsent (ih equal)
      | recalledPresent _ _ => contradiction
  | recalledPresent ticket frame ticketIH frameIH =>
      cases right with
      | fresh => contradiction
      | recalledAbsent _ => contradiction
      | recalledPresent otherTicket otherFrame =>
          change ((ticket == otherTicket) &&
            (frame == otherFrame)) = true at equal
          rw [Bool.and_eq_true] at equal
          rw [ticketIH equal.1, frameIH equal.2]

theorem frame_eq_of_beq (left right : Frame)
    (equal : (left == right) = true) : left = right := by
  rcases left with ⟨leftKey, leftBit, leftEpoch⟩
  rcases right with ⟨rightKey, rightBit, rightEpoch⟩
  change
    ((leftKey == rightKey) &&
      (leftBit == rightBit && leftEpoch == rightEpoch)) = true at equal
  rw [Bool.and_eq_true, Bool.and_eq_true] at equal
  have keyEqual := key_eq_of_beq leftKey rightKey equal.1
  have bitEqual : leftBit = rightBit := by
    cases leftBit <;> cases rightBit <;> simp_all
  have epochEqual := epoch_eq_of_beq equal.2.2
  subst rightKey
  subst rightBit
  subst rightEpoch
  rfl

theorem frame_beq_false_of_ne (left right : Frame)
    (different : left ≠ right) : (left == right) = false := by
  cases equal : left == right with
  | false => rfl
  | true => exact (different (frame_eq_of_beq left right equal)).elim

@[simp] theorem epoch_beq_refl (epoch : Epoch) :
    (epoch == epoch) = true := by
  induction epoch with
  | fresh => rfl
  | recalledAbsent ticket ih =>
      change (ticket == ticket) = true
      exact ih
  | recalledPresent ticket frame ticketIH frameIH =>
      change ((ticket == ticket) && (frame == frame)) = true
      rw [Bool.and_eq_true]
      exact ⟨ticketIH, frameIH⟩

@[simp] theorem frame_beq_refl (frame : Frame) :
    (frame == frame) = true := by
  rcases frame with ⟨key, bit, epoch⟩
  change ((key == key) && (bit == bit && epoch == epoch)) = true
  cases bit <;> simp [key_beq_refl, epoch_beq_refl]

theorem inserted_mem_insertFrame (inserted : Frame) (frames : List Frame) :
    inserted ∈ insertFrame inserted frames := by
  induction frames with
  | nil => simp [insertFrame]
  | cons head tail ih =>
      by_cases duplicate : head == inserted
      · have equal := frame_eq_of_beq head inserted duplicate
        subst head
        simp [insertFrame, duplicate]
      · by_cases before : frameLT inserted head
        · simp [insertFrame, duplicate, before]
        · simp [insertFrame, duplicate, before, ih]

theorem old_mem_insertFrame (inserted present : Frame)
    (frames : List Frame) (membership : present ∈ frames) :
    present ∈ insertFrame inserted frames := by
  induction frames with
  | nil => contradiction
  | cons head tail ih =>
      by_cases duplicate : head == inserted
      · simpa [insertFrame, duplicate] using membership
      · by_cases before : frameLT inserted head
        · simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before, if_pos, List.mem_cons]
          simp only [List.mem_cons] at membership ⊢
          exact .inr membership
        · simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before, List.mem_cons] at membership ⊢
          rcases membership with equal | inside
          · exact .inl equal
          · exact .inr (ih inside)

theorem sameKeyFrames_insertFrame_other (inserted : Frame)
    (frames : List Frame) (key : Key) (different : inserted.key ≠ key) :
    sameKeyFrames (insertFrame inserted frames) key =
      sameKeyFrames frames key := by
  induction frames with
  | nil =>
      simp [insertFrame, sameKeyFrames,
        key_beq_false_of_ne inserted.key key different]
  | cons head tail ih =>
      by_cases duplicate : head == inserted
      · have equal := frame_key_eq_of_beq head inserted duplicate
        have headDifferent : head.key ≠ key := fun same =>
          different (equal.symm.trans same)
        simp [insertFrame, duplicate, sameKeyFrames,
          key_beq_false_of_ne head.key key headDifferent]
      · by_cases before : frameLT inserted head
        · simp [insertFrame, duplicate, before, sameKeyFrames,
            key_beq_false_of_ne inserted.key key different]
        · unfold sameKeyFrames at ih ⊢
          simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before]
          by_cases headMatches : head.key == key
          · simp [List.filter, headMatches, ih]
          · simp [List.filter, headMatches, ih]

theorem sameKeyFrames_insertFrame_fresh (inserted : Frame)
    (frames : List Frame)
    (fresh : sameKeyFrames frames inserted.key = []) :
    sameKeyFrames (insertFrame inserted frames) inserted.key = [inserted] := by
  induction frames with
  | nil => simp [insertFrame, sameKeyFrames, key_beq_refl]
  | cons head tail ih =>
      have headDifferent : head.key ≠ inserted.key := by
        intro equal
        have headMatches : (head.key == inserted.key) = true := by
          rw [equal]
          exact key_beq_refl inserted.key
        simp [sameKeyFrames, headMatches] at fresh
      have tailFresh : sameKeyFrames tail inserted.key = [] := by
        simpa [sameKeyFrames,
          key_beq_false_of_ne head.key inserted.key headDifferent] using fresh
      by_cases duplicate : head == inserted
      · exact (headDifferent
          (frame_key_eq_of_beq head inserted duplicate)).elim
      · by_cases before : frameLT inserted head
        · unfold sameKeyFrames at tailFresh ⊢
          simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before, List.filter,
            key_beq_refl, if_pos,
            key_beq_false_of_ne head.key inserted.key headDifferent,
            tailFresh]
        · have result := ih tailFresh
          unfold sameKeyFrames at result ⊢
          simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before, List.filter,
            key_beq_false_of_ne head.key inserted.key headDifferent,
            result]

@[simp] theorem sameKeyFrames_prepFrames_future (stored fresh : Nat)
    (word : Word stored) (notFuture : stored ≤ fresh) :
    sameKeyFrames (prepFrames stored word)
        (portKey .second (preparationOccurrence fresh)) = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership selected
  have keyEqual := key_eq_of_beq frame.key
    (portKey .second (preparationOccurrence fresh)) selected
  rcases prepFrames_source stored word frame membership with
    ⟨index, before, source⟩
  rcases source with firstSource | secondSource
  · have portEqual := congrArg Key.port
      (firstSource.1.symm.trans keyEqual)
    simp [portKey] at portEqual
  · have keysEqual :
        portKey .second (preparationOccurrence index) =
          portKey .second (preparationOccurrence fresh) :=
      secondSource.1.symm.trans keyEqual
    have invokedEqual : prepInvoked index = prepInvoked fresh := by
      change lp (preparationOccurrence index) [] =
        lp (preparationOccurrence fresh) []
      simpa [portKey] using congrArg Key.inst keysEqual
    have indexEqual := prepInvoked_injective invokedEqual
    omega

@[simp] theorem sameKeyFrames_prepFrames_tInstance (stored fresh : Nat)
    (word : Word stored) :
    sameKeyFrames (prepFrames stored word)
        ⟨.t, none, unaryInstance .t stored fresh⟩ = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership selected
  have gateC := prepFrames_gate_c stored word frame membership
  have keyEqual := key_eq_of_beq frame.key
    ⟨.t, none, unaryInstance .t stored fresh⟩ selected
  have gateEqual := congrArg Key.gate keyEqual
  simp [gateC] at gateEqual

def initialWireFrame (width : Nat) (word : Word width)
    (wire : Fin width) : Frame :=
  ⟨initialWireKeys width wire, word wire, .recalledAbsent .fresh⟩

@[simp] theorem wordLast_fin_last (word : Word (count + 1)) :
    wordLast word = word (Fin.last count) := by
  rfl

@[simp] theorem wordPrefix_castSucc (word : Word (count + 1))
    (wire : Fin count) :
    wordPrefix word wire = word wire.castSucc := by
  rfl

@[simp] theorem initialWireKeys_castSucc (wire : Fin count) :
    initialWireKeys (count + 1) wire.castSucc =
      initialWireKeys count wire := by
  rfl

@[simp] theorem initialWireFrame_castSucc (word : Word (count + 1))
    (wire : Fin count) :
    initialWireFrame (count + 1) word wire.castSucc =
      initialWireFrame count (wordPrefix word) wire := by
  simp [initialWireFrame]

theorem portKey_first_ne_second (left right : Path) :
    portKey .first left ≠ portKey .second right := by
  intro equal
  have portEqual := congrArg Key.port equal
  simp [portKey] at portEqual

theorem portKey_second_preparation_ne (left right : Nat)
    (different : left ≠ right) :
    portKey .second (preparationOccurrence left) ≠
      portKey .second (preparationOccurrence right) := by
  intro equal
  have invokedEqual : prepInvoked left = prepInvoked right := by
    change lp (preparationOccurrence left) [] =
      lp (preparationOccurrence right) []
    simpa [portKey] using congrArg Key.inst equal
  exact different (prepInvoked_injective invokedEqual)

theorem initialWireFrame_member :
    (width : Nat) → (word : Word width) → (wire : Fin width) →
      initialWireFrame width word wire ∈ prepFrames width word
  | 0, _, wire => Fin.elim0 wire
  | count + 1, word, wire => by
      refine Fin.lastCases ?_ (fun prior => ?_) wire
      · let secondFrame : Frame :=
          ⟨portKey .second (preparationOccurrence count),
            wordLast word, .recalledAbsent .fresh⟩
        have present := inserted_mem_insertFrame secondFrame
          (insertFrame
            ⟨portKey .first (preparationOccurrence count), false,
              .recalledAbsent .fresh⟩
            (prepFrames count (wordPrefix word)))
        have frameEqual :
            initialWireFrame (count + 1) word (Fin.last count) =
              secondFrame := by
          unfold initialWireFrame initialWireKeys secondFrame
          simp [wordLast_fin_last]
        rw [frameEqual]
        simpa [prepFrames, secondFrame] using present
      · let firstFrame : Frame :=
          ⟨portKey .first (preparationOccurrence count), false,
            .recalledAbsent .fresh⟩
        let secondFrame : Frame :=
          ⟨portKey .second (preparationOccurrence count),
            wordLast word, .recalledAbsent .fresh⟩
        have older := initialWireFrame_member count (wordPrefix word) prior
        have afterFirst := old_mem_insertFrame firstFrame
          (initialWireFrame count (wordPrefix word) prior)
          (prepFrames count (wordPrefix word)) older
        have afterSecond := old_mem_insertFrame secondFrame
          (initialWireFrame count (wordPrefix word) prior)
          (insertFrame firstFrame (prepFrames count (wordPrefix word)))
          afterFirst
        rw [initialWireFrame_castSucc]
        simpa [prepFrames, firstFrame, secondFrame] using afterSecond

@[simp] theorem sameKeyFrames_initialWire (width : Nat)
    (word : Word width) (wire : Fin width) :
    sameKeyFrames (prepFrames width word) (initialWireKeys width wire) =
      [initialWireFrame width word wire] := by
  induction width with
  | zero => exact Fin.elim0 wire
  | succ count ih =>
      refine Fin.lastCases ?_ (fun prior => ?_) wire
      · let firstFrame : Frame :=
          ⟨portKey .first (preparationOccurrence count), false,
            .recalledAbsent .fresh⟩
        let secondFrame : Frame :=
          ⟨portKey .second (preparationOccurrence count),
            wordLast word, .recalledAbsent .fresh⟩
        have emptyOlder := sameKeyFrames_prepFrames_future count count
          (wordPrefix word) (Nat.le_refl count)
        have emptyAfterFirst :
            sameKeyFrames
                (insertFrame firstFrame (prepFrames count (wordPrefix word)))
                secondFrame.key = [] := by
          rw [sameKeyFrames_insertFrame_other]
          · exact emptyOlder
          · exact portKey_first_ne_second _ _
        have result := sameKeyFrames_insertFrame_fresh secondFrame
          (insertFrame firstFrame (prepFrames count (wordPrefix word)))
          emptyAfterFirst
        have keyEqual :
            initialWireKeys (count + 1) (Fin.last count) =
              secondFrame.key := by
          rfl
        have frameEqual :
            initialWireFrame (count + 1) word (Fin.last count) =
              secondFrame := by
          unfold initialWireFrame initialWireKeys secondFrame
          simp [wordLast_fin_last]
        rw [keyEqual, frameEqual]
        simpa [prepFrames, firstFrame, secondFrame] using result
      · let firstFrame : Frame :=
          ⟨portKey .first (preparationOccurrence count), false,
            .recalledAbsent .fresh⟩
        let secondFrame : Frame :=
          ⟨portKey .second (preparationOccurrence count),
            wordLast word, .recalledAbsent .fresh⟩
        have older := ih (wordPrefix word) prior
        have firstDifferent : firstFrame.key ≠ initialWireKeys count prior := by
          exact portKey_first_ne_second _ _
        have secondDifferent :
            secondFrame.key ≠ initialWireKeys count prior := by
          exact portKey_second_preparation_ne count prior.val
            (by omega)
        rw [show prepFrames (count + 1) word =
            insertFrame secondFrame
              (insertFrame firstFrame (prepFrames count (wordPrefix word))) by
          rfl]
        rw [initialWireKeys_castSucc, initialWireFrame_castSucc]
        rw [sameKeyFrames_insertFrame_other _ _ _ secondDifferent]
        rw [sameKeyFrames_insertFrame_other _ _ _ firstDifferent]
        simpa [initialWireKeys, initialWireFrame, wordPrefix] using older

theorem sameKeyFrames_removeFrameKey_other (frames : List Frame)
    (removed target : Key) (removedFrame targetFrame : Frame)
    (removedMatching : sameKeyFrames frames removed = [removedFrame])
    (targetMatching : sameKeyFrames frames target = [targetFrame])
    (different : removedFrame ≠ targetFrame) :
    sameKeyFrames (removeFrameKey frames removed) target = [targetFrame] := by
  unfold removeFrameKey
  rw [removedMatching]
  unfold sameKeyFrames at targetMatching ⊢
  rw [List.filter_filter]
  rw [show
      List.filter
          (fun frame => (frame.key == target) && ![removedFrame].contains frame)
          frames =
        List.filter
          (fun frame => ![removedFrame].contains frame && (frame.key == target))
          frames by
    apply List.filter_congr
    intro frame _
    exact Bool.and_comm _ _]
  rw [← List.filter_filter, targetMatching]
  have targetDifferent : targetFrame ≠ removedFrame := Ne.symm different
  have targetBeq : (targetFrame == removedFrame) = false :=
    frame_beq_false_of_ne targetFrame removedFrame targetDifferent
  simp [targetBeq]

theorem initialWireKeys_ne (control target : Fin width)
    (distinct : control ≠ target) :
    initialWireKeys width control ≠ initialWireKeys width target := by
  apply portKey_second_preparation_ne control.val target.val
  intro valuesEqual
  exact distinct (Fin.ext valuesEqual)

theorem initialWireFrame_ne (word : Word width)
    (control target : Fin width) (distinct : control ≠ target) :
    initialWireFrame width word control ≠
      initialWireFrame width word target := by
  intro framesEqual
  exact initialWireKeys_ne control target distinct
    (congrArg Frame.key framesEqual)

@[simp] theorem sameKeyFrames_initialWire_after_remove
    (word : Word width) (control target : Fin width)
    (distinct : control ≠ target) :
    sameKeyFrames
        (removeFrameKey (prepFrames width word)
          (initialWireKeys width control))
        (initialWireKeys width target) =
      [initialWireFrame width word target] := by
  exact sameKeyFrames_removeFrameKey_other _ _ _ _ _
    (sameKeyFrames_initialWire width word control)
    (sameKeyFrames_initialWire width word target)
    (initialWireFrame_ne word control target distinct)

def outputFrames (width gateIndex : Nat) (first second : Bool)
    (retained : List Frame) : List Frame :=
  let invoked := gateInvoked width gateIndex
  insertFrame
    ⟨⟨.c, some .second, invoked⟩, second, .recalledAbsent .fresh⟩
    (insertFrame
      ⟨⟨.c, some .first, invoked⟩, first, .recalledAbsent .fresh⟩
      retained)

def unaryHistory (name : GateName) (width gateIndex : Nat) : Store :=
  .chistory (gateInvoked width gateIndex)
    (.logged (gateFirstLogged width gateIndex)) []
    (.alpha name none (unaryInstance name width gateIndex) .fresh) []
    (gateOccurrence width gateIndex)
    (gateContinuationPath width gateIndex)

def consumedDescriptor (key : Key) : Descriptor :=
  .alpha .c key.port key.inst (.recalledAbsent .fresh)

def consumedFrameDescriptor (key : Key) : FrameDescriptor :=
  ⟨.c, key.port, key.inst, .recalledAbsent .fresh⟩

def initialWireAnswer (word : Word width) (wire : Fin width) : Entry :=
  alpha .c (some .second) (prepInvoked wire.val)
    (word wire) (.recalledAbsent .fresh)

@[simp] theorem hasBitConflict_initialWire (word : Word width)
    (wire : Fin width) :
    hasBitConflict
        (alphaBitPairs (initialWireAnswer word wire) ++
          frameBitPairs (prepFrames width word)) = false := by
  cases conflictValue :
      hasBitConflict
        (alphaBitPairs (initialWireAnswer word wire) ++
          frameBitPairs (prepFrames width word)) with
  | false => rfl
  | true =>
      have inputPairs :
          alphaBitPairs (initialWireAnswer word wire) =
            [(initialWireKeys width wire, word wire)] := by rfl
      rw [inputPairs] at conflictValue
      unfold hasBitConflict at conflictValue
      rcases List.any_eq_true.mp conflictValue with
        ⟨leftPair, leftMem, innerTrue⟩
      rcases List.any_eq_true.mp innerTrue with
        ⟨rightPair, rightMem, conflict⟩
      simp only [List.singleton_append, frameBitPairs,
        List.mem_cons, List.mem_map]
        at leftMem rightMem
      simp only [Bool.and_eq_true] at conflict
      rcases leftMem with leftInput | ⟨left, leftFrameMem, leftPairEq⟩ <;>
        rcases rightMem with rightInput | ⟨right, rightFrameMem, rightPairEq⟩
      · subst leftPair
        subst rightPair
        simp at conflict
      · subst leftPair
        subst rightPair
        have sameKey : initialWireKeys width wire = right.key :=
          key_eq_of_beq _ _ conflict.1
        have sameBit := prepFrames_same_key_bit width word
          (initialWireFrame width word wire) right
          (initialWireFrame_member width word wire) rightFrameMem sameKey
        simp [initialWireFrame] at sameBit
        simp [sameBit] at conflict
      · subst leftPair
        subst rightPair
        have sameKey : left.key = initialWireKeys width wire :=
          key_eq_of_beq _ _ conflict.1
        have sameBit := prepFrames_same_key_bit width word left
          (initialWireFrame width word wire) leftFrameMem
          (initialWireFrame_member width word wire) sameKey
        simp [initialWireFrame] at sameBit
        simp [sameBit] at conflict
      · subst leftPair
        subst rightPair
        have sameKey : left.key = right.key :=
          key_eq_of_beq _ _ conflict.1
        have sameBit := prepFrames_same_key_bit width word left right
          leftFrameMem rightFrameMem sameKey
        simp [sameBit] at conflict

theorem initialWire_matching_frame_bit (word : Word width)
    (wire : Fin width) (frame : Frame)
    (membership : frame ∈ prepFrames width word)
    (keyMatch : (frame.key == initialWireKeys width wire) = true) :
    frame.bit = word wire := by
  have sameKey : frame.key = initialWireKeys width wire :=
    key_eq_of_beq _ _ keyMatch
  have sameBit := prepFrames_same_key_bit width word frame
    (initialWireFrame width word wire) membership
    (initialWireFrame_member width word wire) sameKey
  simpa [initialWireFrame] using sameBit

@[simp] theorem decodeInput_initialWire (word : Word width)
    (wire : Fin width) :
    decodeInput (word wire) (initialWireAnswer word wire)
        (prepFrames width word) =
      some (consumedDescriptor (initialWireKeys width wire),
        [consumedFrameDescriptor (initialWireKeys width wire)],
        removeFrameKey (prepFrames width word)
          (initialWireKeys width wire)) := by
  let answerKey : Key :=
    ⟨.c, some .second, prepInvoked wire.val⟩
  have keyEqual : answerKey = initialWireKeys width wire := by
    rfl
  have matching :
      sameKeyFrames (prepFrames width word) answerKey =
        [initialWireFrame width word wire] := by
    rw [keyEqual]
    exact sameKeyFrames_initialWire width word wire
  have matchingFilter :
      List.filter
          (fun frame => frame.key ==
            (⟨.c, some .second, prepInvoked wire.val⟩ : Key))
          (prepFrames width word) =
        [initialWireFrame width word wire] := by
    simpa [sameKeyFrames, answerKey] using matching
  cases bit : word wire
  all_goals
    simp only [decodeInput, initialWireAnswer, asAlpha_alpha, bit,
      Bool.false_eq_true, if_false]
    rw [matchingFilter]
    unfold removeFrameKey
    rw [sameKeyFrames_initialWire]
    simp [answerKey, keyEqual, initialWireKeys, initialWireFrame,
      consumedDescriptor, consumedFrameDescriptor,
      portKey, prepInvoked, bit]

@[simp] theorem decodeInput_initialWire_after_remove (word : Word width)
    (control target : Fin width) (distinct : control ≠ target) :
    decodeInput (word target) (initialWireAnswer word target)
        (removeFrameKey (prepFrames width word)
          (initialWireKeys width control)) =
      some (consumedDescriptor (initialWireKeys width target),
        [consumedFrameDescriptor (initialWireKeys width target)],
        removeFrameKey
          (removeFrameKey (prepFrames width word)
            (initialWireKeys width control))
          (initialWireKeys width target)) := by
  let retained := removeFrameKey (prepFrames width word)
    (initialWireKeys width control)
  let answerKey : Key :=
    ⟨.c, some .second, prepInvoked target.val⟩
  change decodeInput (word target) (initialWireAnswer word target) retained =
    some (consumedDescriptor (initialWireKeys width target),
      [consumedFrameDescriptor (initialWireKeys width target)],
      removeFrameKey retained (initialWireKeys width target))
  have keyEqual : answerKey = initialWireKeys width target := by rfl
  have matching : sameKeyFrames retained answerKey =
      [initialWireFrame width word target] := by
    rw [keyEqual]
    exact sameKeyFrames_initialWire_after_remove word control target distinct
  have matchingFilter :
      List.filter
          (fun frame => frame.key ==
            (⟨.c, some .second, prepInvoked target.val⟩ : Key))
          retained = [initialWireFrame width word target] := by
    simpa [sameKeyFrames, answerKey] using matching
  have removedTarget :
      removeFrameKey retained (initialWireKeys width target) =
        retained.filter fun frame =>
          ![initialWireFrame width word target].contains frame := by
    unfold removeFrameKey
    rw [sameKeyFrames_initialWire_after_remove word control target distinct]
  cases bit : word target
  all_goals
    simp only [decodeInput, initialWireAnswer, asAlpha_alpha, bit,
      Bool.false_eq_true, if_false]
    rw [matchingFilter]
    rw [removedTarget]
    simp [answerKey, keyEqual, initialWireKeys,
      initialWireFrame, consumedDescriptor, consumedFrameDescriptor,
      portKey, prepInvoked, bit]

def cxHistory (width gateIndex : Nat) (control target : Key) : Store :=
  .chistory (gateInvoked width gateIndex)
    (consumedDescriptor control) [consumedFrameDescriptor control]
    (consumedDescriptor target) [consumedFrameDescriptor target]
    (gateOccurrence width gateIndex)
    (gateContinuationPath width gateIndex)

structure BoundaryData (n : Nat) where
  word : Word n
  wires : Fin n → Key
  frames : List Frame
  storage : List Store

def initialBoundaryData (word : Word n) : BoundaryData n :=
  ⟨word, initialWireKeys n, prepFrames n word, prepStorage n⟩

def boundaryState (width completed : Nat) (data : BoundaryData width) :
    NFState :=
  .run
    ⟨circuitBoundaryPath width completed, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def gateReadyState (width gateIndex : Nat) (data : BoundaryData width) :
    NFState :=
  .run
    ⟨gateRoot width gateIndex, .down, [], [rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def initialCxNode (width : Nat) (control target : Fin width)
    (tail : Term) : Term :=
  .app
    (.app
      (.app (.var (2 * width + 1))
        (.var (2 * (width - 1 - control.val) + 1)))
      (.var (2 * (width - 1 - target.val) + 1)))
    (.lam (.lam tail))

def initialHNode (width : Nat) (wire : Fin width) (tail : Term) : Term :=
  .app
    (.app
      (.app (.var (2 * width + 1)) zeroTerm)
      (.app (.var (2 * width + 3))
        (.var (2 * (width - 1 - wire.val) + 1))))
    (.lam (.lam tail))

def initialTNode (width : Nat) (wire : Fin width) (tail : Term) : Term :=
  .app
    (.app
      (.app (.var (2 * width + 1)) zeroTerm)
      (.app (.var (2 * width + 2))
        (.var (2 * (width - 1 - wire.val) + 1))))
    (.lam (.lam tail))

theorem lowerTotal_first_h (wire : Fin n) (rest : Circuit n) :
    lowerTotal
        (compileGatesWith n 0 wireName (.h wire :: rest))
        (preparedEnvironment n) =
      initialHNode n wire
        (lowerTotal
          (compileGatesWith n 1
            (fun index =>
              if index = wire then .gateSecond 0 else wireName index)
            rest)
          (.gateSecond 0 :: .gateFirst 0 :: preparedEnvironment n)) := by
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, initialHNode,
    QalcGate2PhysicalCompiler.zero, wireName,
    lookup_prepSecond_preparedEnvironment, zeroTerm, lookupName]

theorem lowerTotal_first_t (wire : Fin n) (rest : Circuit n) :
    lowerTotal
        (compileGatesWith n 0 wireName (.t wire :: rest))
        (preparedEnvironment n) =
      initialTNode n wire
        (lowerTotal
          (compileGatesWith n 1
            (fun index =>
              if index = wire then .gateSecond 0 else wireName index)
            rest)
          (.gateSecond 0 :: .gateFirst 0 :: preparedEnvironment n)) := by
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, initialTNode,
    QalcGate2PhysicalCompiler.zero, wireName,
    lookup_prepSecond_preparedEnvironment, zeroTerm, lookupName]

theorem subterm_initialHNode_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width) = some (initialHNode width wire tail) := by
  simpa [prepChain] using
    subterm_prepProgram_at width 0 (initialHNode width wire tail)

@[simp] theorem subterm_initialHNode_root_shape (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width) =
      some
        (.app
          (.app
            (.app (.var (2 * width + 1)) zeroTerm)
            (.app (.var (2 * width + 3))
              (.var (2 * (width - 1 - wire.val) + 1))))
          (.lam (.lam tail))) := by
  simpa [initialHNode] using subterm_initialHNode_root width wire tail

@[simp] theorem subterm_initialHNode_c (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateOccurrence width 0) = some (.var (2 * width + 1)) := by
  rw [show gateOccurrence width 0 =
      preparationRoot width ++ [.fn, .fn, .fn] by
    simp [gateOccurrence, gateRoot]]
  rw [subterm_append, subterm_initialHNode_root]
  rfl

@[simp] theorem subterm_initialHNode_first (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateFirstPath width 0) = some zeroTerm := by
  rw [show gateFirstPath width 0 =
      preparationRoot width ++ [.fn, .fn, .arg] by
    simp [gateFirstPath, gateRoot]]
  rw [subterm_append, subterm_initialHNode_root]
  rfl

@[simp] theorem subterm_initialHNode_prepFirst (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (prepFirstPath width) = some zeroTerm := by
  simpa [gateFirstPath_zero] using
    subterm_initialHNode_first width wire tail

@[simp] theorem subterm_initialHNode_second (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateSecondPath width 0) =
      some (.app (.var (2 * width + 3))
        (.var (2 * (width - 1 - wire.val) + 1))) := by
  rw [show gateSecondPath width 0 =
      preparationRoot width ++ [.fn, .arg] by
    simp [gateSecondPath, gateRoot]]
  rw [subterm_append, subterm_initialHNode_root]
  rfl

@[simp] theorem subterm_initialHNode_prepSecond (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (prepSecondPath width) =
      some (.app (.var (2 * width + 3))
        (.var (2 * (width - 1 - wire.val) + 1))) := by
  simpa [gateSecondPath_zero] using
    subterm_initialHNode_second width wire tail

@[simp] theorem subterm_initialHNode_input (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateSecondPath width 0 ++ [.arg]) =
      some (.var (2 * (width - 1 - wire.val) + 1)) := by
  rw [subterm_append, subterm_initialHNode_second]
  rfl

@[simp] theorem subterm_initialHNode_continuation (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateContinuationPath width 0) = some (.lam (.lam tail)) := by
  rw [show gateContinuationPath width 0 =
      preparationRoot width ++ [.arg] by
    simp [gateContinuationPath, gateRoot]]
  rw [subterm_append, subterm_initialHNode_root]
  rfl

@[simp] theorem subterm_initialHNode_continuation_body (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialHNode width wire tail))
        (gateContinuationPath width 0 ++ [.body]) = some (.lam tail) := by
  rw [subterm_append, subterm_initialHNode_continuation]
  rfl

@[simp] theorem cArguments_initialHNode (width : Nat)
    (wire : Fin width) (tail : Term) :
    cArguments?
        (prepProgram width (initialHNode width wire tail))
        (gateOccurrence width 0) =
      some (gateFirstPath width 0, gateSecondPath width 0,
        gateContinuationPath width 0) := by
  simp [cArguments?, gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, gateRoot, subterm_append,
    subterm_initialHNode_root]
  simp [initialHNode, subterm?]
  rfl

@[simp] theorem cArguments_initialHNode_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    cArguments? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some (preparationRoot width ++ [.fn, .fn, .arg],
        preparationRoot width ++ [.fn, .arg],
        preparationRoot width ++ [.arg]) := by
  simpa [gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, gateRoot] using
    cArguments_initialHNode width wire tail

@[simp] theorem binder_initialHNode_c (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (gateOccurrence width 0) = some cBinderPath := by
  rw [show gateOccurrence width 0 =
      preparationRoot width ++ [.fn, .fn, .fn] by
    simp [gateOccurrence, gateRoot]]
  rw [binder_prepProgram_tail]
  simp [initialHNode, binderPathGo, priorPrepBinders_length,
    shellBinders, cBinderPath]

@[simp] theorem binder_initialHNode_c_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some cBinderPath := by
  simpa [gateOccurrence, gateRoot] using
    binder_initialHNode_c width wire tail

@[simp] theorem binder_initialHNode_first_zero (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath?
        (prepProgram width (initialHNode width wire tail))
        (gateFirstPath width 0 ++ [.body, .body]) =
      some (gateFirstPath width 0) := by
  rw [show gateFirstPath width 0 ++ [.body, .body] =
      preparationRoot width ++ [.fn, .fn, .arg, .body, .body] by
    simp [gateFirstPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp [initialHNode, zeroTerm, binderPathGo, gateFirstPath, gateRoot,
    List.getElem?_append]

@[simp] theorem binder_initialHNode_first_zero_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .arg, .body, .body]) =
      some (preparationRoot width ++ [.fn, .fn, .arg]) := by
  simpa [gateFirstPath, gateRoot, List.append_assoc] using
    binder_initialHNode_first_zero width wire tail

@[simp] theorem binder_initialHNode_prepFirst_zero (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (prepFirstPath width ++ [.body, .body]) =
      some (prepFirstPath width) := by
  simpa [gateFirstPath_zero] using
    binder_initialHNode_first_zero width wire tail

@[simp] theorem binder_initialHNode_h (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (gateSecondPath width 0 ++ [.fn]) = some hBinderPath := by
  rw [show gateSecondPath width 0 ++ [.fn] =
      preparationRoot width ++ [.fn, .arg, .fn] by
    simp [gateSecondPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp [initialHNode, binderPathGo, shellBinders, hBinderPath,
    tBinderPath, cBinderPath]

@[simp] theorem binder_initialHNode_h_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (preparationRoot width ++ [.fn, .arg, .fn]) =
      some hBinderPath := by
  simpa [gateSecondPath, gateRoot, List.append_assoc] using
    binder_initialHNode_h width wire tail

@[simp] theorem binder_initialHNode_prepSecond_h (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (prepSecondPath width ++ [.fn]) = some hBinderPath := by
  simpa [gateSecondPath_zero] using
    binder_initialHNode_h width wire tail

@[simp] theorem binder_initialHNode_input (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (gateSecondPath width 0 ++ [.arg]) =
      some (prepContinuationPath wire.val ++ [.body]) := by
  rw [show gateSecondPath width 0 ++ [.arg] =
      preparationRoot width ++ [.fn, .arg, .arg] by
    simp [gateSecondPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp only [initialHNode, binderPathGo, Nat.add_sub_cancel,
    List.getElem?_append]
  have within : width - 1 - wire.val < width := by omega
  simp [within]
  rcases List.getElem?_eq_some_iff.mp
      (priorPrepBinders_second_get width wire) with ⟨_, result⟩
  exact result

@[simp] theorem binder_initialHNode_prepInput (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialHNode width wire tail))
        (prepSecondPath width ++ [.arg]) =
      some (prepContinuationPath wire.val ++ [.body]) := by
  simpa [gateSecondPath_zero] using
    binder_initialHNode_input width wire tail

theorem subterm_initialTNode_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width) = some (initialTNode width wire tail) := by
  simpa [prepChain] using
    subterm_prepProgram_at width 0 (initialTNode width wire tail)

@[simp] theorem subterm_initialTNode_root_shape (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width) =
      some
        (.app
          (.app
            (.app (.var (2 * width + 1)) zeroTerm)
            (.app (.var (2 * width + 2))
              (.var (2 * (width - 1 - wire.val) + 1))))
          (.lam (.lam tail))) := by
  simpa [initialTNode] using subterm_initialTNode_root width wire tail

@[simp] theorem subterm_initialTNode_first (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (gateFirstPath width 0) = some zeroTerm := by
  rw [show gateFirstPath width 0 =
      preparationRoot width ++ [.fn, .fn, .arg] by
    simp [gateFirstPath, gateRoot]]
  rw [subterm_append, subterm_initialTNode_root]
  rfl

@[simp] theorem subterm_initialTNode_prepFirst (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (prepFirstPath width) = some zeroTerm := by
  simpa [gateFirstPath_zero] using
    subterm_initialTNode_first width wire tail

@[simp] theorem subterm_initialTNode_second (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (gateSecondPath width 0) =
      some (.app (.var (2 * width + 2))
        (.var (2 * (width - 1 - wire.val) + 1))) := by
  rw [show gateSecondPath width 0 =
      preparationRoot width ++ [.fn, .arg] by
    simp [gateSecondPath, gateRoot]]
  rw [subterm_append, subterm_initialTNode_root]
  rfl

@[simp] theorem subterm_initialTNode_prepSecond (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (prepSecondPath width) =
      some (.app (.var (2 * width + 2))
        (.var (2 * (width - 1 - wire.val) + 1))) := by
  simpa [gateSecondPath_zero] using
    subterm_initialTNode_second width wire tail

@[simp] theorem subterm_initialTNode_input (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (gateSecondPath width 0 ++ [.arg]) =
      some (.var (2 * (width - 1 - wire.val) + 1)) := by
  rw [subterm_append, subterm_initialTNode_second]
  rfl

@[simp] theorem subterm_initialTNode_continuation (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (gateContinuationPath width 0) = some (.lam (.lam tail)) := by
  rw [show gateContinuationPath width 0 =
      preparationRoot width ++ [.arg] by
    simp [gateContinuationPath, gateRoot]]
  rw [subterm_append, subterm_initialTNode_root]
  rfl

@[simp] theorem subterm_initialTNode_continuation_body (width : Nat)
    (wire : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialTNode width wire tail))
        (gateContinuationPath width 0 ++ [.body]) = some (.lam tail) := by
  rw [subterm_append, subterm_initialTNode_continuation]
  rfl

@[simp] theorem cArguments_initialTNode (width : Nat)
    (wire : Fin width) (tail : Term) :
    cArguments?
        (prepProgram width (initialTNode width wire tail))
        (gateOccurrence width 0) =
      some (gateFirstPath width 0, gateSecondPath width 0,
        gateContinuationPath width 0) := by
  simp [cArguments?, gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, gateRoot, subterm_append,
    subterm_initialTNode_root]
  simp [initialTNode, subterm?]
  rfl

@[simp] theorem cArguments_initialTNode_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    cArguments? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some (preparationRoot width ++ [.fn, .fn, .arg],
        preparationRoot width ++ [.fn, .arg],
        preparationRoot width ++ [.arg]) := by
  simpa [gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, gateRoot] using
    cArguments_initialTNode width wire tail

@[simp] theorem binder_initialTNode_c (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (gateOccurrence width 0) = some cBinderPath := by
  rw [show gateOccurrence width 0 =
      preparationRoot width ++ [.fn, .fn, .fn] by
    simp [gateOccurrence, gateRoot]]
  rw [binder_prepProgram_tail]
  simp [initialTNode, binderPathGo, priorPrepBinders_length,
    shellBinders, cBinderPath]

@[simp] theorem binder_initialTNode_c_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some cBinderPath := by
  simpa [gateOccurrence, gateRoot] using
    binder_initialTNode_c width wire tail

@[simp] theorem binder_initialTNode_first_zero (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (gateFirstPath width 0 ++ [.body, .body]) =
      some (gateFirstPath width 0) := by
  rw [show gateFirstPath width 0 ++ [.body, .body] =
      preparationRoot width ++ [.fn, .fn, .arg, .body, .body] by
    simp [gateFirstPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp [initialTNode, zeroTerm, binderPathGo, gateFirstPath, gateRoot,
    List.getElem?_append]

@[simp] theorem binder_initialTNode_first_zero_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width ++ [.fn, .fn, .arg, .body, .body]) =
      some (preparationRoot width ++ [.fn, .fn, .arg]) := by
  simpa [gateFirstPath, gateRoot, List.append_assoc] using
    binder_initialTNode_first_zero width wire tail

@[simp] theorem binder_initialTNode_prepFirst_zero (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (prepFirstPath width ++ [.body, .body]) =
      some (prepFirstPath width) := by
  simpa [gateFirstPath_zero] using
    binder_initialTNode_first_zero width wire tail

@[simp] theorem binder_initialTNode_t (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (gateSecondPath width 0 ++ [.fn]) = some tBinderPath := by
  rw [show gateSecondPath width 0 ++ [.fn] =
      preparationRoot width ++ [.fn, .arg, .fn] by
    simp [gateSecondPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp [initialTNode, binderPathGo, shellBinders, hBinderPath,
    tBinderPath, cBinderPath]

@[simp] theorem binder_initialTNode_t_root (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (preparationRoot width ++ [.fn, .arg, .fn]) =
      some tBinderPath := by
  simpa [gateSecondPath, gateRoot, List.append_assoc] using
    binder_initialTNode_t width wire tail

@[simp] theorem binder_initialTNode_prepSecond_t (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (prepSecondPath width ++ [.fn]) = some tBinderPath := by
  simpa [gateSecondPath_zero] using
    binder_initialTNode_t width wire tail

@[simp] theorem binder_initialTNode_input (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (gateSecondPath width 0 ++ [.arg]) =
      some (prepContinuationPath wire.val ++ [.body]) := by
  rw [show gateSecondPath width 0 ++ [.arg] =
      preparationRoot width ++ [.fn, .arg, .arg] by
    simp [gateSecondPath, gateRoot, List.append_assoc]]
  rw [binder_prepProgram_tail]
  simp only [initialTNode, binderPathGo, Nat.add_sub_cancel,
    List.getElem?_append]
  have within : width - 1 - wire.val < width := by omega
  simp [within]
  rcases List.getElem?_eq_some_iff.mp
      (priorPrepBinders_second_get width wire) with ⟨_, result⟩
  exact result

@[simp] theorem binder_initialTNode_prepInput (width : Nat)
    (wire : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialTNode width wire tail))
        (prepSecondPath width ++ [.arg]) =
      some (prepContinuationPath wire.val ++ [.body]) := by
  simpa [gateSecondPath_zero] using
    binder_initialTNode_input width wire tail

@[simp] theorem subterm_initialCxNode_root (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (preparationRoot width) =
      some (initialCxNode width control target tail) := by
  simpa [prepChain] using
    subterm_prepProgram_at width 0 (initialCxNode width control target tail)

@[simp] theorem subterm_initialCxNode_fn (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (preparationRoot width ++ [.fn]) =
      some (.app
        (.app (.var (2 * width + 1))
          (.var (2 * (width - 1 - control.val) + 1)))
        (.var (2 * (width - 1 - target.val) + 1))) := by
  rw [subterm_append, subterm_initialCxNode_root]
  rfl

@[simp] theorem subterm_initialCxNode_fn_fn (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (preparationRoot width ++ [.fn, .fn]) =
      some (.app (.var (2 * width + 1))
        (.var (2 * (width - 1 - control.val) + 1))) := by
  rw [show preparationRoot width ++ [.fn, .fn] =
      (preparationRoot width ++ [.fn]) ++ [.fn] by simp]
  rw [subterm_append, subterm_initialCxNode_fn]
  rfl

@[simp] theorem subterm_initialCxNode_c (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some (.var (2 * width + 1)) := by
  rw [show preparationRoot width ++ [.fn, .fn, .fn] =
      (preparationRoot width ++ [.fn, .fn]) ++ [.fn] by simp]
  rw [subterm_append, subterm_initialCxNode_fn_fn]
  rfl

@[simp] theorem cArguments_initialCxNode (width : Nat)
    (control target : Fin width) (tail : Term) :
    cArguments?
        (prepProgram width (initialCxNode width control target tail))
        (gateOccurrence width 0) =
      some (gateFirstPath width 0, gateSecondPath width 0,
        gateContinuationPath width 0) := by
  simp [cArguments?, gateOccurrence, gateFirstPath, gateSecondPath,
    gateContinuationPath, gateRoot, subterm_append,
    subterm_initialCxNode_root]
  simp [initialCxNode, subterm?]
  rfl

theorem lowerTotal_first_cx (control target : Fin n)
    (distinct : control ≠ target) (rest : Circuit n) :
    lowerTotal
        (compileGatesWith n 0 wireName (.cx control target distinct :: rest))
        (preparedEnvironment n) =
      initialCxNode n control target
        (lowerTotal
          (compileGatesWith n 1
            (fun index =>
              if index = control then .gateFirst 0
              else if index = target then .gateSecond 0
              else wireName index)
            rest)
          (.gateSecond 0 :: .gateFirst 0 :: preparedEnvironment n)) := by
  simp [compileGatesWith, cnot, apps, lams, lowerTotal, initialCxNode,
    wireName, lookup_prepSecond_preparedEnvironment]

@[simp] theorem binder_initialCxNode_c (width : Nat)
    (control target : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialCxNode width control target tail))
        (gateOccurrence width 0) = some cBinderPath := by
  rw [show gateOccurrence width 0 =
      preparationRoot width ++ [.fn, .fn, .fn] by
    simp [gateOccurrence, gateRoot]]
  rw [binder_prepProgram_tail]
  simp [initialCxNode, binderPathGo, priorPrepBinders_length,
    shellBinders, cBinderPath]

@[simp] theorem binder_initialCxNode_c_path (width : Nat)
    (control target : Fin width) (tail : Term) :
    binderPath? (prepProgram width (initialCxNode width control target tail))
        (preparationRoot width ++ [.fn, .fn, .fn]) =
      some cBinderPath := by
  simpa [gateOccurrence, gateRoot] using
    binder_initialCxNode_c width control target tail

@[simp] theorem binder_initialCxNode_control (width : Nat)
    (control target : Fin width) (tail : Term) :
    binderPath?
        (prepProgram width (initialCxNode width control target tail))
        (gateFirstPath width 0) =
      some (prepContinuationPath control.val ++ [.body]) := by
  rw [show gateFirstPath width 0 =
      preparationRoot width ++ [.fn, .fn, .arg] by
    simp [gateFirstPath, gateRoot]]
  rw [binder_prepProgram_tail]
  simp only [initialCxNode, binderPathGo, Nat.add_sub_cancel,
    List.getElem?_append]
  have within : width - 1 - control.val < width := by omega
  simp [within]
  rcases List.getElem?_eq_some_iff.mp
      (priorPrepBinders_second_get width control) with ⟨_, result⟩
  exact result

@[simp] theorem subterm_initialCxNode_control (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (gateFirstPath width 0) =
      some (.var (2 * (width - 1 - control.val) + 1)) := by
  rw [show gateFirstPath width 0 =
      preparationRoot width ++ [.fn, .fn, .arg] by
    simp [gateFirstPath, gateRoot]]
  rw [subterm_append, subterm_initialCxNode_root]
  rfl

@[simp] theorem binder_initialCxNode_target (width : Nat)
    (control target : Fin width) (tail : Term) :
    binderPath?
        (prepProgram width (initialCxNode width control target tail))
        (gateSecondPath width 0) =
      some (prepContinuationPath target.val ++ [.body]) := by
  rw [show gateSecondPath width 0 =
      preparationRoot width ++ [.fn, .arg] by
    simp [gateSecondPath, gateRoot]]
  rw [binder_prepProgram_tail]
  simp only [initialCxNode, binderPathGo, Nat.add_sub_cancel,
    List.getElem?_append]
  have within : width - 1 - target.val < width := by omega
  simp [within]
  rcases List.getElem?_eq_some_iff.mp
      (priorPrepBinders_second_get width target) with ⟨_, result⟩
  exact result

@[simp] theorem subterm_initialCxNode_target (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (gateSecondPath width 0) =
      some (.var (2 * (width - 1 - target.val) + 1)) := by
  rw [show gateSecondPath width 0 =
      preparationRoot width ++ [.fn, .arg] by
    simp [gateSecondPath, gateRoot]]
  rw [subterm_append, subterm_initialCxNode_root]
  rfl

@[simp] theorem subterm_initialCxNode_continuation (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (gateContinuationPath width 0) = some (.lam (.lam tail)) := by
  rw [show gateContinuationPath width 0 = preparationRoot width ++ [.arg] by
    simp [gateContinuationPath, gateRoot]]
  rw [subterm_append, subterm_initialCxNode_root]
  rfl

@[simp] theorem subterm_initialCxNode_continuation_body (width : Nat)
    (control target : Fin width) (tail : Term) :
    subterm? (prepProgram width (initialCxNode width control target tail))
        (gateContinuationPath width 0 ++ [.body]) = some (.lam tail) := by
  rw [subterm_append, subterm_initialCxNode_continuation]
  rfl

def advanceBoundary (gateIndex : Nat) :
    Gate n → Bool → BoundaryData n → BoundaryData n
  | .h wire, outputBit, data =>
      let input := data.wires wire
      let invoked := gateInvoked n gateIndex
      let wires := fun index =>
        if index = wire then ⟨.c, some .second, invoked⟩
        else data.wires index
      let word := update data.word wire outputBit
      let frames := outputFrames n gateIndex false outputBit
        (removeFrameKey data.frames input)
      let storage :=
        .bundle [input] ::
        .cquery (keyPort input) input.inst
          (unaryInputLogged .h n gateIndex) ::
        unaryHistory .h n gateIndex :: data.storage
      ⟨word, wires, frames, storage⟩
  | .t wire, _, data =>
      let input := data.wires wire
      let invoked := gateInvoked n gateIndex
      let wires := fun index =>
        if index = wire then ⟨.c, some .second, invoked⟩
        else data.wires index
      let frames := outputFrames n gateIndex false (data.word wire)
        (removeFrameKey data.frames input)
      let storage :=
        .bundle [input] ::
        .cquery (keyPort input) input.inst
          (unaryInputLogged .t n gateIndex) ::
        unaryHistory .t n gateIndex :: data.storage
      ⟨data.word, wires, frames, storage⟩
  | .cx control target _, _, data =>
      let controlInput := data.wires control
      let targetInput := data.wires target
      let invoked := gateInvoked n gateIndex
      let wires := fun index =>
        if index = control then ⟨.c, some .first, invoked⟩
        else if index = target then ⟨.c, some .second, invoked⟩
        else data.wires index
      let word := update data.word target
        (xor (data.word target) (data.word control))
      let retained := removeFrameKey
        (removeFrameKey data.frames controlInput) targetInput
      let frames := outputFrames n gateIndex (data.word control)
        (xor (data.word target) (data.word control)) retained
      let storage :=
        .cquery (keyPort targetInput) targetInput.inst
          (cxInputLogged .second n gateIndex) ::
        cxHistory n gateIndex controlInput targetInput ::
        .cquery (keyPort controlInput) controlInput.inst
          (cxInputLogged .first n gateIndex) :: data.storage
      ⟨word, wires, frames, storage⟩

structure WeightedBoundaryData (n : Nat) where
  data : BoundaryData n
  amplitude : Dw

def scatterBoundary (gateIndex : Nat) :
    Gate n → WeightedBoundaryData n → List (WeightedBoundaryData n)
  | gate@(.h wire), branch =>
      let minus := if branch.data.word wire then neg invSqrt2 else invSqrt2
      [⟨advanceBoundary gateIndex gate false branch.data,
          mul invSqrt2 branch.amplitude⟩,
       ⟨advanceBoundary gateIndex gate true branch.data,
          mul minus branch.amplitude⟩]
  | gate@(.t wire), branch =>
      [⟨advanceBoundary gateIndex gate false branch.data,
          mul (if branch.data.word wire then omega else one)
            branch.amplitude⟩]
  | gate@(.cx _ _ _), branch =>
      [⟨advanceBoundary gateIndex gate false branch.data,
          branch.amplitude⟩]

def boundaryPathsFrom : Nat → Circuit n →
    List (WeightedBoundaryData n) → List (WeightedBoundaryData n)
  | _, [], branches => branches
  | gateIndex, gate :: rest, branches =>
      boundaryPathsFrom (gateIndex + 1) rest
        (branches.flatMap (scatterBoundary gateIndex gate))

def compiledBoundaryPaths (circuit : Circuit n) (word : Word n) :
    List (WeightedBoundaryData n) :=
  boundaryPathsFrom 0 circuit [⟨initialBoundaryData word, one⟩]

def projectBoundary (branch : WeightedBoundaryData n) : Branch n :=
  ⟨branch.data.word, branch.amplitude⟩

@[simp] theorem project_scatterBoundary (gateIndex : Nat)
    (gate : Gate n) (branch : WeightedBoundaryData n) :
    (scatterBoundary gateIndex gate branch).map projectBoundary =
      scatter gate (projectBoundary branch) := by
  cases gate <;> rfl

theorem map_flatMap_projectBoundary (gateIndex : Nat) (gate : Gate n)
    (branches : List (WeightedBoundaryData n)) :
    (branches.flatMap (scatterBoundary gateIndex gate)).map projectBoundary =
      (branches.map projectBoundary).flatMap (scatter gate) := by
  induction branches with
  | nil => rfl
  | cons branch rest ih =>
      simp [project_scatterBoundary, ih]

theorem project_boundaryPathsFrom (gateIndex : Nat) (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) :
    (boundaryPathsFrom gateIndex circuit branches).map projectBoundary =
      paths circuit (branches.map projectBoundary) := by
  induction circuit generalizing gateIndex branches with
  | nil => rfl
  | cons gate rest ih =>
      simp only [boundaryPathsFrom, paths]
      rw [ih, map_flatMap_projectBoundary]

theorem project_compiledBoundaryPaths (circuit : Circuit n)
    (word : Word n) :
    (compiledBoundaryPaths circuit word).map projectBoundary =
      column circuit word := by
  simp [compiledBoundaryPaths, column, project_boundaryPathsFrom,
    projectBoundary, initialBoundaryData]

@[simp] theorem initial_boundary_state (positiveWidth : 0 < n)
    (word : Word n) :
    boundaryState n 0 (initialBoundaryData word) =
      preparedPrefixState n word := by
  simp [boundaryState, initialBoundaryData, circuitBoundaryPath,
    preparedPrefixState, inputBoundaryPath, prepContinuationPath,
    Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr
      (Nat.ne_of_gt positiveWidth))]

def boundaryColumn (completed : Nat)
    (branches : List (WeightedBoundaryData n)) : PhysicalColumn :=
  branches.map fun branch =>
    ⟨boundaryState n completed branch.data, branch.amplitude⟩

def cxCallSource (width : Nat) (data : BoundaryData width) : NFState :=
  .run
    ⟨[.arg], .down, [gateInvoked width 0],
      [appBullet, appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def hInputArrival (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨prepContinuationPath wire.val ++ [.body], .up, [],
      [lp (gateSecondPath width 0 ++ [.arg])
          [gam .h, gateMarker .second width 0],
       appBullet, appBullet, mu .h, appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word, prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def hInputLogged (width : Nat) : Entry :=
  lp (gateSecondPath width 0 ++ [.arg])
    [gam .h, gateMarker .second width 0]

def hInputDelivered (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.arg], .up,
      [gam .h, gateMarker .second width 0],
      List.replicate (bitNat (word wire)) appBullet ++
        [initialWireAnswer word wire, mu .h, appBullet, appBullet,
         cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word,
      .cquery .second (prepInvoked wire.val) (hInputLogged width) ::
        prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def hFirePopped (width : Nat) (wire : Fin width)
    (word : Word width) : List Frame :=
  let input := initialWireKeys width wire
  (prepFrames width word).filter fun frame => frame.key == input

def hFireRetained (width : Nat) (wire : Fin width)
    (word : Word width) : List Frame :=
  let input := initialWireKeys width wire
  (prepFrames width word).filter fun frame => !(frame.key == input)

def hFireSourceStorage (width : Nat) (wire : Fin width) : List Store :=
  .cquery .second (prepInvoked wire.val) (hInputLogged width) ::
    prepPark width :: prepStorage width

def hFireBuried (width : Nat) (wire : Fin width) : List Key :=
  (prepStorage width).foldl (fun out item =>
    match item with
    | .burial buried => unionKeys out (alphaKeysLive buried)
    | _ => out) []

def hFireSurvive (width : Nat) (wire : Fin width)
    (word : Word width) : List Key :=
  unionKeys ((hFireRetained width wire word).map (fun frame => frame.key))
    (unionKeys (hFireBuried width wire)
      (unionKeys
        (entryKeys
          [bullet, bullet, cmu .second (gateInvoked width 0),
           bullet, rb 0 [] []])
        (entryKeys [gam .h, gateMarker .second width 0])))

def hFireDead (width : Nat) (wire : Fin width)
    (word : Word width) : List Key :=
  unionKeys (alphaKeysLive (initialWireAnswer word wire))
    ((hFirePopped width wire word).map (fun frame => frame.key))

def hPostStorage (width : Nat) (wire : Fin width)
    (word : Word width) : List Store :=
  .bundle (eraseKeys (hFireDead width wire word)
      (hFireSurvive width wire word)) ::
    hFireSourceStorage width wire

def hFired (width : Nat) (wire : Fin width) (word : Word width)
    (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.arg], .up,
      [gam .h, gateMarker .second width 0],
      [ans .h bit, appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, hFireRetained width wire word,
      hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hAnswer (width : Nat) (bit : Bool) : Entry :=
  alpha .h none (unaryInstance .h width 0) bit .fresh

def hCheckpoint38 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .down, [unaryInstance .h width 0],
      [appBullet, cmu .second (gateInvoked width 0), appBullet,
       rb 0 [] []], some ⟨.h, none, bit, 1⟩,
      hFireRetained width wire word, hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint40 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .up, [unaryInstance .h width 0],
      List.replicate (bitNat bit + 1) appBullet ++
        [hAnswer width bit, cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []], none,
      hFireRetained width wire word, hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint41 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨hBinderPath, .down, [],
      unaryInstance .h width 0 ::
        (List.replicate (bitNat bit + 1) appBullet ++
          [hAnswer width bit, cmu .second (gateInvoked width 0),
           appBullet, rb 0 [] []]),
      none, hFireRetained width wire word, hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint42 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.fn], .up,
      [gateMarker .second width 0],
      List.replicate (bitNat bit + 1) appBullet ++
        [hAnswer width bit, cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []], none,
      hFireRetained width wire word, hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint43 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
      List.replicate (bitNat bit) appBullet ++
        [hAnswer width bit, cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []], none,
      hFireRetained width wire word, hPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCompletedStorage (width : Nat) (wire : Fin width)
    (word : Word width) : List Store :=
  .bundle (eraseKeys (hFireDead width wire word)
      (hFireSurvive width wire word)) ::
    .cquery .second (prepInvoked wire.val) (hInputLogged width) ::
    unaryHistory .h width 0 :: prepStorage width

def hCheckpoint44 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨gateContinuationPath width 0, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width 0 false bit (hFireRetained width wire word),
      .cstage .fire :: hCompletedStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint45 (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : NFState :=
  .run
    ⟨gateContinuationPath width 0, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width 0 false bit (hFireRetained width wire word),
      hCompletedStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tInputLogged (width : Nat) : Entry :=
  lp (gateSecondPath width 0 ++ [.arg])
    [gam .t, gateMarker .second width 0]

def tCheckpoint23 (width : Nat) (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.fn], .down,
      [gateMarker .second width 0],
      [appBullet, appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word, prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def tCalled (width : Nat) (word : Word width) : NFState :=
  .run
    ⟨[.fn, .arg], .up,
      [lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]],
      [gam .t, appBullet, appBullet, mu .t, appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word, prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def tInputArrival (width : Nat) (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.arg], .down,
      [gam .t, gateMarker .second width 0],
      [appBullet, appBullet, mu .t, appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word, prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def tInputDelivered (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.arg], .up,
      [gam .t, gateMarker .second width 0],
      List.replicate (bitNat (word wire)) appBullet ++
        [initialWireAnswer word wire, mu .t, appBullet, appBullet,
         cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, prepFrames width word,
      .cquery .second (prepInvoked wire.val) (tInputLogged width) ::
        prepPark width :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def tFirePopped (width : Nat) (wire : Fin width)
    (word : Word width) : List Frame :=
  let input := initialWireKeys width wire
  (prepFrames width word).filter fun frame => frame.key == input

def tFireRetained (width : Nat) (wire : Fin width)
    (word : Word width) : List Frame :=
  let input := initialWireKeys width wire
  (prepFrames width word).filter fun frame => !(frame.key == input)

def tFireSourceStorage (width : Nat) (wire : Fin width) : List Store :=
  .cquery .second (prepInvoked wire.val) (tInputLogged width) ::
    prepPark width :: prepStorage width

def tFireBuried (width : Nat) : List Key :=
  (prepStorage width).foldl (fun out item =>
    match item with
    | .burial buried => unionKeys out (alphaKeysLive buried)
    | _ => out) []

def tFireSurvive (width : Nat) (wire : Fin width)
    (word : Word width) : List Key :=
  unionKeys ((tFireRetained width wire word).map (fun frame => frame.key))
    (unionKeys (tFireBuried width)
      (unionKeys
        (entryKeys
          [bullet, bullet, cmu .second (gateInvoked width 0),
           bullet, rb 0 [] []])
        (entryKeys [gam .t, gateMarker .second width 0])))

def tFireDead (width : Nat) (wire : Fin width)
    (word : Word width) : List Key :=
  unionKeys (alphaKeysLive (initialWireAnswer word wire))
    ((tFirePopped width wire word).map (fun frame => frame.key))

def tPostStorage (width : Nat) (wire : Fin width)
    (word : Word width) : List Store :=
  .bundle (eraseKeys (tFireDead width wire word)
      (tFireSurvive width wire word)) ::
    tFireSourceStorage width wire

def tAnswer (width : Nat) (bit : Bool) : Entry :=
  alpha .t none
    (lp (gateSecondPath width 0 ++ [.fn])
      [gateMarker .second width 0])
    bit .fresh

def tFired (width : Nat) (wire : Fin width) (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.arg], .up,
      [gam .t, gateMarker .second width 0],
      [ans .t (word wire), appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, tFireRetained width wire word,
      tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint40 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.fn], .down,
      [gateMarker .second width 0],
      [gam .t, ans .t (word wire), appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint44 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]],
      [gam .t, ans .t (word wire), appBullet, appBullet,
       cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      none, tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint45 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]],
      [appBullet, appBullet, cmu .second (gateInvoked width 0),
       appBullet, rb 0 [] []],
      some ⟨.t, none, word wire, 0⟩,
      tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint47 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]],
      [cmu .second (gateInvoked width 0), appBullet, rb 0 [] []],
      some ⟨.t, none, word wire, 2⟩,
      tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint48 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨[.fn, .arg], .up,
      [lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]],
      List.replicate (bitNat (word wire) + 1) appBullet ++
        [tAnswer width (word wire), cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []],
      none, tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint52 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0 ++ [.fn], .up,
      [gateMarker .second width 0],
      List.replicate (bitNat (word wire) + 1) appBullet ++
        [tAnswer width (word wire), cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []],
      none, tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint53 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
      List.replicate (bitNat (word wire)) appBullet ++
        [tAnswer width (word wire), cmu .second (gateInvoked width 0),
         appBullet, rb 0 [] []],
      none, tFireRetained width wire word, tPostStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCompletedStorage (width : Nat) (wire : Fin width)
    (word : Word width) : List Store :=
  .bundle (eraseKeys (tFireDead width wire word)
      (tFireSurvive width wire word)) ::
    .cquery .second (prepInvoked wire.val) (tInputLogged width) ::
    unaryHistory .t width 0 :: prepStorage width

def tCheckpoint54 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateContinuationPath width 0, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width 0 false (word wire)
        (tFireRetained width wire word),
      .cstage .fire :: tCompletedStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint55 (width : Nat) (wire : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateContinuationPath width 0, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width 0 false (word wire)
        (tFireRetained width wire word),
      tCompletedStorage width wire word⟩
    ⟨.hole false, some [], [], []⟩

@[simp] theorem tMarker_take_to_binder (wire : Fin n) :
    List.take
        (level (gateSecondPath n 0 ++ [.fn]) - level tBinderPath)
        [gateMarker .second n 0] = [gateMarker .second n 0] := by
  apply List.take_of_length_le
  simp [level, gateSecondPath, gateRoot, preparationRoot,
    shellBodyPath, tBinderPath]

@[simp] theorem tMarker_drop_to_binder (wire : Fin n) :
    List.drop
        (level (gateSecondPath n 0 ++ [.fn]) - level tBinderPath)
        [gateMarker .second n 0] = [] := by
  apply List.drop_eq_nil_of_le
  simp [level, gateSecondPath, gateRoot, preparationRoot,
    shellBodyPath, tBinderPath]

@[simp] theorem closeVirtualPort_empty_log (path : Path)
    (direction : Direction) (tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    closeVirtualPort
      ⟨path, direction, [], tape, vb, frames, storage⟩ = none := by
  simp [closeVirtualPort]

@[simp] theorem storedPortBindings_tBinder_tPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedPortBindings tBinderPath (tPostStorage width wire word) = [] := by
  change storedPortBindings tBinderPath
      (prepPark width :: prepStorage width) = []
  exact storedPortBindings_tBinder_prepPark width

@[simp] theorem storedPortBindings_tPath_tPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedPortBindings [.fn, .fn, .fn, .body]
        (tPostStorage width wire word) = [] := by
  simpa [tBinderPath] using
    storedPortBindings_tBinder_tPostStorage width wire word

@[simp] theorem storedReturnOccurrences_tVirtual_prepStorage
    (count : Nat) :
    storedReturnOccurrences [.fn, .arg] (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory,
        prepContinuationPath, preparationRoot, shellBodyPath]

@[simp] theorem storedReturnOccurrences_tVirtual_tPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedReturnOccurrences [.fn, .arg]
        (tPostStorage width wire word) = [] := by
  change storedReturnOccurrences [.fn, .arg]
      (prepStorage width) = []
  exact storedReturnOccurrences_tVirtual_prepStorage width

@[simp] theorem storedReturnOccurrences_gateSecondFn_tPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedReturnOccurrences (gateSecondPath width 0 ++ [.fn])
        (tPostStorage width wire word) = [] := by
  change storedReturnOccurrences (gateSecondPath width 0 ++ [.fn])
      (prepStorage width) = []
  simpa [gateSecondPath_zero] using
    storedReturnOccurrences_prepSecondFn_prepStorage width width

@[simp] theorem findHistoryEq_unary_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if lp (gateSecondPath width 0 ++ [.fn])
                    [gateMarker .second width 0] = invoked
              then some invoked else none
          | _ => none)
        (tPostStorage width wire word) = none := by
  change List.findSome?
      (fun item =>
        match item with
        | .chistory invoked _ _ _ _ _ _ =>
            if unaryInstance .t width 0 = invoked
            then some invoked else none
        | _ => none)
      (prepStorage width) = none
  exact findHistoryEq_unaryInstance_prepStorage .t width 0 width

@[simp] theorem findHistoryEq_gateMarker_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if gateMarker .second width 0 = invoked
              then some invoked else none
          | _ => none)
        (tPostStorage width wire word) = none := by
  change List.findSome?
      (fun item =>
        match item with
        | .chistory invoked _ _ _ _ _ _ =>
            if gateMarker .second width 0 = invoked
            then some invoked else none
        | _ => none)
      (prepStorage width) = none
  exact findHistoryEq_gateMarker_prepStorage .second width 0 width

@[simp] theorem closeVirtualPort_unary_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (tape : List Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up,
        [lp (gateSecondPath width 0 ++ [.fn])
          [gateMarker .second width 0]], bullet :: tape,
        none, frames, tPostStorage width wire word⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have noMatches :
      matchingHistoryInvocations
          (lp (gateSecondPath width 0 ++ [.fn])
            [gateMarker .second width 0])
          (prepStorage width) = [] := by
    change matchingHistoryInvocations (unaryInstance .t width 0)
        (prepStorage width) = []
    exact matchingHistoryInvocations_unaryInstance_prepStorage
      .t width 0 width
  simp [tPostStorage, tFireSourceStorage, prepPark,
    closeVirtualPort, directionSame, bulletIs, headBang_cons,
    noMatches] at ⊢

@[simp] theorem sameKeyFrames_hAnswer (width : Nat)
    (wire : Fin width) (word : Word width) :
    sameKeyFrames (hFireRetained width wire word)
        ⟨.h, none, unaryInstance .h width 0⟩ = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame retained selected
  have membership : frame ∈ prepFrames width word :=
    (List.mem_filter.mp retained).1
  have gateC := prepFrames_gate_c width word frame membership
  have keyEqual := key_eq_of_beq frame.key
    ⟨.h, none, unaryInstance .h width 0⟩ selected
  have gateEqual := congrArg Key.gate keyEqual
  simp [gateC] at gateEqual

@[simp] theorem decodeInput_hAnswer (width : Nat)
    (wire : Fin width) (word : Word width) (bit : Bool) :
    decodeInput bit (hAnswer width bit)
        (hFireRetained width wire word) =
      some (.alpha .h none (unaryInstance .h width 0) .fresh, [],
        hFireRetained width wire word) := by
  have popped := sameKeyFrames_hAnswer width wire word
  unfold sameKeyFrames at popped
  cases bit <;> simp [decodeInput, hAnswer, popped]

@[simp] theorem decodeInput_hAnswer_expanded (width : Nat)
    (wire : Fin width) (word : Word width) (bit : Bool) :
    decodeInput bit
        (alpha .h none (unaryInstance .h width 0) bit .fresh)
        (hFireRetained width wire word) =
      some (.alpha .h none (unaryInstance .h width 0) .fresh, [],
        hFireRetained width wire word) := by
  simpa [hAnswer] using decodeInput_hAnswer width wire word bit

@[simp] theorem cparkMatches_hPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) :
    cparkMatches (gateInvoked width 0) (hPostStorage width wire word) =
      [(2, false, .logged (gateFirstLogged width 0), [],
        gateOccurrence width 0, gateContinuationPath width 0)] := by
  have tailNone := filterCparkEq_any_prepStorage
    (prepInvoked width) width 3
  simp [cparkMatches, hPostStorage, hFireSourceStorage, prepPark,
    prepFirstLogged, gateFirstLogged_zero, gateInvoked_zero,
    preparationOccurrence, gateOccurrence, gateRoot,
    prepContinuationPath, gateContinuationPath,
    tailNone]
  intro stored index membership
  exact List.filterMap_eq_nil_iff.mp tailNone (stored, index) membership

@[simp] theorem replace_hPostStorage_with_history (width : Nat)
    (wire : Fin width) (word : Word width) :
    replaceStoreAt? (hPostStorage width wire word) 2
        (unaryHistory .h width 0) =
      some (hCompletedStorage width wire word) := by
  rfl

@[simp] theorem replace_hPostStorage_with_expanded_history (width : Nat)
    (wire : Fin width) (word : Word width) :
    replaceStoreAt? (hPostStorage width wire word) 2
        (.chistory (gateInvoked width 0)
          (.logged (gateFirstLogged width 0)) []
          (.alpha .h none (unaryInstance .h width 0) .fresh) []
          (gateOccurrence width 0) (gateContinuationPath width 0)) =
      some (hCompletedStorage width wire word) := by
  simpa [unaryHistory] using
    replace_hPostStorage_with_history width wire word

@[simp] theorem storedPortBindings_hBinder_hPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedPortBindings hBinderPath (hPostStorage width wire word) = [] := by
  change storedPortBindings hBinderPath
      (prepPark width :: prepStorage width) = []
  exact storedPortBindings_hBinder_prepPark width

@[simp] theorem storedReturnOccurrences_virtual_hPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedReturnOccurrences [.fn, .fn, .arg]
        (hPostStorage width wire word) = [] := by
  change storedReturnOccurrences [.fn, .fn, .arg]
      (prepStorage width) = []
  exact storedReturnOccurrences_virtual_prepStorage width

@[simp] theorem storedReturnOccurrences_gateSecondFn_hPostStorage
    (width : Nat) (wire : Fin width) (word : Word width) :
    storedReturnOccurrences (gateSecondPath width 0 ++ [.fn])
        (hPostStorage width wire word) = [] := by
  change storedReturnOccurrences (gateSecondPath width 0 ++ [.fn])
      (prepStorage width) = []
  simpa [gateSecondPath_zero] using
    storedReturnOccurrences_prepSecondFn_prepStorage width width

@[simp] theorem finishCStage_hPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames,
        hPostStorage width wire word⟩ = none := by
  rfl

@[simp] theorem closeVirtualPort_unary_hPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (tape : List Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [unaryInstance .h width 0], bullet :: tape,
        none, frames, hPostStorage width wire word⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [hPostStorage, hFireSourceStorage, prepPark,
    closeVirtualPort, directionSame, bulletIs, headBang_cons,
    matchingHistoryInvocations_unaryInstance_prepStorage]

@[simp] theorem closeVirtualPort_gateMarker_hPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (tape : List Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [gateMarker .second width 0], bullet :: tape,
        none, frames, hPostStorage width wire word⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [hPostStorage, hFireSourceStorage, prepPark,
    closeVirtualPort, directionSame, bulletIs, headBang_cons,
    matchingHistoryInvocations_gateMarker_prepStorage]

@[simp] theorem sameKeyFrames_tAnswer (width : Nat)
    (wire : Fin width) (word : Word width) :
    sameKeyFrames (tFireRetained width wire word)
        ⟨.t, none,
          lp (gateSecondPath width 0 ++ [.fn])
            [gateMarker .second width 0]⟩ = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame retained selected
  have membership : frame ∈ prepFrames width word :=
    (List.mem_filter.mp retained).1
  have gateC := prepFrames_gate_c width word frame membership
  have keyEqual := key_eq_of_beq frame.key
    ⟨.t, none,
      lp (gateSecondPath width 0 ++ [.fn])
        [gateMarker .second width 0]⟩ selected
  have gateEqual := congrArg Key.gate keyEqual
  simp [gateC] at gateEqual

@[simp] theorem decodeInput_tAnswer (width : Nat)
    (wire : Fin width) (word : Word width) (bit : Bool) :
    decodeInput bit (tAnswer width bit)
        (tFireRetained width wire word) =
      some (.alpha .t none
          (lp (gateSecondPath width 0 ++ [.fn])
            [gateMarker .second width 0]) .fresh, [],
        tFireRetained width wire word) := by
  have popped := sameKeyFrames_tAnswer width wire word
  unfold sameKeyFrames at popped
  cases bit <;> simp [decodeInput, tAnswer, popped]

@[simp] theorem decodeInput_tAnswer_expanded (width : Nat)
    (wire : Fin width) (word : Word width) (bit : Bool) :
    decodeInput bit
        (alpha .t none
          (lp (gateSecondPath width 0 ++ [.fn])
            [gateMarker .second width 0]) bit .fresh)
        (tFireRetained width wire word) =
      some (.alpha .t none
          (lp (gateSecondPath width 0 ++ [.fn])
            [gateMarker .second width 0]) .fresh, [],
        tFireRetained width wire word) := by
  simpa [tAnswer] using decodeInput_tAnswer width wire word bit

@[simp] theorem cparkMatches_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) :
    cparkMatches (gateInvoked width 0) (tPostStorage width wire word) =
      [(2, false, .logged (gateFirstLogged width 0), [],
        gateOccurrence width 0, gateContinuationPath width 0)] := by
  have tailNone := filterCparkEq_any_prepStorage
    (prepInvoked width) width 3
  simp [cparkMatches, tPostStorage, tFireSourceStorage, prepPark,
    prepFirstLogged, gateFirstLogged_zero, gateInvoked_zero,
    preparationOccurrence, gateOccurrence, gateRoot,
    prepContinuationPath, gateContinuationPath,
    tailNone]
  intro stored index membership
  exact List.filterMap_eq_nil_iff.mp tailNone (stored, index) membership

@[simp] theorem replace_tPostStorage_with_history (width : Nat)
    (wire : Fin width) (word : Word width) :
    replaceStoreAt? (tPostStorage width wire word) 2
        (unaryHistory .t width 0) =
      some (tCompletedStorage width wire word) := by
  rfl

@[simp] theorem replace_tPostStorage_with_expanded_history (width : Nat)
    (wire : Fin width) (word : Word width) :
    replaceStoreAt? (tPostStorage width wire word) 2
        (.chistory (gateInvoked width 0)
          (.logged (gateFirstLogged width 0)) []
          (.alpha .t none
            (lp (gateSecondPath width 0 ++ [.fn])
              [gateMarker .second width 0]) .fresh) []
          (gateOccurrence width 0) (gateContinuationPath width 0)) =
      some (tCompletedStorage width wire word) := by
  simpa [unaryHistory, unaryInstance] using
    replace_tPostStorage_with_history width wire word

@[simp] theorem finishCStage_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames,
        tPostStorage width wire word⟩ = none := by
  rfl

@[simp] theorem closeVirtualPort_gateMarker_tPostStorage (width : Nat)
    (wire : Fin width) (word : Word width) (path : Path)
    (tape : List Entry) (frames : List Frame) :
    closeVirtualPort
      ⟨path, .up, [gateMarker .second width 0], bullet :: tape,
        none, frames, tPostStorage width wire word⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [tPostStorage, tFireSourceStorage, prepPark,
    closeVirtualPort, directionSame, bulletIs, headBang_cons,
    matchingHistoryInvocations_gateMarker_prepStorage]

def cxHeadState (width : Nat) (data : BoundaryData width) : NFState :=
  .run
    ⟨gateOccurrence width 0, .down, [],
      [appBullet, appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxCalled (width : Nat) (data : BoundaryData width) : NFState :=
  .run
    ⟨[.arg], .up, [gateInvoked width 0],
      [gateMarker .first width 0, appBullet, appBullet,
       cmu .first (gateInvoked width 0), appBullet, appBullet,
       rb 0 [] []], none, data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxCRecalled (width : Nat) (data : BoundaryData width) : NFState :=
  .run
    ⟨cBinderPath, .up, [],
      [lp (gateOccurrence width 0) [], appBullet, appBullet, appBullet,
       rb 0 [] []], none, data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxControlArrival (width : Nat) (control : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨prepContinuationPath control.val ++ [.body], .up, [],
      [lp (gateFirstPath width 0) [gateMarker .first width 0],
       appBullet, appBullet, cmu .first (gateInvoked width 0),
       appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def cxParked (width : Nat) (control : Fin width)
    (word : Word width) : NFState :=
  let invoked := gateInvoked width 0
  let controlKey := initialWireKeys width control
  .run
    ⟨gateSecondPath width 0, .down, [gateMarker .second width 0],
      [appBullet, appBullet, cmu .second invoked, appBullet, rb 0 [] []],
      none,
      removeFrameKey (prepFrames width word) controlKey,
      .cpark invoked (word control)
          (consumedDescriptor controlKey)
          [consumedFrameDescriptor controlKey]
          (gateOccurrence width 0) (gateContinuationPath width 0) ::
        .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) ::
        prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def cxControlDelivered (width : Nat) (control : Fin width)
    (word : Word width) : NFState :=
  .run
    ⟨gateFirstPath width 0, .up, [gateMarker .first width 0],
      List.replicate (bitNat (word control)) appBullet ++
        [initialWireAnswer word control,
         cmu .first (gateInvoked width 0), appBullet, appBullet, rb 0 [] []],
      none, prepFrames width word,
      .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) :: prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def cxTargetArrival (width : Nat) (control target : Fin width)
    (word : Word width) : NFState :=
  let invoked := gateInvoked width 0
  let controlKey := initialWireKeys width control
  .run
    ⟨prepContinuationPath target.val ++ [.body], .up, [],
      [lp (gateSecondPath width 0) [gateMarker .second width 0],
       appBullet, appBullet, cmu .second invoked, appBullet, rb 0 [] []],
      none,
      removeFrameKey (prepFrames width word) controlKey,
      .cpark invoked (word control)
          (consumedDescriptor controlKey)
          [consumedFrameDescriptor controlKey]
          (gateOccurrence width 0) (gateContinuationPath width 0) ::
        .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) ::
        prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def cxTargetDelivered (width : Nat) (control target : Fin width)
    (word : Word width) : NFState :=
  let invoked := gateInvoked width 0
  let controlKey := initialWireKeys width control
  .run
    ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
      List.replicate (bitNat (word target)) appBullet ++
        [initialWireAnswer word target, cmu .second invoked,
         appBullet, rb 0 [] []],
      none,
      removeFrameKey (prepFrames width word) controlKey,
      .cquery .second (prepInvoked target.val)
          (cxInputLogged .second width 0) ::
        .cpark invoked (word control)
          (consumedDescriptor controlKey)
          [consumedFrameDescriptor controlKey]
          (gateOccurrence width 0) (gateContinuationPath width 0) ::
        .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) ::
        prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def cxFired (width : Nat) (control target : Fin width)
    (word : Word width) : NFState :=
  let invoked := gateInvoked width 0
  let controlKey := initialWireKeys width control
  let targetKey := initialWireKeys width target
  let retained := removeFrameKey
    (removeFrameKey (prepFrames width word) controlKey) targetKey
  .run
    ⟨gateContinuationPath width 0, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width 0 (word control) (xor (word target) (word control))
        retained,
      .cquery .second (prepInvoked target.val)
          (cxInputLogged .second width 0) ::
        cxHistory width 0 controlKey targetKey ::
        .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) ::
        prepStorage width⟩
    ⟨.hole false, some [], [], []⟩

def cxFireSource (width : Nat) (control target : Fin width)
    (word : Word width) : Token :=
  let invoked := gateInvoked width 0
  let controlKey := initialWireKeys width control
  ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
    List.replicate (bitNat (word target)) bullet ++
      [initialWireAnswer word target, cmu .second invoked,
       bullet, rb 0 [] []], none,
    removeFrameKey (prepFrames width word) controlKey,
    .cquery .second (prepInvoked target.val)
        (cxInputLogged .second width 0) ::
      .cpark invoked (word control)
        (consumedDescriptor controlKey)
        [consumedFrameDescriptor controlKey]
        (gateOccurrence width 0) (gateContinuationPath width 0) ::
      .cquery .second (prepInvoked control.val)
        (cxInputLogged .first width 0) ::
      prepStorage width⟩

@[simp] theorem cxFireSource_parked (width : Nat)
    (control target : Fin width) (word : Word width) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if (other == gateInvoked width 0) = true then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((cxFireSource width control target word).storage.zipIdx) =
      [(1, word control,
        consumedDescriptor (initialWireKeys width control),
        [consumedFrameDescriptor (initialWireKeys width control)],
        gateOccurrence width 0, gateContinuationPath width 0)] := by
  change List.filterMap _
      ((.cquery .second (prepInvoked target.val)
          (cxInputLogged .second width 0) ::
        .cpark (gateInvoked width 0) (word control)
          (consumedDescriptor (initialWireKeys width control))
          [consumedFrameDescriptor (initialWireKeys width control)]
          (gateOccurrence width 0) (gateContinuationPath width 0) ::
        .cquery .second (prepInvoked control.val)
          (cxInputLogged .first width 0) ::
        prepStorage width).zipIdx 0) = _
  simpa using filterCparkBEq_one_cquery_cpark_prepStorage
    (gateInvoked width 0)
    (prepInvoked target.val) (cxInputLogged .second width 0)
    (prepInvoked control.val) (cxInputLogged .first width 0)
    .second .second (word control)
    (consumedDescriptor (initialWireKeys width control))
    [consumedFrameDescriptor (initialWireKeys width control)]
    (gateOccurrence width 0) (gateContinuationPath width 0) width 0

@[simp] theorem cparkMatches_cxFireSource (width : Nat)
    (control target : Fin width) (word : Word width) :
    cparkMatches (gateInvoked width 0)
        (cxFireSource width control target word).storage =
      [(1, word control,
        consumedDescriptor (initialWireKeys width control),
        [consumedFrameDescriptor (initialWireKeys width control)],
        gateOccurrence width 0, gateContinuationPath width 0)] := by
  unfold cparkMatches
  exact cxFireSource_parked width control target word

set_option maxHeartbeats 0 in
theorem first_cx_reaches_head (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 3
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨cxHeadState n (initialBoundaryData word), amplitude⟩] := by
  have atTail := subterm_initialCxNode_root n control target tail
  have atFn := subterm_initialCxNode_fn n control target tail
  have atFnFn := subterm_initialCxNode_fn_fn n control target tail
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, gateReadyState, cxHeadState,
    initialBoundaryData, initialCxNode, composedStep, readbackStep,
    delegateStep, cnotStepToken, kernelStepToken, kernelToken,
    composedToken, tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    gateOccurrence, gateRoot, edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_head_recall (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 1
        [⟨cxHeadState n (initialBoundaryData word), amplitude⟩] =
      [⟨cxCRecalled n (initialBoundaryData word), amplitude⟩] := by
  have atC := subterm_initialCxNode_c n control target tail
  have binderC := binder_initialCxNode_c n control target tail
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxHeadState, cxCRecalled,
    initialBoundaryData, initialCxNode, composedStep, readbackStep,
    delegateStep, cnotStepToken, kernelStepToken, kernelToken,
    composedToken, tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    binder_initialCxNode_c, gateInvoked, gateOccurrence, gateRoot,
    gateContinuationPath, edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_recalled_to_call (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 5
        [⟨cxCRecalled n (initialBoundaryData word), amplitude⟩] =
      [⟨cxCallSource n (initialBoundaryData word), amplitude⟩] := by
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCRecalled, cxCallSource,
    initialBoundaryData, composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    firstRB, rbAfterOutputBullets, treeAt?, returnSuccessor?,
    closeVirtualPort, returnContinuation, deliverPort,
    binder_initialCxNode_c_path,
    cBinderPath,
    deliverPort_cBinder_prepStorage, deliverPort_tBinder_prepStorage,
    deliverPort_hBinder_prepStorage,
    gateInvoked, gateOccurrence, gateRoot, gateContinuationPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

theorem first_cx_head_to_call (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 6
        [⟨cxHeadState n (initialBoundaryData word), amplitude⟩] =
      [⟨cxCallSource n (initialBoundaryData word), amplitude⟩] := by
  exact evolve_compose _ _ 1 5 _ _ _
    (first_cx_head_recall control target tail certificate word amplitude)
    (first_cx_recalled_to_call control target tail certificate word amplitude)

theorem first_cx_reaches_call (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 9
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨cxCallSource n (initialBoundaryData word), amplitude⟩] := by
  exact evolve_compose _ _ 3 6 _ _ _
    (first_cx_reaches_head control target tail certificate word amplitude)
    (first_cx_head_to_call control target tail certificate word amplitude)

set_option maxHeartbeats 0 in
theorem first_cx_call (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 1
        [⟨cxCallSource n (initialBoundaryData word), amplitude⟩] =
      [⟨cxCalled n (initialBoundaryData word), amplitude⟩] := by
  have arguments :
      cArguments? (prepProgram n (initialCxNode n control target tail))
          (preparationRoot n ++ [.fn, .fn, .fn]) =
        some (preparationRoot n ++ [.fn, .fn, .arg],
          preparationRoot n ++ [.fn, .arg],
          preparationRoot n ++ [.arg]) := by
    simpa [gateOccurrence, gateFirstPath, gateSecondPath,
      gateContinuationPath, gateRoot] using
      cArguments_initialCxNode n control target tail
  have noPrior :
      hasPriorCInvocation
          (lp (preparationRoot n ++ [.fn, .fn, .fn]) [])
          (prepStorage n) = false := by
    simpa [prepInvoked, preparationOccurrence] using
      hasPriorCInvocation_prepStorage n
  have directionSame :
      (Direction.down == Direction.down) = true := by native_decide
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCallSource, cxCalled,
    initialBoundaryData, composedStep, readbackStep, delegateStep,
    cnotStepToken, freshCCall, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    gateInvoked, gateOccurrence, gateRoot, gateMarker,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_to_control (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 8
        [⟨cxCalled n (initialBoundaryData word), amplitude⟩] =
      [⟨cxControlArrival n control (initialBoundaryData word), amplitude⟩] := by
  have atControl := subterm_initialCxNode_control n control target tail
  have binderControl := binder_initialCxNode_control n control target tail
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  have downNotUp :
      (Direction.down != Direction.up) = true := by native_decide
  have downEqUp :
      (Direction.down == Direction.up) = false := by native_decide
  have markerNotBullet :
      isBullet (gateMarker .first n 0) = false := by rfl
  have controlDepthPositive :
      1 ≤ level (gateFirstPath n 0) -
        level (prepContinuationPath control.val ++ [.body]) := by
    simp [gateFirstPath, gateRoot, level, prepContinuationPath,
      preparationRoot, shellBodyPath]
    omega
  have controlSlice :
      List.take
          (level (gateFirstPath n 0) -
            level (prepContinuationPath control.val ++ [.body]))
          [gateMarker .first n 0] = [gateMarker .first n 0] :=
    List.take_of_length_le controlDepthPositive
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCalled, cxControlArrival,
    initialBoundaryData, composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken,
    tokenWith, mapKernelEdge, kernelDeterministic, nfDeterministic,
    firstRB, rbAfterOutputBullets, treeAt?, closeVirtualPort, headBang_cons,
    returnContinuation, gateInvoked, gateOccurrence, gateRoot,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    cBinderPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_control_deliver (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 2
        [⟨cxControlArrival n control (initialBoundaryData word), amplitude⟩] =
      [⟨cxControlDelivered n control word, amplitude⟩] := by
  have binderControl := binder_initialCxNode_control n control target tail
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have controlKeyEq :
      (⟨.c, some .second, prepInvoked control.val⟩ : Key) =
        initialWireKeys n control := by rfl
  cases controlBit : word control <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, cxControlArrival, cxControlDelivered,
      initialBoundaryData, composedStep, readbackStep, delegateStep,
      cnotStepToken, finishCStage_prepStorage, finishStageRow,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic,
      deliverPort, binderControl, storedPortBindings_initialWire,
      sameKeyFrames_initialWire, splitCustom, stageRow,
      directionSame, appIs, controlBit, controlKeyEq,
      bitNat, headBang_cons, initialWireAnswer, gateMarker, cxInputLogged,
      initialWireFrame, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_control_park_finish (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 2
        [⟨cxControlDelivered n control word, amplitude⟩] =
      [⟨cxParked n control word, amplitude⟩] := by
  have directionEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have portSame : (Port.first != Port.first) = false := by native_decide
  have pairSame :
      ((Port.first, gateInvoked n 0) ==
        (Port.first, gateInvoked n 0)) = true := by
    change (true && entryBEq (gateInvoked n 0) (gateInvoked n 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.first, gateInvoked n 0) !=
        some (Port.first, gateInvoked n 0)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have controlKeyEq :
      (⟨.c, some .second, prepInvoked control.val⟩ : Key) =
        initialWireKeys n control := by rfl
  have decoded := decodeInput_initialWire word control
  have decodedExpanded :
      decodeInput (word control)
          (alpha .c (some .second) (prepInvoked control.val)
            (word control) (.recalledAbsent .fresh))
          (prepFrames n word) =
        some
          (consumedDescriptor (initialWireKeys n control),
            [consumedFrameDescriptor (initialWireKeys n control)],
            removeFrameKey (prepFrames n word)
              (initialWireKeys n control)) := by
    simpa [initialWireAnswer] using decoded
  have noGateHistory :=
    findHistory_gateMarker_prepStorage .first n 0 n
  have noGateHistoryExpanded :
      List.findSome?
          (fun item =>
            match item with
            | .chistory invoked _ _ _ _ _ _ =>
                if cgam .first (gateInvoked n 0) (gateOccurrence n 0)
                    (gateFirstPath n 0) (gateSecondPath n 0)
                    (gateContinuationPath n 0) == invoked
                then some invoked else none
            | _ => none)
          (prepStorage n) = none := by
    simpa [gateMarker] using noGateHistory
  have noGateHistoryEq :
      List.findSome?
          (fun item =>
            match item with
            | .chistory invoked _ _ _ _ _ _ =>
                if cgam .first (gateInvoked n 0) (gateOccurrence n 0)
                    (gateFirstPath n 0) (gateSecondPath n 0)
                    (gateContinuationPath n 0) = invoked
                then some invoked else none
            | _ => none)
          (prepStorage n) = none := by
    simpa only [beq_iff_eq] using noGateHistoryExpanded
  cases controlBit : word control
  all_goals rw [controlBit] at decodedExpanded
  all_goals
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, cxControlDelivered, cxParked,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cquery, finishStageRow, kernelStepToken,
      kernelToken, composedToken, tokenWith, mapKernelEdge,
      kernelDeterministic, nfDeterministic, firstRB, treeAt?,
      rbAfterOutputBullets, deliverPort,
      returnContinuation, classifyArrival, parkFirst,
      splitCustom, stageRow, decodeInput_initialWire, controlBit,
      decodedExpanded, noGateHistoryExpanded, noGateHistoryEq,
      directionEqual, directionSame, portSame, probeSame, bulletIs,
      bitNat, headBang_cons, controlKeyEq,
      consumedDescriptor, consumedFrameDescriptor, initialWireFrame,
      initialWireAnswer, cxInputLogged,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]
  all_goals
    rfl

theorem first_cx_control_park (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 4
        [⟨cxControlArrival n control (initialBoundaryData word), amplitude⟩] =
      [⟨cxParked n control word, amplitude⟩] := by
  exact evolve_compose _ _ 2 2 _ _ _
    (first_cx_control_deliver control target tail certificate word amplitude)
    (first_cx_control_park_finish control target tail certificate word amplitude)

set_option maxHeartbeats 0 in
theorem first_cx_target_arrival (control target : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 1
        [⟨cxParked n control word, amplitude⟩] =
      [⟨cxTargetArrival n control target word, amplitude⟩] := by
  have atTarget := subterm_initialCxNode_target n control target tail
  have binderTarget := binder_initialCxNode_target n control target tail
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionNotEqual :
      (Direction.down == Direction.up) = false := by native_decide
  have targetDepthPositive :
      1 ≤ level (gateSecondPath n 0) -
        level (prepContinuationPath target.val ++ [.body]) := by
    simp [gateSecondPath, gateRoot, level, prepContinuationPath,
      preparationRoot, shellBodyPath]
    omega
  have targetSlice :
      List.take
          (level (gateSecondPath n 0) -
            level (prepContinuationPath target.val ++ [.body]))
          [gateMarker .second n 0] = [gateMarker .second n 0] :=
    List.take_of_length_le targetDepthPositive
  have targetDrop :
      List.drop
          (level (gateSecondPath n 0) -
            level (prepContinuationPath target.val ++ [.body]))
          [gateMarker .second n 0] = [] :=
    List.drop_eq_nil_of_le targetDepthPositive
  simp_all (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxParked, cxTargetArrival,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    mapKernelEdge, kernelDeterministic, nfDeterministic,
    deliverPort, returnContinuation,
    directionDifferent, directionNotEqual,
    gateInvoked, gateOccurrence, gateRoot, gateSecondPath,
    gateContinuationPath, gateMarker, cxInputLogged,
    consumedDescriptor, consumedFrameDescriptor,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_cx_target_deliver (control target : Fin n)
    (distinct : control ≠ target) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 2
        [⟨cxTargetArrival n control target word, amplitude⟩] =
      [⟨cxTargetDelivered n control target word, amplitude⟩] := by
  have binderTarget := binder_initialCxNode_target n control target tail
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have targetKeyEq :
      (⟨.c, some .second, prepInvoked target.val⟩ : Key) =
        initialWireKeys n target := by rfl
  cases targetBit : word target <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, cxTargetArrival, cxTargetDelivered,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cpark, finishStageRow, kernelStepToken, kernelToken,
      composedToken, tokenWith, mapKernelEdge, kernelDeterministic,
      nfDeterministic, deliverPort, binderTarget,
      storedPortBindings_cpark_cquery, storedPortBindings_initialWire,
      sameKeyFrames_initialWire_after_remove word control target distinct,
      splitCustom, stageRow, directionSame, appIs, targetBit,
      targetKeyEq, bitNat, headBang_cons, initialWireAnswer,
      gateMarker, cxInputLogged, initialWireFrame,
      consumedDescriptor, consumedFrameDescriptor,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

@[simp] theorem fireSecond_initialCx (control target : Fin n)
    (distinct : control ≠ target) (tail : Term) (word : Word n) :
    fireSecond (prepProgram n (initialCxNode n control target tail))
        (cxFireSource n control target word)
        (word target, initialWireAnswer word target, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n 0 (word control)
              (xor (word target) (word control))
              (removeFrameKey
                (removeFrameKey (prepFrames n word)
                  (initialWireKeys n control))
                (initialWireKeys n target)),
            .cquery .second (prepInvoked target.val)
                (cxInputLogged .second n 0) ::
              cxHistory n 0 (initialWireKeys n control)
                (initialWireKeys n target) ::
              .cquery .second (prepInvoked control.val)
                (cxInputLogged .first n 0) ::
              prepStorage n⟩)) := by
  have portSame : (Port.second != Port.second) = false := by native_decide
  have pairSame :
      ((Port.second, gateInvoked n 0) ==
        (Port.second, gateInvoked n 0)) = true := by
    change (true && entryBEq (gateInvoked n 0) (gateInvoked n 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n 0) !=
        some (Port.second, gateInvoked n 0)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have decoded :=
    decodeInput_initialWire_after_remove word control target distinct
  have decodedExpanded :
      decodeInput (word target)
          (alpha .c (some .second) (prepInvoked target.val)
            (word target) (.recalledAbsent .fresh))
          (removeFrameKey (prepFrames n word)
            (initialWireKeys n control)) =
        some
          (consumedDescriptor (initialWireKeys n target),
            [consumedFrameDescriptor (initialWireKeys n target)],
            removeFrameKey
              (removeFrameKey (prepFrames n word)
                (initialWireKeys n control))
              (initialWireKeys n target)) := by
    simpa [initialWireAnswer] using decoded
  have parkedExpanded :
      List.filterMap
          (fun x =>
            match x.fst with
            | .cpark other bit descriptor descriptors occurrence continuation =>
                if (other == gateInvoked n 0) = true then
                  some (x.snd, bit, descriptor, descriptors,
                    occurrence, continuation)
                else none
            | _ => none)
          ((.cquery .second (prepInvoked target.val)
                (cxInputLogged .second n 0), 0) ::
            (.cpark (gateInvoked n 0) (word control)
                (consumedDescriptor (initialWireKeys n control))
                [consumedFrameDescriptor (initialWireKeys n control)]
                (gateOccurrence n 0) (gateContinuationPath n 0), 1) ::
            (.cquery .second (prepInvoked control.val)
                (cxInputLogged .first n 0), 2) ::
            (prepStorage n).zipIdx 3) =
        [(1, word control,
          consumedDescriptor (initialWireKeys n control),
          [consumedFrameDescriptor (initialWireKeys n control)],
          gateOccurrence n 0, gateContinuationPath n 0)] := by
    simpa using filterCparkBEq_one_expanded
      (gateInvoked n 0)
      (prepInvoked target.val) (cxInputLogged .second n 0)
      (prepInvoked control.val) (cxInputLogged .first n 0)
      .second .second (word control)
      (consumedDescriptor (initialWireKeys n control))
      [consumedFrameDescriptor (initialWireKeys n control)]
      (gateOccurrence n 0) (gateContinuationPath n 0) n 0
  have parkedFullyExpanded :
      List.filterMap
          (fun x =>
            match x.fst with
            | .cpark other bit descriptor descriptors occurrence continuation =>
                if (other == gateInvoked n 0) = true then
                  some (x.snd, bit, descriptor, descriptors,
                    occurrence, continuation)
                else none
            | _ => none)
          ((.cquery .second (prepInvoked target.val)
                (lp (gateSecondPath n 0) [gateMarker .second n 0]), 0) ::
            (.cpark (gateInvoked n 0) (word control)
                (.alpha .c (initialWireKeys n control).port
                  (initialWireKeys n control).inst (.recalledAbsent .fresh))
                [⟨.c, (initialWireKeys n control).port,
                  (initialWireKeys n control).inst, .recalledAbsent .fresh⟩]
                (gateOccurrence n 0) (gateContinuationPath n 0), 1) ::
            (.cquery .second (prepInvoked control.val)
                (lp (gateFirstPath n 0) [gateMarker .first n 0]), 2) ::
            (prepStorage n).zipIdx 3) =
        [(1, word control,
          .alpha .c (initialWireKeys n control).port
            (initialWireKeys n control).inst (.recalledAbsent .fresh),
          [⟨.c, (initialWireKeys n control).port,
            (initialWireKeys n control).inst, .recalledAbsent .fresh⟩],
          gateOccurrence n 0, gateContinuationPath n 0)] := by
    simpa [cxInputLogged, consumedDescriptor, consumedFrameDescriptor] using
      parkedExpanded
  have parkedLength := congrArg List.length parkedFullyExpanded
  cases controlBit : word control <;> cases targetBit : word target
  all_goals rw [targetBit] at decodedExpanded
  all_goals
    simp (config := { maxSteps := 1000000 })
      [fireSecond, cparkMatches_cxFireSource, cxFireSource,
      portSame, probeSame, entryBEq_refl,
      filterCparkBEq_one_cquery_cpark_prepStorage,
      filterCparkBEq_one_expanded,
      decodedExpanded,
      subterm_initialCxNode_continuation,
      subterm_initialCxNode_continuation_body,
      replaceStoreAt?, headBang_cons, bulletIs,
      controlBit, targetBit, initialWireAnswer, cxInputLogged,
      consumedDescriptor, consumedFrameDescriptor, cxHistory,
      outputFrames, bitNat]

@[simp] theorem fireSecond_initialCx_expanded (control target : Fin n)
    (distinct : control ≠ target) (tail : Term) (word : Word n) :
    fireSecond (prepProgram n (initialCxNode n control target tail))
        ⟨gateSecondPath n 0, .up, [gateMarker .second n 0],
          List.replicate (bitNat (word target)) bullet ++
            [alpha .c (some .second) (prepInvoked target.val)
               (word target) (.recalledAbsent .fresh),
             cmu .second (gateInvoked n 0),
             bullet, rb 0 [] []], none,
          removeFrameKey (prepFrames n word) (initialWireKeys n control),
          .cquery .second (prepInvoked target.val)
              (cxInputLogged .second n 0) ::
            .cpark (gateInvoked n 0) (word control)
              (consumedDescriptor (initialWireKeys n control))
              [consumedFrameDescriptor (initialWireKeys n control)]
              (gateOccurrence n 0) (gateContinuationPath n 0) ::
            .cquery .second (prepInvoked control.val)
              (cxInputLogged .first n 0) ::
            prepStorage n⟩
        (word target,
          alpha .c (some .second) (prepInvoked target.val)
            (word target) (.recalledAbsent .fresh),
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n 0 (word control)
              (xor (word target) (word control))
              (removeFrameKey
                (removeFrameKey (prepFrames n word)
                  (initialWireKeys n control))
                (initialWireKeys n target)),
            .cquery .second (prepInvoked target.val)
                (cxInputLogged .second n 0) ::
              cxHistory n 0 (initialWireKeys n control)
                (initialWireKeys n target) ::
              .cquery .second (prepInvoked control.val)
                (cxInputLogged .first n 0) ::
              prepStorage n⟩)) := by
  change fireSecond (prepProgram n (initialCxNode n control target tail))
      (cxFireSource n control target word)
      (word target, initialWireAnswer word target, [bullet, rb 0 [] []]) = _
  exact fireSecond_initialCx control target distinct tail word

set_option maxHeartbeats 0 in
theorem first_cx_target_fire (control target : Fin n)
    (distinct : control ≠ target) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 2
        [⟨cxTargetDelivered n control target word, amplitude⟩] =
      [⟨cxFired n control target word, amplitude⟩] := by
  have directionEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have portSame : (Port.second != Port.second) = false := by native_decide
  have pairSame :
      ((Port.second, gateInvoked n 0) ==
        (Port.second, gateInvoked n 0)) = true := by
    change (true && entryBEq (gateInvoked n 0) (gateInvoked n 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n 0) !=
        some (Port.second, gateInvoked n 0)) = false := by
    simp [bne_eq, pairSame]
  have invokedSame :
      (gateInvoked n 0 == gateInvoked n 0) = true :=
    entryBEq_refl _
  have bulletIs : isBullet bullet = true := by native_decide
  have targetKeyEq :
      (⟨.c, some .second, prepInvoked target.val⟩ : Key) =
        initialWireKeys n target := by rfl
  have decoded :=
    decodeInput_initialWire_after_remove word control target distinct
  have decodedExpanded :
      decodeInput (word target)
          (alpha .c (some .second) (prepInvoked target.val)
            (word target) (.recalledAbsent .fresh))
          (removeFrameKey (prepFrames n word)
            (initialWireKeys n control)) =
        some
          (consumedDescriptor (initialWireKeys n target),
            [consumedFrameDescriptor (initialWireKeys n target)],
            removeFrameKey
              (removeFrameKey (prepFrames n word)
                (initialWireKeys n control))
              (initialWireKeys n target)) := by
    simpa [initialWireAnswer] using decoded
  cases controlBit : word control <;> cases targetBit : word target
  all_goals rw [targetBit] at decodedExpanded
  all_goals
    have fired :=
      fireSecond_initialCx_expanded control target distinct tail word
    rw [controlBit, targetBit] at fired
    simp only [bitNat, List.replicate_zero, List.nil_append,
      List.replicate_succ, List.cons_append] at fired
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, cxTargetDelivered, cxFired,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cquery, finishStageRow, kernelStepToken, kernelToken,
      composedToken, tokenWith, mapKernelEdge, kernelDeterministic,
      nfDeterministic, firstRB, treeAt?, rbAfterOutputBullets,
      deliverPort, returnContinuation, classifyArrival,
      fired,
      splitCustom, stageRow, replaceStoreAt?,
      filterCparkBEq_any_prepStorage, filterCparkEq_any_prepStorage,
      decodedExpanded, subterm_initialCxNode_continuation,
      subterm_initialCxNode_continuation_body,
      directionEqual, directionSame, portSame, probeSame, invokedSame,
      bulletIs, controlBit, targetBit, targetKeyEq,
      bitNat, headBang_cons, initialWireAnswer,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

theorem first_cx_ready_to_fired (control target : Fin n)
    (distinct : control ≠ target) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialCxNode n control target tail)) certificate 27
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨cxFired n control target word, amplitude⟩] := by
  have reachesCalled :
      evolve (prepProgram n (initialCxNode n control target tail))
          certificate 10
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [⟨cxCalled n (initialBoundaryData word), amplitude⟩] :=
    evolve_compose _ _ 9 1 _ _ _
      (first_cx_reaches_call control target tail certificate word amplitude)
      (first_cx_call control target tail certificate word amplitude)
  have reachesControl :
      evolve (prepProgram n (initialCxNode n control target tail))
          certificate 18
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [⟨cxControlArrival n control (initialBoundaryData word),
          amplitude⟩] :=
    evolve_compose _ _ 10 8 _ _ _ reachesCalled
      (first_cx_to_control control target tail certificate word amplitude)
  have reachesParked :
      evolve (prepProgram n (initialCxNode n control target tail))
          certificate 22
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [⟨cxParked n control word, amplitude⟩] :=
    evolve_compose _ _ 18 4 _ _ _ reachesControl
      (first_cx_control_park control target tail certificate word amplitude)
  have reachesTarget :
      evolve (prepProgram n (initialCxNode n control target tail))
          certificate 23
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [⟨cxTargetArrival n control target word, amplitude⟩] :=
    evolve_compose _ _ 22 1 _ _ _ reachesParked
      (first_cx_target_arrival control target tail certificate word amplitude)
  have reachesDelivered :
      evolve (prepProgram n (initialCxNode n control target tail))
          certificate 25
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [⟨cxTargetDelivered n control target word, amplitude⟩] :=
    evolve_compose _ _ 23 2 _ _ _ reachesTarget
      (first_cx_target_deliver control target distinct tail certificate
        word amplitude)
  exact evolve_compose _ _ 25 2 _ _ _ reachesDelivered
    (first_cx_target_fire control target distinct tail certificate word
      amplitude)

theorem first_gate_entry (positiveWidth : 0 < n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n tail) certificate 2
        [⟨boundaryState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] := by
  obtain ⟨prior, rfl⟩ := Nat.exists_eq_succ_of_ne_zero
    (Nat.ne_of_gt positiveWidth)
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
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
    initialBoundaryData, circuitBoundaryPath, inputBoundaryPath,
    continuation, continuationBody,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, mapKernelEdge,
    kernelDeterministic, nfDeterministic, directionDifferent, appNotRB,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    gateRoot, preparationRoot_succ, prepBlock,
    prepContinuationPath, List.append_assoc]

theorem first_h_local_0_5 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨prepCheckpoint5 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, gateReadyState,
    initialBoundaryData, prepCheckpoint5,
    composedStep, readbackStep, kernelToken,
    directionDifferent, appNotRB, appIs,
    delegateStep, cnotStepToken, closeVirtualPort,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape, subterm?,
    zeroTerm, binder_initialHNode_c_root,
    deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepInvoked,
    gateRoot, preparationOccurrence, tBinderPath]

theorem first_h_local_5_10 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨prepCheckpoint5 n word, amplitude⟩] =
      [⟨prepCheckpoint10 n word, amplitude⟩] := by
  have bulletIs : isBullet bullet = true := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.down == Direction.down) = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint5, prepCheckpoint10,
    composedStep, readbackStep, rbAfterOutputBullets, firstRB, treeAt?,
    kernelToken, bulletIs, directionDifferent, directionSame,
    delegateStep, cnotStepToken, closeVirtualPort, deliverPort,
    freshCCall, instance?,
    isLP, cArguments_initialHNode_root, prepStorage_no_future,
    prepStorage_no_current_exists,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape, subterm?, zeroTerm,
    binder_initialHNode_c_root, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker,
    preparationOccurrence, prepFirstPath, prepSecondPath,
    prepContinuationPath, cBinderPath]

theorem first_h_local_10_15 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨prepCheckpoint10 n word, amplitude⟩] =
      [⟨prepCheckpoint15 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint10, prepCheckpoint15,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionOpposite, appIs,
    delegateStep, cnotStepToken,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, subterm_append,
    subterm_initialHNode_root_shape, subterm?, zeroTerm,
    binder_initialHNode_c_root, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker, cBinderPath]

theorem first_h_local_15_20 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨prepCheckpoint15 n word, amplitude⟩] =
      [⟨prepCheckpoint20 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint15, prepCheckpoint20,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, delegateStep, cnotStepToken,
    closeVirtualPort, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape, subterm?, zeroTerm,
    binder_initialHNode_c_root, binder_initialHNode_first_zero_root,
    deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepFirstLogged, cBinderPath, level,
    preparationOccurrence, prepFirstPath, prepSecondPath,
    prepContinuationPath]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem first_h_local_20_25 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨prepCheckpoint20 n word, amplitude⟩] =
      [⟨prepCheckpoint25 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up == Direction.up) = true := by native_decide
  have portSame : (Port.first != Port.first) = false := by native_decide
  have pairSame :
      ((Port.first, prepInvoked n) == (Port.first, prepInvoked n)) = true := by
    change (true && entryBEq (prepInvoked n) (prepInvoked n)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.first, prepInvoked n) !=
        some (Port.first, prepInvoked n)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have secondPresent :
      isBullet ([bullet, bullet, rb 0 [] []].head!) = true := by
    native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, prepCheckpoint20, prepCheckpoint25,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionSame, portSame, probeSame,
    bulletIs, secondPresent, appIs, delegateStep, cnotStepToken,
    splitCustom, stageRow,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, subterm_append,
    subterm_initialHNode_root_shape, subterm?, zeroTerm,
    subterm_initialHNode_prepFirst, subterm_initialHNode_prepSecond,
    binder_initialHNode_c_root, binder_initialHNode_h_root,
    binder_initialHNode_prepSecond_h,
    binder_initialHNode_first_zero_root,
    binder_initialHNode_prepFirst_zero,
    deliverPort_gateFirstLogged_prepStorage,
    deliverPort_futurePrepFirstLogged_prepStorage,
    deliverPort_cBinder_prepStorage,
    deliverPort_hBinder_cpark_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    classifyArrival, parkFirst, decodeInput,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHInstance_eq, prepPark,
    gateFirstPath_zero, gateSecondPath_zero,
    gateContinuationPath_zero, gateFirstLogged_zero,
    gateInvoked_zero, gateMarker_zero]

theorem first_h_local_0_25 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 25
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨prepCheckpoint25 n word, amplitude⟩] := by
  have trace10 := evolve_compose _ _ 5 5 _ _ _
    (first_h_local_0_5 wire tail certificate word amplitude)
    (first_h_local_5_10 wire tail certificate word amplitude)
  have trace15 := evolve_compose _ _ 10 5 _ _ _ trace10
    (first_h_local_10_15 wire tail certificate word amplitude)
  have trace20 := evolve_compose _ _ 15 5 _ _ _ trace15
    (first_h_local_15_20 wire tail certificate word amplitude)
  exact evolve_compose _ _ 20 5 _ _ _ trace20
    (first_h_local_20_25 wire tail certificate word amplitude)

theorem first_t_local_0_5 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨prepCheckpoint5 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, gateReadyState,
    initialBoundaryData, prepCheckpoint5,
    composedStep, readbackStep, kernelToken,
    directionDifferent, appNotRB, appIs,
    delegateStep, cnotStepToken, closeVirtualPort,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_initialTNode_root_shape, subterm?,
    zeroTerm, binder_initialTNode_c_root,
    deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepInvoked,
    gateRoot, preparationOccurrence, tBinderPath]

theorem first_t_local_5_10 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨prepCheckpoint5 n word, amplitude⟩] =
      [⟨prepCheckpoint10 n word, amplitude⟩] := by
  have bulletIs : isBullet bullet = true := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.down == Direction.down) = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint5, prepCheckpoint10,
    composedStep, readbackStep, rbAfterOutputBullets, firstRB, treeAt?,
    kernelToken, bulletIs, directionDifferent, directionSame,
    delegateStep, cnotStepToken, closeVirtualPort, deliverPort,
    freshCCall, instance?, isLP, cArguments_initialTNode_root,
    prepStorage_no_future, prepStorage_no_current_exists,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_initialTNode_root_shape, subterm?, zeroTerm,
    binder_initialTNode_c_root, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker,
    preparationOccurrence, prepFirstPath, prepSecondPath,
    prepContinuationPath, cBinderPath]

theorem first_t_local_10_15 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨prepCheckpoint10 n word, amplitude⟩] =
      [⟨prepCheckpoint15 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint10, prepCheckpoint15,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionOpposite, appIs,
    delegateStep, cnotStepToken,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, subterm_append,
    subterm_initialTNode_root_shape, subterm?, zeroTerm,
    binder_initialTNode_c_root, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker, cBinderPath]

theorem first_t_local_15_20 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨prepCheckpoint15 n word, amplitude⟩] =
      [⟨prepCheckpoint20 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint15, prepCheckpoint20,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, delegateStep, cnotStepToken,
    closeVirtualPort, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialTNode_root_shape, subterm?, zeroTerm,
    binder_initialTNode_c_root, binder_initialTNode_first_zero_root,
    deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepFirstLogged, cBinderPath, level,
    preparationOccurrence, prepFirstPath, prepSecondPath,
    prepContinuationPath]

theorem first_t_local_0_20 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 20
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨prepCheckpoint20 n word, amplitude⟩] := by
  have trace10 := evolve_compose _ _ 5 5 _ _ _
    (first_t_local_0_5 wire tail certificate word amplitude)
    (first_t_local_5_10 wire tail certificate word amplitude)
  have trace15 := evolve_compose _ _ 10 5 _ _ _ trace10
    (first_t_local_10_15 wire tail certificate word amplitude)
  exact evolve_compose _ _ 15 5 _ _ _ trace15
    (first_t_local_15_20 wire tail certificate word amplitude)

set_option maxHeartbeats 0 in
theorem first_h_local_25_30 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨prepCheckpoint25 n word, amplitude⟩] =
      [⟨hInputArrival n wire word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have gamNotBullet : isBullet (gam GateName.h) = false := by rfl
  have muNotBullet : isBullet (mu GateName.h) = false := by rfl
  have cmuNotBullet :
      isBullet (cmu Port.second (prepInvoked n)) = false := by rfl
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  have inputDepth :
      2 ≤ level (prepSecondPath n ++ [.arg]) -
        level (prepContinuationPath wire.val ++ [.body]) := by
    simp [level, prepSecondPath, prepContinuationPath,
      preparationRoot, shellBodyPath]
    omega
  have inputSlice :
      List.take
          (level (prepSecondPath n ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .h, gateMarker .second n 0] =
        [gam .h, gateMarker .second n 0] :=
    List.take_of_length_le inputDepth
  have inputDrop :
      List.drop
          (level (prepSecondPath n ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .h, gateMarker .second n 0] = [] :=
    List.drop_eq_nil_of_le inputDepth
  have inputSliceExpanded :
      List.take
          (level (prepSecondPath n ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .h,
            cgam .second (prepInvoked n) (preparationOccurrence n)
              (prepFirstPath n) (prepSecondPath n)
              (prepContinuationPath n)] =
        [gam .h,
          cgam .second (prepInvoked n) (preparationOccurrence n)
            (prepFirstPath n) (prepSecondPath n)
            (prepContinuationPath n)] := by
    simpa [gateMarker_zero, prepMarker] using inputSlice
  have inputDropExpanded :
      List.drop
          (level (prepSecondPath n ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .h,
            cgam .second (prepInvoked n) (preparationOccurrence n)
              (prepFirstPath n) (prepSecondPath n)
              (prepContinuationPath n)] = [] := by
    simpa [gateMarker_zero, prepMarker] using inputDrop
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, prepCheckpoint25, hInputArrival,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, bulletIs, countBullets,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_prepSecond, subterm_initialHNode_input,
    binder_initialHNode_prepSecond_h, binder_initialHNode_input,
    binder_initialHNode_prepInput,
    subterm?, zeroTerm,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker,
    prepHKey, deadKeys_prepPark,
    gateSecondPath_zero, gateInvoked_zero, gateMarker_zero,
    hBinderPath, inputDepth, inputSlice, inputDrop,
    inputSliceExpanded, inputDropExpanded,
    gamNotBullet, muNotBullet, cmuNotBullet, rbNotBullet]

set_option maxHeartbeats 0 in
theorem first_t_local_20_23 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 3
        [⟨prepCheckpoint20 n word, amplitude⟩] =
      [⟨tCheckpoint23 n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up == Direction.up) = true := by native_decide
  have portSame : (Port.first != Port.first) = false := by native_decide
  have pairSame :
      ((Port.first, prepInvoked n) == (Port.first, prepInvoked n)) = true := by
    change (true && entryBEq (prepInvoked n) (prepInvoked n)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.first, prepInvoked n) !=
        some (Port.first, prepInvoked n)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have secondPresent :
      isBullet ([bullet, bullet, rb 0 [] []].head!) = true := by
    native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, prepCheckpoint20, tCheckpoint23,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionSame, portSame, probeSame,
    bulletIs, secondPresent, appIs, delegateStep, cnotStepToken,
    splitCustom, stageRow,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, subterm_append,
    subterm_initialTNode_root_shape, subterm?, zeroTerm,
    subterm_initialTNode_prepFirst, subterm_initialTNode_prepSecond,
    binder_initialTNode_c_root, binder_initialTNode_t_root,
    binder_initialTNode_prepSecond_t,
    binder_initialTNode_first_zero_root,
    binder_initialTNode_prepFirst_zero,
    deliverPort_gateFirstLogged_prepStorage,
    deliverPort_futurePrepFirstLogged_prepStorage,
    deliverPort_cBinder_prepStorage,
    deliverPort_tBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    classifyArrival, parkFirst, decodeInput,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHInstance_eq, prepPark,
    gateFirstPath_zero, gateSecondPath_zero,
    gateContinuationPath_zero, gateFirstLogged_zero,
    gateInvoked_zero, gateMarker_zero]

set_option maxHeartbeats 0 in
theorem first_t_local_23_28 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨tCheckpoint23 n word, amplitude⟩] =
      [⟨tCalled n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have markerDepth :
      1 ≤ level (gateSecondPath n 0 ++ [.fn]) - level tBinderPath := by
    simp [level, gateSecondPath, gateRoot, preparationRoot,
      shellBodyPath, tBinderPath]
  have markerSlice :
      List.take
          (level (gateSecondPath n 0 ++ [.fn]) - level tBinderPath)
          [gateMarker .second n 0] = [gateMarker .second n 0] :=
    List.take_of_length_le markerDepth
  have markerDrop :
      List.drop
          (level (gateSecondPath n 0 ++ [.fn]) - level tBinderPath)
          [gateMarker .second n 0] = [] :=
    List.drop_eq_nil_of_le markerDepth
  have markerDepthExpanded :
      1 ≤ n + 1 - level tBinderPath := by
    simp [level, tBinderPath]
  have markerSliceExpanded :
      List.take (n + 1 - level tBinderPath)
          [prepMarker .second n] = [prepMarker .second n] :=
    List.take_of_length_le markerDepthExpanded
  have markerDropExpanded :
      List.drop (n + 1 - level tBinderPath)
          [prepMarker .second n] = [] :=
    List.drop_eq_nil_of_le markerDepthExpanded
  have markerDepthRaw :
      1 ≤ n + 1 - level [.fn, .fn, .fn, .body] := by
    simp [level]
  have markerSliceRaw :
      List.take (n + 1 - level [.fn, .fn, .fn, .body])
          [prepMarker .second n] = [prepMarker .second n] :=
    List.take_of_length_le markerDepthRaw
  have markerDropRaw :
      List.drop (n + 1 - level [.fn, .fn, .fn, .body])
          [prepMarker .second n] = [] :=
    List.drop_eq_nil_of_le markerDepthRaw
  have markerSliceLiteral :
      List.take (n + 1 - level [.fn, .fn, .fn, .body])
          [cgam .second (prepInvoked n) (preparationOccurrence n)
            (prepFirstPath n) (prepSecondPath n)
            (prepContinuationPath n)] =
        [cgam .second (prepInvoked n) (preparationOccurrence n)
          (prepFirstPath n) (prepSecondPath n)
          (prepContinuationPath n)] :=
    List.take_of_length_le markerDepthRaw
  have markerDropLiteral :
      List.drop (n + 1 - level [.fn, .fn, .fn, .body])
          [cgam .second (prepInvoked n) (preparationOccurrence n)
            (prepFirstPath n) (prepSecondPath n)
            (prepContinuationPath n)] = [] :=
    List.drop_eq_nil_of_le markerDepthRaw
  have tFresh :
      sameKeyFrames (prepFrames n word)
          ⟨.t, none,
            lp (prepSecondPath n ++ [.fn])
              [cgam .second (prepInvoked n) (preparationOccurrence n)
                (prepFirstPath n) (prepSecondPath n)
                (prepContinuationPath n)]⟩ = [] := by
    simpa [unaryInstance, gateSecondPath_zero, gateMarker_zero,
      prepMarker] using
      sameKeyFrames_prepFrames_tInstance n 0 word
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, tCheckpoint23, tCalled,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, bulletIs, countBullets,
    deliverPort, closeVirtualPort, returnContinuation,
    rbAfterOutputBullets,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialTNode_root_shape,
    subterm_initialTNode_prepSecond,
    binder_initialTNode_prepSecond_t,
    subterm?, zeroTerm, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, gateSecondPath_zero, gateMarker_zero,
    tBinderPath, markerDepth, markerSlice, markerDrop,
    markerDepthExpanded, markerSliceExpanded, markerDropExpanded,
    storedPortBindings_tBinder_expanded_prepPark,
    markerDepthRaw, markerSliceRaw, markerDropRaw,
    markerSliceLiteral, markerDropLiteral, tFresh]

set_option maxHeartbeats 0 in
theorem first_t_local_30_35 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 5
        [⟨tCalled n word, amplitude⟩] =
      [⟨tInputArrival n word, amplitude⟩] := by
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, tCalled, tInputArrival,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionDifferent, directionSame, appIs,
    deliverPort, returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialTNode_root_shape,
    subterm_initialTNode_input, subterm?, zeroTerm,
    binder_initialTNode_t_root,
    storedPortBindings_tBinder_prepPark,
    storedPortBindings_tBinder_expanded_prepPark,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    tBinderPath, gateMarker_zero]

set_option maxHeartbeats 0 in
theorem first_t_input_deliver (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 3
        [⟨tInputArrival n word, amplitude⟩] =
      [⟨tInputDelivered n wire word, amplitude⟩] := by
  have binderInput := binder_initialTNode_prepInput n wire tail
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  have rbNotApp : isAppBullet (rb 0 [] []) = false := by rfl
  have inputDepth :
      2 ≤ level (gateSecondPath n 0 ++ [.arg]) -
        level (prepContinuationPath wire.val ++ [.body]) := by
    simp [level, gateSecondPath, gateRoot, prepContinuationPath,
      preparationRoot, shellBodyPath]
    omega
  have inputSlice :
      List.take
          (level (gateSecondPath n 0 ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .t, gateMarker .second n 0] =
        [gam .t, gateMarker .second n 0] :=
    List.take_of_length_le inputDepth
  have inputDrop :
      List.drop
          (level (gateSecondPath n 0 ++ [.arg]) -
            level (prepContinuationPath wire.val ++ [.body]))
          [gam .t, gateMarker .second n 0] = [] :=
    List.drop_eq_nil_of_le inputDepth
  have inputKeyEq :
      (⟨.c, some .second, prepInvoked wire.val⟩ : Key) =
        initialWireKeys n wire := by rfl
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tInputArrival, tInputDelivered,
      tInputLogged, composedStep, readbackStep, firstRB, treeAt?,
      kernelToken, directionDifferent,
      delegateStep, cnotStepToken, finishCStage_prepStorage,
      finishStageRow, kernelStepToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic,
      deliverPort, binderInput, storedPortBindings_initialWire,
      sameKeyFrames_initialWire, splitCustom, stageRow,
      directionSame, appIs, rbNotBullet, rbNotApp, inputBit, inputKeyEq,
      inputDepth, inputSlice, inputDrop,
      bitNat, headBang_cons, initialWireAnswer, initialWireFrame,
      composedEntry, kernelEntry,
      edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_t_fire (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (gateSecondPath n 0 ++ [.arg]) =
        some [initialWireKeys n wire]) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tInputDelivered n wire word, amplitude⟩] =
      [⟨tFired n wire word,
        mul (if word wire then omega else one) amplitude⟩] := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have gateSame : (GateName.t != GateName.t) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have filterFalse :
      List.filter (fun _ : Frame => false) (prepFrames n word) = [] := by
    simp
  have filterTrue :
      List.filter (fun _ : Frame => true) (prepFrames n word) =
        prepFrames n word := by simp
  have conflictFree := hasBitConflict_initialWire word wire
  have conflictExpanded :
      hasBitConflict
          (alphaBitPairs
              (alpha .c (some .second) (prepInvoked wire.val)
                (word wire) (.recalledAbsent .fresh)) ++
            frameBitPairs (prepFrames n word)) = false := by
    simpa [initialWireAnswer] using conflictFree
  have popClean :
      ((prepFrames n word).filter fun frame =>
          [initialWireKeys n wire].contains frame.key).any
          (fun frame => frame.bit != word wire) = false := by
    cases selected :
        ((prepFrames n word).filter fun frame =>
            [initialWireKeys n wire].contains frame.key).any
            (fun frame => frame.bit != word wire) with
    | false => rfl
    | true =>
        rcases List.any_eq_true.mp selected with
          ⟨frame, filtered, wrong⟩
        have filteredParts := List.mem_filter.mp filtered
        have keyMatch :
            (frame.key == initialWireKeys n wire) = true := by
          simpa using filteredParts.2
        have sameBit := initialWire_matching_frame_bit word wire frame
          filteredParts.1 keyMatch
        simp [sameBit] at wrong
  have noPopFalse (bitIsFalse : word wire = false) :
      ¬ ∃ frame, frame ∈ prepFrames n word ∧
        (frame.key == portKey .second (preparationOccurrence wire.val)) =
          true ∧ frame.bit = true := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have sameBit := initialWire_matching_frame_bit word wire frame
      membership (by simpa [initialWireKeys] using keyMatch)
    rw [bitIsFalse] at sameBit
    simp [sameBit] at wrong
  have noPopTrue (bitIsTrue : word wire = true) :
      ¬ ∃ frame, frame ∈ prepFrames n word ∧
        (frame.key == portKey .second (preparationOccurrence wire.val)) =
          true ∧ frame.bit = false := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have sameBit := initialWire_matching_frame_bit word wire frame
      membership (by simpa [initialWireKeys] using keyMatch)
    rw [bitIsTrue] at sameBit
    simp [sameBit] at wrong
  cases inputBit : word wire <;>
    rw [inputBit] at conflictExpanded popClean <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tInputDelivered, tFired,
      tPostStorage, tFirePopped, tFireRetained, tFireSourceStorage,
      tFireBuried, tFireSurvive, tFireDead,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      directionSame, gateSame, appIs, filterFalse, filterTrue,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      admitted, deliverPort, returnContinuation,
      closeVirtualPort_gam_cquery_cpark_prepStorage, prepPark,
      classifyArrival, fireTargets, nfDeterministic,
      conflictExpanded, popClean, noPopFalse, noPopTrue,
      edgeCoefficient, powDw, omegaPhysical,
      QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat, headBang_cons, initialWireAnswer,
      initialWireFrame, initialWireKeys,
      sameKeyFrames_initialWire, removeFrameKey,
      tInputLogged, prepHKey, deadKeys_prepPark]
  all_goals
    first
    | rfl
    | (cases amplitude
       constructor
       · rfl
       · simp [QalcFiniteGram.mul, omega, omegaPhysical])

theorem first_t_fired_to_40 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tFired n wire word, amplitude⟩] =
      [⟨tCheckpoint40 n wire word, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tFired, tCheckpoint40,
      tFireRetained, tAnswer,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionUpSame, appIs,
      deliverPort, closeVirtualPort, returnContinuation,
      tMarker_take_to_binder, tMarker_drop_to_binder,
      storedPortBindings_tBinder_tPostStorage,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm_initialTNode_root_shape,
      subterm_initialTNode_input, subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

theorem first_t_40_to_44 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 4
        [⟨tCheckpoint40 n wire word, amplitude⟩] =
      [⟨tCheckpoint44 n wire word, amplitude⟩] := by
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have gateEq : (GateName.t == GateName.t) = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint40, tCheckpoint44,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons,
      directionDifferent, directionSame, appIs,
      gateEq,
      deliverPort, returnContinuation,
      tMarker_take_to_binder wire, tMarker_drop_to_binder wire,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm_initialTNode_root_shape,
      subterm_initialTNode_input, subterm?, zeroTerm,
      binder_initialTNode_t_root,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswer, inputBit, bitNat]

theorem first_t_44_to_45 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tCheckpoint44 n wire word, amplitude⟩] =
      [⟨tCheckpoint45 n wire word, amplitude⟩] := by
  have directionDownSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have gateEq : (GateName.t == GateName.t) = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint44, tCheckpoint45,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDownSame, appIs,
      gateEq,
      deliverPort, closeVirtualPort, returnContinuation,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm_initialTNode_root_shape,
      subterm_initialTNode_input, subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswer, inputBit, bitNat]

theorem first_t_45_to_47 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 2
        [⟨tCheckpoint45 n wire word, amplitude⟩] =
      [⟨tCheckpoint47 n wire word, amplitude⟩] := by
  have directionDownSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint45, tCheckpoint47,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDownSame, appIs,
      deliverPort, closeVirtualPort, returnContinuation,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

theorem first_t_47_to_48 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tCheckpoint47 n wire word, amplitude⟩] =
      [⟨tCheckpoint48 n wire word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint47, tCheckpoint48,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDifferent, appIs,
      deliverPort, closeVirtualPort, returnContinuation,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswer, inputBit, bitNat]

theorem first_t_48_to_52 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 4
        [⟨tCheckpoint48 n wire word, amplitude⟩] =
      [⟨tCheckpoint52 n wire word, amplitude⟩] := by
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have binderEq :
      tBinderPath = [.fn, .fn, .fn, .body] := by rfl
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint48, tCheckpoint52,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons,
      directionDifferent, directionSame, appIs,
      deliverPort, returnContinuation,
      closeVirtualPort_unary_tPostStorage,
      findHistoryEq_unary_tPostStorage,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm_initialTNode_root_shape,
      subterm_initialTNode_input, subterm?, zeroTerm,
      binder_initialTNode_t_root,
      storedPortBindings_tPath_tPostStorage,
      binderEq,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswer, inputBit, bitNat]

theorem first_t_52_to_53 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tCheckpoint52 n wire word, amplitude⟩] =
      [⟨tCheckpoint53 n wire word, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint52, tCheckpoint53,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons, directionUpSame, appIs,
      deliverPort, returnContinuation,
      closeVirtualPort_gateMarker_tPostStorage,
      findHistoryEq_gateMarker_tPostStorage,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm_initialTNode_root_shape,
      subterm_initialTNode_input, subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswer, inputBit, bitNat]

def tSecondFireSource (width : Nat) (wire : Fin width)
    (word : Word width) : Token :=
  ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
    List.replicate (bitNat (word wire)) bullet ++
      [tAnswer width (word wire), cmu .second (gateInvoked width 0),
       bullet, rb 0 [] []],
    none, tFireRetained width wire word,
    tPostStorage width wire word⟩

@[simp] theorem fireSecond_t (width : Nat) (wire : Fin width)
    (word : Word width) (tail : Term) :
    fireSecond (prepProgram width (initialTNode width wire tail))
        (tSecondFireSource width wire word)
        (word wire, tAnswer width (word wire), [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath width 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames width 0 false (word wire)
              (tFireRetained width wire word),
            tCompletedStorage width wire word⟩)) := by
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, gateInvoked width 0) ==
        (Port.second, gateInvoked width 0)) = true := by
    change
      (true && entryBEq (gateInvoked width 0) (gateInvoked width 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked width 0) !=
        some (Port.second, gateInvoked width 0)) = false := by
    simp [bne_eq, pairSame]
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  cases inputBit : word wire <;>
    simp [fireSecond, tSecondFireSource, tAnswer, bitNat,
      inputBit, portSame, probeSame, continuationBullet,
      cparkMatches_tPostStorage,
      decodeInput_tAnswer_expanded,
      subterm_initialTNode_continuation,
      subterm_initialTNode_continuation_body,
      replace_tPostStorage_with_expanded_history,
      splitCustom, kernelDeterministic, outputFrames]

theorem first_t_53_to_54 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tCheckpoint53 n wire word, amplitude⟩] =
      [⟨tCheckpoint54 n wire word, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have fireExpanded := fireSecond_t n wire word tail
  simp only [tSecondFireSource, tAnswer] at fireExpanded
  cases inputBit : word wire <;>
    rw [inputBit] at fireExpanded <;>
    simp [bitNat] at fireExpanded <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint53, tCheckpoint54,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionUpSame, directionUpEq, appIs,
      deliverPort, returnContinuation,
      delegateStep, cnotStepToken, kernelDeterministic, kernelEntry,
      composedToken, mapKernelEdge, zeroTerm, classifyArrival,
      edgeCoefficient, QalcFiniteGram.mul, tAnswer, bitNat,
      inputBit, rbNotBullet, bulletIs,
      finishCStage_tPostStorage,
      closeVirtualPort_gateMarker_tPostStorage,
      fireExpanded, splitCustom, stageRow, powDw,
      QalcFiniteGram.one]

theorem first_t_54_to_55 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialTNode n wire tail)) certificate 1
        [⟨tCheckpoint54 n wire word, amplitude⟩] =
      [⟨tCheckpoint55 n wire word, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by native_decide
  simp [evolve, stepColumn, stepBasis,
    tCheckpoint54, tCheckpoint55, composedStep, readbackStep,
    finishCStage?, finishStageRow, kernelDeterministic,
    kernelToken, kernelEntry, composedToken, composedEntry, mapKernelEdge,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    rbNotBullet]

set_option maxHeartbeats 0 in
theorem first_h_input_deliver (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 2
        [⟨hInputArrival n wire word, amplitude⟩] =
      [⟨hInputDelivered n wire word, amplitude⟩] := by
  have binderInput := binder_initialHNode_prepInput n wire tail
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  have rbNotApp : isAppBullet (rb 0 [] []) = false := by rfl
  have inputKeyEq :
      (⟨.c, some .second, prepInvoked wire.val⟩ : Key) =
        initialWireKeys n wire := by rfl
  cases inputBit : word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, hInputArrival, hInputDelivered,
      hInputLogged, composedStep, readbackStep, delegateStep,
      cnotStepToken, finishCStage_prepStorage, finishStageRow,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic,
      deliverPort, binderInput, storedPortBindings_initialWire,
      sameKeyFrames_initialWire, splitCustom, stageRow,
      directionSame, appIs, rbNotBullet, rbNotApp, inputBit, inputKeyEq,
      bitNat, headBang_cons, initialWireAnswer, initialWireFrame,
      composedEntry, kernelEntry,
      edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem first_h_fire (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (gateSecondPath n 0 ++ [.arg]) =
        some [initialWireKeys n wire]) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hInputDelivered n wire word, amplitude⟩] =
      [⟨hFired n wire word false, mul invSqrt2 amplitude⟩,
       ⟨hFired n wire word true,
        mul (if word wire then neg invSqrt2 else invSqrt2) amplitude⟩] := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have gateSame : (GateName.h != GateName.h) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have filterFalse :
      List.filter (fun _ : Frame => false) (prepFrames n word) = [] := by
    simp
  have filterTrue :
      List.filter (fun _ : Frame => true) (prepFrames n word) =
        prepFrames n word := by
    simp
  have conflictFree := hasBitConflict_initialWire word wire
  have conflictExpanded :
      hasBitConflict
          (alphaBitPairs
              (alpha .c (some .second) (prepInvoked wire.val)
                (word wire) (.recalledAbsent .fresh)) ++
            frameBitPairs (prepFrames n word)) = false := by
    simpa [initialWireAnswer] using conflictFree
  have popClean :
      ((prepFrames n word).filter fun frame =>
          [initialWireKeys n wire].contains frame.key).any
          (fun frame => frame.bit != word wire) = false := by
    cases selected :
        ((prepFrames n word).filter fun frame =>
            [initialWireKeys n wire].contains frame.key).any
            (fun frame => frame.bit != word wire) with
    | false => rfl
    | true =>
        rcases List.any_eq_true.mp selected with
          ⟨frame, filtered, wrong⟩
        have filteredParts := List.mem_filter.mp filtered
        have keyMatch :
            (frame.key == initialWireKeys n wire) = true := by
          simpa using filteredParts.2
        have sameBit := initialWire_matching_frame_bit word wire frame
          filteredParts.1 keyMatch
        simp [sameBit] at wrong
  have noPopFalse (bitIsFalse : word wire = false) :
      ¬ ∃ frame, frame ∈ prepFrames n word ∧
        (frame.key == portKey .second (preparationOccurrence wire.val)) =
          true ∧ frame.bit = true := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have sameBit := initialWire_matching_frame_bit word wire frame
      membership (by simpa [initialWireKeys] using keyMatch)
    rw [bitIsFalse] at sameBit
    simp [sameBit] at wrong
  have noPopTrue (bitIsTrue : word wire = true) :
      ¬ ∃ frame, frame ∈ prepFrames n word ∧
        (frame.key == portKey .second (preparationOccurrence wire.val)) =
          true ∧ frame.bit = false := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have sameBit := initialWire_matching_frame_bit word wire frame
      membership (by simpa [initialWireKeys] using keyMatch)
    rw [bitIsTrue] at sameBit
    simp [sameBit] at wrong
  cases inputBit : word wire <;>
    rw [inputBit] at conflictExpanded popClean <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, hInputDelivered, hFired,
      hPostStorage, hFirePopped, hFireRetained, hFireSourceStorage,
      hFireBuried, hFireSurvive, hFireDead,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      directionSame, gateSame, appIs, filterFalse, filterTrue,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      admitted, deliverPort, returnContinuation,
      closeVirtualPort_gam_cquery_cpark_prepStorage, prepPark,
      classifyArrival, fireTargets, nfDeterministic,
      conflictExpanded, popClean,
      noPopFalse, noPopTrue,
      edgeCoefficient, powDw, invSqrt2,
      QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat, headBang_cons, initialWireAnswer,
      initialWireFrame, initialWireKeys,
      sameKeyFrames_initialWire, removeFrameKey,
      hInputLogged, prepHKey, deadKeys_prepPark]
  all_goals
    first
    | rfl
    | (constructor
       · rfl
       · simp [QalcGate2Compiler.neg])

theorem first_h_fired_to_38 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 5
        [⟨hFired n wire word bit, amplitude⟩] =
      [⟨hCheckpoint38 n wire word bit, amplitude⟩] := by
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionDownNotUp :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have gateHSame : (GateName.h == GateName.h) = true := by native_decide
  have ansNotApp : isAppBullet (ans GateName.h bit) = false := by
    cases bit <;> native_decide
  have ansNotLP : asLP? (ans GateName.h bit) = none := by
    cases bit <;> rfl
  have ansNotRB : asRB? (ans GateName.h bit) = none := by
    cases bit <;> rfl
  have ansNotBullet : isBullet (ans GateName.h bit) = false := by
    cases bit <;> native_decide
  have answerHeadNotBullet :
      isBullet
          ([ans GateName.h bit, appBullet, appBullet,
            cmu .second (gateInvoked n 0), appBullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  have kernelAnswerHeadNotBullet :
      isBullet
          ([ans GateName.h bit, bullet, bullet,
            cmu .second (gateInvoked n 0), bullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  have hDepth : 1 ≤ level (gateSecondPath n 0 ++ [.fn]) := by
    simp [level, gateSecondPath, gateRoot, preparationRoot,
      shellBodyPath]
  have hSlice :
      List.take (level (gateSecondPath n 0 ++ [.fn]))
          [gateMarker .second n 0] =
        [gateMarker .second n 0] :=
    List.take_of_length_le hDepth
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hFired, hCheckpoint38,
    hFireRetained,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    headBang_cons, directionDifferent, directionSame, directionUpSame,
    directionDownNotUp, appIs, gateHSame,
    deliverPort, closeVirtualPort, returnContinuation,
    ansNotApp, ansNotLP, ansNotRB, ansNotBullet,
    answerHeadNotBullet, kernelAnswerHeadNotBullet,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_input, subterm?,
    zeroTerm, binder_initialHNode_h_root,
    storedPortBindings_hBinder_hPostStorage,
    classifyArrival, nfDeterministic, hDepth, hSlice,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswer]

theorem first_h_38_to_40 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 2
        [⟨hCheckpoint38 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint40 n wire word bit, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionNotUp :
      (Direction.down == Direction.up) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hCheckpoint38, hCheckpoint40,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    headBang_cons, directionDifferent, directionNotUp,
    directionUpSame, appIs,
    deliverPort, returnContinuation,
    emitLambda?, fill?, nextCursor, holes, replaceTree?,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_input, subterm?, zeroTerm,
    binder_initialHNode_h_root,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswer, bitNat]

theorem first_h_40_to_41 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hCheckpoint40 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint41 n wire word bit, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have unaryNotCGam :
      asCGam? (unaryInstance .h n 0) = none := by rfl
  have unaryNotGam :
      asGam? (unaryInstance .h n 0) = none := by rfl
  have hBinderExpanded :
      ([.fn, .fn, .fn] : Path) = hBinderPath := by rfl
  have unaryComposed :
      composedEntry (unaryInstance .h n 0) =
        unaryInstance .h n 0 := by rfl
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint40, hCheckpoint41,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionUpSame, directionUpEqual, appIs,
    unaryNotCGam, unaryNotGam, hBinderExpanded, unaryComposed,
    storedReturnOccurrences_virtual_hPostStorage,
    deliverPort, returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_input, subterm?, zeroTerm,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    hAnswer, bitNat,
    closeVirtualPort_unary_hPostStorage]

theorem first_h_41_to_42 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hCheckpoint41 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint42 n wire word bit, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint41, hCheckpoint42,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionDifferent, directionUpSame, appIs,
    deliverPort, closeVirtualPort, returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_input, subterm?, zeroTerm,
    binder_initialHNode_h_root,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswer, bitNat,
    storedReturnOccurrences_virtual_hPostStorage]

theorem first_h_42_to_43 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hCheckpoint42 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint43 n wire word bit, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint42, hCheckpoint43,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionUpSame, appIs,
    deliverPort, returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_initialHNode_root_shape,
    subterm_initialHNode_input, subterm?, zeroTerm,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    hAnswer, bitNat,
    closeVirtualPort_gateMarker_hPostStorage,
    storedReturnOccurrences_gateSecondFn_hPostStorage]

def hSecondFireSource (width : Nat) (wire : Fin width)
    (word : Word width) (bit : Bool) : Token :=
  ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
    List.replicate (bitNat bit) bullet ++
      [hAnswer width bit, cmu .second (gateInvoked width 0),
       bullet, rb 0 [] []],
    none, hFireRetained width wire word,
    hPostStorage width wire word⟩

@[simp] theorem fireSecond_h (width : Nat) (wire : Fin width)
    (word : Word width) (tail : Term) (bit : Bool) :
    fireSecond (prepProgram width (initialHNode width wire tail))
        (hSecondFireSource width wire word bit)
        (bit, hAnswer width bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath width 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames width 0 false bit
              (hFireRetained width wire word),
            hCompletedStorage width wire word⟩)) := by
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, gateInvoked width 0) ==
        (Port.second, gateInvoked width 0)) = true := by
    change
      (true && entryBEq (gateInvoked width 0) (gateInvoked width 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked width 0) !=
        some (Port.second, gateInvoked width 0)) = false := by
    simp [bne_eq, pairSame]
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  cases bit <;> simp [fireSecond, hSecondFireSource, bitNat,
    portSame, probeSame, continuationBullet, cparkMatches_hPostStorage,
    decodeInput_hAnswer_expanded,
    subterm_initialHNode_continuation,
    subterm_initialHNode_continuation_body,
    replace_hPostStorage_with_expanded_history,
    splitCustom, kernelDeterministic, outputFrames]

@[simp] theorem fireSecond_h_expanded (width : Nat) (wire : Fin width)
    (word : Word width) (tail : Term) (bit : Bool) :
    fireSecond (prepProgram width (initialHNode width wire tail))
        ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
          List.replicate (bitNat bit) bullet ++
            [hAnswer width bit, cmu .second (gateInvoked width 0),
             bullet, rb 0 [] []],
          none, hFireRetained width wire word,
          hPostStorage width wire word⟩
        (bit, hAnswer width bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath width 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames width 0 false bit
              (hFireRetained width wire word),
            hCompletedStorage width wire word⟩)) := by
  simpa only [hSecondFireSource] using
    fireSecond_h width wire word tail bit

@[simp] theorem fireSecond_h_false (width : Nat) (wire : Fin width)
    (word : Word width) (tail : Term) :
    fireSecond (prepProgram width (initialHNode width wire tail))
        ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
          [alpha .h none (unaryInstance .h width 0) false .fresh,
           cmu .second (gateInvoked width 0), bullet, rb 0 [] []],
          none, hFireRetained width wire word,
          hPostStorage width wire word⟩
        (false,
          alpha .h none (unaryInstance .h width 0) false .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath width 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames width 0 false false
              (hFireRetained width wire word),
            hCompletedStorage width wire word⟩)) := by
  simpa [hAnswer, bitNat] using
    fireSecond_h_expanded width wire word tail false

@[simp] theorem fireSecond_h_true (width : Nat) (wire : Fin width)
    (word : Word width) (tail : Term) :
    fireSecond (prepProgram width (initialHNode width wire tail))
        ⟨gateSecondPath width 0, .up, [gateMarker .second width 0],
          [bullet,
           alpha .h none (unaryInstance .h width 0) true .fresh,
           cmu .second (gateInvoked width 0), bullet, rb 0 [] []],
          none, hFireRetained width wire word,
          hPostStorage width wire word⟩
        (true,
          alpha .h none (unaryInstance .h width 0) true .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath width 0, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames width 0 false true
              (hFireRetained width wire word),
            hCompletedStorage width wire word⟩)) := by
  simpa [hAnswer, bitNat] using
    fireSecond_h_expanded width wire word tail true

set_option maxHeartbeats 0 in
theorem first_h_43_to_44 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hCheckpoint43 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint44 n wire word bit, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by
    native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, gateInvoked n 0) ==
        (Port.second, gateInvoked n 0)) = true := by
    change (true && entryBEq (gateInvoked n 0) (gateInvoked n 0)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n 0) !=
        some (Port.second, gateInvoked n 0)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis, hCheckpoint43,
    hCheckpoint44, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, headBang_cons, directionUpSame, directionUpEq, appIs,
    deliverPort, returnContinuation,
    delegateStep, cnotStepToken, kernelDeterministic, kernelEntry,
    composedToken, mapKernelEdge, zeroTerm, classifyArrival,
    edgeCoefficient, QalcFiniteGram.mul, hAnswer, bitNat,
    rbNotBullet, portSame, probeSame, bulletIs, continuationBullet,
    finishCStage_hPostStorage,
    closeVirtualPort_gateMarker_hPostStorage] <;>
    simp_all (config := { maxSteps := 1000000 })
      [fireSecond_h_false, fireSecond_h_true,
      cparkMatches_hPostStorage,
      findHistoryEq_gam_prepStorage,
      closeVirtualPort_gam_cquery_cpark_prepStorage,
      splitCustom, stageRow, mapKernelEdge, composedToken, composedEntry,
      kernelEntry, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul, decodeInput_hAnswer,
      subterm_initialHNode_continuation,
      subterm_initialHNode_continuation_body,
      replace_hPostStorage_with_history,
      finishCStage_hPostStorage]

theorem first_h_44_to_45 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 1
        [⟨hCheckpoint44 n wire word bit, amplitude⟩] =
      [⟨hCheckpoint45 n wire word bit, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  simp [evolve, stepColumn, stepBasis,
    hCheckpoint44, hCheckpoint45, composedStep, readbackStep,
    finishCStage?, finishStageRow, kernelDeterministic,
    kernelToken, kernelEntry, composedToken, composedEntry, mapKernelEdge,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    rbNotBullet]

theorem first_h_ready_to_input_delivered (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 32
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨hInputDelivered n wire word, amplitude⟩] := by
  exact evolve_compose
    (prepProgram n (initialHNode n wire tail)) certificate 30 2
    [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩]
    [⟨hInputArrival n wire word, amplitude⟩]
    [⟨hInputDelivered n wire word, amplitude⟩]
    (evolve_compose
      (prepProgram n (initialHNode n wire tail)) certificate 25 5
      [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩]
      [⟨prepCheckpoint25 n word, amplitude⟩]
      [⟨hInputArrival n wire word, amplitude⟩]
      (first_h_local_0_25 wire tail certificate word amplitude)
      (first_h_local_25_30 wire tail certificate word amplitude))
    (first_h_input_deliver wire tail certificate word amplitude)

theorem first_h_fired_to_45 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 12
        [⟨hFired n wire word bit, amplitude⟩] =
      [⟨hCheckpoint45 n wire word bit, amplitude⟩] := by
  let term := prepProgram n (initialHNode n wire tail)
  have trace40 := evolve_compose term certificate 5 2
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint38 n wire word bit, amplitude⟩]
    [⟨hCheckpoint40 n wire word bit, amplitude⟩]
    (first_h_fired_to_38 wire tail certificate word bit amplitude)
    (first_h_38_to_40 wire tail certificate word bit amplitude)
  have trace41 := evolve_compose term certificate 7 1
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint40 n wire word bit, amplitude⟩]
    [⟨hCheckpoint41 n wire word bit, amplitude⟩]
    trace40
    (first_h_40_to_41 wire tail certificate word bit amplitude)
  have trace42 := evolve_compose term certificate 8 1
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint41 n wire word bit, amplitude⟩]
    [⟨hCheckpoint42 n wire word bit, amplitude⟩]
    trace41
    (first_h_41_to_42 wire tail certificate word bit amplitude)
  have trace43 := evolve_compose term certificate 9 1
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint42 n wire word bit, amplitude⟩]
    [⟨hCheckpoint43 n wire word bit, amplitude⟩]
    trace42
    (first_h_42_to_43 wire tail certificate word bit amplitude)
  have trace44 := evolve_compose term certificate 10 1
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint43 n wire word bit, amplitude⟩]
    [⟨hCheckpoint44 n wire word bit, amplitude⟩]
    trace43
    (first_h_43_to_44 wire tail certificate word bit amplitude)
  exact evolve_compose term certificate 11 1
    [⟨hFired n wire word bit, amplitude⟩]
    [⟨hCheckpoint44 n wire word bit, amplitude⟩]
    [⟨hCheckpoint45 n wire word bit, amplitude⟩]
    trace44
    (first_h_44_to_45 wire tail certificate word bit amplitude)

set_option maxHeartbeats 0 in
theorem first_h_ready_to_45 (wire : Fin n) (tail : Term)
    (certificate : Certificate) (word : Word n) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (gateSecondPath n 0 ++ [.arg]) =
        some [initialWireKeys n wire]) :
    evolve (prepProgram n (initialHNode n wire tail)) certificate 45
        [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
      [⟨hCheckpoint45 n wire word false, mul invSqrt2 amplitude⟩,
       ⟨hCheckpoint45 n wire word true,
        mul (if word wire then neg invSqrt2 else invSqrt2) amplitude⟩] := by
  let term := prepProgram n (initialHNode n wire tail)
  let falseState : WeightedState :=
    ⟨hFired n wire word false, mul invSqrt2 amplitude⟩
  let trueState : WeightedState :=
    ⟨hFired n wire word true,
      mul (if word wire then neg invSqrt2 else invSqrt2) amplitude⟩
  let falseDone : WeightedState :=
    ⟨hCheckpoint45 n wire word false, mul invSqrt2 amplitude⟩
  let trueDone : WeightedState :=
    ⟨hCheckpoint45 n wire word true,
      mul (if word wire then neg invSqrt2 else invSqrt2) amplitude⟩
  have reachesFired :
      evolve term certificate 33
          [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩] =
        [falseState, trueState] :=
    evolve_compose term certificate 32 1
      [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩]
      [⟨hInputDelivered n wire word, amplitude⟩]
      [falseState, trueState]
      (first_h_ready_to_input_delivered wire tail certificate
        word amplitude)
      (first_h_fire wire tail certificate word amplitude admitted)
  have falseTrace : evolve term certificate 12 [falseState] =
      [falseDone] :=
    first_h_fired_to_45 wire tail certificate word false
      (mul invSqrt2 amplitude)
  have trueTrace : evolve term certificate 12 [trueState] =
      [trueDone] :=
    first_h_fired_to_45 wire tail certificate word true
      (mul (if word wire then neg invSqrt2 else invSqrt2) amplitude)
  have post :
      evolve term certificate 12 [falseState, trueState] =
        [falseDone, trueDone] := by
    have distributed := evolve_append term certificate 12
      [falseState] [trueState]
    rw [falseTrace, trueTrace] at distributed
    exact distributed
  exact evolve_compose term certificate 33 12
    [⟨gateReadyState n 0 (initialBoundaryData word), amplitude⟩]
    [falseState, trueState] [falseDone, trueDone]
    reachesFired post

@[simp] theorem mem_insertKey_iff (probe key : Key) (keys : List Key) :
    probe ∈ insertKey key keys ↔ probe = key ∨ probe ∈ keys := by
  induction keys with
  | nil => simp [insertKey]
  | cons head tail ih =>
      by_cases duplicate : head == key
      · have equal := key_eq_of_beq head key duplicate
        subst head
        simp [insertKey, duplicate]
      · simp only [insertKey, duplicate, Bool.false_eq_true, if_false,
          List.mem_cons, ih]
        constructor
        · intro disjunction
          rcases disjunction with equal | equal | membership
          · exact .inr (.inl equal)
          · exact .inl equal
          · exact .inr (.inr membership)
        · intro disjunction
          rcases disjunction with equal | equal | membership
          · exact .inr (.inl equal)
          · exact .inl equal
          · exact .inr (.inr membership)

theorem mem_foldl_insertKey_iff (probe : Key) (source acc : List Key) :
    probe ∈ source.foldl (fun out key => insertKey key out) acc ↔
      probe ∈ acc ∨ probe ∈ source := by
  induction source generalizing acc with
  | nil => simp
  | cons head tail ih =>
      rw [List.foldl_cons, ih]
      simp only [mem_insertKey_iff, List.mem_cons]
      constructor
      · intro disjunction
        rcases disjunction with (equal | membership) | membership
        · exact .inr (.inl equal)
        · exact .inl membership
        · exact .inr (.inr membership)
      · intro disjunction
        rcases disjunction with membership | (equal | membership)
        · exact .inl (.inr membership)
        · exact .inl (.inl equal)
        · exact .inr membership

@[simp] theorem mem_canonicalKeys_iff (probe : Key) (keys : List Key) :
    probe ∈ canonicalKeys keys ↔ probe ∈ keys := by
  simp [canonicalKeys, mem_foldl_insertKey_iff]

@[simp] theorem mem_unionKeys_iff (probe : Key) (left right : List Key) :
    probe ∈ unionKeys left right ↔ probe ∈ left ∨ probe ∈ right := by
  simp [unionKeys, mem_foldl_insertKey_iff]

@[simp] theorem hFirePopped_eq_initialWireFrame (wire : Fin n)
    (word : Word n) :
    hFirePopped n wire word = [initialWireFrame n word wire] := by
  simpa [hFirePopped, sameKeyFrames] using
    sameKeyFrames_initialWire n word wire

@[simp] theorem tFirePopped_eq_initialWireFrame (wire : Fin n)
    (word : Word n) :
    tFirePopped n wire word = [initialWireFrame n word wire] := by
  simpa [tFirePopped, sameKeyFrames] using
    sameKeyFrames_initialWire n word wire

theorem prepBuriedKeys_eq_nil (n : Nat) :
    (prepStorage n).foldl (fun out item =>
      match item with
      | .burial buried => unionKeys out (alphaKeysLive buried)
      | _ => out) [] = [] := by
  induction n with
  | zero => rfl
  | succ n ih =>
      rw [prepStorage_succ]
      simpa [prepHistory] using ih

@[simp] theorem hFireBuried_eq_nil (wire : Fin n) :
    hFireBuried n wire = [] := by
  exact prepBuriedKeys_eq_nil n

@[simp] theorem tFireBuried_eq_nil :
    tFireBuried n = [] := by
  exact prepBuriedKeys_eq_nil n

@[simp] theorem alphaKeysLive_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    alphaKeysLive (alpha gate port inst bit epoch) = [⟨gate, port, inst⟩] := by
  rfl

@[simp] theorem alphaKeysLive_bullet : alphaKeysLive bullet = [] := by
  rfl

@[simp] theorem alphaKeysLive_cmu (port : Port) (invoked : Entry) :
    alphaKeysLive (cmu port invoked) = [] := by
  rfl

@[simp] theorem alphaKeysLive_rb (depth : Nat) (output code : Path) :
    alphaKeysLive (rb depth output code) = [] := by
  rfl

@[simp] theorem alphaKeysLive_gam (gate : GateName) :
    alphaKeysLive (gam gate) = [] := by
  rfl

@[simp] theorem alphaKeysLive_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    alphaKeysLive
      (cgam port invoked occurrence first second continuation) = [] := by
  rfl

theorem initialWireKey_not_mem_hFireRetained (wire : Fin n)
    (word : Word n) :
    initialWireKeys n wire ∉
      (hFireRetained n wire word).map (fun frame => frame.key) := by
  intro membership
  rcases List.mem_map.mp membership with ⟨frame, retained, equal⟩
  have selected := (List.mem_filter.mp retained).2
  rw [equal] at selected
  simp at selected

theorem initialWireKey_not_mem_tFireRetained (wire : Fin n)
    (word : Word n) :
    initialWireKeys n wire ∉
      (tFireRetained n wire word).map (fun frame => frame.key) := by
  intro membership
  rcases List.mem_map.mp membership with ⟨frame, retained, equal⟩
  have selected := (List.mem_filter.mp retained).2
  rw [equal] at selected
  simp at selected

@[simp] theorem hFireDead_eq_initialWireKey (wire : Fin n)
    (word : Word n) :
    hFireDead n wire word = [initialWireKeys n wire] := by
  simp [hFireDead, initialWireAnswer, initialWireFrame,
    initialWireKeys, portKey, prepInvoked,
    unionKeys, canonicalKeys, insertKey]

@[simp] theorem tFireDead_eq_initialWireKey (wire : Fin n)
    (word : Word n) :
    tFireDead n wire word = [initialWireKeys n wire] := by
  simp [tFireDead, initialWireAnswer, initialWireFrame,
    initialWireKeys, portKey, prepInvoked,
    unionKeys, canonicalKeys, insertKey]

@[simp] theorem hFireSurvive_not_contains_initialWireKey (wire : Fin n)
    (word : Word n) :
    (hFireSurvive n wire word).contains (initialWireKeys n wire) = false := by
  letI : LawfulBEq Key := {
    eq_of_beq := by
      intro left right equal
      exact key_eq_of_beq left right equal
    rfl := by exact key_beq_refl _ }
  rw [List.contains_eq_mem]
  simp [hFireSurvive, initialWireKey_not_mem_hFireRetained,
    entryKeys, gateMarker]

@[simp] theorem tFireSurvive_not_contains_initialWireKey (wire : Fin n)
    (word : Word n) :
    (tFireSurvive n wire word).contains (initialWireKeys n wire) = false := by
  letI : LawfulBEq Key := {
    eq_of_beq := by
      intro left right equal
      exact key_eq_of_beq left right equal
    rfl := by exact key_beq_refl _ }
  rw [List.contains_eq_mem]
  simp [tFireSurvive, initialWireKey_not_mem_tFireRetained,
    entryKeys, gateMarker]

@[simp] theorem fireRetained_eq_removeFrameKey (wire : Fin n)
    (word : Word n) :
    (prepFrames n word).filter
        (fun frame => !(frame.key == initialWireKeys n wire)) =
      removeFrameKey (prepFrames n word) (initialWireKeys n wire) := by
  unfold removeFrameKey
  rw [sameKeyFrames_initialWire]
  apply List.filter_congr
  intro frame membership
  cases keySelected : frame.key == initialWireKeys n wire with
  | false =>
      have frameDifferent : frame ≠ initialWireFrame n word wire := by
        intro equal
        subst frame
        have keySelf := key_beq_refl (initialWireKeys n wire)
        simp [initialWireFrame, initialWireKeys, keySelf] at keySelected
      have frameSelected := frame_beq_false_of_ne frame
        (initialWireFrame n word wire) frameDifferent
      simp only [keySelected, Bool.not_false, List.contains_cons,
        List.contains_nil, Bool.or_false, frameSelected]
  | true =>
      have selectedMembership :
          frame ∈ sameKeyFrames (prepFrames n word)
            (initialWireKeys n wire) := by
        exact List.mem_filter.mpr ⟨membership, keySelected⟩
      rw [sameKeyFrames_initialWire] at selectedMembership
      have frameEqual : frame = initialWireFrame n word wire := by
        simpa using selectedMembership
      subst frame
      simp only [keySelected, Bool.not_true, List.contains_cons,
        List.contains_nil, Bool.or_false, frame_beq_refl]

@[simp] theorem hFireRetained_eq_removeFrameKey (wire : Fin n)
    (word : Word n) :
    hFireRetained n wire word =
      removeFrameKey (prepFrames n word) (initialWireKeys n wire) := by
  exact fireRetained_eq_removeFrameKey wire word

@[simp] theorem tFireRetained_eq_removeFrameKey (wire : Fin n)
    (word : Word n) :
    tFireRetained n wire word =
      removeFrameKey (prepFrames n word) (initialWireKeys n wire) := by
  exact fireRetained_eq_removeFrameKey wire word

@[simp] theorem eraseKeys_hFireDead_hFireSurvive (wire : Fin n)
    (word : Word n) :
    eraseKeys (hFireDead n wire word) (hFireSurvive n wire word) =
      [initialWireKeys n wire] := by
  simp [eraseKeys, canonicalKeys, insertKey]

@[simp] theorem eraseKeys_tFireDead_tFireSurvive (wire : Fin n)
    (word : Word n) :
    eraseKeys (tFireDead n wire word) (tFireSurvive n wire word) =
      [initialWireKeys n wire] := by
  simp [eraseKeys, canonicalKeys, insertKey]

end QalcGate2PhysicalBoundary
