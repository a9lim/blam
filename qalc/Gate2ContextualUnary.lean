import Gate2ContextualPhysical

/-!
# Literal unary-gate transport at arbitrary compiler boundaries

The first-boundary H/T traces consume preparation wires.  This file lifts the
shared C-call prefix to an arbitrary SSA boundary.  The state definitions keep
the complete frame and predecessor stores explicit; later lemmas refine the
native H/T portions of the same actual composed-machine trace.
-/

namespace QalcGate2ContextualUnary

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalRefinement
open QalcGate2PhysicalBoundary
open QalcGate2ContextualCompiler
open QalcGate2BoundaryInvariant
open QalcGate2PhysicalEvolution
open QalcGate2ContextualPhysical

@[simp] theorem asAlpha_lp (occurrence : Path) (slice : List Entry) :
    asAlpha? (lp occurrence slice) = none := by
  rfl

theorem bitfreeFold_subset_deadFold (storage : List Store) :
    ∀ (bitfree dead : List Key),
      (∀ key, key ∈ bitfree → key ∈ dead) →
      ∀ key,
        key ∈ storage.foldl (fun out item =>
          match item with
          | .decoded found => insertKey found out
          | .bundle keys => unionKeys out keys
          | _ => out) bitfree →
        key ∈ storage.foldl (fun out item =>
          match item with
          | .decoded found => insertKey found out
          | .bundle keys => unionKeys out keys
          | .burial cargo => unionKeys out (alphaKeysLive cargo)
          | _ => out) dead := by
  induction storage with
  | nil => exact fun _ _ subset _ membership => subset _ membership
  | cons item rest ih =>
      intro bitfree dead subset key membership
      apply ih _ _ _ key membership
      cases item with
      | decoded found =>
          intro probe probeMember
          rw [mem_insertKey_iff] at probeMember ⊢
          rcases probeMember with same | old
          · exact Or.inl same
          · exact Or.inr (subset _ old)
      | bundle keys =>
          intro probe probeMember
          rw [mem_unionKeys_iff] at probeMember ⊢
          rcases probeMember with old | added
          · exact Or.inl (subset _ old)
          · exact Or.inr added
      | burial cargo =>
          intro probe probeMember
          rw [mem_unionKeys_iff]
          exact Or.inl (subset _ probeMember)
      | suppressed _ => simpa using subset
      | cpark _ _ _ _ _ _ => simpa using subset
      | chistory _ _ _ _ _ _ _ => simpa using subset
      | cdead _ _ _ _ _ => simpa using subset
      | cquery _ _ _ => simpa using subset
      | cstage _ => simpa using subset

theorem bitfreeKeys_subset_deadKeys (storage : List Store) :
    ∀ {key}, key ∈ bitfreeKeys storage → key ∈ deadKeys storage := by
  intro key membership
  exact bitfreeFold_subset_deadFold storage [] [] (by simp) key membership

theorem burialFold_subset_deadFold (storage : List Store) :
    ∀ (burial dead : List Key),
      (∀ key, key ∈ burial → key ∈ dead) →
      ∀ key,
        key ∈ storage.foldl (fun out item =>
          match item with
          | .burial cargo => unionKeys out (alphaKeysLive cargo)
          | _ => out) burial →
        key ∈ storage.foldl (fun out item =>
          match item with
          | .decoded found => insertKey found out
          | .bundle keys => unionKeys out keys
          | .burial cargo => unionKeys out (alphaKeysLive cargo)
          | _ => out) dead := by
  induction storage with
  | nil => exact fun _ _ subset _ membership => subset _ membership
  | cons item rest ih =>
      intro burial dead subset key membership
      apply ih _ _ _ key membership
      cases item with
      | decoded found =>
          intro probe probeMember
          rw [mem_insertKey_iff]
          exact Or.inr (subset _ probeMember)
      | bundle keys =>
          intro probe probeMember
          rw [mem_unionKeys_iff]
          exact Or.inl (subset _ probeMember)
      | burial cargo =>
          intro probe probeMember
          rw [mem_unionKeys_iff] at probeMember ⊢
          rcases probeMember with old | added
          · exact Or.inl (subset _ old)
          · exact Or.inr added
      | suppressed _ => simpa using subset
      | cpark _ _ _ _ _ _ => simpa using subset
      | chistory _ _ _ _ _ _ _ => simpa using subset
      | cdead _ _ _ _ _ => simpa using subset
      | cquery _ _ _ => simpa using subset
      | cstage _ => simpa using subset

theorem burialKeys_subset_deadKeys (storage : List Store) :
    ∀ {key},
      key ∈ storage.foldl (fun out item =>
        match item with
        | .burial cargo => unionKeys out (alphaKeysLive cargo)
        | _ => out) [] →
      key ∈ deadKeys storage := by
  intro key membership
  exact burialFold_subset_deadFold storage [] [] (by simp) key membership

theorem filter_not_key_eq_removeFrameKey_of_sameKeyFrames
    (frames : List Frame) (key : Key) (selected : Frame)
    (matching : sameKeyFrames frames key = [selected]) :
    frames.filter (fun frame => !(frame.key == key)) =
      removeFrameKey frames key := by
  unfold removeFrameKey
  rw [matching]
  have selectedMember : selected ∈ sameKeyFrames frames key := by
    rw [matching]
    simp
  have selectedKey : (selected.key == key) = true :=
    (List.mem_filter.mp selectedMember).2
  apply List.filter_congr
  intro frame membership
  cases keySelected : frame.key == key with
  | false =>
      have frameDifferent : frame ≠ selected := by
        intro equal
        subst frame
        simp [selectedKey] at keySelected
      have frameSelected := frame_beq_false_of_ne frame selected frameDifferent
      simp [keySelected, frameSelected]
  | true =>
      have selectedMembership : frame ∈ sameKeyFrames frames key :=
        List.mem_filter.mpr ⟨membership, keySelected⟩
      rw [matching] at selectedMembership
      have frameEqual : frame = selected := by simpa using selectedMembership
      subst frame
      simp [selectedKey, frame_beq_refl]

theorem key_not_mem_filtered_other_frame_keys
    (frames : List Frame) (key : Key) :
    key ∉
      (frames.filter (fun frame => !(frame.key == key))).map
        (fun frame => frame.key) := by
  intro membership
  rcases List.mem_map.mp membership with ⟨frame, retained, equal⟩
  have selected := (List.mem_filter.mp retained).2
  rw [equal] at selected
  simp [key_beq_refl] at selected

theorem findHistoryInvocation_none_of_noPrior (invoked : Entry)
    (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) :
    storage.findSome? (fun item =>
      match item with
      | .chistory other _ _ _ _ _ _ =>
        if invoked = other then some other else none
      | _ => none) = none := by
  apply List.findSome?_eq_none_iff.mpr
  intro item membership
  have freshExpanded : storage.any (fun item =>
      match item with
      | .cpark other _ _ _ _ _ => other == invoked
      | .chistory other _ _ _ _ _ _ => other == invoked
      | _ => false) = false := fresh
  have current := List.any_eq_false.mp freshExpanded item membership
  cases item <;> simp_all
  exact Ne.symm current

theorem matchingHistoryInvocations_nil_of_noPrior (invoked : Entry)
    (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) :
    matchingHistoryInvocations invoked storage = [] := by
  apply List.filterMap_eq_nil_iff.mpr
  intro item membership
  have freshExpanded : storage.any (fun item =>
      match item with
      | .cpark other _ _ _ _ _ => other == invoked
      | .chistory other _ _ _ _ _ _ => other == invoked
      | _ => false) = false := fresh
  have current := List.any_eq_false.mp freshExpanded item membership
  cases item <;> simp_all [matchingHistoryInvocations]
  exact Ne.symm current

theorem closeVirtualPort_none_of_noPrior (path : Path)
    (invoked : Entry) (log tape : List Entry) (frames : List Frame)
    (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) :
    closeVirtualPort
      ⟨path, .up, invoked :: log, bullet :: tape, none, frames, storage⟩ =
        none := by
  have histories := matchingHistoryInvocations_nil_of_noPrior
    invoked storage fresh
  have directionSame : (Direction.up != Direction.up) = false := by
    native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp [closeVirtualPort, directionSame, bulletIs, headBang_cons, histories]

theorem cparkMatches_eq_nil_of_noPrior (invoked : Entry)
    (storage : List Store)
    (fresh : hasPriorCInvocation invoked storage = false) :
    cparkMatches invoked storage = [] := by
  apply List.filterMap_eq_nil_iff.mpr
  intro indexed membership
  rcases indexed with ⟨item, index⟩
  have indexedFacts := List.mem_zipIdx membership
  have indexLt : index < storage.length := by omega
  have itemEq : item = storage[index] := by
    simpa using indexedFacts.2.2
  have itemMembership : item ∈ storage := by
    rw [itemEq]
    exact List.getElem_mem indexLt
  have allFalse := List.any_eq_false.mp fresh item itemMembership
  cases item <;> simp_all [cparkMatches]

theorem cparkMatchesFrom_eq_nil_of_noPrior (invoked : Entry)
    (storage : List Store) (start : Nat)
    (fresh : hasPriorCInvocation invoked storage = false) :
    (storage.zipIdx start).filterMap (fun (item, index) =>
      match item with
      | .cpark other bit descriptor descriptors occurrence continuation =>
        if other == invoked then
          some (index, bit, descriptor, descriptors, occurrence,
            continuation)
        else none
      | _ => none) = [] := by
  apply List.filterMap_eq_nil_iff.mpr
  intro indexed membership
  rcases indexed with ⟨item, index⟩
  have indexedFacts := List.mem_zipIdx membership
  have offsetLt : index - start < storage.length := by omega
  have itemEq : item = storage[index - start] := indexedFacts.2.2
  have itemMembership : item ∈ storage := by
    rw [itemEq]
    exact List.getElem_mem offsetLt
  have allFalse := List.any_eq_false.mp fresh item itemMembership
  cases item <;> simp_all

def unaryCheckpoint15At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨cBinderPath, .down, [],
      [gateInvoked width gateIndex, gateMarker .first width gateIndex,
       appBullet, appBullet, cmu .first (gateInvoked width gateIndex),
       appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def unaryCheckpoint20At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateFirstPath width gateIndex, .up,
      [gateMarker .first width gateIndex],
      [gateFirstLogged width gateIndex,
       cmu .first (gateInvoked width gateIndex),
       appBullet, appBullet, rb 0 [] []], none,
      data.frames, data.storage⟩
    ⟨.hole false, some [], [], []⟩

def unaryParkAt (width gateIndex : Nat) : Store :=
  .cpark (gateInvoked width gateIndex) false
    (.logged (gateFirstLogged width gateIndex)) []
    (gateOccurrence width gateIndex)
    (gateContinuationPath width gateIndex)

def hCheckpoint25At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .down, [unaryInstance .h width gateIndex],
      [appBullet, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def hCalledAt (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .up, [unaryInstance .h width gateIndex],
      [gam .h, appBullet, appBullet, mu .h, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint23At (width gateIndex : Nat)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.fn], .down,
      [gateMarker .second width gateIndex],
      [appBullet, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def hInputArrivalAt (width gateIndex : Nat)
    (sources : Fin width → SourceName) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨sourceBinderPath width (sources wire), .up, [],
      [lp (gateSecondPath width gateIndex ++ [.arg])
          [gam .h, gateMarker .second width gateIndex],
       appBullet, appBullet, mu .h, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def hInputDeliveredAt (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  let input := data.wires wire
  .run
    ⟨gateSecondPath width gateIndex ++ [.arg], .up,
      [gam .h, gateMarker .second width gateIndex],
      List.replicate (bitNat (data.word wire)) appBullet ++
        [boundaryWireAnswer data wire, mu .h, appBullet, appBullet,
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames,
      .cquery (keyPort input) input.inst
          (unaryInputLogged .h width gateIndex) ::
        unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def unaryRetainedAt (wire : Fin n) (data : BoundaryData n) : List Frame :=
  removeFrameKey data.frames (data.wires wire)

def unaryPostStorageAt (name : GateName) (width gateIndex : Nat)
    (wire : Fin width) (data : BoundaryData width) : List Store :=
  let input := data.wires wire
  .bundle [input] ::
    .cquery (keyPort input) input.inst
      (unaryInputLogged name width gateIndex) ::
    unaryParkAt width gateIndex :: data.storage

def hFiredAt (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.arg], .up,
      [gam .h, gateMarker .second width gateIndex],
      [ans .h bit, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hAnswerAt (width gateIndex : Nat) (bit : Bool) : Entry :=
  alpha .h none (unaryInstance .h width gateIndex) bit .fresh

theorem frameSourceBefore_gate_c
    (source : FrameSourceBefore n completed key) : key.gate = .c := by
  rcases source with
      ⟨wire, before, port, rfl⟩ | ⟨gateIndex, before, port, rfl⟩ <;>
    rfl

theorem sameKeyFrames_hInstance_boundary
    (data : BoundaryData n) (gateIndex : Nat)
    (wf : BoundaryWFAt completed data) :
    sameKeyFrames data.frames
        ⟨.h, none, unaryInstance .h n gateIndex⟩ = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership selected
  have gateC := frameSourceBefore_gate_c
    (wf.frameSource frame membership)
  have keyEqual := key_eq_of_beq frame.key
    ⟨.h, none, unaryInstance .h n gateIndex⟩ selected
  have gateEqual := congrArg Key.gate keyEqual
  simp [gateC] at gateEqual

theorem decodeInput_hAnswerAt (data : BoundaryData n) (wire : Fin n)
    (gateIndex : Nat) (bit : Bool) (wf : BoundaryWFAt completed data) :
    decodeInput bit (hAnswerAt n gateIndex bit)
        (unaryRetainedAt wire data) =
      some (.alpha .h none (unaryInstance .h n gateIndex) .fresh, [],
        unaryRetainedAt wire data) := by
  have fresh := sameKeyFrames_hInstance_boundary data gateIndex wf
  have popped := sameKeyFrames_removeFrameKey_fresh data.frames
    (data.wires wire) ⟨.h, none, unaryInstance .h n gateIndex⟩ fresh
  unfold sameKeyFrames at popped
  cases bit <;> simp [decodeInput, hAnswerAt, unaryRetainedAt, popped]

theorem cparkMatches_unaryPostStorageAt (name : GateName)
    (width gateIndex : Nat) (wire : Fin width) (data : BoundaryData width)
    (fresh : hasPriorCInvocation (gateInvoked width gateIndex)
      data.storage = false) :
    cparkMatches (gateInvoked width gateIndex)
        (unaryPostStorageAt name width gateIndex wire data) =
      [(2, false, .logged (gateFirstLogged width gateIndex), [],
        gateOccurrence width gateIndex,
        gateContinuationPath width gateIndex)] := by
  simp [cparkMatches, unaryPostStorageAt, unaryParkAt]
  intro item index membership
  have indexedFacts := List.mem_zipIdx membership
  have offsetLt : index - 3 < data.storage.length := by omega
  have itemEq : item = data.storage[index - 3] := indexedFacts.2.2
  have itemMembership : item ∈ data.storage := by
    rw [itemEq]
    exact List.getElem_mem offsetLt
  have allFalse := List.any_eq_false.mp fresh item itemMembership
  cases item <;> simp_all

def hCheckpoint38At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .down, [unaryInstance .h width gateIndex],
      [appBullet, cmu .second (gateInvoked width gateIndex), appBullet,
       rb 0 [] []], some ⟨.h, none, bit, 1⟩,
      unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint40At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .up, [unaryInstance .h width gateIndex],
      List.replicate (bitNat bit + 1) appBullet ++
        [hAnswerAt width gateIndex bit,
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint41At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨hBinderPath, .down, [],
      unaryInstance .h width gateIndex ::
        (List.replicate (bitNat bit + 1) appBullet ++
          [hAnswerAt width gateIndex bit,
           cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []]),
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint42At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.fn], .up,
      [gateMarker .second width gateIndex],
      List.replicate (bitNat bit + 1) appBullet ++
        [hAnswerAt width gateIndex bit,
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint43At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex, .up,
      [gateMarker .second width gateIndex],
      List.replicate (bitNat bit) appBullet ++
        [hAnswerAt width gateIndex bit,
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def unaryCompletedStorageAt (name : GateName) (width gateIndex : Nat)
    (wire : Fin width) (data : BoundaryData width) : List Store :=
  let input := data.wires wire
  .bundle [input] ::
    .cquery (keyPort input) input.inst
      (unaryInputLogged name width gateIndex) ::
    unaryHistory name width gateIndex :: data.storage

@[simp] theorem replace_unaryPostStorageAt_with_history
    (name : GateName) (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) :
    replaceStoreAt? (unaryPostStorageAt name width gateIndex wire data) 2
        (unaryHistory name width gateIndex) =
      some (unaryCompletedStorageAt name width gateIndex wire data) := by
  rfl

@[simp] theorem replace_hPostStorageAt_with_expanded_history
    (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) :
    replaceStoreAt? (unaryPostStorageAt .h width gateIndex wire data) 2
        (.chistory (gateInvoked width gateIndex)
          (.logged (gateFirstLogged width gateIndex)) []
          (.alpha .h none (unaryInstance .h width gateIndex) .fresh) []
          (gateOccurrence width gateIndex)
          (gateContinuationPath width gateIndex)) =
      some (unaryCompletedStorageAt .h width gateIndex wire data) := by
  simpa [unaryHistory] using
    replace_unaryPostStorageAt_with_history .h width gateIndex wire data

@[simp] theorem replace_tPostStorageAt_with_expanded_history
    (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) :
    replaceStoreAt? (unaryPostStorageAt .t width gateIndex wire data) 2
        (.chistory (gateInvoked width gateIndex)
          (.logged (gateFirstLogged width gateIndex)) []
          (.alpha .t none (unaryInstance .t width gateIndex) .fresh) []
          (gateOccurrence width gateIndex)
          (gateContinuationPath width gateIndex)) =
      some (unaryCompletedStorageAt .t width gateIndex wire data) := by
  simpa [unaryHistory] using
    replace_unaryPostStorageAt_with_history .t width gateIndex wire data

def hCheckpoint44At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨gateContinuationPath width gateIndex, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width gateIndex false bit (unaryRetainedAt wire data),
      .cstage .fire ::
        unaryCompletedStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def hCheckpoint45At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) (bit : Bool) : NFState :=
  .run
    ⟨gateContinuationPath width gateIndex, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width gateIndex false bit (unaryRetainedAt wire data),
      unaryCompletedStorageAt .h width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

@[simp] theorem fireSecond_h_at (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (bit : Bool)
    (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .h wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          List.replicate (bitNat bit) bullet ++
            [hAnswerAt n prior.length bit,
             cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .h n prior.length wire data⟩
        (bit, hAnswerAt n prior.length bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false bit
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .h n prior.length wire data⟩)) := by
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, gateInvoked n prior.length) ==
        (Port.second, gateInvoked n prior.length)) = true := by
    change
      (true && entryBEq (gateInvoked n prior.length)
        (gateInvoked n prior.length)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n prior.length) !=
        some (Port.second, gateInvoked n prior.length)) = false := by
    simp [bne_eq, pairSame]
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  have fresh := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have parked := cparkMatches_unaryPostStorageAt .h n prior.length wire
    data fresh
  have decoded := decodeInput_hAnswerAt data wire prior.length bit
    wf.machine
  have atContinuation :=
    subterm_compiledTerm_current_continuation positiveWidth prior
      (.h wire) rest
  have atContinuationBody :=
    subterm_compiledTerm_current_continuation_body positiveWidth prior
      (.h wire) rest
  cases bit <;> simp [fireSecond, bitNat, portSame, probeSame,
    continuationBullet, parked, decoded, atContinuation,
    atContinuationBody, replace_hPostStorageAt_with_expanded_history,
    splitCustom, kernelDeterministic, outputFrames, unaryHistory]

@[simp] theorem fireSecond_h_at_false (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .h wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          [alpha .h none (unaryInstance .h n prior.length) false .fresh,
           cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .h n prior.length wire data⟩
        (false,
          alpha .h none (unaryInstance .h n prior.length) false .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false false
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .h n prior.length wire data⟩)) := by
  simpa [hAnswerAt, bitNat] using
    fireSecond_h_at positiveWidth prior wire rest data false wf

@[simp] theorem fireSecond_h_at_true (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .h wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          [bullet,
           alpha .h none (unaryInstance .h n prior.length) true .fresh,
           cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .h n prior.length wire data⟩
        (true,
          alpha .h none (unaryInstance .h n prior.length) true .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false true
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .h n prior.length wire data⟩)) := by
  simpa [hAnswerAt, bitNat] using
    fireSecond_h_at positiveWidth prior wire rest data true wf

def unaryCircuitGate (name : GateName) (wire : Fin n) : Gate n :=
  match name with
  | .h => .h wire
  | .t => .t wire
  | .c => .h wire

@[simp] theorem subterm_compiledTerm_current_unary_first
    (positiveWidth : 0 < n) (prior : Circuit n) (name : GateName)
    (wire : Fin n) (rest : Circuit n) :
    subterm? (compiledTerm
        (prior ++ unaryCircuitGate name wire :: rest))
        (gateFirstPath n prior.length) = some zeroTerm := by
  rw [show gateFirstPath n prior.length =
      gateRoot n prior.length ++ [.fn, .fn, .arg] by
    simp [gateFirstPath]]
  rw [subterm_append, compiledTerm_at_gateRoot positiveWidth prior]
  cases name <;> rfl

theorem subterm_compiledTerm_current_unary_first_zero
    (positiveWidth : 0 < n) (prior : Circuit n) (current : Gate n)
    (rest : Circuit n)
    (unary : ∃ name wire, current = unaryCircuitGate name wire) :
    subterm? (compiledTerm (prior ++ current :: rest))
        (gateFirstPath n prior.length) = some zeroTerm := by
  rcases unary with ⟨name, wire, rfl⟩
  exact subterm_compiledTerm_current_unary_first positiveWidth prior
    name wire rest

theorem binder_compiledTerm_current_unary_first_zero
    (positiveWidth : 0 < n) (prior : Circuit n) (current : Gate n)
    (rest : Circuit n)
    (unary : ∃ name wire, current = unaryCircuitGate name wire) :
    binderPath? (compiledTerm (prior ++ current :: rest))
        (gateFirstPath n prior.length ++ [.body, .body]) =
      some (gateFirstPath n prior.length) := by
  rcases unary with ⟨name, wire, rfl⟩
  rw [show gateFirstPath n prior.length ++ [.body, .body] =
      gateRoot n prior.length ++ [.fn, .fn, .arg, .body, .body] by
    simp [gateFirstPath, List.append_assoc]]
  rw [binder_compiledTerm_after_prefix positiveWidth prior
    (unaryCircuitGate name wire :: rest)
    [.fn, .fn, .arg, .body, .body]]
  cases name <;>
    simp [compileGatesWith, cnot, apps, lams, lowerTotal, binderPathGo,
      zeroTerm, gateFirstPath, List.append_assoc, unaryCircuitGate]

theorem subterm_compiledTerm_current_c_code (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ current :: rest))
        (gateOccurrence n prior.length) =
      some (.var
        ((lookupName .c
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
  rw [show gateOccurrence n prior.length =
    gateRoot n prior.length ++ [.fn, .fn, .fn] by
      simp [gateOccurrence]]
  rw [subterm_append,
    compiledTerm_at_gateRoot positiveWidth prior (current :: rest)]
  cases current <;> rfl

theorem subterm_compiledTerm_current_h_second (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ .h wire :: rest))
        (gateSecondPath n prior.length) =
      some
        (.app
          (.var ((lookupName .h
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))
          (.var ((lookupName
            (sourceWiresFrom 0 wireName prior wire)
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))) := by
  rw [show gateSecondPath n prior.length =
    gateRoot n prior.length ++ [.fn, .arg] by
      simp [gateSecondPath]]
  rw [subterm_append,
    compiledTerm_at_gateRoot positiveWidth prior (.h wire :: rest)]
  rfl

set_option maxHeartbeats 0 in
theorem contextual_gate_reaches_head (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 3
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨cxHeadStateAt n prior.length data, amplitude⟩] := by
  have atRoot := compiledTerm_at_gateRoot positiveWidth prior
    (current :: rest)
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let tailFor (gate : Gate n) : Term :=
    lowerTotal
      (compileGatesWith n (prior.length + 1)
        (nextSourceWires prior.length sources gate) rest)
      (.gateSecond prior.length :: .gateFirst prior.length :: environment)
  let cVar : Term := .var ((lookupName .c environment).getD 1)
  have atRootShape : ∃ first second continuation,
      subterm? (compiledTerm (prior ++ current :: rest))
          (gateRoot n prior.length) =
        some (.app (.app (.app cVar first) second) continuation) := by
    rw [atRoot]
    cases current with
    | h wire =>
        refine ⟨zeroTerm,
          .app (.var ((lookupName .h environment).getD 1))
            (.var ((lookupName (sources wire) environment).getD 1)),
          .lam (.lam (tailFor (.h wire))), ?_⟩
        rfl
    | t wire =>
        refine ⟨zeroTerm,
          .app (.var ((lookupName .t environment).getD 1))
            (.var ((lookupName (sources wire) environment).getD 1)),
          .lam (.lam (tailFor (.t wire))), ?_⟩
        rfl
    | cx control target distinct =>
        refine ⟨.var ((lookupName (sources control) environment).getD 1),
          .var ((lookupName (sources target) environment).getD 1),
          .lam (.lam (tailFor (.cx control target distinct))), ?_⟩
        rfl
  rcases atRootShape with ⟨first, second, continuation, atRootShape⟩
  have atFnShape :
      subterm? (compiledTerm (prior ++ current :: rest))
          (gateRoot n prior.length ++ [.fn]) =
        some (.app (.app cVar first) second) := by
    rw [subterm_append, atRootShape]
    rfl
  have atFnFnShape :
      subterm? (compiledTerm (prior ++ current :: rest))
          (gateRoot n prior.length ++ [.fn, .fn]) =
        some (.app cVar first) := by
    rw [subterm_append, atRootShape]
    rfl
  have finishNone := finishCStage_none_of_noStageHead data.storage noStage
  have step1 :
      evolve (compiledTerm (prior ++ current :: rest)) certificate 1
          [⟨gateReadyState n prior.length data, amplitude⟩] =
        [⟨cxHeadStep1At n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, gateReadyState, cxHeadStep1At,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      atRootShape, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul]
  have step2 :
      evolve (compiledTerm (prior ++ current :: rest)) certificate 1
          [⟨cxHeadStep1At n prior.length data, amplitude⟩] =
        [⟨cxHeadStep2At n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, cxHeadStep1At, cxHeadStep2At,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      atFnShape, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul]
  have step3 :
      evolve (compiledTerm (prior ++ current :: rest)) certificate 1
          [⟨cxHeadStep2At n prior.length data, amplitude⟩] =
        [⟨cxHeadStateAt n prior.length data, amplitude⟩] := by
    simp (config := { maxSteps := 200000 })
      [evolve, stepColumn, stepBasis, cxHeadStep2At, cxHeadStateAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      mapKernelEdge, kernelDeterministic, nfDeterministic, finishNone,
      gateOccurrence, atFnFnShape, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]
  exact evolve_compose _ _ 2 1 _ _ _
    (evolve_compose _ _ 1 1 _ _ _ step1 step2) step3

set_option maxHeartbeats 0 in
theorem contextual_gate_head_recall (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 1
        [⟨cxHeadStateAt n prior.length data, amplitude⟩] =
      [⟨cxCRecalledAt n prior.length data, amplitude⟩] := by
  have atC :
      subterm? (compiledTerm (prior ++ current :: rest))
          (gateOccurrence n prior.length) =
        some (.var
          ((lookupName .c
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [show gateOccurrence n prior.length =
      gateRoot n prior.length ++ [.fn, .fn, .fn] by
        simp [gateOccurrence]]
    rw [subterm_append,
      compiledTerm_at_gateRoot positiveWidth prior (current :: rest)]
    cases current <;> rfl
  have binderC := binder_compiledTerm_current_c positiveWidth prior
    current rest
  have binderCExpanded :
      binderPath? (compiledTerm (prior ++ current :: rest))
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
theorem contextual_gate_recalled_to_call (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 5
        [⟨cxCRecalledAt n prior.length data, amplitude⟩] =
      [⟨cxCallSourceAt n prior.length data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName (prior ++ current :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 5
      [⟨cxCRecalledAt n prior.length data, amplitude⟩] =
    [⟨cxCallSourceAt n prior.length data, amplitude⟩]
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort (prepProgram n tail)
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
    gateInvoked, gateOccurrence, gateRoot, gateContinuationPath,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_gate_call (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 1
        [⟨cxCallSourceAt n prior.length data, amplitude⟩] =
      [⟨cxCalledAt n prior.length data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName (prior ++ current :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 1
      [⟨cxCallSourceAt n prior.length data, amplitude⟩] =
    [⟨cxCalledAt n prior.length data, amplitude⟩]
  have arguments :
      cArguments? (prepProgram n tail) (gateOccurrence n prior.length) =
        some (gateFirstPath n prior.length, gateSecondPath n prior.length,
          gateContinuationPath n prior.length) := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      cArguments_compiledTerm_current positiveWidth prior current rest
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

theorem contextual_gate_ready_to_called (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 10
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨cxCalledAt n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ current :: rest)
  have trace3 := contextual_gate_reaches_head positiveWidth prior current rest
    certificate data amplitude wf.storage.noStageHead
  have trace4 := evolve_compose term certificate 3 1 _ _ _ trace3
    (contextual_gate_head_recall positiveWidth prior current rest certificate
      data amplitude wf.storage.noStageHead)
  have trace9 := evolve_compose term certificate 4 5 _ _ _ trace4
    (contextual_gate_recalled_to_call positiveWidth prior current rest
      certificate data amplitude wf)
  exact evolve_compose term certificate 9 1 _ _ _ trace9
    (contextual_gate_call positiveWidth prior current rest certificate data
      amplitude wf)

set_option maxHeartbeats 0 in
theorem contextual_unary_called_to_15 (positiveWidth : 0 < n)
    (prior : Circuit n) (name : GateName) (wire : Fin n)
    (rest : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm
        (prior ++ unaryCircuitGate name wire :: rest)) certificate 5
        [⟨cxCalledAt n prior.length data, amplitude⟩] =
      [⟨unaryCheckpoint15At n prior.length data, amplitude⟩] := by
  have atFirst := subterm_compiledTerm_current_unary_first positiveWidth
    prior name wire rest
  have binderC := binder_compiledTerm_current_c positiveWidth prior
    (unaryCircuitGate name wire) rest
  have atCGate :
      subterm? (compiledTerm
          (prior ++ unaryCircuitGate name wire :: rest)) [.arg] =
        some (.gate .c) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_cGate _ _
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort
          (compiledTerm (prior ++ unaryCircuitGate name wire :: rest))
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeC
  have returnCNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnC
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionOpposite :
      (Direction.up == Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  rw [compiledTerm_eq_prepProgram positiveWidth]
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, cxCalledAt, unaryCheckpoint15At,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionOpposite, appIs,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atCGate, atFirst, binderC, deliverCNone, returnCNone, finishNone,
    zeroTerm, cBinderPath, gateInvoked, gateMarker,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_unary_15_to_20 (positiveWidth : 0 < n)
    (prior : Circuit n) (current : Gate n) (rest : Circuit n)
    (unary : ∃ name wire, current = unaryCircuitGate name wire)
    (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ current :: rest)) certificate 5
        [⟨unaryCheckpoint15At n prior.length data, amplitude⟩] =
      [⟨unaryCheckpoint20At n prior.length data, amplitude⟩] := by
  have atRoot := compiledTerm_at_gateRoot positiveWidth prior
    (current :: rest)
  have atFirst := subterm_compiledTerm_current_unary_first_zero positiveWidth
    prior current rest unary
  have atC := subterm_compiledTerm_current_c_code positiveWidth prior
    current rest
  have binderC := binder_compiledTerm_current_c positiveWidth prior
    current rest
  have binderFirst := binder_compiledTerm_current_unary_first_zero
    positiveWidth prior current rest unary
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort
          (compiledTerm (prior ++ current :: rest))
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeC
  have returnCNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnC
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  rw [compiledTerm_eq_prepProgram positiveWidth] at atRoot atFirst atC binderC binderFirst deliverCNone
  rw [compiledTerm_eq_prepProgram positiveWidth]
  have binderCExpanded :
      binderPath?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName
                (prior ++ current :: rest))
              (preparedEnvironment n)))
          (gateOccurrence n prior.length) =
        some ([.fn, .fn, .fn, .body, .body] : Path) := by
    simpa [cBinderPath] using binderC
  have binderCFullyExpanded :
      binderPath?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) =
        some ([.fn, .fn, .fn, .body, .body] : Path) := by
    simpa [gateOccurrence, gateRoot, gateBlock, List.append_assoc] using
      binderCExpanded
  have atCFullyExpanded :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) =
        some (.var
          ((lookupName .c
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [gateOccurrence, gateRoot, gateBlock, List.append_assoc] using atC
  have atFirstFullyExpanded :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg])) = some zeroTerm := by
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      atFirst
  have atFirstBody :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (gateFirstPath n prior.length ++ [.body]) =
        some (.lam (.var 2)) := by
    rw [subterm_append, atFirst]
    rfl
  have atFirstBodyFullyExpanded :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg, .body])) = some (.lam (.var 2)) := by
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      atFirstBody
  have atFirstBodyBody :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (gateFirstPath n prior.length ++ [.body, .body]) =
        some (.var 2) := by
    rw [subterm_append, atFirst]
    rfl
  have atFirstBodyBodyFullyExpanded :
      subterm?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg, .body, .body])) = some (.var 2) := by
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      atFirstBodyBody
  have binderFirstFullyExpanded :
      binderPath?
          (prepProgram n
            (lowerTotal
              (compileGatesWith n 0 wireName (prior ++ current :: rest))
              (preparedEnvironment n)))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg, .body, .body])) =
        some
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg])) := by
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      binderFirst
  simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, unaryCheckpoint15At,
      unaryCheckpoint20At, composedStep, readbackStep, firstRB, treeAt?,
      kernelToken, directionDifferent, appIs,
      delegateStep, cnotStepToken, closeVirtualPort,
      kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
      composedToken, mapKernelEdge, atRoot, atFirst, atC,
      atCFullyExpanded, binderC, binderCExpanded, binderCFullyExpanded,
      atFirstFullyExpanded, atFirstBody, atFirstBodyFullyExpanded,
      atFirstBodyBody, atFirstBodyBodyFullyExpanded,
      binderFirst, binderFirstFullyExpanded,
      deliverCNone, returnCNone, finishNone,
      compileGatesWith, cnot, apps, lams, lowerTotal,
      zeroTerm, gateInvoked, gateOccurrence, gateRoot, gateMarker,
      gateFirstPath, gateSecondPath, gateContinuationPath, gateFirstLogged,
      gateBlock, level, List.append_assoc,
      cBinderPath, nfDeterministic, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem contextual_h_20_to_25 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 5
        [⟨unaryCheckpoint20At n prior.length data, amplitude⟩] =
      [⟨hCheckpoint25At n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  have arguments := cArguments_compiledTerm_current positiveWidth prior
    (.h wire) rest
  have atFirst := subterm_compiledTerm_current_unary_first_zero positiveWidth
    prior (.h wire) rest ⟨.h, wire, rfl⟩
  have binderH := binder_compiledTerm_current_h_native positiveWidth prior
    wire rest
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have binderFirst := binder_compiledTerm_current_unary_first_zero
    positiveWidth prior (.h wire) rest ⟨.h, wire, rfl⟩
  have noPrior := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeC
  have deliverHNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨hBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeH
  have deliverHUnderCparkNone : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation direction log tape vb frames,
      deliverPort term
          ⟨hBinderPath, direction, log, tape, vb, frames,
            .cpark parkInvoked bit descriptor descriptors occurrence
              continuation :: data.storage⟩ = none := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
      direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have returnCNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnC
  have returnHNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨hBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnH
  have futureFirst := wf.storage.futureFirst prior.length
    (Nat.le_refl prior.length)
  have futureSecond := wf.storage.futureSecond prior.length
    (Nat.le_refl prior.length)
  have futureGateFirst := wf.storage.futureGateFirst prior.length
    (Nat.le_refl prior.length)
  have atFirstExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg])) = some zeroTerm := by
    simpa [term, gateFirstPath, gateRoot, gateBlock,
      List.append_assoc] using atFirst
  have binderFirstExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg, .body, .body])) =
        some
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg])) := by
    simpa [term, gateFirstPath, gateRoot, gateBlock,
      List.append_assoc] using binderFirst
  have atSecondExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg])) =
        some
          (.app
            (.var ((lookupName .h
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))
            (.var ((lookupName
              (sourceWiresFrom 0 wireName prior wire)
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))) := by
    simpa [term, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atSecond
  have atSecondFn :
      subterm? term (gateSecondPath n prior.length ++ [.fn]) =
        some
          (.var ((lookupName .h
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have atSecondFnExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .fn])) =
        some
          (.var ((lookupName .h
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atSecondFn
  have binderHExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .fn])) = some hBinderPath := by
    simpa [term, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using binderH
  have deliverGateFirstNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨gateFirstPath n prior.length, direction, log, tape, vb,
            frames, data.storage⟩ = none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      futureGateFirst
  have deliverGateFirstExpandedNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++
                [.fn, .fn, .arg]),
            direction, log, tape, vb, frames, data.storage⟩ = none := by
    intro direction log tape vb frames
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      deliverGateFirstNone direction log tape vb frames
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up == Direction.up) = true := by native_decide
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
  have pairSameExpanded :
      ((Port.first,
          lp (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) []) ==
        (Port.first,
          lp (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .fn])) [])) = true := by
    simpa [gateInvoked, gateOccurrence, gateRoot, gateBlock,
      List.append_assoc] using pairSame
  have markerDepth :
      1 ≤ level (gateSecondPath n prior.length ++ [.fn]) -
        level hBinderPath := by
    simp [level, gateSecondPath, gateRoot, gateBlock,
      preparationRoot, shellBodyPath, hBinderPath]
    omega
  have markerSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level hBinderPath)
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le markerDepth
  have markerDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level hBinderPath)
          [gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le markerDepth
  have markerSliceExpanded :
      List.take
          (List.countP (fun x => x == PathStep.arg) (preparationRoot n) +
            (prior.length + 1))
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] := by
    simpa [level, gateSecondPath, gateRoot, gateBlock,
      hBinderPath] using markerSlice
  have markerDropExpanded :
      List.drop
          (List.countP (fun x => x == PathStep.arg) (preparationRoot n) +
            (prior.length + 1))
          [gateMarker .second n prior.length] = [] := by
    simpa [level, gateSecondPath, gateRoot, gateBlock,
      hBinderPath] using markerDrop
  have bulletIs : isBullet bullet = true := by native_decide
  have secondPresent :
      isBullet ([bullet, bullet, rb 0 [] []].head!) = true := by
    native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have atHGlobal :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hBinderConcrete _ _
  have deliverHUnderCparkLiteral : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation direction log tape vb frames,
      deliverPort (compiledTerm (prior ++ .h wire :: rest))
          ⟨([.fn, .fn, .fn] : Path), direction, log, tape, vb, frames,
            .cpark parkInvoked bit descriptor descriptors occurrence
              continuation :: data.storage⟩ = none := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
      direction log tape vb frames
    simpa [term, hBinderPath] using
      deliverHUnderCparkNone parkInvoked bit descriptor descriptors
        occurrence continuation direction log tape vb frames
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, unaryCheckpoint20At,
    hCheckpoint25At, unaryParkAt,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionSame, portSame, probeSame,
    pairSameExpanded, bulletIs, secondPresent, appIs,
    delegateStep, cnotStepToken, splitCustom, stageRow,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, arguments, atFirst, atFirstExpanded,
    atHGlobal,
    atSecond, atSecondExpanded, atSecondFn, atSecondFnExpanded,
    binderH, binderHExpanded,
    binderFirst, binderFirstExpanded,
    noPrior, finishNone, deliverCNone, deliverHNone,
    deliverHUnderCparkNone, deliverHUnderCparkLiteral,
    returnCNone, returnHNone, futureFirst, futureSecond,
    futureGateFirst, deliverGateFirstNone, deliverGateFirstExpandedNone,
    classifyArrival, parkFirst, decodeInput,
    term, gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    gateFirstLogged, unaryInstance, hBinderPath, zeroTerm, level,
    bne_eq, entryBEq_refl,
    markerSlice, markerDrop, markerSliceExpanded, markerDropExpanded,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul]
  constructor
  · apply congrArg (fun (entries : List Entry) =>
      lp (preparationRoot n ++
        (List.flatten (List.replicate prior.length
          [PathStep.arg, PathStep.body, PathStep.body]) ++
          [PathStep.fn, PathStep.arg, PathStep.fn])) entries)
    simpa [gateMarker, gateInvoked, gateOccurrence, gateRoot, gateBlock,
      gateFirstPath, gateSecondPath, gateContinuationPath,
      List.append_assoc] using markerSliceExpanded
  · omega

set_option maxHeartbeats 0 in
theorem contextual_h_native_call (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint25At n prior.length data, amplitude⟩] =
      [⟨hCalledAt n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let inputVar : Term :=
    .var ((lookupName (sources wire) environment).getD 1)
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have atInput :
      subterm? term (gateSecondPath n prior.length ++ [.arg]) =
        some inputVar := by
    rw [subterm_append]
    rw [show subterm? term (gateSecondPath n prior.length) =
        some
          (.app
            (.var ((lookupName .h environment).getD 1))
            inputVar) by
      simpa [term, sources, environment, inputVar] using atSecond]
    rfl
  have atInputExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg])) =
        some inputVar := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atInput
  have binderInput :
      binderPath? term (gateSecondPath n prior.length ++ [.arg]) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [term, sources] using
      binder_compiledTerm_current_h_input positiveWidth prior wire rest
  have binderInputExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg])) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using binderInput
  have binderH :
      binderPath? term (gateSecondPath n prior.length ++ [.fn]) =
        some hBinderPath := by
    simpa [term] using
      binder_compiledTerm_current_h_native positiveWidth prior wire rest
  have binderHExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some ([.fn, .fn, .fn] : Path) := by
    simpa [gateSecondPath, gateRoot, gateBlock, hBinderPath,
      List.append_assoc] using binderH
  have atHGlobal :
      subterm? term ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have atHGate :
      subterm? term ([.fn, .fn, .arg] : Path) = some (.gate .h) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have atHApplication :
      subterm? term ([.fn, .fn] : Path) =
        some (.app
          (.lam (.lam (.lam (prepChain 0 n
            (lowerTotal
              (compileGatesWith n 0 wireName
                (prior ++ .h wire :: rest))
              (preparedEnvironment n))))))
          (.gate .h)) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have deliverHUnderPark : ∀ direction log tape vb frames,
      deliverPort term
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have returnHUnderPark : ∀ direction log tape vb frames,
      returnContinuation
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences hBinderPath data.storage = []
    exact wf.storage.returnH
  have storedHUnderCparkLiteral : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation,
      storedPortBindings ([.fn, .fn, .fn] : Path)
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage) = [] := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have sourceDepth :
      1 ≤ level (gateSecondPath n prior.length) -
        level (sourceBinderPath n (sources wire)) := by
    simpa [sources] using
      compilerSourceBinder_before_gateSecond prior wire
  have inputDepth :
      2 ≤ level (gateSecondPath n prior.length ++ [.arg]) -
        level (sourceBinderPath n (sources wire)) := by
    simp [level] at sourceDepth ⊢
    omega
  have inputSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .h, gateMarker .second n prior.length] =
        [gam .h, gateMarker .second n prior.length] :=
    List.take_of_length_le inputDepth
  have inputDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .h, gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le inputDepth
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have gamNotBullet : isBullet (gam GateName.h) = false := by rfl
  have muNotBullet : isBullet (mu GateName.h) = false := by rfl
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  have hFreshAny : ∀ inst,
      sameKeyFrames data.frames ⟨.h, none, inst⟩ = [] := by
    intro inst
    apply List.filter_eq_nil_iff.mpr
    intro frame membership selected
    have keyEqual := key_eq_of_beq frame.key
      (⟨.h, none, inst⟩ : Key) selected
    have gateEqual := congrArg Key.gate keyEqual
    rcases wf.machine.frameSource frame membership with
      ⟨input, before, port, source⟩ |
      ⟨earlier, before, port, source⟩
    · rw [source] at gateEqual
      cases port <;> simp [portKey] at gateEqual
    · rw [source] at gateEqual
      cases port <;> simp [portKey] at gateEqual
  have hCollisionFalse : ∀ (inst : Entry) (keys : List Key),
      ¬ (¬ sameKeyFrames data.frames ⟨.h, none, inst⟩ = [] ∧
        keys.contains (⟨.h, none, inst⟩ : Key) = true) := by
    intro inst keys collision
    exact collision.1 (hFreshAny inst)
  have hNotDeadAny : ∀ inst,
      (deadKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.h, none, inst⟩ : Key) = false := by
    intro inst
    cases contained :
        (deadKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.h, none, inst⟩ : Key) with
    | false => rfl
    | true =>
        have containedBase :
            (deadKeys data.storage).contains (⟨.h, none, inst⟩ : Key) =
              true := by
          simpa [deadKeys, unaryParkAt] using contained
        have containedProp :
            (deadKeys data.storage).contains (⟨.h, none, inst⟩ : Key) :=
          containedBase
        rcases List.contains_iff_exists_mem_beq.mp containedProp with
          ⟨found, foundMember, foundEqual⟩
        have equal := key_eq_of_beq (⟨.h, none, inst⟩ : Key)
          found foundEqual
        have member : (⟨.h, none, inst⟩ : Key) ∈ deadKeys data.storage := by
          simpa [equal] using foundMember
        rcases wf.machine.deadSource _ member with
          ⟨input, before, port, source⟩ |
          ⟨earlier, before, port, source⟩
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
  have hNotDeadUnderCpark : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation inst,
      (deadKeys
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage)).contains
          (⟨.h, none, inst⟩ : Key) = false := by
    intro parkInvoked bit descriptor descriptors occurrence continuation inst
    simpa [deadKeys, unaryParkAt] using hNotDeadAny inst
  have hFresh :
      sameKeyFrames data.frames
          ⟨.h, none, unaryInstance .h n prior.length⟩ = [] := by
    apply List.filter_eq_nil_iff.mpr
    intro frame membership selected
    have keyEqual := key_eq_of_beq frame.key
      (⟨.h, none, unaryInstance .h n prior.length⟩ : Key) selected
    have gateEqual := congrArg Key.gate keyEqual
    rcases wf.machine.frameSource frame membership with
      ⟨input, before, port, source⟩ |
      ⟨earlier, before, port, source⟩
    · rw [source] at gateEqual
      cases port <;> simp [portKey] at gateEqual
    · rw [source] at gateEqual
      cases port <;> simp [portKey] at gateEqual
  have hFreshExpanded := hFresh
  simp [unaryInstance, gateMarker, gateInvoked, gateOccurrence,
    gateRoot, gateBlock, gateFirstPath, gateSecondPath,
    gateContinuationPath, List.append_assoc] at hFreshExpanded
  have hNotBitfree :
      (bitfreeKeys (unaryParkAt n prior.length :: data.storage)).contains
          ⟨.h, none, unaryInstance .h n prior.length⟩ = false := by
    cases contained :
        (bitfreeKeys (unaryParkAt n prior.length :: data.storage)).contains
          ⟨.h, none, unaryInstance .h n prior.length⟩ with
    | false => rfl
    | true =>
        have member :
            (⟨.h, none, unaryInstance .h n prior.length⟩ : Key) ∈
              bitfreeKeys data.storage := by
          have containedBase :
              (bitfreeKeys data.storage).contains
                (⟨.h, none, unaryInstance .h n prior.length⟩ : Key) =
                true := by
            simpa [bitfreeKeys, unaryParkAt] using contained
          have containedProp :
              (bitfreeKeys data.storage).contains
                (⟨.h, none, unaryInstance .h n prior.length⟩ : Key) := by
            exact containedBase
          rcases List.contains_iff_exists_mem_beq.mp containedProp with
            ⟨found, foundMember, foundEqual⟩
          have equal := key_eq_of_beq
            (⟨.h, none, unaryInstance .h n prior.length⟩ : Key)
            found foundEqual
          simpa [equal] using foundMember
        have dead := bitfreeKeys_subset_deadKeys data.storage member
        have source := wf.machine.deadSource _ dead
        rcases source with
          ⟨input, before, port, equal⟩ |
          ⟨earlier, before, port, equal⟩
        · have gateEqual := congrArg Key.gate equal
          cases port <;> simp [portKey] at gateEqual
        · have gateEqual := congrArg Key.gate equal
          cases port <;> simp [portKey] at gateEqual
  have hNotBitfreeExpanded := hNotBitfree
  simp [unaryParkAt, unaryInstance, gateMarker, gateInvoked,
    gateOccurrence, gateRoot, gateBlock, gateFirstPath, gateSecondPath,
    gateContinuationPath, List.append_assoc] at hNotBitfreeExpanded
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hCheckpoint25At, hCalledAt,
    unaryParkAt, composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, bulletIs, countBullets,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atSecond, atInput, binderInput, binderH, atHGlobal, atHGate,
    atHApplication,
    deliverHUnderPark, returnHUnderPark,
    subterm_append, subterm?, zeroTerm,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    term, sources, environment, inputVar,
    gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateSecondPath, gateContinuationPath, unaryInstance,
    hBinderPath, inputDepth, inputSlice, inputDrop,
    gamNotBullet, muNotBullet, rbNotBullet, hFreshAny, hCollisionFalse,
    hNotDeadAny, hNotDeadUnderCpark,
    hFresh, hFreshExpanded, hNotBitfree, hNotBitfreeExpanded]

set_option maxHeartbeats 0 in
theorem contextual_h_called_to_input (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 4
        [⟨hCalledAt n prior.length data, amplitude⟩] =
      [⟨hInputArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  let sources := sourceWiresFrom 0 wireName prior
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let inputVar : Term :=
    .var ((lookupName (sources wire) environment).getD 1)
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have atInput :
      subterm? term (gateSecondPath n prior.length ++ [.arg]) =
        some inputVar := by
    rw [subterm_append]
    rw [show subterm? term (gateSecondPath n prior.length) =
        some
          (.app
            (.var ((lookupName .h environment).getD 1))
            inputVar) by
      simpa [term, sources, environment, inputVar] using atSecond]
    rfl
  have atSecondFn :
      subterm? term (gateSecondPath n prior.length ++ [.fn]) =
        some
          (.var ((lookupName .h environment).getD 1)) := by
    rw [subterm_append]
    rw [show subterm? term (gateSecondPath n prior.length) =
        some
          (.app
            (.var ((lookupName .h environment).getD 1))
            inputVar) by
      simpa [term, sources, environment, inputVar] using atSecond]
    rfl
  have atSecondFnExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some (.var ((lookupName .h environment).getD 1)) := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atSecondFn
  have atInputExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg])) =
        some inputVar := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atInput
  have binderInput :
      binderPath? term (gateSecondPath n prior.length ++ [.arg]) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [term, sources] using
      binder_compiledTerm_current_h_input positiveWidth prior wire rest
  have binderInputExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg])) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using binderInput
  have binderH :
      binderPath? term (gateSecondPath n prior.length ++ [.fn]) =
        some hBinderPath := by
    simpa [term] using
      binder_compiledTerm_current_h_native positiveWidth prior wire rest
  have binderHExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some ([.fn, .fn, .fn] : Path) := by
    simpa [gateSecondPath, gateRoot, gateBlock, hBinderPath,
      List.append_assoc] using binderH
  have atHGlobal :
      subterm? term ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have atHApplication :
      subterm? term ([.fn, .fn] : Path) =
        some (.app
          (.lam (.lam (.lam (prepChain 0 n
            (lowerTotal
              (compileGatesWith n 0 wireName
                (prior ++ .h wire :: rest))
              (preparedEnvironment n))))))
          (.gate .h)) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have atHGate :
      subterm? term ([.fn, .fn, .arg] : Path) = some (.gate .h) := by
    simp [term, compiledTerm_eq_prepProgram positiveWidth]
  have deliverHUnderPark : ∀ direction log tape vb frames,
      deliverPort term
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have returnHUnderPark : ∀ direction log tape vb frames,
      returnContinuation
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences hBinderPath data.storage = []
    exact wf.storage.returnH
  have storedHUnderCparkLiteral : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation,
      storedPortBindings ([.fn, .fn, .fn] : Path)
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage) = [] := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have sourceDepth :
      1 ≤ level (gateSecondPath n prior.length) -
        level (sourceBinderPath n (sources wire)) := by
    simpa [sources] using
      compilerSourceBinder_before_gateSecond prior wire
  have inputDepth :
      2 ≤ level (gateSecondPath n prior.length ++ [.arg]) -
        level (sourceBinderPath n (sources wire)) := by
    simp [level] at sourceDepth ⊢
    omega
  have inputSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .h, gateMarker .second n prior.length] =
        [gam .h, gateMarker .second n prior.length] :=
    List.take_of_length_le inputDepth
  have inputDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .h, gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le inputDepth
  have futureReturnInput := wf.storage.futureReturnInput prior.length
    (Nat.le_refl prior.length)
  have returnInputUnderCparkExpanded : ∀ parkInvoked bit descriptor
      descriptors occurrence continuation,
      storedReturnOccurrences
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg]))
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage) = [] := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
    have futureReturnExpanded :
        storedReturnOccurrences
            (preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++ [.fn, .arg, .arg]))
            data.storage = [] := by
      simpa [gateSecondPath, gateRoot, gateBlock,
        List.append_assoc] using futureReturnInput
    simpa [storedReturnOccurrences] using futureReturnExpanded
  have inputDepthExpanded :
      2 ≤ level
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .arg])) -
        level (sourceBinderPath n
          (sourceWiresFrom 0 wireName prior wire)) := by
    simpa [sources, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using inputDepth
  have inputSliceExpanded :
      List.take
          (level
              (preparationRoot n ++
                (List.flatten (List.replicate prior.length
                  [.arg, .body, .body]) ++ [.fn, .arg, .arg])) -
            level (sourceBinderPath n
              (sourceWiresFrom 0 wireName prior wire)))
          [gam .h,
            cgam .second (gateInvoked n prior.length)
              (gateOccurrence n prior.length)
              (gateFirstPath n prior.length)
              (preparationRoot n ++
                (List.flatten (List.replicate prior.length
                  [.arg, .body, .body]) ++ [.fn, .arg]))
              (preparationRoot n ++
                (List.flatten (List.replicate prior.length
                  [.arg, .body, .body]) ++ [.arg]))] =
        [gam .h,
          cgam .second (gateInvoked n prior.length)
            (gateOccurrence n prior.length)
            (gateFirstPath n prior.length)
            (preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++ [.fn, .arg]))
            (preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++ [.arg]))] := by
    simpa [sources, gateMarker, gateSecondPath, gateContinuationPath,
      gateRoot, gateBlock, List.append_assoc] using inputSlice
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionDownUp :
      (Direction.down != Direction.up) = true := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have unaryNotCGam :
      asCGam? (unaryInstance .t n prior.length) = none := by rfl
  have unaryNotGam :
      asGam? (unaryInstance .t n prior.length) = none := by rfl
  have unaryComposed :
      composedEntry (unaryInstance .t n prior.length) =
        unaryInstance .t n prior.length := by rfl
  have unaryNotRB :
      asRB? (unaryInstance .t n prior.length) = none := by rfl
  have unaryNotApp :
      isAppBullet (unaryInstance .t n prior.length) = false := by rfl
  have unaryNotBullet :
      isBullet (unaryInstance .t n prior.length) = false := by rfl
  have unaryAsLP :
      asLP? (unaryInstance .t n prior.length) =
        some (gateSecondPath n prior.length ++ [.fn],
          [gateMarker .second n prior.length]) := by rfl
  have gamNotBullet : isBullet (gam GateName.h) = false := by rfl
  have muNotBullet : isBullet (mu GateName.h) = false := by rfl
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hCalledAt, hInputArrivalAt,
    unaryParkAt, composedStep, readbackStep, firstRB,
    rbAfterOutputBullets, treeAt?, kernelToken,
    directionDifferent, directionSame, appIs, countBullets,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atSecond, atInput, atInputExpanded, atSecondFn, atSecondFnExpanded,
    binderInput, binderInputExpanded, binderH, binderHExpanded,
    atHGlobal, atHApplication,
    atHGate,
    deliverHUnderPark, returnHUnderPark, storedHUnderCparkLiteral,
    futureReturnInput, returnInputUnderCparkExpanded,
    deliverPort, returnContinuation,
    subterm_append, subterm?, zeroTerm,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    term, sources, environment, inputVar,
    gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateSecondPath, gateContinuationPath, unaryInstance,
    hBinderPath, inputDepth, inputSlice, inputDrop,
    gamNotBullet, muNotBullet, rbNotBullet]
  constructor
  · exact inputDepthExpanded
  · apply congrArg (fun (entries : List Entry) =>
      lp
        (preparationRoot n ++
          (List.flatten (List.replicate prior.length
            [PathStep.arg, PathStep.body, PathStep.body]) ++
            [PathStep.fn, PathStep.arg, PathStep.arg])) entries)
    simpa [gateInvoked, gateOccurrence, gateRoot, gateBlock,
      List.append_assoc] using inputSliceExpanded

theorem contextual_h_25_to_input (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 5
        [⟨hCheckpoint25At n prior.length data, amplitude⟩] =
      [⟨hInputArrivalAt n prior.length
        (sourceWiresFrom 0 wireName prior) wire data, amplitude⟩] := by
  exact evolve_compose _ _ 1 4 _ _ _
    (contextual_h_native_call positiveWidth prior wire rest certificate data
      amplitude wf)
    (contextual_h_called_to_input positiveWidth prior wire rest certificate
      data amplitude wf)

set_option maxHeartbeats 0 in
theorem contextual_h_input_deliver (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 2
        [⟨hInputArrivalAt n prior.length
          (sourceWiresFrom 0 wireName prior) wire data, amplitude⟩] =
      [⟨hInputDeliveredAt n prior.length wire data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName (prior ++ .h wire :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 2 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  have binderInput :
      binderPath? (prepProgram n tail)
          (gateSecondPath n prior.length ++ [.arg]) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_h_input positiveWidth prior wire rest
  have binding := wf.storage.liveBinding wire
  have bindingUnderCpark : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation,
      storedPortBindings (sourceBinderPath n (sources wire))
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage) =
        [((data.wires wire).inst, keyPort (data.wires wire))] := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
    change storedPortBindings (sourceBinderPath n (sources wire))
        data.storage = _
    simpa [sources] using binding
  have matching := wf.machine.liveFrame wire
  have keyEqual := liveWireKey_normalized wf.machine wire
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have muRoundTrip :
      composedEntry (kernelEntry (composedEntry (kernelEntry (mu .h)))) =
        mu .h := by rfl
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      hInputArrivalAt, hInputDeliveredAt, unaryParkAt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      finishCStage_cpark, finishStageRow, kernelStepToken,
      kernelToken, composedToken, tokenWith, mapKernelEdge,
      kernelDeterministic, nfDeterministic, deliverPort, binderInput,
      binding, bindingUnderCpark, matching, keyEqual, splitCustom, stageRow,
      directionSame, appIs, muRoundTrip, inputBit, bitNat, headBang_cons,
      boundaryWireAnswer, liveWireFrame, gateMarker, unaryInputLogged,
      sources,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_h_fire (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hInputDeliveredAt n prior.length wire data, amplitude⟩] =
      [⟨hFiredAt n prior.length wire data false,
          mul invSqrt2 amplitude⟩,
       ⟨hFiredAt n prior.length wire data true,
          mul (if data.word wire then neg invSqrt2 else invSqrt2)
            amplitude⟩] := by
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let inputVar : Term :=
    .var ((lookupName
      (sourceWiresFrom 0 wireName prior wire) environment).getD 1)
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have atInput :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          (gateSecondPath n prior.length ++ [.arg]) = some inputVar := by
    rw [subterm_append, atSecond]
    rfl
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have gateSame : (GateName.h != GateName.h) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have keyEqual := liveWireKey_normalized wf.machine wire
  have sameBit : ∀ frame, frame ∈ data.frames →
      (frame.key == data.wires wire) = true →
      frame.bit = data.word wire := by
    intro frame membership selected
    have inMatching : frame ∈ sameKeyFrames data.frames
        (data.wires wire) := by
      exact List.mem_filter.mpr ⟨membership, selected⟩
    rw [wf.machine.liveFrame wire] at inMatching
    have equal : frame = liveWireFrame data wire := by
      simpa using inMatching
    simpa [equal, liveWireFrame]
  have consistent := framesConsistent_of_conflictFree
    wf.machine.conflictFree
  have extendedConsistent :
      FramesConsistent (liveWireFrame data wire :: data.frames) := by
    intro left leftMember right rightMember keyMatch
    rcases List.mem_cons.mp leftMember with leftHead | leftTail <;>
      rcases List.mem_cons.mp rightMember with rightHead | rightTail
    · simpa [leftHead, rightHead]
    · subst left
      have keyEq : right.key = data.wires wire := by
        simpa [liveWireFrame] using keyMatch.symm
      have selected : (right.key == data.wires wire) = true := by
        rw [keyEq]
        exact key_beq_refl _
      simpa [liveWireFrame] using (sameBit right rightTail selected).symm
    · subst right
      have keyEq : left.key = data.wires wire := by
        simpa [liveWireFrame] using keyMatch
      have selected : (left.key == data.wires wire) = true := by
        rw [keyEq]
        exact key_beq_refl _
      simpa [liveWireFrame] using sameBit left leftTail selected
    · exact consistent left leftTail right rightTail keyMatch
  have conflictExtended := conflictFree_of_framesConsistent
    extendedConsistent
  have conflictExpanded :
      hasBitConflict
          (alphaBitPairs (boundaryWireAnswer data wire) ++
            frameBitPairs data.frames) = false := by
    have boundaryPairs :
        alphaBitPairs (boundaryWireAnswer data wire) =
          [(⟨.c, some (keyPort (data.wires wire)),
              (data.wires wire).inst⟩, data.word wire)] := by
      rfl
    rw [boundaryPairs, keyEqual]
    exact conflictExtended
  have popClean :
      (data.frames.filter fun frame =>
          [data.wires wire].contains frame.key).any
          (fun frame => frame.bit != data.word wire) = false := by
    cases selected :
        (data.frames.filter fun frame =>
          [data.wires wire].contains frame.key).any
          (fun frame => frame.bit != data.word wire) with
    | false => rfl
    | true =>
        rcases List.any_eq_true.mp selected with
          ⟨frame, filtered, wrong⟩
        have parts := List.mem_filter.mp filtered
        have keyMatch : (frame.key == data.wires wire) = true := by
          simpa using parts.2
        have bitMatch := sameBit frame parts.1 keyMatch
        simp [bitMatch] at wrong
  have noPopFalse (bitIsFalse : data.word wire = false) :
      ¬ ∃ frame, frame ∈ data.frames ∧
        (frame.key == data.wires wire) = true ∧ frame.bit = true := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have bitMatch := sameBit frame membership keyMatch
    rw [bitIsFalse] at bitMatch
    simp [bitMatch] at wrong
  have noPopTrue (bitIsTrue : data.word wire = true) :
      ¬ ∃ frame, frame ∈ data.frames ∧
        (frame.key == data.wires wire) = true ∧ frame.bit = false := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have bitMatch := sameBit frame membership keyMatch
    rw [bitIsTrue] at bitMatch
    simp [bitMatch] at wrong
  have poppedEq :
      data.frames.filter (fun frame =>
          frame.key == data.wires wire) =
        [liveWireFrame data wire] := by
    simpa [sameKeyFrames] using wf.machine.liveFrame wire
  have retainedEq :
      data.frames.filter (fun frame =>
          !(frame.key == data.wires wire)) =
        unaryRetainedAt wire data := by
    exact filter_not_key_eq_removeFrameKey_of_sameKeyFrames
      data.frames (data.wires wire) (liveWireFrame data wire)
      (wf.machine.liveFrame wire)
  have retainedNo :
      data.wires wire ∉
        (data.frames.filter (fun frame =>
            !(frame.key == data.wires wire))).map
          (fun frame => frame.key) :=
    key_not_mem_filtered_other_frame_keys data.frames (data.wires wire)
  have buriedNo :
      data.wires wire ∉
        data.storage.foldl (fun out item =>
          match item with
          | .burial cargo => unionKeys out (alphaKeysLive cargo)
          | _ => out) [] := by
    intro membership
    exact wf.machine.liveNotDead wire
      (burialKeys_subset_deadKeys data.storage membership)
  have surviveNo :
      (unionKeys
          ((data.frames.filter (fun frame =>
              !(frame.key == data.wires wire))).map
            (fun frame => frame.key))
          (unionKeys
            (data.storage.foldl (fun out item =>
              match item with
              | .burial cargo => unionKeys out (alphaKeysLive cargo)
              | _ => out) [])
            (unionKeys
              (entryKeys
                [bullet, bullet,
                 cmu .second (gateInvoked n prior.length), bullet,
                 rb 0 [] []])
              (entryKeys
                [gam .h, gateMarker .second n prior.length])))).contains
          (data.wires wire) = false := by
    letI : LawfulBEq Key := {
      eq_of_beq := by
        intro left right equal
        exact key_eq_of_beq left right equal
      rfl := by exact key_beq_refl _ }
    rw [List.contains_eq_mem]
    simp [mem_unionKeys_iff, retainedNo, buriedNo,
      entryKeys, gateMarker]
  have eraseEq :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((data.frames.filter (fun frame =>
                !(frame.key == data.wires wire))).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .h, gateMarker .second n prior.length])))) =
        [data.wires wire] := by
    rw [poppedEq]
    simp only [List.map]
    have deadCanonical :
        unionKeys [data.wires wire]
            [(liveWireFrame data wire).key] =
          [data.wires wire] := by
      simp [liveWireFrame, unionKeys, canonicalKeys, insertKey]
    rw [deadCanonical]
    unfold eraseKeys
    have keyCanonical :
        canonicalKeys [data.wires wire] = [data.wires wire] := by
      simp [canonicalKeys, insertKey]
    rw [keyCanonical]
    simp only [List.filter_cons, List.filter_nil]
    rw [surviveNo]
    rfl
  have eraseEqRetained :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((unaryRetainedAt wire data).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .h, gateMarker .second n prior.length])))) =
        [data.wires wire] := by
    rw [← retainedEq]
    exact eraseEq
  have eraseEqExpanded :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((unaryRetainedAt wire data).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .h,
                   cgam .second (gateInvoked n prior.length)
                     (gateOccurrence n prior.length)
                     (gateFirstPath n prior.length)
                     (gateSecondPath n prior.length)
                     (gateContinuationPath n prior.length)])))) =
        [data.wires wire] := by
    simpa [gateMarker] using eraseEqRetained
  have noPriorH :
      hasPriorCInvocation (gam .h)
          (.cquery (keyPort (data.wires wire)) (data.wires wire).inst
              (unaryInputLogged .h n prior.length) ::
            unaryParkAt n prior.length :: data.storage) = false := by
    have old := wf.storage.nonLPInvocation (gam .h) (by rfl)
    change
      (false || ((gateInvoked n prior.length == gam .h) ||
        hasPriorCInvocation (gam .h) data.storage)) = false
    rw [old]
    rfl
  have closeNone :
      closeVirtualPort
          ⟨gateSecondPath n prior.length ++ [.arg], .up,
            [gam .h, gateMarker .second n prior.length],
            bullet ::
              [boundaryWireAnswer data wire, mu .h, bullet, bullet,
               cmu .second (gateInvoked n prior.length), bullet,
               rb 0 [] []],
            none, data.frames,
            .cquery (keyPort (data.wires wire)) (data.wires wire).inst
                (unaryInputLogged .h n prior.length) ::
              unaryParkAt n prior.length :: data.storage⟩ = none := by
    exact closeVirtualPort_none_of_noPrior _ (gam .h)
      [gateMarker .second n prior.length]
      [boundaryWireAnswer data wire, mu .h, bullet, bullet,
       cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []]
      data.frames _ noPriorH
  have closeNoneExpanded :
      closeVirtualPort
          ⟨gateSecondPath n prior.length ++ [.arg], .up,
            [gam .h,
             cgam .second (gateInvoked n prior.length)
               (gateOccurrence n prior.length)
               (gateFirstPath n prior.length)
               (gateSecondPath n prior.length)
               (gateContinuationPath n prior.length)],
            bullet ::
              [alpha .c (some (keyPort (data.wires wire)))
                 (data.wires wire).inst (data.word wire)
                 (.recalledAbsent .fresh),
               mu .h, bullet, bullet,
               cmu .second (gateInvoked n prior.length), bullet,
               rb 0 [] []],
            none, data.frames,
            .cquery (keyPort (data.wires wire)) (data.wires wire).inst
                (lp (gateSecondPath n prior.length ++ [.arg])
                  [gam .h,
                   cgam .second (gateInvoked n prior.length)
                     (gateOccurrence n prior.length)
                     (gateFirstPath n prior.length)
                     (gateSecondPath n prior.length)
                     (gateContinuationPath n prior.length)]) ::
              .cpark (gateInvoked n prior.length) false
                (.logged (gateFirstLogged n prior.length)) []
                (gateOccurrence n prior.length)
                (gateContinuationPath n prior.length) :: data.storage⟩ =
        none := by
    simpa [gateMarker, boundaryWireAnswer, unaryInputLogged, unaryParkAt]
      using closeNone
  have conflictNormalized := conflictExpanded
  simp only [boundaryWireAnswer] at conflictNormalized
  cases inputBit : data.word wire <;>
    rw [inputBit] at popClean conflictNormalized closeNoneExpanded <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      hInputDeliveredAt, hFiredAt,
      unaryPostStorageAt, unaryParkAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      directionSame, gateSame, appIs,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      admitted, atInput, environment, inputVar,
      deliverPort, returnContinuation,
      classifyArrival, fireTargets, nfDeterministic,
      conflictExpanded, popClean, noPopFalse, noPopTrue,
      edgeCoefficient, powDw, invSqrt2,
      QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat, headBang_cons, boundaryWireAnswer,
      liveWireFrame, keyEqual, sameBit,
      sameKeyFrames,
      unaryInputLogged, gateMarker,
      conflictNormalized, retainedEq, eraseEqExpanded,
      closeNoneExpanded]
  all_goals try rw [eraseEqExpanded]
  all_goals
    first
    | rfl
    | exact eraseEqExpanded
    | (constructor
       · exact eraseEqExpanded
       · simp [QalcGate2Compiler.neg])

set_option maxHeartbeats 0 in
theorem contextual_h_fired_to_38 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 5
        [⟨hFiredAt n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint38At n prior.length wire data bit, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have atInput :
      subterm? term (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have atInputLiteral :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [term] using atInput
  have atInputExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .arg])) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [gateSecondPath, gateRoot, gateBlock, List.append_assoc]
      using atInput
  have atInputFullyExpanded :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .arg])) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [term] using atInputExpanded
  have binderH := binder_compiledTerm_current_h_native positiveWidth prior
    wire rest
  have binderHExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .fn])) = some hBinderPath := by
    simpa [term, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using binderH
  have binderHFullyExpanded :
      binderPath? (compiledTerm (prior ++ .h wire :: rest))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .arg, .fn])) = some hBinderPath := by
    simpa [term] using binderHExpanded
  have atHGlobal :
      subterm? term ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    dsimp [term]
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hBinderConcrete _ _
  have atHGlobalLiteral :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    simpa [term] using atHGlobal
  have atHPath :
      subterm? (compiledTerm (prior ++ .h wire :: rest)) hBinderPath =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    simpa [hBinderPath] using atHGlobalLiteral
  have atHGate :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn, .arg] : Path) = some (.gate .h) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hGate _ _
  have deliverHPostNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings hBinderPath data.storage = []
    exact wf.storage.nativeH
  have deliverHPostLiteralNone : ∀ direction log tape vb frames,
      deliverPort (compiledTerm (prior ++ .h wire :: rest))
          ⟨hBinderPath, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro direction log tape vb frames
    simpa [term] using
      deliverHPostNone direction log tape vb frames
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
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
            cmu .second (gateInvoked n prior.length), appBullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  have kernelAnswerHeadNotBullet :
      isBullet
          ([ans GateName.h bit, bullet, bullet,
            cmu .second (gateInvoked n prior.length), bullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  have deliverAnsNone : ∀ path direction log tape vb frames storage,
      deliverPort (compiledTerm (prior ++ .h wire :: rest))
          ⟨path, direction, log, ans .h bit :: tape, vb, frames, storage⟩ =
        none := by
    intro path direction log tape vb frames storage
    cases direction <;> simp [deliverPort, ansNotLP]
  have closeAnsNone : ∀ path direction log tape vb frames storage,
      closeVirtualPort
          ⟨path, direction, log, ans .h bit :: tape, vb, frames, storage⟩ =
        none := by
    intro path direction log tape vb frames storage
    have downNotUp : (Direction.down != Direction.up) = true := by
      native_decide
    have upSame : (Direction.up != Direction.up) = false := by
      native_decide
    have answerNot : isBullet (ans .h bit :: tape).head! = false := by
      exact ansNotBullet
    cases direction <;> cases vb <;>
      simp [closeVirtualPort, ansNotBullet, answerNot, downNotUp, upSame]
  have returnAnsNone : ∀ path direction log tape vb frames storage,
      returnContinuation
          ⟨path, direction, log, ans .h bit :: tape, vb, frames, storage⟩ =
        none := by
    intro path direction log tape vb frames storage
    cases direction <;> simp [returnContinuation, ansNotBullet]
  have hDepth :
      1 ≤ level (gateSecondPath n prior.length ++ [.fn]) -
        level hBinderPath := by
    simp [level, gateSecondPath, gateRoot, gateBlock,
      preparationRoot, shellBodyPath, hBinderPath]
    omega
  have hSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level hBinderPath)
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le hDepth
  have hDepthSimple :
      1 ≤ level (gateSecondPath n prior.length ++ [.fn]) := by
    simp [level, gateSecondPath, gateRoot, gateBlock,
      preparationRoot, shellBodyPath]
    omega
  have hSliceSimple :
      List.take (level (gateSecondPath n prior.length ++ [.fn]))
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le hDepthSimple
  have hSliceLiteral :
      List.take (level (gateSecondPath n prior.length ++ [.fn]))
          [cgam .second (gateInvoked n prior.length)
            (gateOccurrence n prior.length)
            (gateFirstPath n prior.length)
            (gateSecondPath n prior.length)
            (gateContinuationPath n prior.length)] =
        [cgam .second (gateInvoked n prior.length)
          (gateOccurrence n prior.length)
          (gateFirstPath n prior.length)
          (gateSecondPath n prior.length)
          (gateContinuationPath n prior.length)] := by
    simpa [gateMarker] using hSliceSimple
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hFiredAt, hCheckpoint38At,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    headBang_cons, directionDifferent, directionSame, directionUpSame,
    directionDownNotUp, appIs, gateHSame,
    deliverAnsNone, closeAnsNone, returnAnsNone,
    ansNotApp, ansNotLP, ansNotRB, ansNotBullet,
    answerHeadNotBullet, kernelAnswerHeadNotBullet,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm?, zeroTerm,
    atSecond, atInputLiteral, binderH,
    atHGlobalLiteral, atHPath, atHGate,
    deliverHPostLiteralNone, finishPostNone,
    classifyArrival, nfDeterministic, hDepth, hSlice,
    hDepthSimple, hSliceSimple, hSliceLiteral,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswerAt,
    gateMarker]

set_option maxHeartbeats 0 in
theorem contextual_h_38_to_40 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 2
        [⟨hCheckpoint38At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint40At n prior.length wire data bit, amplitude⟩] := by
  have atHGate :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn, .arg] : Path) = some (.gate .h) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hGate _ _
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionNotUp :
      (Direction.down == Direction.up) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, hCheckpoint38At, hCheckpoint40At,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    headBang_cons, directionDifferent, directionNotUp,
    directionUpSame, appIs,
    emitLambda?, fill?, nextCursor, holes, replaceTree?,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atHGate, finishPostNone, subterm_append, subterm?,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswerAt, bitNat]

set_option maxHeartbeats 0 in
theorem contextual_h_40_to_41 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint40At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint41At n prior.length wire data bit, amplitude⟩] := by
  have atHGate :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn, .arg] : Path) = some (.gate .h) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hGate _ _
  have atHApplication :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          ([.fn, .fn] : Path) =
        some (.app
          (.lam (.lam (.lam (prepChain 0 n
            (lowerTotal
              (compileGatesWith n 0 wireName
                (prior ++ .h wire :: rest))
              (preparedEnvironment n))))))
          (.gate .h)) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hApplication _ _
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEqual :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have unaryNotCGam :
      asCGam? (unaryInstance .h n prior.length) = none := by rfl
  have unaryNotGam :
      asGam? (unaryInstance .h n prior.length) = none := by rfl
  have hBinderExpanded :
      ([.fn, .fn, .fn] : Path) = hBinderPath := by rfl
  have unaryComposed :
      composedEntry (unaryInstance .h n prior.length) =
        unaryInstance .h n prior.length := by rfl
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have returnHGatePostNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨([.fn, .fn, .arg] : Path), direction, log, tape, vb,
            frames, unaryPostStorageAt .h n prior.length wire data⟩ =
        none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences [.fn, .fn, .arg] data.storage = []
    exact wf.storage.returnHGate
  have oldUnary := wf.storage.futureUnaryInvocation .h prior.length
    (Nat.le_refl prior.length)
  have different := gateInvoked_ne_unaryInstance
    .h n prior.length prior.length
  have noPriorUnaryPost :
      hasPriorCInvocation (unaryInstance .h n prior.length)
          (unaryPostStorageAt .h n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == unaryInstance .h n prior.length) ||
          hasPriorCInvocation (unaryInstance .h n prior.length)
            data.storage))) = false
    rw [oldUnary]
    simp [different]
  have closeUnaryPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [unaryInstance .h n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (unaryInstance .h n prior.length) [] tape frames _ noPriorUnaryPost
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint40At, hCheckpoint41At,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionUpSame, directionUpEqual, appIs,
    unaryNotCGam, unaryNotGam, hBinderExpanded, unaryComposed,
    finishPostNone, returnHGatePostNone, closeUnaryPostNone,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atHGate, atHApplication, subterm_append, subterm?,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    hAnswerAt, bitNat]

set_option maxHeartbeats 0 in
theorem contextual_h_41_to_42 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint41At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint42At n prior.length wire data bit, amplitude⟩] := by
  have atHPath :
      subterm? (compiledTerm (prior ++ .h wire :: rest)) hBinderPath =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName
              (prior ++ .h wire :: rest))
            (preparedEnvironment n)))))) := by
    rw [compiledTerm_eq_prepProgram positiveWidth]
    exact subterm_prepProgram_hBinderPath _ _
  have binderH := binder_compiledTerm_current_h_native positiveWidth prior
    wire rest
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have returnHGatePostNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨([.fn, .fn, .arg] : Path), direction, log, tape, vb,
            frames, unaryPostStorageAt .h n prior.length wire data⟩ =
        none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences [.fn, .fn, .arg] data.storage = []
    exact wf.storage.returnHGate
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint41At, hCheckpoint42At,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionDifferent, directionUpSame, appIs,
    finishPostNone, returnHGatePostNone,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atHPath, binderH, subterm_append, subterm?,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance, hAnswerAt, bitNat]

theorem contextual_h_42_to_43 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint42At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint43At n prior.length wire data bit, amplitude⟩] := by
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
  have atHVariable :
      subterm? (compiledTerm (prior ++ .h wire :: rest))
          (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .h
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have returnSecondPostNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨gateSecondPath n prior.length ++ [.fn], direction, log, tape, vb,
            frames, unaryPostStorageAt .h n prior.length wire data⟩ =
        none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences
      (gateSecondPath n prior.length ++ [.fn]) data.storage = []
    exact wf.storage.futureReturnSecond prior.length
      (Nat.le_refl prior.length)
  have markerNonLP :
      asLP? (gateMarker .second n prior.length) = none := by rfl
  have oldMarker := wf.storage.nonLPInvocation
    (gateMarker .second n prior.length) markerNonLP
  have invokedNe :
      gateInvoked n prior.length ≠ gateMarker .second n prior.length := by
    intro equal
    have decoded := congrArg asLP? equal
    simp [gateInvoked, markerNonLP] at decoded
  have noPriorMarkerPost :
      hasPriorCInvocation (gateMarker .second n prior.length)
          (unaryPostStorageAt .h n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == gateMarker .second n prior.length) ||
          hasPriorCInvocation (gateMarker .second n prior.length)
            data.storage))) = false
    rw [oldMarker]
    simp [invokedNe]
  have closeMarkerPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [gateMarker .second n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (gateMarker .second n prior.length) [] tape frames _ noPriorMarkerPost
  cases bit <;> simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis,
    hCheckpoint42At, hCheckpoint43At,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, headBang_cons,
    directionUpSame, appIs,
    finishPostNone, returnSecondPostNone, closeMarkerPostNone,
    deliverPort, atHVariable,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    hAnswerAt, bitNat]

set_option maxHeartbeats 0 in
theorem contextual_h_43_to_44 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint43At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint44At n prior.length wire data bit, amplitude⟩] := by
  have atSecond := subterm_compiledTerm_current_h_second positiveWidth prior
    wire rest
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
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have markerNonLP :
      asLP? (gateMarker .second n prior.length) = none := by rfl
  have oldMarker := wf.storage.nonLPInvocation
    (gateMarker .second n prior.length) markerNonLP
  have invokedNe :
      gateInvoked n prior.length ≠ gateMarker .second n prior.length := by
    intro equal
    have decoded := congrArg asLP? equal
    simp [gateInvoked, markerNonLP] at decoded
  have noPriorMarkerPost :
      hasPriorCInvocation (gateMarker .second n prior.length)
          (unaryPostStorageAt .h n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == gateMarker .second n prior.length) ||
          hasPriorCInvocation (gateMarker .second n prior.length)
            data.storage))) = false
    rw [oldMarker]
    simp [invokedNe]
  have closeMarkerPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [gateMarker .second n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .h n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (gateMarker .second n prior.length) [] tape frames _ noPriorMarkerPost
  cases bit <;> simp [evolve, stepColumn, stepBasis,
    hCheckpoint43At, hCheckpoint44At, composedStep, readbackStep, firstRB,
    treeAt?, kernelToken, headBang_cons, directionUpSame, directionUpEq,
    appIs, deliverPort, returnContinuation,
    delegateStep, cnotStepToken, kernelDeterministic, kernelEntry,
    composedToken, mapKernelEdge, classifyArrival,
    edgeCoefficient, QalcFiniteGram.mul, hAnswerAt, bitNat,
    rbNotBullet, portSame, probeSame, bulletIs, continuationBullet,
    finishPostNone, closeMarkerPostNone, atSecond] <;>
    simp_all (config := { maxSteps := 1000000 })
      [fireSecond_h_at_false, fireSecond_h_at_true,
      splitCustom, stageRow, kernelDeterministic, nfDeterministic,
      mapKernelEdge,
      composedToken, composedEntry, kernelEntry, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

theorem contextual_h_44_to_45 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 1
        [⟨hCheckpoint44At n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint45At n prior.length wire data bit, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  simp [evolve, stepColumn, stepBasis,
    hCheckpoint44At, hCheckpoint45At, composedStep, readbackStep,
    finishCStage?, finishStageRow, kernelDeterministic,
    kernelToken, kernelEntry, composedToken, composedEntry, mapKernelEdge,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    rbNotBullet]

@[simp] theorem hCheckpoint45At_eq_boundaryState (gateIndex : Nat)
    (wire : Fin n) (data : BoundaryData n) (bit : Bool) :
    hCheckpoint45At n gateIndex wire data bit =
      boundaryState n (gateIndex + 1)
        (advanceBoundary gateIndex (.h wire) bit data) := by
  simp [hCheckpoint45At, boundaryState, advanceBoundary,
    circuitBoundaryPath, gateBoundaryPath, gateContinuationPath, gateRoot,
    unaryRetainedAt, unaryCompletedStorageAt, nextBoundaryStorage,
    unaryInputLogged]

theorem contextual_h_ready_to_input_delivered (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 32
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨hInputDeliveredAt n prior.length wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  have trace10 := contextual_gate_ready_to_called positiveWidth prior
    (.h wire) rest certificate data amplitude wf
  have trace15 := evolve_compose term certificate 10 5 _ _ _ trace10
    (contextual_unary_called_to_15 positiveWidth prior .h wire rest
      certificate data amplitude wf)
  have trace20 := evolve_compose term certificate 15 5 _ _ _ trace15
    (contextual_unary_15_to_20 positiveWidth prior (.h wire) rest
      ⟨.h, wire, rfl⟩ certificate data amplitude wf)
  have trace25 := evolve_compose term certificate 20 5 _ _ _ trace20
    (contextual_h_20_to_25 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace30 := evolve_compose term certificate 25 5 _ _ _ trace25
    (contextual_h_25_to_input positiveWidth prior wire rest certificate data
      amplitude wf)
  exact evolve_compose term certificate 30 2 _ _ _ trace30
    (contextual_h_input_deliver positiveWidth prior wire rest certificate data
      amplitude wf)

theorem contextual_h_fired_to_45 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (bit : Bool)
    (amplitude : Dw) (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 12
        [⟨hFiredAt n prior.length wire data bit, amplitude⟩] =
      [⟨hCheckpoint45At n prior.length wire data bit, amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  have trace38 := contextual_h_fired_to_38 positiveWidth prior wire rest
    certificate data bit amplitude wf
  have trace40 := evolve_compose term certificate 5 2 _ _ _ trace38
    (contextual_h_38_to_40 positiveWidth prior wire rest certificate data bit
      amplitude)
  have trace41 := evolve_compose term certificate 7 1 _ _ _ trace40
    (contextual_h_40_to_41 positiveWidth prior wire rest certificate data bit
      amplitude wf)
  have trace42 := evolve_compose term certificate 8 1 _ _ _ trace41
    (contextual_h_41_to_42 positiveWidth prior wire rest certificate data bit
      amplitude wf)
  have trace43 := evolve_compose term certificate 9 1 _ _ _ trace42
    (contextual_h_42_to_43 positiveWidth prior wire rest certificate data bit
      amplitude wf)
  have trace44 := evolve_compose term certificate 10 1 _ _ _ trace43
    (contextual_h_43_to_44 positiveWidth prior wire rest certificate data bit
      amplitude wf)
  exact evolve_compose term certificate 11 1 _ _ _ trace44
    (contextual_h_44_to_45 positiveWidth prior wire rest certificate data bit
      amplitude)

set_option maxHeartbeats 0 in
theorem contextual_h_ready_to_45 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 45
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨hCheckpoint45At n prior.length wire data false,
          mul invSqrt2 amplitude⟩,
       ⟨hCheckpoint45At n prior.length wire data true,
          mul (if data.word wire then neg invSqrt2 else invSqrt2)
            amplitude⟩] := by
  let term := compiledTerm (prior ++ .h wire :: rest)
  let falseState : WeightedState :=
    ⟨hFiredAt n prior.length wire data false, mul invSqrt2 amplitude⟩
  let trueState : WeightedState :=
    ⟨hFiredAt n prior.length wire data true,
      mul (if data.word wire then neg invSqrt2 else invSqrt2) amplitude⟩
  let falseDone : WeightedState :=
    ⟨hCheckpoint45At n prior.length wire data false,
      mul invSqrt2 amplitude⟩
  let trueDone : WeightedState :=
    ⟨hCheckpoint45At n prior.length wire data true,
      mul (if data.word wire then neg invSqrt2 else invSqrt2) amplitude⟩
  have reachesFired : evolve term certificate 33
      [⟨gateReadyState n prior.length data, amplitude⟩] =
        [falseState, trueState] :=
    evolve_compose term certificate 32 1 _ _ _
      (contextual_h_ready_to_input_delivered positiveWidth prior wire rest
        certificate data amplitude wf)
      (contextual_h_fire positiveWidth prior wire rest certificate data
        amplitude wf admitted)
  have falseTrace : evolve term certificate 12 [falseState] =
      [falseDone] :=
    contextual_h_fired_to_45 positiveWidth prior wire rest certificate data
      false (mul invSqrt2 amplitude) wf
  have trueTrace : evolve term certificate 12 [trueState] =
      [trueDone] :=
    contextual_h_fired_to_45 positiveWidth prior wire rest certificate data
      true (mul (if data.word wire then neg invSqrt2 else invSqrt2)
        amplitude) wf
  have post : evolve term certificate 12 [falseState, trueState] =
      [falseDone, trueDone] := by
    have distributed := evolve_append term certificate 12
      [falseState] [trueState]
    rw [falseTrace, trueTrace] at distributed
    exact distributed
  exact evolve_compose term certificate 33 12 _ _ _ reachesFired post

theorem contextual_h_compiler_admitted (prior : Circuit n) (wire : Fin n)
    (rest : Circuit n) (data : BoundaryData n)
    (wf : CompiledBoundaryWFAt prior data) :
    certificateLookup (compilerCertificate (prior ++ .h wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some [data.wires wire] := by
  have canonical := sourceNameKey_compiler_prefix prior wire
  have current := wf.storage.aligned wire
  rw [canonical] at current
  have keyEqual :
      wireKeysFrom 0 (initialWireKeys n) prior wire = data.wires wire :=
    Option.some.inj current
  simpa [keyEqual] using
    compilerCertificate_lookup_after_prefix_h prior wire rest

set_option maxHeartbeats 0 in
theorem contextual_h_physical (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .h wire :: rest)) certificate 47
        [⟨boundaryState n prior.length data, amplitude⟩] =
      boundaryColumn (prior.length + 1)
        (scatterBoundary prior.length (.h wire) ⟨data, amplitude⟩) := by
  rw [show 47 = 2 + 45 by omega, evolve_add]
  rw [compiled_gate_entry positiveWidth prior (.h wire) rest certificate data
    amplitude wf.storage.noStageHead]
  rw [contextual_h_ready_to_45 positiveWidth prior wire rest certificate data
    amplitude wf admitted]
  simp [boundaryColumn, scatterBoundary, advanceBoundary]

theorem contextual_h_physical_compiler (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .h wire :: rest))
        (compilerCertificate (prior ++ .h wire :: rest)) 47
        [⟨boundaryState n prior.length data, amplitude⟩] =
      boundaryColumn (prior.length + 1)
        (scatterBoundary prior.length (.h wire) ⟨data, amplitude⟩) := by
  exact contextual_h_physical positiveWidth prior wire rest _ data amplitude
    wf (contextual_h_compiler_admitted prior wire rest data wf)

theorem contextual_h_physical_column (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches, CompiledBoundaryWFAt prior branch.data) :
    evolve (compiledTerm (prior ++ .h wire :: rest))
        (compilerCertificate (prior ++ .h wire :: rest)) 47
        (boundaryColumn prior.length branches) =
      boundaryColumn (prior.length + 1)
        (branches.flatMap (scatterBoundary prior.length (.h wire))) := by
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
      rw [contextual_h_physical_compiler positiveWidth prior wire rest
        branch.data branch.amplitude headWF]
      change boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.h wire) branch) ++
          evolve (compiledTerm (prior ++ .h wire :: rest))
            (compilerCertificate (prior ++ .h wire :: rest)) 47
            (boundaryColumn prior.length branches) =
        boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.h wire) branch ++
            branches.flatMap (scatterBoundary prior.length (.h wire)))
      rw [ih tailWF]
      simp [boundaryColumn]

def tCalledAt (width gateIndex : Nat) (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .arg], .up,
      [unaryInstance .t width gateIndex],
      [gam .t, appBullet, appBullet, mu .t, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def tInputArrivalAt (width gateIndex : Nat) (data : BoundaryData width) :
    NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.arg], .down,
      [gam .t, gateMarker .second width gateIndex],
      [appBullet, appBullet, mu .t, appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames, unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def tInputDeliveredAt (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  let input := data.wires wire
  .run
    ⟨gateSecondPath width gateIndex ++ [.arg], .up,
      [gam .t, gateMarker .second width gateIndex],
      List.replicate (bitNat (data.word wire)) appBullet ++
        [boundaryWireAnswer data wire, mu .t, appBullet, appBullet,
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, data.frames,
      .cquery (keyPort input) input.inst
          (unaryInputLogged .t width gateIndex) ::
        unaryParkAt width gateIndex :: data.storage⟩
    ⟨.hole false, some [], [], []⟩

def tAnswerAt (width gateIndex : Nat) (bit : Bool) : Entry :=
  alpha .t none (unaryInstance .t width gateIndex) bit .fresh

def tFiredAt (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.arg], .up,
      [gam .t, gateMarker .second width gateIndex],
      [ans .t (data.word wire), appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint40At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.fn], .down,
      [gateMarker .second width gateIndex],
      [gam .t, ans .t (data.word wire), appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint44At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [unaryInstance .t width gateIndex],
      [gam .t, ans .t (data.word wire), appBullet, appBullet,
       cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint45At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [unaryInstance .t width gateIndex],
      [appBullet, appBullet, cmu .second (gateInvoked width gateIndex),
       appBullet, rb 0 [] []],
      some ⟨.t, none, data.word wire, 0⟩,
      unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint47At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .arg], .down,
      [unaryInstance .t width gateIndex],
      [cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      some ⟨.t, none, data.word wire, 2⟩,
      unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint48At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨[.fn, .arg], .up,
      [unaryInstance .t width gateIndex],
      List.replicate (bitNat (data.word wire) + 1) appBullet ++
        [tAnswerAt width gateIndex (data.word wire),
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint52At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex ++ [.fn], .up,
      [gateMarker .second width gateIndex],
      List.replicate (bitNat (data.word wire) + 1) appBullet ++
        [tAnswerAt width gateIndex (data.word wire),
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint53At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateSecondPath width gateIndex, .up,
      [gateMarker .second width gateIndex],
      List.replicate (bitNat (data.word wire)) appBullet ++
        [tAnswerAt width gateIndex (data.word wire),
         cmu .second (gateInvoked width gateIndex), appBullet, rb 0 [] []],
      none, unaryRetainedAt wire data,
      unaryPostStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint54At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateContinuationPath width gateIndex, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width gateIndex false (data.word wire)
        (unaryRetainedAt wire data),
      .cstage .fire ::
        unaryCompletedStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

def tCheckpoint55At (width gateIndex : Nat) (wire : Fin width)
    (data : BoundaryData width) : NFState :=
  .run
    ⟨gateContinuationPath width gateIndex, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      outputFrames width gateIndex false (data.word wire)
        (unaryRetainedAt wire data),
      unaryCompletedStorageAt .t width gateIndex wire data⟩
    ⟨.hole false, some [], [], []⟩

theorem subterm_compiledTerm_current_t_second (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n) :
    subterm? (compiledTerm (prior ++ .t wire :: rest))
        (gateSecondPath n prior.length) =
      some
        (.app
          (.var ((lookupName .t
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))
          (.var ((lookupName
            (sourceWiresFrom 0 wireName prior wire)
            (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))) := by
  rw [show gateSecondPath n prior.length =
    gateRoot n prior.length ++ [.fn, .arg] by
      simp [gateSecondPath]]
  rw [subterm_append,
    compiledTerm_at_gateRoot positiveWidth prior (.t wire :: rest)]
  rfl

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem contextual_t_20_to_23 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 3
        [⟨unaryCheckpoint20At n prior.length data, amplitude⟩] =
      [⟨tCheckpoint23At n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have arguments := cArguments_compiledTerm_current positiveWidth prior
    (.t wire) rest
  have atFirst := subterm_compiledTerm_current_unary_first_zero positiveWidth
    prior (.t wire) rest ⟨.t, wire, rfl⟩
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have binderFirst := binder_compiledTerm_current_unary_first_zero
    positiveWidth prior (.t wire) rest ⟨.t, wire, rfl⟩
  have binderT := binder_compiledTerm_current_t_native positiveWidth prior
    wire rest
  have binderTExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some ([.fn, .fn, .fn, .body] : Path) := by
    simpa [term, gateSecondPath, gateRoot, gateBlock, tBinderPath,
      List.append_assoc] using binderT
  have noPrior := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have deliverCNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeC
  have deliverTNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨tBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      wf.storage.nativeT
  have returnCNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨cBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnC
  have returnTNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨tBinderPath, direction, log, tape, vb, frames, data.storage⟩ =
        none := by
    intro direction log tape vb frames
    exact returnContinuation_none_of_emptyOccurrences _ _ _ _ _ _ _
      wf.storage.returnT
  have futureGateFirst := wf.storage.futureGateFirst prior.length
    (Nat.le_refl prior.length)
  have atFirstExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .arg])) =
        some zeroTerm := by
    simpa [term, gateFirstPath, gateRoot, gateBlock,
      List.append_assoc] using atFirst
  have binderFirstExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++
            [.fn, .fn, .arg, .body, .body])) =
        some
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .arg])) := by
    simpa [term, gateFirstPath, gateRoot, gateBlock,
      List.append_assoc] using binderFirst
  have atSecondExpanded :
      subterm? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg])) =
        some
          (.app
            (.var ((lookupName .t
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))
            (.var ((lookupName
              (sourceWiresFrom 0 wireName prior wire)
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))) := by
    simpa [term, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atSecond
  have deliverGateFirstNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨gateFirstPath n prior.length, direction, log, tape, vb,
            frames, data.storage⟩ = none := by
    intro direction log tape vb frames
    exact deliverPort_none_of_emptyBindings _ _ _ _ _ _ _ _
      futureGateFirst
  have deliverGateFirstExpandedNone : ∀ direction log tape vb frames,
      deliverPort term
          ⟨preparationRoot n ++
              (List.flatten (List.replicate prior.length
                [.arg, .body, .body]) ++ [.fn, .fn, .arg]),
            direction, log, tape, vb, frames, data.storage⟩ = none := by
    intro direction log tape vb frames
    simpa [gateFirstPath, gateRoot, gateBlock, List.append_assoc] using
      deliverGateFirstNone direction log tape vb frames
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up == Direction.up) = true := by native_decide
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
  have pairSameExpanded :
      ((Port.first,
          lp (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .fn])) []) ==
        (Port.first,
          lp (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .fn, .fn])) [])) = true := by
    simpa [gateInvoked, gateOccurrence, gateRoot, gateBlock,
      List.append_assoc] using pairSame
  have bulletIs : isBullet bullet = true := by native_decide
  have secondPresent :
      isBullet ([bullet, bullet, rb 0 [] []].head!) = true := by
    native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, unaryCheckpoint20At, tCheckpoint23At,
    unaryParkAt, composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionSame, portSame, probeSame,
    pairSameExpanded,
    bulletIs, secondPresent, appIs, delegateStep, cnotStepToken,
    splitCustom, stageRow, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    arguments, atFirst, atFirstExpanded, atSecond, atSecondExpanded,
    binderFirst, binderFirstExpanded, binderT,
    noPrior, finishNone, deliverCNone, deliverTNone,
    returnCNone, returnTNone, deliverGateFirstNone,
    deliverGateFirstExpandedNone,
    classifyArrival, parkFirst, decodeInput,
    term, gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateFirstPath, gateSecondPath, gateContinuationPath,
    gateFirstLogged, unaryInstance, tBinderPath, zeroTerm,
    bne_eq, entryBEq_refl, nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul]

theorem sameKeyFrames_tInstance_boundary
    (data : BoundaryData n) (gateIndex : Nat)
    (wf : BoundaryWFAt completed data) :
    sameKeyFrames data.frames
        ⟨.t, none, unaryInstance .t n gateIndex⟩ = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership selected
  have gateC := frameSourceBefore_gate_c
    (wf.frameSource frame membership)
  have keyEqual := key_eq_of_beq frame.key
    ⟨.t, none, unaryInstance .t n gateIndex⟩ selected
  have gateEqual := congrArg Key.gate keyEqual
  simp [gateC] at gateEqual

theorem decodeInput_tAnswerAt (data : BoundaryData n) (wire : Fin n)
    (gateIndex : Nat) (bit : Bool) (wf : BoundaryWFAt completed data) :
    decodeInput bit (tAnswerAt n gateIndex bit)
        (unaryRetainedAt wire data) =
      some (.alpha .t none (unaryInstance .t n gateIndex) .fresh, [],
        unaryRetainedAt wire data) := by
  have fresh := sameKeyFrames_tInstance_boundary data gateIndex wf
  have popped := sameKeyFrames_removeFrameKey_fresh data.frames
    (data.wires wire) ⟨.t, none, unaryInstance .t n gateIndex⟩ fresh
  unfold sameKeyFrames at popped
  cases bit <;> simp [decodeInput, tAnswerAt, unaryRetainedAt, popped]

@[simp] theorem subterm_compiledTerm_tBinder (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) tBinderPath =
      some (.lam (.lam (prepChain 0 n
        (lowerTotal (compileGatesWith n 0 wireName circuit)
          (preparedEnvironment n))))) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  exact subterm_prepProgram_tBinderPath _ _

@[simp] theorem subterm_compiledTerm_tBinderConcrete
    (positiveWidth : 0 < n) (circuit : Circuit n) :
    subterm? (compiledTerm circuit) [.fn, .fn, .fn, .body] =
      some (.lam (.lam (prepChain 0 n
        (lowerTotal (compileGatesWith n 0 wireName circuit)
          (preparedEnvironment n))))) := by
  simpa only [tBinderPath] using
    subterm_compiledTerm_tBinder positiveWidth circuit

@[simp] theorem subterm_compiledTerm_hBinder (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) hBinderPath =
      some (.lam (.lam (.lam (prepChain 0 n
        (lowerTotal (compileGatesWith n 0 wireName circuit)
          (preparedEnvironment n)))))) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  exact subterm_prepProgram_hBinderPath _ _

@[simp] theorem subterm_compiledTerm_hBinderConcrete
    (positiveWidth : 0 < n) (circuit : Circuit n) :
    subterm? (compiledTerm circuit) [.fn, .fn, .fn] =
      some (.lam (.lam (.lam (prepChain 0 n
        (lowerTotal (compileGatesWith n 0 wireName circuit)
          (preparedEnvironment n)))))) := by
  simpa only [hBinderPath] using
    subterm_compiledTerm_hBinder positiveWidth circuit

@[simp] theorem subterm_compiledTerm_hApplication (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) [.fn, .fn] =
      some (.app
        (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal (compileGatesWith n 0 wireName circuit)
            (preparedEnvironment n))))))
        (.gate .h)) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  exact subterm_prepProgram_hApplication _ _

@[simp] theorem subterm_compiledTerm_tGate (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) [.fn, .arg] = some (.gate .t) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  exact subterm_prepProgram_tGate _ _

@[simp] theorem subterm_compiledTerm_tApplication (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) [.fn] =
      some (.app
        (.app
          (.lam (.lam (.lam (prepChain 0 n
            (lowerTotal (compileGatesWith n 0 wireName circuit)
              (preparedEnvironment n))))))
          (.gate .h))
        (.gate .t)) := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  exact subterm_prepProgram_tApplication _ _

set_option maxHeartbeats 0 in
theorem contextual_t_23_to_called (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 5
        [⟨tCheckpoint23At n prior.length data, amplitude⟩] =
      [⟨tCalledAt n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atSecondFn :
      subterm? term (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    dsimp [term]
    rw [subterm_append, atSecond]
    rfl
  have localAtSecondFn :
      subterm?
          (.app
            (.var ((lookupName .t
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1))
            (.var ((lookupName
              (sourceWiresFrom 0 wireName prior wire)
              (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)))
          [.fn] =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rfl
  have atTBinder :
      subterm? (compiledTerm (prior ++ .t wire :: rest)) tBinderPath =
        some (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName (prior ++ .t wire :: rest))
            (preparedEnvironment n))))) := by
    exact subterm_compiledTerm_tBinder positiveWidth _
  have atHBinder := subterm_compiledTerm_hBinder positiveWidth
    (prior ++ .t wire :: rest)
  have atHApplication := subterm_compiledTerm_hApplication positiveWidth
    (prior ++ .t wire :: rest)
  have atTGate := subterm_compiledTerm_tGate positiveWidth
    (prior ++ .t wire :: rest)
  have binderT := binder_compiledTerm_current_t_native positiveWidth prior
    wire rest
  have deliverTUnderPark : ∀ direction log tape vb frames,
      deliverPort term
          ⟨tBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have storedTUnderPark :
      storedPortBindings tBinderPath
          (unaryParkAt n prior.length :: data.storage) = [] := by
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have deliverTUnderParkLiteral : ∀ direction log tape vb frames,
      deliverPort (compiledTerm (prior ++ .t wire :: rest))
          ⟨tBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    simpa [term] using
      deliverTUnderPark direction log tape vb frames
  have returnTUnderPark : ∀ direction log tape vb frames,
      returnContinuation
          ⟨tBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences tBinderPath data.storage = []
    exact wf.storage.returnT
  have finishParkNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have oldUnary := wf.storage.futureUnaryInvocation .t prior.length
    (Nat.le_refl prior.length)
  have different := gateInvoked_ne_unaryInstance
    .t n prior.length prior.length
  have noPriorUnaryPark :
      hasPriorCInvocation (unaryInstance .t n prior.length)
          (unaryParkAt n prior.length :: data.storage) = false := by
    change
      ((gateInvoked n prior.length == unaryInstance .t n prior.length) ||
        hasPriorCInvocation (unaryInstance .t n prior.length)
          data.storage) = false
    rw [oldUnary]
    simp [different]
  have closeUnaryParkNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [unaryInstance .t n prior.length],
            bullet :: tape, none, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (unaryInstance .t n prior.length) [] tape frames _ noPriorUnaryPark
  have markerDepth :
      1 ≤ level (gateSecondPath n prior.length ++ [.fn]) -
        level tBinderPath := by
    simp [level, gateSecondPath, gateRoot, gateBlock,
      preparationRoot, shellBodyPath, tBinderPath]
    omega
  have markerSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level tBinderPath)
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le markerDepth
  have markerDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level tBinderPath)
          [gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le markerDepth
  have markerSliceConcrete :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level [.fn, .fn, .fn, .body])
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] := by
    simpa only [tBinderPath] using markerSlice
  have markerDropConcrete :
      List.drop
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level [.fn, .fn, .fn, .body])
          [gateMarker .second n prior.length] = [] := by
    simpa only [tBinderPath] using markerDrop
  have tFresh := sameKeyFrames_tInstance_boundary data prior.length
    wf.machine
  have tNotDead :
      (deadKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) = false := by
    cases contained :
        (deadKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) with
    | false => rfl
    | true =>
        have containedBase :
            (deadKeys data.storage).contains
                (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) = true := by
          simpa [deadKeys, unaryParkAt] using contained
        have containedProp :
            (deadKeys data.storage).contains
              (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) :=
          containedBase
        rcases List.contains_iff_exists_mem_beq.mp containedProp with
          ⟨found, foundMember, foundEqual⟩
        have equal := key_eq_of_beq
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key)
          found foundEqual
        have member :
            (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) ∈
              deadKeys data.storage := by
          simpa [equal] using foundMember
        rcases wf.machine.deadSource _ member with
          ⟨input, before, port, source⟩ |
          ⟨earlier, before, port, source⟩
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
  have tNotBitfree :
      (bitfreeKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) = false := by
    cases contained :
        (bitfreeKeys (unaryParkAt n prior.length :: data.storage)).contains
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) with
    | false => rfl
    | true =>
        have containedBase :
            (bitfreeKeys data.storage).contains
                (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) = true := by
          simpa [bitfreeKeys, unaryParkAt] using contained
        have containedProp :
            (bitfreeKeys data.storage).contains
              (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) :=
          containedBase
        rcases List.contains_iff_exists_mem_beq.mp containedProp with
          ⟨found, foundMember, foundEqual⟩
        have equal := key_eq_of_beq
          (⟨.t, none, unaryInstance .t n prior.length⟩ : Key)
          found foundEqual
        have member :
            (⟨.t, none, unaryInstance .t n prior.length⟩ : Key) ∈
              bitfreeKeys data.storage := by
          simpa [equal] using foundMember
        have dead := bitfreeKeys_subset_deadKeys data.storage member
        rcases wf.machine.deadSource _ dead with
          ⟨input, before, port, source⟩ |
          ⟨earlier, before, port, source⟩
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
        · have gateEqual := congrArg Key.gate source
          cases port <;> simp [portKey] at gateEqual
  have tFreshLiteral :
      sameKeyFrames data.frames
          { gate := .t, port := none,
            inst := lp (gateSecondPath n prior.length ++ [.fn])
              [gateMarker .second n prior.length] } = [] := by
    simpa only [unaryInstance] using tFresh
  have tNotDeadLiteral :
      (deadKeys (unaryParkAt n prior.length :: data.storage)).contains
          { gate := .t, port := none,
            inst := lp (gateSecondPath n prior.length ++ [.fn])
              [gateMarker .second n prior.length] } = false := by
    simpa only [unaryInstance] using tNotDead
  have tNotBitfreeLiteral :
      (bitfreeKeys (unaryParkAt n prior.length :: data.storage)).contains
          { gate := .t, port := none,
            inst := lp (gateSecondPath n prior.length ++ [.fn])
              [gateMarker .second n prior.length] } = false := by
    simpa only [unaryInstance] using tNotBitfree
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, tCheckpoint23At, tCalledAt,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, bulletIs, countBullets,
    deliverPort, closeVirtualPort, returnContinuation,
    rbAfterOutputBullets, delegateStep, cnotStepToken,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, atSecond, atSecondFn, localAtSecondFn,
    atTBinder, atHBinder, atHApplication, atTGate,
    subterm_compiledTerm_tBinder positiveWidth,
    subterm_compiledTerm_hBinder positiveWidth,
    subterm_compiledTerm_tGate positiveWidth, binderT,
    storedTUnderPark, deliverTUnderPark, deliverTUnderParkLiteral,
    returnTUnderPark, finishParkNone,
    closeUnaryParkNone,
    subterm_append, subterm?, classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    unaryInstance,
    markerDepth, markerSlice, markerDrop,
    tFreshLiteral, tNotDeadLiteral, tNotBitfreeLiteral]

set_option maxHeartbeats 0 in
theorem contextual_t_called_to_input (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 5
        [⟨tCalledAt n prior.length data, amplitude⟩] =
      [⟨tInputArrivalAt n prior.length data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atSecondFn :
      subterm? term (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    dsimp [term]
    rw [subterm_append, atSecond]
    rfl
  have atInput :
      subterm? term (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    dsimp [term]
    rw [subterm_append, atSecond]
    rfl
  have atSecondFnExpanded :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [term, gateSecondPath, gateRoot, gateBlock,
      List.append_assoc] using atSecondFn
  have binderT := binder_compiledTerm_current_t_native positiveWidth prior
    wire rest
  have binderTExpanded :
      binderPath? term
          (preparationRoot n ++
            (List.flatten (List.replicate prior.length
              [.arg, .body, .body]) ++ [.fn, .arg, .fn])) =
        some ([.fn, .fn, .fn, .body] : Path) := by
    simpa [term, gateSecondPath, gateRoot, gateBlock, tBinderPath,
      List.append_assoc] using binderT
  have atTBinder := subterm_compiledTerm_tBinder positiveWidth
    (prior ++ .t wire :: rest)
  have atTBinderConcrete :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          ([.fn, .fn, .fn, .body] : Path) =
        some (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName (prior ++ .t wire :: rest))
            (preparedEnvironment n))))) := by
    simpa only [tBinderPath] using atTBinder
  have atHBinder := subterm_compiledTerm_hBinder positiveWidth
    (prior ++ .t wire :: rest)
  have atHApplication := subterm_compiledTerm_hApplication positiveWidth
    (prior ++ .t wire :: rest)
  have atTApplication := subterm_compiledTerm_tApplication positiveWidth
    (prior ++ .t wire :: rest)
  have atHBinderConcrete :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          ([.fn, .fn, .fn] : Path) =
        some (.lam (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName (prior ++ .t wire :: rest))
            (preparedEnvironment n)))))) := by
    simpa only [hBinderPath] using atHBinder
  have atTBinderConcrete :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          ([.fn, .fn, .fn, .body] : Path) =
        some (.lam (.lam (prepChain 0 n
          (lowerTotal
            (compileGatesWith n 0 wireName (prior ++ .t wire :: rest))
            (preparedEnvironment n))))) := by
    simpa only [tBinderPath] using atTBinder
  have atTGate := subterm_compiledTerm_tGate positiveWidth
    (prior ++ .t wire :: rest)
  have deliverAtHApplicationNone : ∀ slice log tape vb frames,
      deliverPort term
          ⟨[.fn, .fn], .up, log,
            lp (gateSecondPath n prior.length ++ [.fn]) slice :: tape,
            vb, frames, unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro slice log tape vb frames
    dsimp [term]
    simp [deliverPort, binderT, tBinderPath]
  have deliverTUnderPark : ∀ direction log tape vb frames,
      deliverPort term
          ⟨tBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply deliverPort_none_of_emptyBindings
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have returnTUnderPark : ∀ direction log tape vb frames,
      returnContinuation
          ⟨tBinderPath, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences tBinderPath data.storage = []
    exact wf.storage.returnT
  have finishParkNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryParkAt n prior.length :: data.storage⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, tCalledAt, tInputArrivalAt,
    composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, directionDifferent, directionSame, appIs,
    returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    atSecond, atSecondFn, atSecondFnExpanded, atInput,
    binderT, binderTExpanded,
    deliverAtHApplicationNone,
    atTBinder, atTBinderConcrete, atHBinder, atHBinderConcrete,
    atHApplication, atTApplication, atTGate,
    deliverTUnderPark, returnTUnderPark, finishParkNone,
    subterm_compiledTerm_tBinder positiveWidth,
    subterm_compiledTerm_hBinder positiveWidth,
    subterm_compiledTerm_hApplication positiveWidth,
    subterm_compiledTerm_tApplication positiveWidth,
    subterm_compiledTerm_tGate positiveWidth,
    subterm_append, zeroTerm, classifyArrival,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateSecondPath, gateContinuationPath, unaryInstance,
    hBinderPath, tBinderPath]
  rw [binderTExpanded]
  simp (config := { maxSteps := 1000000 })
    [stepBasis, composedStep, readbackStep, firstRB, rbAfterOutputBullets,
    treeAt?, kernelToken, directionDifferent, directionSame, appIs,
    returnContinuation, delegateStep, cnotStepToken,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, atSecond, atSecondFn,
    atSecondFnExpanded, atInput,
    deliverAtHApplicationNone, finishParkNone,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    gateInvoked, gateOccurrence, gateRoot, gateBlock, gateMarker,
    gateSecondPath, gateContinuationPath, unaryInstance]

set_option maxHeartbeats 0 in
theorem contextual_t_input_deliver (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 3
        [⟨tInputArrivalAt n prior.length data, amplitude⟩] =
      [⟨tInputDeliveredAt n prior.length wire data, amplitude⟩] := by
  rw [compiledTerm_eq_prepProgram positiveWidth]
  let tail := lowerTotal
    (compileGatesWith n 0 wireName (prior ++ .t wire :: rest))
    (preparedEnvironment n)
  change evolve (prepProgram n tail) certificate 3 _ = _
  let sources := sourceWiresFrom 0 wireName prior
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atInputCompiled :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName (sources wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have atInput :
      subterm? (prepProgram n tail)
          (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName (sources wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [tail, compiledTerm_eq_prepProgram positiveWidth] using
      atInputCompiled
  have binderInput :
      binderPath? (prepProgram n tail)
          (gateSecondPath n prior.length ++ [.arg]) =
        some (sourceBinderPath n (sources wire)) := by
    simpa [tail, sources, compiledTerm_eq_prepProgram positiveWidth] using
      binder_compiledTerm_current_t_input positiveWidth prior wire rest
  have binding := wf.storage.liveBinding wire
  have bindingUnderCpark : ∀ parkInvoked bit descriptor descriptors
      occurrence continuation,
      storedPortBindings (sourceBinderPath n (sources wire))
          (.cpark parkInvoked bit descriptor descriptors occurrence
            continuation :: data.storage) =
        [((data.wires wire).inst, keyPort (data.wires wire))] := by
    intro parkInvoked bit descriptor descriptors occurrence continuation
    change storedPortBindings (sourceBinderPath n (sources wire))
        data.storage = _
    simpa [sources] using binding
  have matching := wf.machine.liveFrame wire
  have keyEqual := liveWireKey_normalized wf.machine wire
  have sourceDepth :
      1 ≤ level (gateSecondPath n prior.length) -
        level (sourceBinderPath n (sources wire)) := by
    simpa [sources] using compilerSourceBinder_before_gateSecond prior wire
  have inputDepth :
      2 ≤ level (gateSecondPath n prior.length ++ [.arg]) -
        level (sourceBinderPath n (sources wire)) := by
    simp [level] at sourceDepth ⊢
    omega
  have inputSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .t, gateMarker .second n prior.length] =
        [gam .t, gateMarker .second n prior.length] :=
    List.take_of_length_le inputDepth
  have inputDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n (sources wire)))
          [gam .t, gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le inputDepth
  have inputSliceExpanded :
      List.take
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level (sourceBinderPath n
              (sourceWiresFrom 0 wireName prior wire)))
          [gam .t,
            cgam .second (gateInvoked n prior.length)
              (gateOccurrence n prior.length)
              (gateFirstPath n prior.length)
              (gateSecondPath n prior.length)
              (gateContinuationPath n prior.length)] =
        [gam .t,
          cgam .second (gateInvoked n prior.length)
            (gateOccurrence n prior.length)
            (gateFirstPath n prior.length)
            (gateSecondPath n prior.length)
            (gateContinuationPath n prior.length)] := by
    simpa [sources, gateMarker] using inputSlice
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have rbNotBullet : isBullet (rb 0 [] []) = false := rfl
  have rbNotApp : isAppBullet (rb 0 [] []) = false := rfl
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      tInputArrivalAt, tInputDeliveredAt, unaryParkAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      directionDifferent, directionSame, appIs, rbNotBullet, rbNotApp,
      delegateStep, cnotStepToken, finishCStage_cpark, finishStageRow,
      kernelStepToken, composedToken, tokenWith, mapKernelEdge,
      kernelDeterministic, nfDeterministic, deliverPort, atInput, binderInput,
      binding, bindingUnderCpark, matching, keyEqual, splitCustom, stageRow,
      inputBit, inputDepth, inputSlice, inputSliceExpanded, inputDrop,
      bitNat, headBang_cons, boundaryWireAnswer, liveWireFrame,
      gateMarker, unaryInputLogged, sources,
      composedEntry, kernelEntry, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem contextual_t_fire (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tInputDeliveredAt n prior.length wire data, amplitude⟩] =
      [⟨tFiredAt n prior.length wire data,
          mul (if data.word wire then omega else one) amplitude⟩] := by
  let environment := sourceEnvironmentFrom 0 (preparedEnvironment n) prior
  let inputVar : Term :=
    .var ((lookupName
      (sourceWiresFrom 0 wireName prior wire) environment).getD 1)
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atInput :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (gateSecondPath n prior.length ++ [.arg]) = some inputVar := by
    rw [subterm_append, atSecond]
    rfl
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have gateSame : (GateName.t != GateName.t) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have keyEqual := liveWireKey_normalized wf.machine wire
  have sameBit : ∀ frame, frame ∈ data.frames →
      (frame.key == data.wires wire) = true →
      frame.bit = data.word wire := by
    intro frame membership selected
    have inMatching : frame ∈ sameKeyFrames data.frames
        (data.wires wire) := by
      exact List.mem_filter.mpr ⟨membership, selected⟩
    rw [wf.machine.liveFrame wire] at inMatching
    have equal : frame = liveWireFrame data wire := by
      simpa using inMatching
    simpa [equal, liveWireFrame]
  have consistent := framesConsistent_of_conflictFree
    wf.machine.conflictFree
  have extendedConsistent :
      FramesConsistent (liveWireFrame data wire :: data.frames) := by
    intro left leftMember right rightMember keyMatch
    rcases List.mem_cons.mp leftMember with leftHead | leftTail <;>
      rcases List.mem_cons.mp rightMember with rightHead | rightTail
    · simpa [leftHead, rightHead]
    · subst left
      have keyEq : right.key = data.wires wire := by
        simpa [liveWireFrame] using keyMatch.symm
      have selected : (right.key == data.wires wire) = true := by
        rw [keyEq]
        exact key_beq_refl _
      simpa [liveWireFrame] using (sameBit right rightTail selected).symm
    · subst right
      have keyEq : left.key = data.wires wire := by
        simpa [liveWireFrame] using keyMatch
      have selected : (left.key == data.wires wire) = true := by
        rw [keyEq]
        exact key_beq_refl _
      simpa [liveWireFrame] using sameBit left leftTail selected
    · exact consistent left leftTail right rightTail keyMatch
  have conflictExtended := conflictFree_of_framesConsistent
    extendedConsistent
  have conflictExpanded :
      hasBitConflict
          (alphaBitPairs (boundaryWireAnswer data wire) ++
            frameBitPairs data.frames) = false := by
    have boundaryPairs :
        alphaBitPairs (boundaryWireAnswer data wire) =
          [(⟨.c, some (keyPort (data.wires wire)),
              (data.wires wire).inst⟩, data.word wire)] := by
      rfl
    rw [boundaryPairs, keyEqual]
    exact conflictExtended
  have popClean :
      (data.frames.filter fun frame =>
          [data.wires wire].contains frame.key).any
          (fun frame => frame.bit != data.word wire) = false := by
    cases selected :
        (data.frames.filter fun frame =>
          [data.wires wire].contains frame.key).any
          (fun frame => frame.bit != data.word wire) with
    | false => rfl
    | true =>
        rcases List.any_eq_true.mp selected with
          ⟨frame, filtered, wrong⟩
        have parts := List.mem_filter.mp filtered
        have keyMatch : (frame.key == data.wires wire) = true := by
          simpa using parts.2
        have bitMatch := sameBit frame parts.1 keyMatch
        simp [bitMatch] at wrong
  have noPopFalse (bitIsFalse : data.word wire = false) :
      ¬ ∃ frame, frame ∈ data.frames ∧
        (frame.key == data.wires wire) = true ∧ frame.bit = true := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have bitMatch := sameBit frame membership keyMatch
    rw [bitIsFalse] at bitMatch
    simp [bitMatch] at wrong
  have noPopTrue (bitIsTrue : data.word wire = true) :
      ¬ ∃ frame, frame ∈ data.frames ∧
        (frame.key == data.wires wire) = true ∧ frame.bit = false := by
    rintro ⟨frame, membership, keyMatch, wrong⟩
    have bitMatch := sameBit frame membership keyMatch
    rw [bitIsTrue] at bitMatch
    simp [bitMatch] at wrong
  have poppedEq :
      data.frames.filter (fun frame =>
          frame.key == data.wires wire) =
        [liveWireFrame data wire] := by
    simpa [sameKeyFrames] using wf.machine.liveFrame wire
  have retainedEq :
      data.frames.filter (fun frame =>
          !(frame.key == data.wires wire)) =
        unaryRetainedAt wire data := by
    exact filter_not_key_eq_removeFrameKey_of_sameKeyFrames
      data.frames (data.wires wire) (liveWireFrame data wire)
      (wf.machine.liveFrame wire)
  have retainedNo :
      data.wires wire ∉
        (data.frames.filter (fun frame =>
            !(frame.key == data.wires wire))).map
          (fun frame => frame.key) :=
    key_not_mem_filtered_other_frame_keys data.frames (data.wires wire)
  have buriedNo :
      data.wires wire ∉
        data.storage.foldl (fun out item =>
          match item with
          | .burial cargo => unionKeys out (alphaKeysLive cargo)
          | _ => out) [] := by
    intro membership
    exact wf.machine.liveNotDead wire
      (burialKeys_subset_deadKeys data.storage membership)
  have surviveNo :
      (unionKeys
          ((data.frames.filter (fun frame =>
              !(frame.key == data.wires wire))).map
            (fun frame => frame.key))
          (unionKeys
            (data.storage.foldl (fun out item =>
              match item with
              | .burial cargo => unionKeys out (alphaKeysLive cargo)
              | _ => out) [])
            (unionKeys
              (entryKeys
                [bullet, bullet,
                 cmu .second (gateInvoked n prior.length), bullet,
                 rb 0 [] []])
              (entryKeys
                [gam .t, gateMarker .second n prior.length])))).contains
          (data.wires wire) = false := by
    letI : LawfulBEq Key := {
      eq_of_beq := by
        intro left right equal
        exact key_eq_of_beq left right equal
      rfl := by exact key_beq_refl _ }
    rw [List.contains_eq_mem]
    simp [mem_unionKeys_iff, retainedNo, buriedNo,
      entryKeys, gateMarker]
  have eraseEq :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((data.frames.filter (fun frame =>
                !(frame.key == data.wires wire))).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .t, gateMarker .second n prior.length])))) =
        [data.wires wire] := by
    rw [poppedEq]
    simp only [List.map]
    have deadCanonical :
        unionKeys [data.wires wire]
            [(liveWireFrame data wire).key] =
          [data.wires wire] := by
      simp [liveWireFrame, unionKeys, canonicalKeys, insertKey]
    rw [deadCanonical]
    unfold eraseKeys
    have keyCanonical :
        canonicalKeys [data.wires wire] = [data.wires wire] := by
      simp [canonicalKeys, insertKey]
    rw [keyCanonical]
    simp only [List.filter_cons, List.filter_nil]
    rw [surviveNo]
    rfl
  have eraseEqRetained :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((unaryRetainedAt wire data).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .t, gateMarker .second n prior.length])))) =
        [data.wires wire] := by
    rw [← retainedEq]
    exact eraseEq
  have eraseEqExpanded :
      eraseKeys
          (unionKeys [data.wires wire]
            ((data.frames.filter (fun frame =>
                frame.key == data.wires wire)).map
              (fun frame => frame.key)))
          (unionKeys
            ((unaryRetainedAt wire data).map
              (fun frame => frame.key))
            (unionKeys
              (data.storage.foldl (fun out item =>
                match item with
                | .burial cargo => unionKeys out (alphaKeysLive cargo)
                | _ => out) [])
              (unionKeys
                (entryKeys
                  [bullet, bullet,
                   cmu .second (gateInvoked n prior.length), bullet,
                   rb 0 [] []])
                (entryKeys
                  [gam .t,
                   cgam .second (gateInvoked n prior.length)
                     (gateOccurrence n prior.length)
                     (gateFirstPath n prior.length)
                     (gateSecondPath n prior.length)
                     (gateContinuationPath n prior.length)])))) =
        [data.wires wire] := by
    simpa [gateMarker] using eraseEqRetained
  have noPriorT :
      hasPriorCInvocation (gam .t)
          (.cquery (keyPort (data.wires wire)) (data.wires wire).inst
              (unaryInputLogged .t n prior.length) ::
            unaryParkAt n prior.length :: data.storage) = false := by
    have old := wf.storage.nonLPInvocation (gam .t) (by rfl)
    change
      (false || ((gateInvoked n prior.length == gam .t) ||
        hasPriorCInvocation (gam .t) data.storage)) = false
    rw [old]
    rfl
  have closeNone :
      closeVirtualPort
          ⟨gateSecondPath n prior.length ++ [.arg], .up,
            [gam .t, gateMarker .second n prior.length],
            bullet ::
              [boundaryWireAnswer data wire, mu .t, bullet, bullet,
               cmu .second (gateInvoked n prior.length), bullet,
               rb 0 [] []],
            none, data.frames,
            .cquery (keyPort (data.wires wire)) (data.wires wire).inst
                (unaryInputLogged .t n prior.length) ::
              unaryParkAt n prior.length :: data.storage⟩ = none := by
    exact closeVirtualPort_none_of_noPrior _ (gam .t)
      [gateMarker .second n prior.length]
      [boundaryWireAnswer data wire, mu .t, bullet, bullet,
       cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []]
      data.frames _ noPriorT
  have closeNoneExpanded :
      closeVirtualPort
          ⟨gateSecondPath n prior.length ++ [.arg], .up,
            [gam .t,
             cgam .second (gateInvoked n prior.length)
               (gateOccurrence n prior.length)
               (gateFirstPath n prior.length)
               (gateSecondPath n prior.length)
               (gateContinuationPath n prior.length)],
            bullet ::
              [alpha .c (some (keyPort (data.wires wire)))
                 (data.wires wire).inst (data.word wire)
                 (.recalledAbsent .fresh),
               mu .t, bullet, bullet,
               cmu .second (gateInvoked n prior.length), bullet,
               rb 0 [] []],
            none, data.frames,
            .cquery (keyPort (data.wires wire)) (data.wires wire).inst
                (lp (gateSecondPath n prior.length ++ [.arg])
                  [gam .t,
                   cgam .second (gateInvoked n prior.length)
                     (gateOccurrence n prior.length)
                     (gateFirstPath n prior.length)
                     (gateSecondPath n prior.length)
                     (gateContinuationPath n prior.length)]) ::
              .cpark (gateInvoked n prior.length) false
                (.logged (gateFirstLogged n prior.length)) []
                (gateOccurrence n prior.length)
                (gateContinuationPath n prior.length) :: data.storage⟩ =
        none := by
    simpa [gateMarker, boundaryWireAnswer, unaryInputLogged, unaryParkAt]
      using closeNone
  have conflictNormalized := conflictExpanded
  simp only [boundaryWireAnswer] at conflictNormalized
  cases inputBit : data.word wire <;>
    rw [inputBit] at popClean conflictNormalized closeNoneExpanded <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis,
      tInputDeliveredAt, tFiredAt,
      unaryPostStorageAt, unaryParkAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      directionSame, gateSame, appIs,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      admitted, atInput, environment, inputVar,
      deliverPort, returnContinuation,
      classifyArrival, fireTargets, nfDeterministic,
      conflictExpanded, popClean, noPopFalse, noPopTrue,
      edgeCoefficient, powDw, omega, omegaPhysical,
      QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat, headBang_cons, boundaryWireAnswer,
      liveWireFrame, keyEqual, sameBit,
      sameKeyFrames,
      unaryInputLogged, gateMarker,
      conflictNormalized, retainedEq, eraseEqExpanded,
      closeNoneExpanded]
  all_goals try rw [eraseEqExpanded]
  all_goals
    first
    | rfl
    | exact eraseEqExpanded
    | (constructor
       · exact eraseEqExpanded
       · simp [QalcGate2Compiler.neg])

set_option maxHeartbeats 0 in
theorem contextual_t_fired_to_40 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tFiredAt n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint40At n prior.length wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atInput :
      subterm? term (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    dsimp [term]
    rw [subterm_append, atSecond]
    rfl
  have atInputLiteral :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (gateSecondPath n prior.length ++ [.arg]) =
        some (.var ((lookupName
          (sourceWiresFrom 0 wireName prior wire)
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    simpa [term] using atInput
  have binderInput := binder_compiledTerm_current_t_input positiveWidth prior
    wire rest
  have markerDepth :
      2 ≤ level (gateSecondPath n prior.length ++ [.arg]) -
        level tBinderPath := by
    simp [level, gateSecondPath, gateRoot, preparationRoot,
      shellBodyPath, tBinderPath]
    omega
  have markerSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level tBinderPath)
          [gam .t, gateMarker .second n prior.length] =
        [gam .t, gateMarker .second n prior.length] :=
    List.take_of_length_le markerDepth
  have markerDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.arg]) -
            level tBinderPath)
          [gam .t, gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le markerDepth
  have storedT :
      storedPortBindings tBinderPath
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tFiredAt, tCheckpoint40At,
      unaryPostStorageAt, unaryParkAt, unaryRetainedAt, tAnswerAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionUpSame, appIs,
      deliverPort, closeVirtualPort, returnContinuation, finishCStage?,
      atInput, atInputLiteral, binderInput, markerSlice, markerDrop, storedT,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

set_option maxHeartbeats 0 in
theorem contextual_t_40_to_44 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 4
        [⟨tCheckpoint40At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint44At n prior.length wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atSecondFn :
      subterm? term (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    dsimp [term]
    rw [subterm_append, atSecond]
    rfl
  have binderT := binder_compiledTerm_current_t_native positiveWidth prior
    wire rest
  have atTBinder := subterm_compiledTerm_tBinder positiveWidth
    (prior ++ .t wire :: rest)
  have atHBinder := subterm_compiledTerm_hBinder positiveWidth
    (prior ++ .t wire :: rest)
  have atHApplication := subterm_compiledTerm_hApplication positiveWidth
    (prior ++ .t wire :: rest)
  have atTGate := subterm_compiledTerm_tGate positiveWidth
    (prior ++ .t wire :: rest)
  have markerDepth :
      1 ≤ level (gateSecondPath n prior.length ++ [.fn]) -
        level tBinderPath := by
    simp [level, gateSecondPath, gateRoot, preparationRoot,
      shellBodyPath, tBinderPath]
    omega
  have markerSlice :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level tBinderPath)
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] :=
    List.take_of_length_le markerDepth
  have markerDrop :
      List.drop
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level tBinderPath)
          [gateMarker .second n prior.length] = [] :=
    List.drop_eq_nil_of_le markerDepth
  have markerSliceConcrete :
      List.take
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level [.fn, .fn, .fn, .body])
          [gateMarker .second n prior.length] =
        [gateMarker .second n prior.length] := by
    simpa only [tBinderPath] using markerSlice
  have markerDropConcrete :
      List.drop
          (level (gateSecondPath n prior.length ++ [.fn]) -
            level [.fn, .fn, .fn, .body])
          [gateMarker .second n prior.length] = [] := by
    simpa only [tBinderPath] using markerDrop
  have storedT :
      storedPortBindings tBinderPath
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have returnT :
      storedReturnOccurrences tBinderPath
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedReturnOccurrences tBinderPath data.storage = []
    exact wf.storage.returnT
  have returnTGate :
      storedReturnOccurrences [.fn, .arg]
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedReturnOccurrences [.fn, .arg] data.storage = []
    exact wf.storage.returnTGate
  have storedTExpanded :
      storedPortBindings [.fn, .fn, .fn, .body]
          (.bundle [data.wires wire] ::
            .cquery (keyPort (data.wires wire)) (data.wires wire).inst
                (unaryInputLogged .t n prior.length) ::
              .cpark (gateInvoked n prior.length) false
                  (.logged (gateFirstLogged n prior.length)) []
                  (gateOccurrence n prior.length)
                  (gateContinuationPath n prior.length) :: data.storage) = [] := by
    simpa [unaryPostStorageAt, unaryParkAt, tBinderPath] using storedT
  have finishNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have gateEq : (GateName.t == GateName.t) = true := by native_decide
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint40At, tCheckpoint44At,
      unaryPostStorageAt, unaryParkAt, unaryRetainedAt, tAnswerAt,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons,
      directionDifferent, directionSame, appIs, gateEq,
      deliverPort, returnContinuation,
      finishCStage?, finishNone,
      atSecond, atSecondFn, binderT, atTBinder,
      subterm_compiledTerm_tBinderConcrete positiveWidth, atHBinder,
      subterm_compiledTerm_hBinderConcrete positiveWidth,
      atHApplication, atTGate, markerSlice, markerDrop,
      markerSliceConcrete, markerDropConcrete,
      storedT, storedTExpanded, returnT,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat, unaryInstance, hBinderPath, tBinderPath]

theorem contextual_t_44_to_45 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tCheckpoint44At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint45At n prior.length wire data, amplitude⟩] := by
  have directionDownSame :
      (Direction.down != Direction.down) = false := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionDownUpEq :
      (Direction.down == Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have gateEq : (GateName.t == GateName.t) = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have returnTGatePostNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨([.fn, .arg] : Path), direction, log, tape, vb,
            frames, unaryPostStorageAt .t n prior.length wire data⟩ =
        none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences [.fn, .arg] data.storage = []
    exact wf.storage.returnTGate
  have noPriorUnaryPost :
      hasPriorCInvocation (unaryInstance .t n prior.length)
          (unaryPostStorageAt .t n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == unaryInstance .t n prior.length) ||
          hasPriorCInvocation (unaryInstance .t n prior.length)
            data.storage))) = false
    rw [wf.storage.futureUnaryInvocation .t prior.length
      (Nat.le_refl prior.length)]
    simp [gateInvoked_ne_unaryInstance]
  have findUnaryPostNone := findHistoryInvocation_none_of_noPrior
    (unaryInstance .t n prior.length)
    (unaryPostStorageAt .t n prior.length wire data) noPriorUnaryPost
  have closeUnaryPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [unaryInstance .t n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (unaryInstance .t n prior.length) [] tape frames _ noPriorUnaryPost
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint44At, tCheckpoint45At,
      unaryPostStorageAt, unaryParkAt, unaryRetainedAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDownSame, directionDownUpEq, appIs, gateEq,
      finishCStage?, finishPostNone, returnTGatePostNone,
      closeUnaryPostNone,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_compiledTerm_tGate positiveWidth, subterm_append, subterm?,
      zeroTerm, classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      tAnswerAt, inputBit, bitNat]

theorem contextual_t_45_to_47 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 2
        [⟨tCheckpoint45At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint47At n prior.length wire data, amplitude⟩] := by
  have directionDownSame :
      (Direction.down != Direction.down) = false := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionDownUpEq :
      (Direction.down == Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint45At, tCheckpoint47At,
      unaryPostStorageAt, unaryParkAt, unaryRetainedAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDownSame, directionDifferent,
      directionDownUpEq, appIs,
      finishCStage?, finishPostNone,
      deliverPort, closeVirtualPort, returnContinuation,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_compiledTerm_tGate positiveWidth,
      instance?, unaryInstance, classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

theorem contextual_t_47_to_48 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tCheckpoint47At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint48At n prior.length wire data, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionDownUpEq :
      (Direction.down == Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint47At, tCheckpoint48At,
      unaryPostStorageAt, unaryParkAt, unaryRetainedAt, tAnswerAt,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionDifferent, directionDownUpEq, appIs,
      finishCStage?, finishPostNone,
      deliverPort, closeVirtualPort, returnContinuation,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_compiledTerm_tGate positiveWidth,
      instance?, unaryInstance, classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

set_option maxHeartbeats 0 in
theorem contextual_t_48_to_52 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 4
        [⟨tCheckpoint48At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint52At n prior.length wire data, amplitude⟩] := by
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atSecondFn :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have binderT := binder_compiledTerm_current_t_native positiveWidth prior
    wire rest
  have storedT :
      storedPortBindings tBinderPath
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedPortBindings tBinderPath data.storage = []
    exact wf.storage.nativeT
  have returnT :
      storedReturnOccurrences tBinderPath
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedReturnOccurrences tBinderPath data.storage = []
    exact wf.storage.returnT
  have returnTGate :
      storedReturnOccurrences [.fn, .arg]
          (unaryPostStorageAt .t n prior.length wire data) = [] := by
    change storedReturnOccurrences [.fn, .arg] data.storage = []
    exact wf.storage.returnTGate
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have noPriorUnaryPost :
      hasPriorCInvocation (unaryInstance .t n prior.length)
          (unaryPostStorageAt .t n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == unaryInstance .t n prior.length) ||
          hasPriorCInvocation (unaryInstance .t n prior.length)
            data.storage))) = false
    rw [wf.storage.futureUnaryInvocation .t prior.length
      (Nat.le_refl prior.length)]
    simp [gateInvoked_ne_unaryInstance]
  have findUnaryPostNone := findHistoryInvocation_none_of_noPrior
    (unaryInstance .t n prior.length)
    (unaryPostStorageAt .t n prior.length wire data) noPriorUnaryPost
  have closeUnaryPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [unaryInstance .t n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (unaryInstance .t n prior.length) [] tape frames _ noPriorUnaryPost
  have directionDifferent :
      (Direction.up != Direction.down) = true := by native_decide
  have directionDownUp :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.down != Direction.down) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have unaryNotCGam :
      asCGam? (unaryInstance .t n prior.length) = none := by rfl
  have unaryNotGam :
      asGam? (unaryInstance .t n prior.length) = none := by rfl
  have unaryComposed :
      composedEntry (unaryInstance .t n prior.length) =
        unaryInstance .t n prior.length := by rfl
  have unaryNotRB :
      asRB? (unaryInstance .t n prior.length) = none := by rfl
  have unaryNotApp :
      isAppBullet (unaryInstance .t n prior.length) = false := by rfl
  have unaryNotBullet :
      isBullet (unaryInstance .t n prior.length) = false := by rfl
  have unaryAsLP :
      asLP? (unaryInstance .t n prior.length) =
        some (gateSecondPath n prior.length ++ [.fn],
          [gateMarker .second n prior.length]) := by rfl
  have binderEq :
      tBinderPath = [.fn, .fn, .fn, .body] := by rfl
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint48At, tCheckpoint52At,
      unaryRetainedAt, tAnswerAt,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons,
      directionDifferent, directionDownUp, directionUpSame, directionUpEq,
      directionSame,
      appIs,
      unaryNotCGam, unaryNotGam, unaryComposed, unaryNotRB,
      unaryNotApp, unaryNotBullet, unaryAsLP,
      finishPostNone,
      deliverPort, returnContinuation, closeUnaryPostNone,
      atSecond, atSecondFn, binderT,
      subterm_compiledTerm_tGate positiveWidth,
      subterm_compiledTerm_tApplication positiveWidth,
      subterm_compiledTerm_hApplication positiveWidth,
      subterm_compiledTerm_hBinderConcrete positiveWidth,
      subterm_compiledTerm_tBinder positiveWidth,
      subterm_compiledTerm_tBinderConcrete positiveWidth,
      storedT, returnT, returnTGate, binderEq,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      subterm_append, subterm?, zeroTerm,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

theorem contextual_t_52_to_53 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tCheckpoint52At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint53At n prior.length wire data, amplitude⟩] := by
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have atTVariable :
      subterm? (compiledTerm (prior ++ .t wire :: rest))
          (gateSecondPath n prior.length ++ [.fn]) =
        some (.var ((lookupName .t
          (sourceEnvironmentFrom 0 (preparedEnvironment n) prior)).getD 1)) := by
    rw [subterm_append, atSecond]
    rfl
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have returnSecondPostNone : ∀ direction log tape vb frames,
      returnContinuation
          ⟨gateSecondPath n prior.length ++ [.fn], direction, log, tape, vb,
            frames, unaryPostStorageAt .t n prior.length wire data⟩ =
        none := by
    intro direction log tape vb frames
    apply returnContinuation_none_of_emptyOccurrences
    change storedReturnOccurrences
      (gateSecondPath n prior.length ++ [.fn]) data.storage = []
    exact wf.storage.futureReturnSecond prior.length
      (Nat.le_refl prior.length)
  have markerNonLP :
      asLP? (gateMarker .second n prior.length) = none := by rfl
  have oldMarker := wf.storage.nonLPInvocation
    (gateMarker .second n prior.length) markerNonLP
  have invokedNe :
      gateInvoked n prior.length ≠ gateMarker .second n prior.length := by
    intro equal
    have decoded := congrArg asLP? equal
    simp [gateInvoked, markerNonLP] at decoded
  have noPriorMarkerPost :
      hasPriorCInvocation (gateMarker .second n prior.length)
          (unaryPostStorageAt .t n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == gateMarker .second n prior.length) ||
          hasPriorCInvocation (gateMarker .second n prior.length)
            data.storage))) = false
    rw [oldMarker]
    simp [invokedNe]
  have closeMarkerPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [gateMarker .second n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (gateMarker .second n prior.length) [] tape frames _ noPriorMarkerPost
  cases inputBit : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint52At, tCheckpoint53At,
      unaryRetainedAt, tAnswerAt,
      composedStep, readbackStep, firstRB, rbAfterOutputBullets,
      treeAt?, kernelToken, headBang_cons, directionUpSame, appIs,
      finishPostNone, returnSecondPostNone, closeMarkerPostNone,
      deliverPort, atTVariable,
      delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
      tokenWith, kernelEntry, composedToken, mapKernelEdge,
      classifyArrival, nfDeterministic,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      inputBit, bitNat]

@[simp] theorem fireSecond_t_at (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (bit : Bool)
    (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .t wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          List.replicate (bitNat bit) bullet ++
            [tAnswerAt n prior.length bit,
             cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .t n prior.length wire data⟩
        (bit, tAnswerAt n prior.length bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false bit
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .t n prior.length wire data⟩)) := by
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, gateInvoked n prior.length) ==
        (Port.second, gateInvoked n prior.length)) = true := by
    change
      (true && entryBEq (gateInvoked n prior.length)
        (gateInvoked n prior.length)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, gateInvoked n prior.length) !=
        some (Port.second, gateInvoked n prior.length)) = false := by
    simp [bne_eq, pairSame]
  have continuationBullet :
      isBullet ([bullet, rb 0 [] []] : List Entry).head! = true := by
    native_decide
  have fresh := wf.storage.freshInvocation prior.length
    (Nat.le_refl prior.length)
  have parked := cparkMatches_unaryPostStorageAt .t n prior.length wire
    data fresh
  have decoded := decodeInput_tAnswerAt data wire prior.length bit
    wf.machine
  have atContinuation :=
    subterm_compiledTerm_current_continuation positiveWidth prior
      (.t wire) rest
  have atContinuationBody :=
    subterm_compiledTerm_current_continuation_body positiveWidth prior
      (.t wire) rest
  cases bit <;> simp [fireSecond, bitNat, portSame, probeSame,
    continuationBullet, parked, decoded, atContinuation,
    atContinuationBody, replace_tPostStorageAt_with_expanded_history,
    splitCustom, kernelDeterministic, outputFrames, unaryHistory]

@[simp] theorem fireSecond_t_at_false (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .t wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          [alpha .t none (unaryInstance .t n prior.length) false .fresh,
           cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .t n prior.length wire data⟩
        (false,
          alpha .t none (unaryInstance .t n prior.length) false .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false false
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .t n prior.length wire data⟩)) := by
  simpa [tAnswerAt, bitNat] using
    fireSecond_t_at positiveWidth prior wire rest data false wf

@[simp] theorem fireSecond_t_at_true (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (wf : CompiledBoundaryWFAt prior data) :
    fireSecond (compiledTerm (prior ++ .t wire :: rest))
        ⟨gateSecondPath n prior.length, .up,
          [gateMarker .second n prior.length],
          [bullet,
           alpha .t none (unaryInstance .t n prior.length) true .fresh,
           cmu .second (gateInvoked n prior.length), bullet, rb 0 [] []],
          none, unaryRetainedAt wire data,
          unaryPostStorageAt .t n prior.length wire data⟩
        (true,
          alpha .t none (unaryInstance .t n prior.length) true .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨gateContinuationPath n prior.length, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            outputFrames n prior.length false true
              (unaryRetainedAt wire data),
            unaryCompletedStorageAt .t n prior.length wire data⟩)) := by
  simpa [tAnswerAt, bitNat] using
    fireSecond_t_at positiveWidth prior wire rest data true wf

theorem contextual_t_53_to_54 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tCheckpoint53At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint54At n prior.length wire data, amplitude⟩] := by
  have atSecond := subterm_compiledTerm_current_t_second positiveWidth prior
    wire rest
  have rbNotBullet : isBullet (rb 0 [] []) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have finishPostNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have markerNonLP :
      asLP? (gateMarker .second n prior.length) = none := by rfl
  have oldMarker := wf.storage.nonLPInvocation
    (gateMarker .second n prior.length) markerNonLP
  have invokedNe :
      gateInvoked n prior.length ≠ gateMarker .second n prior.length := by
    intro equal
    have decoded := congrArg asLP? equal
    simp [gateInvoked, markerNonLP] at decoded
  have noPriorMarkerPost :
      hasPriorCInvocation (gateMarker .second n prior.length)
          (unaryPostStorageAt .t n prior.length wire data) = false := by
    change
      (false || (false ||
        ((gateInvoked n prior.length == gateMarker .second n prior.length) ||
          hasPriorCInvocation (gateMarker .second n prior.length)
            data.storage))) = false
    rw [oldMarker]
    simp [invokedNe]
  have closeMarkerPostNone : ∀ path tape frames,
      closeVirtualPort
          ⟨path, .up, [gateMarker .second n prior.length],
            bullet :: tape, none, frames,
            unaryPostStorageAt .t n prior.length wire data⟩ = none := by
    intro path tape frames
    exact closeVirtualPort_none_of_noPrior path
      (gateMarker .second n prior.length) [] tape frames _ noPriorMarkerPost
  have fireExpanded := fireSecond_t_at positiveWidth prior wire rest data
    (data.word wire) wf
  cases inputBit : data.word wire <;>
    rw [inputBit] at fireExpanded <;>
    simp [tAnswerAt, bitNat] at fireExpanded <;>
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, tCheckpoint53At, tCheckpoint54At,
      composedStep, readbackStep, firstRB, treeAt?, kernelToken,
      headBang_cons, directionUpSame, directionUpEq, appIs,
      deliverPort, returnContinuation,
      delegateStep, cnotStepToken, kernelDeterministic, kernelEntry,
      composedToken, mapKernelEdge, zeroTerm, classifyArrival,
      edgeCoefficient, QalcFiniteGram.mul, tAnswerAt, bitNat,
      inputBit, rbNotBullet, bulletIs,
      finishPostNone, closeMarkerPostNone, fireExpanded,
      splitCustom, stageRow, powDw, QalcFiniteGram.one, atSecond]

theorem contextual_t_54_to_55 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 1
        [⟨tCheckpoint54At n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint55At n prior.length wire data, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by native_decide
  simp [evolve, stepColumn, stepBasis,
    tCheckpoint54At, tCheckpoint55At, composedStep, readbackStep,
    finishCStage?, finishStageRow, kernelDeterministic,
    kernelToken, kernelEntry, composedToken, composedEntry, mapKernelEdge,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    rbNotBullet]

@[simp] theorem tCheckpoint55At_eq_boundaryState (gateIndex : Nat)
    (wire : Fin n) (data : BoundaryData n) :
    tCheckpoint55At n gateIndex wire data =
      boundaryState n (gateIndex + 1)
        (advanceBoundary gateIndex (.t wire) (data.word wire) data) := by
  simp [tCheckpoint55At, boundaryState, advanceBoundary,
    circuitBoundaryPath, gateBoundaryPath, gateContinuationPath, gateRoot,
    unaryRetainedAt, unaryCompletedStorageAt, nextBoundaryStorage,
    unaryInputLogged]

theorem contextual_t_ready_to_input_delivered (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 36
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨tInputDeliveredAt n prior.length wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have trace10 := contextual_gate_ready_to_called positiveWidth prior
    (.t wire) rest certificate data amplitude wf
  have trace15 := evolve_compose term certificate 10 5 _ _ _ trace10
    (contextual_unary_called_to_15 positiveWidth prior .t wire rest
      certificate data amplitude wf)
  have trace20 := evolve_compose term certificate 15 5 _ _ _ trace15
    (contextual_unary_15_to_20 positiveWidth prior (.t wire) rest
      ⟨.t, wire, rfl⟩ certificate data amplitude wf)
  have trace23 := evolve_compose term certificate 20 3 _ _ _ trace20
    (contextual_t_20_to_23 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace28 := evolve_compose term certificate 23 5 _ _ _ trace23
    (contextual_t_23_to_called positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace33 := evolve_compose term certificate 28 5 _ _ _ trace28
    (contextual_t_called_to_input positiveWidth prior wire rest certificate
      data amplitude wf)
  exact evolve_compose term certificate 33 3 _ _ _ trace33
    (contextual_t_input_deliver positiveWidth prior wire rest certificate data
      amplitude wf)

theorem contextual_t_fired_to_55 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 16
        [⟨tFiredAt n prior.length wire data, amplitude⟩] =
      [⟨tCheckpoint55At n prior.length wire data, amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have trace40 := contextual_t_fired_to_40 positiveWidth prior wire rest
    certificate data amplitude wf
  have trace44 := evolve_compose term certificate 1 4 _ _ _ trace40
    (contextual_t_40_to_44 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace45 := evolve_compose term certificate 5 1 _ _ _ trace44
    (contextual_t_44_to_45 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace47 := evolve_compose term certificate 6 2 _ _ _ trace45
    (contextual_t_45_to_47 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace48 := evolve_compose term certificate 8 1 _ _ _ trace47
    (contextual_t_47_to_48 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace52 := evolve_compose term certificate 9 4 _ _ _ trace48
    (contextual_t_48_to_52 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace53 := evolve_compose term certificate 13 1 _ _ _ trace52
    (contextual_t_52_to_53 positiveWidth prior wire rest certificate data
      amplitude wf)
  have trace54 := evolve_compose term certificate 14 1 _ _ _ trace53
    (contextual_t_53_to_54 positiveWidth prior wire rest certificate data
      amplitude wf)
  exact evolve_compose term certificate 15 1 _ _ _ trace54
    (contextual_t_54_to_55 positiveWidth prior wire rest certificate data
      amplitude)

theorem contextual_t_ready_to_55 (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 53
        [⟨gateReadyState n prior.length data, amplitude⟩] =
      [⟨tCheckpoint55At n prior.length wire data,
        mul (if data.word wire then omega else one) amplitude⟩] := by
  let term := compiledTerm (prior ++ .t wire :: rest)
  have trace36 := contextual_t_ready_to_input_delivered positiveWidth prior
    wire rest certificate data amplitude wf
  have fired := contextual_t_fire positiveWidth prior wire rest certificate
    data amplitude wf admitted
  have trace37 := evolve_compose term certificate 36 1 _ _ _ trace36 fired
  exact evolve_compose term certificate 37 16 _ _ _ trace37
    (contextual_t_fired_to_55 positiveWidth prior wire rest certificate data
      (mul (if data.word wire then omega else one) amplitude) wf)

theorem contextual_t_compiler_admitted (prior : Circuit n) (wire : Fin n)
    (rest : Circuit n) (data : BoundaryData n)
    (wf : CompiledBoundaryWFAt prior data) :
    certificateLookup (compilerCertificate (prior ++ .t wire :: rest))
        (gateSecondPath n prior.length ++ [.arg]) =
      some [data.wires wire] := by
  have canonical := sourceNameKey_compiler_prefix prior wire
  have current := wf.storage.aligned wire
  rw [canonical] at current
  have keyEqual :
      wireKeysFrom 0 (initialWireKeys n) prior wire = data.wires wire :=
    Option.some.inj current
  simpa [keyEqual] using
    compilerCertificate_lookup_after_prefix_t prior wire rest

set_option maxHeartbeats 0 in
theorem contextual_t_physical (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data)
    (admitted : certificateLookup certificate
      (gateSecondPath n prior.length ++ [.arg]) =
        some [data.wires wire]) :
    evolve (compiledTerm (prior ++ .t wire :: rest)) certificate 55
        [⟨boundaryState n prior.length data, amplitude⟩] =
      boundaryColumn (prior.length + 1)
        (scatterBoundary prior.length (.t wire) ⟨data, amplitude⟩) := by
  rw [show 55 = 2 + 53 by omega, evolve_add]
  rw [compiled_gate_entry positiveWidth prior (.t wire) rest certificate data
    amplitude wf.storage.noStageHead]
  rw [contextual_t_ready_to_55 positiveWidth prior wire rest certificate data
    amplitude wf admitted]
  simp [boundaryColumn, scatterBoundary, advanceBoundary]

theorem contextual_t_physical_compiler (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt prior data) :
    evolve (compiledTerm (prior ++ .t wire :: rest))
        (compilerCertificate (prior ++ .t wire :: rest)) 55
        [⟨boundaryState n prior.length data, amplitude⟩] =
      boundaryColumn (prior.length + 1)
        (scatterBoundary prior.length (.t wire) ⟨data, amplitude⟩) := by
  exact contextual_t_physical positiveWidth prior wire rest _ data amplitude
    wf (contextual_t_compiler_admitted prior wire rest data wf)

theorem contextual_t_physical_column (positiveWidth : 0 < n)
    (prior : Circuit n) (wire : Fin n) (rest : Circuit n)
    (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches, CompiledBoundaryWFAt prior branch.data) :
    evolve (compiledTerm (prior ++ .t wire :: rest))
        (compilerCertificate (prior ++ .t wire :: rest)) 55
        (boundaryColumn prior.length branches) =
      boundaryColumn (prior.length + 1)
        (branches.flatMap (scatterBoundary prior.length (.t wire))) := by
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
      rw [contextual_t_physical_compiler positiveWidth prior wire rest
        branch.data branch.amplitude headWF]
      change boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.t wire) branch) ++
          evolve (compiledTerm (prior ++ .t wire :: rest))
            (compilerCertificate (prior ++ .t wire :: rest)) 55
            (boundaryColumn prior.length branches) =
        boundaryColumn (prior.length + 1)
          (scatterBoundary prior.length (.t wire) branch ++
            branches.flatMap (scatterBoundary prior.length (.t wire)))
      rw [ih tailWF]
      simp [boundaryColumn]


end QalcGate2ContextualUnary
