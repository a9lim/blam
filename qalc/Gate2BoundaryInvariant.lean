import Gate2PhysicalGateTheorems

/-!
# Compiler-boundary invariant for the physical Gate-2 machine

The first-boundary H/T/CNOT refinements are literal composed-machine traces.
Circuit-list induction needs one structural contract that survives those
traces.  `BoundaryWFAt` records only facts used by the physical rows: every
logical wire has one current frame with the logical bit, current wire keys are
distinct and originate strictly before the next gate, current keys are absent
from predecessor-dead storage, and the live frame set is bit-consistent.
-/

namespace QalcGate2BoundaryInvariant

open QalcFiniteGram
open QalcComposedMachine
open QalcGate2Compiler
open QalcGate2PhysicalCompiler
open QalcGate2PhysicalRefinement
open QalcGate2PhysicalBoundary

def liveWireFrame (data : BoundaryData n) (wire : Fin n) : Frame :=
  ⟨data.wires wire, data.word wire, .recalledAbsent .fresh⟩

def WireSourceBefore (width completed : Nat) (key : Key) : Prop :=
  (∃ wire : Fin width, key = initialWireKeys width wire) ∨
    ∃ gateIndex < completed, ∃ port : Port,
      key = portKey port (gateOccurrence width gateIndex)

def FrameSourceBefore (width completed : Nat) (key : Key) : Prop :=
  (∃ wire < width, ∃ port : Port,
      key = portKey port (preparationOccurrence wire)) ∨
    ∃ gateIndex < completed, ∃ port : Port,
      key = portKey port (gateOccurrence width gateIndex)

structure BoundaryWFAt (completed : Nat) (data : BoundaryData n) : Prop where
  wireSource : ∀ wire, WireSourceBefore n completed (data.wires wire)
  wiresInjective : Function.Injective data.wires
  liveFrame : ∀ wire,
    sameKeyFrames data.frames (data.wires wire) =
      [liveWireFrame data wire]
  frameSource : ∀ frame ∈ data.frames,
    FrameSourceBefore n completed frame.key
  liveNotDead : ∀ wire, data.wires wire ∉ deadKeys data.storage
  deadSource : ∀ key ∈ deadKeys data.storage,
    FrameSourceBefore n completed key
  conflictFree : hasBitConflict (frameBitPairs data.frames) = false

theorem initialWireKeys_injective :
    Function.Injective (initialWireKeys n) := by
  intro left right equal
  by_cases same : left = right
  · exact same
  · exact (initialWireKeys_ne left right same equal).elim

theorem initialBoundaryWF (word : Word n) :
    BoundaryWFAt 0 (initialBoundaryData word) := by
  constructor
  · intro wire
    exact .inl ⟨wire, rfl⟩
  · exact initialWireKeys_injective
  · intro wire
    simpa only [initialBoundaryData, liveWireFrame, initialWireFrame] using
      sameKeyFrames_initialWire n word wire
  · intro frame membership
    rcases prepFrames_source n word frame membership with
      ⟨index, before, source⟩
    rcases source with source | source
    · exact .inl ⟨index, before, .first, source.1⟩
    · exact .inl ⟨index, before, .second, source.1⟩
  · intro wire
    simp [initialBoundaryData]
  · intro key membership
    simp [initialBoundaryData] at membership
  · simp [initialBoundaryData, hasBitConflict_prepFrames]

theorem lp_empty_injective {left right : Path}
    (equal : lp left [] = lp right []) : left = right := by
  have decoded := congrArg asLP? equal
  simpa using decoded

theorem preparationOccurrence_ne_gateOccurrence (wire : Fin n)
    (gateIndex : Nat) :
    preparationOccurrence wire.val ≠ gateOccurrence n gateIndex := by
  intro equal
  have lengthEqual := congrArg List.length equal
  simp [preparationOccurrence, preparationRoot, gateOccurrence, gateRoot,
    shellBodyPath] at lengthEqual
  omega

theorem gateOccurrence_injective :
    Function.Injective (gateOccurrence n) := by
  intro left right equal
  have lengthEqual := congrArg List.length equal
  simp [gateOccurrence, gateRoot, preparationRoot, shellBodyPath]
    at lengthEqual
  omega

theorem initialWireKey_ne_gateKey (wire : Fin n) (gateIndex : Nat)
    (port : Port) :
    initialWireKeys n wire ≠
      portKey port (gateOccurrence n gateIndex) := by
  intro equal
  have instanceEqual := congrArg Key.inst equal
  have pathEqual :
      preparationOccurrence wire.val = gateOccurrence n gateIndex := by
    apply lp_empty_injective
    simpa [initialWireKeys, portKey, prepInvoked] using instanceEqual
  exact preparationOccurrence_ne_gateOccurrence wire gateIndex pathEqual

theorem gateKey_ne_laterGateKey (earlier later : Nat)
    (before : earlier < later) (oldPort newPort : Port) :
    portKey oldPort (gateOccurrence n earlier) ≠
      portKey newPort (gateOccurrence n later) := by
  intro equal
  have instanceEqual := congrArg Key.inst equal
  have occurrenceEqual :
      gateOccurrence n earlier = gateOccurrence n later := by
    apply lp_empty_injective
    simpa [portKey] using instanceEqual
  have indexEqual := gateOccurrence_injective occurrenceEqual
  omega

theorem sourceBefore_ne_gateKey
    (source : WireSourceBefore n completed key)
    (future : completed ≤ gateIndex) (port : Port) :
    key ≠ portKey port (gateOccurrence n gateIndex) := by
  rcases source with ⟨wire, rfl⟩ | ⟨earlier, before, oldPort, rfl⟩
  · exact initialWireKey_ne_gateKey wire gateIndex port
  · exact gateKey_ne_laterGateKey earlier gateIndex
      (Nat.lt_of_lt_of_le before future) oldPort port

theorem frameSourceBefore_ne_gateKey
    (source : FrameSourceBefore n completed key)
    (future : completed ≤ gateIndex) (port : Port) :
    key ≠ portKey port (gateOccurrence n gateIndex) := by
  rcases source with
      ⟨wire, beforeWidth, oldPort, rfl⟩ |
      ⟨earlier, before, oldPort, rfl⟩
  · intro equal
    have instanceEqual := congrArg Key.inst equal
    have pathEqual :
        preparationOccurrence wire = gateOccurrence n gateIndex := by
      apply lp_empty_injective
      simpa [portKey] using instanceEqual
    have lengthEqual := congrArg List.length pathEqual
    simp [preparationOccurrence, preparationRoot, gateOccurrence, gateRoot,
      shellBodyPath] at lengthEqual
    omega
  · exact gateKey_ne_laterGateKey earlier gateIndex
      (Nat.lt_of_lt_of_le before future) oldPort port

theorem currentWire_ne_gateKey {n completed gateIndex : Nat}
    {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (wire : Fin n)
    (future : completed ≤ gateIndex) (port : Port) :
    data.wires wire ≠ portKey port (gateOccurrence n gateIndex) :=
  sourceBefore_ne_gateKey (wf.wireSource wire) future port

theorem wireSourceBefore_mono
    (source : WireSourceBefore n completed key)
    (monotone : completed ≤ later) :
    WireSourceBefore n later key := by
  rcases source with ⟨wire, equal⟩ | ⟨gateIndex, before, port, equal⟩
  · exact .inl ⟨wire, equal⟩
  · exact .inr ⟨gateIndex, Nat.lt_of_lt_of_le before monotone,
      port, equal⟩

theorem frameSourceBefore_mono
    (source : FrameSourceBefore n completed key)
    (monotone : completed ≤ later) :
    FrameSourceBefore n later key := by
  rcases source with
      ⟨wire, beforeWidth, port, equal⟩ |
      ⟨gateIndex, before, port, equal⟩
  · exact .inl ⟨wire, beforeWidth, port, equal⟩
  · exact .inr ⟨gateIndex, Nat.lt_of_lt_of_le before monotone,
      port, equal⟩

theorem advance_wireSource {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data)
    (gate : Gate n) (outputBit : Bool) (wire : Fin n) :
    WireSourceBefore n (completed + 1)
      ((advanceBoundary completed gate outputBit data).wires wire) := by
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · subst wire
        exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
          by simp [advanceBoundary, portKey, gateInvoked]⟩
      · simpa [advanceBoundary, same] using
          wireSourceBefore_mono (wf.wireSource wire)
            (Nat.le_succ completed)
  | t selected =>
      by_cases same : wire = selected
      · subst wire
        exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
          by simp [advanceBoundary, portKey, gateInvoked]⟩
      · simpa [advanceBoundary, same] using
          wireSourceBefore_mono (wf.wireSource wire)
            (Nat.le_succ completed)
  | cx control target distinct =>
      by_cases atControl : wire = control
      · subst wire
        exact .inr ⟨completed, Nat.lt_succ_self completed, .first,
          by simp [advanceBoundary, portKey, gateInvoked]⟩
      · by_cases atTarget : wire = target
        · subst wire
          exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
            by simp [advanceBoundary, atControl, portKey, gateInvoked]⟩
        · simpa [advanceBoundary, atControl, atTarget] using
            wireSourceBefore_mono (wf.wireSource wire)
              (Nat.le_succ completed)

theorem removeFrameKey_mem_source {frame : Frame} {frames : List Frame}
    {removed : Key} (membership : frame ∈ removeFrameKey frames removed) :
    frame ∈ frames := by
  exact (List.mem_filter.mp membership).1

theorem advance_frameSource {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data)
    (gate : Gate n) (outputBit : Bool) (frame : Frame)
    (membership : frame ∈
      (advanceBoundary completed gate outputBit data).frames) :
    FrameSourceBefore n (completed + 1) frame.key := by
  cases gate with
  | h wire =>
      simp only [advanceBoundary] at membership
      rcases mem_insertFrame_source _ _ _ membership with equal | inside
      · subst frame
        exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
          by simp [portKey, gateInvoked]⟩
      · rcases mem_insertFrame_source _ _ _ inside with equal | retained
        · subst frame
          exact .inr ⟨completed, Nat.lt_succ_self completed, .first,
            by simp [portKey, gateInvoked]⟩
        · exact frameSourceBefore_mono
            (wf.frameSource frame (removeFrameKey_mem_source retained))
            (Nat.le_succ completed)
  | t wire =>
      simp only [advanceBoundary] at membership
      rcases mem_insertFrame_source _ _ _ membership with equal | inside
      · subst frame
        exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
          by simp [portKey, gateInvoked]⟩
      · rcases mem_insertFrame_source _ _ _ inside with equal | retained
        · subst frame
          exact .inr ⟨completed, Nat.lt_succ_self completed, .first,
            by simp [portKey, gateInvoked]⟩
        · exact frameSourceBefore_mono
            (wf.frameSource frame (removeFrameKey_mem_source retained))
            (Nat.le_succ completed)
  | cx control target distinct =>
      simp only [advanceBoundary] at membership
      rcases mem_insertFrame_source _ _ _ membership with equal | inside
      · subst frame
        exact .inr ⟨completed, Nat.lt_succ_self completed, .second,
          by simp [portKey, gateInvoked]⟩
      · rcases mem_insertFrame_source _ _ _ inside with equal | retained
        · subst frame
          exact .inr ⟨completed, Nat.lt_succ_self completed, .first,
            by simp [portKey, gateInvoked]⟩
        · have afterControl := removeFrameKey_mem_source retained
          have original := removeFrameKey_mem_source afterControl
          exact frameSourceBefore_mono (wf.frameSource frame original)
            (Nat.le_succ completed)

theorem frame_contains_eq_true_of_mem {frame : Frame} {frames : List Frame}
    (membership : frame ∈ frames) : frames.contains frame = true := by
  induction frames with
  | nil => contradiction
  | cons head tail ih =>
      simp only [List.mem_cons] at membership
      rcases membership with equal | membership
      · subst head
        simp [frame_beq_refl]
      · simp [ih membership]

@[simp] theorem sameKeyFrames_removeFrameKey_same
    (frames : List Frame) (key : Key) :
    sameKeyFrames (removeFrameKey frames key) key = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame retained selected
  have retainedParts := List.mem_filter.mp retained
  have poppedMember : frame ∈ sameKeyFrames frames key :=
    List.mem_filter.mpr ⟨retainedParts.1, selected⟩
  have contained := frame_contains_eq_true_of_mem poppedMember
  simp [contained] at retainedParts

theorem sameKeyFrames_removeFrameKey_fresh
    (frames : List Frame) (removed target : Key)
    (fresh : sameKeyFrames frames target = []) :
    sameKeyFrames (removeFrameKey frames removed) target = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame retained selected
  have original := (List.mem_filter.mp retained).1
  have selectedMember : frame ∈ sameKeyFrames frames target :=
    List.mem_filter.mpr ⟨original, selected⟩
  rw [fresh] at selectedMember
  contradiction

theorem gatePortKeys_ne (gateIndex : Nat) :
    portKey .first (gateOccurrence n gateIndex) ≠
      portKey .second (gateOccurrence n gateIndex) := by
  intro equal
  have portEqual := congrArg Key.port equal
  simp [portKey] at portEqual

theorem sameKeyFrames_outputFrames_first (width gateIndex : Nat)
    (first second : Bool) (retained : List Frame)
    (fresh : sameKeyFrames retained
      (portKey .first (gateOccurrence width gateIndex)) = []) :
    sameKeyFrames (outputFrames width gateIndex first second retained)
        (portKey .first (gateOccurrence width gateIndex)) =
      [⟨portKey .first (gateOccurrence width gateIndex), first,
        .recalledAbsent .fresh⟩] := by
  let firstFrame : Frame :=
    ⟨portKey .first (gateOccurrence width gateIndex), first,
      .recalledAbsent .fresh⟩
  let secondFrame : Frame :=
    ⟨portKey .second (gateOccurrence width gateIndex), second,
      .recalledAbsent .fresh⟩
  change sameKeyFrames (insertFrame secondFrame
      (insertFrame firstFrame retained)) firstFrame.key = [firstFrame]
  rw [sameKeyFrames_insertFrame_other]
  · exact sameKeyFrames_insertFrame_fresh firstFrame retained fresh
  · exact Ne.symm (gatePortKeys_ne gateIndex)

theorem sameKeyFrames_outputFrames_second (width gateIndex : Nat)
    (first second : Bool) (retained : List Frame)
    (fresh : sameKeyFrames retained
      (portKey .second (gateOccurrence width gateIndex)) = []) :
    sameKeyFrames (outputFrames width gateIndex first second retained)
        (portKey .second (gateOccurrence width gateIndex)) =
      [⟨portKey .second (gateOccurrence width gateIndex), second,
        .recalledAbsent .fresh⟩] := by
  let firstFrame : Frame :=
    ⟨portKey .first (gateOccurrence width gateIndex), first,
      .recalledAbsent .fresh⟩
  let secondFrame : Frame :=
    ⟨portKey .second (gateOccurrence width gateIndex), second,
      .recalledAbsent .fresh⟩
  have freshAfterFirst :
      sameKeyFrames (insertFrame firstFrame retained) secondFrame.key = [] := by
    rw [sameKeyFrames_insertFrame_other]
    · exact fresh
    · exact gatePortKeys_ne gateIndex
  change sameKeyFrames (insertFrame secondFrame
      (insertFrame firstFrame retained)) secondFrame.key = [secondFrame]
  exact sameKeyFrames_insertFrame_fresh secondFrame _ freshAfterFirst

theorem sameKeyFrames_outputFrames_other (width gateIndex : Nat)
    (first second : Bool) (retained : List Frame) (key : Key)
    (notFirst : portKey .first (gateOccurrence width gateIndex) ≠ key)
    (notSecond : portKey .second (gateOccurrence width gateIndex) ≠ key) :
    sameKeyFrames (outputFrames width gateIndex first second retained) key =
      sameKeyFrames retained key := by
  unfold outputFrames
  rw [sameKeyFrames_insertFrame_other]
  · rw [sameKeyFrames_insertFrame_other]
    simpa [gateInvoked, portKey] using notFirst
  · simpa [gateInvoked, portKey] using notSecond

theorem currentFrames_fresh_for_gate {n completed : Nat}
    {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (port : Port) :
    sameKeyFrames data.frames
      (portKey port (gateOccurrence n completed)) = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership selected
  have keyEqual := key_eq_of_beq frame.key
    (portKey port (gateOccurrence n completed)) selected
  exact (frameSourceBefore_ne_gateKey
    (wf.frameSource frame membership) (Nat.le_refl completed) port keyEqual).elim

theorem liveWireFrame_ne {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data)
    (left right : Fin n) (distinct : left ≠ right) :
    liveWireFrame data left ≠ liveWireFrame data right := by
  intro equal
  have keyEqual := congrArg Frame.key equal
  exact distinct (wf.wiresInjective keyEqual)

theorem sameKeyFrames_remove_other_live {n completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (removed target : Fin n) (distinct : removed ≠ target) :
    sameKeyFrames
        (removeFrameKey data.frames (data.wires removed))
        (data.wires target) =
      [liveWireFrame data target] := by
  exact sameKeyFrames_removeFrameKey_other _ _ _ _ _
    (wf.liveFrame removed) (wf.liveFrame target)
    (liveWireFrame_ne wf removed target distinct)

theorem sameKeyFrames_remove_two_other_live {n completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (first second target : Fin n)
    (firstNotSecond : first ≠ second)
    (targetNotFirst : first ≠ target)
    (targetNotSecond : second ≠ target) :
    sameKeyFrames
        (removeFrameKey
          (removeFrameKey data.frames (data.wires first))
          (data.wires second))
        (data.wires target) =
      [liveWireFrame data target] := by
  have afterFirst := sameKeyFrames_remove_other_live wf
    first target targetNotFirst
  exact sameKeyFrames_removeFrameKey_other _ _ _ _ _
    (sameKeyFrames_remove_other_live wf first second
      firstNotSecond)
    afterFirst
    (liveWireFrame_ne wf second target targetNotSecond)

theorem advance_liveFrame {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (gate : Gate n)
    (outputBit : Bool) (wire : Fin n) :
    sameKeyFrames (advanceBoundary completed gate outputBit data).frames
        ((advanceBoundary completed gate outputBit data).wires wire) =
      [liveWireFrame (advanceBoundary completed gate outputBit data) wire] := by
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · subst wire
        have fresh : sameKeyFrames
            (removeFrameKey data.frames (data.wires selected))
            (portKey .second (gateOccurrence n completed)) = [] :=
          sameKeyFrames_removeFrameKey_fresh _ _ _
            (currentFrames_fresh_for_gate wf .second)
        rw [show (advanceBoundary completed (.h selected) outputBit data).frames =
            outputFrames n completed false outputBit
              (removeFrameKey data.frames (data.wires selected)) by rfl]
        rw [show (advanceBoundary completed (.h selected) outputBit data).wires selected =
            portKey .second (gateOccurrence n completed) by
          simp [advanceBoundary, portKey, gateInvoked]]
        rw [sameKeyFrames_outputFrames_second n completed false outputBit _ fresh]
        simp [liveWireFrame, advanceBoundary, update, portKey, gateInvoked]
      · have retained := sameKeyFrames_remove_other_live wf
          selected wire (fun equal => same equal.symm)
        have notFirst :
            portKey .first (gateOccurrence n completed) ≠ data.wires wire :=
          Ne.symm (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .first)
        have notSecond :
            portKey .second (gateOccurrence n completed) ≠ data.wires wire :=
          Ne.symm (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .second)
        rw [show (advanceBoundary completed (.h selected) outputBit data).frames =
            outputFrames n completed false outputBit
              (removeFrameKey data.frames (data.wires selected)) by rfl]
        rw [show (advanceBoundary completed (.h selected) outputBit data).wires wire =
            data.wires wire by simp [advanceBoundary, same]]
        rw [sameKeyFrames_outputFrames_other n completed false outputBit _ _
          notFirst notSecond, retained]
        simp [liveWireFrame, advanceBoundary, update, same]
  | t selected =>
      by_cases same : wire = selected
      · subst wire
        have fresh : sameKeyFrames
            (removeFrameKey data.frames (data.wires selected))
            (portKey .second (gateOccurrence n completed)) = [] :=
          sameKeyFrames_removeFrameKey_fresh _ _ _
            (currentFrames_fresh_for_gate wf .second)
        rw [show (advanceBoundary completed (.t selected) outputBit data).frames =
            outputFrames n completed false (data.word selected)
              (removeFrameKey data.frames (data.wires selected)) by rfl]
        rw [show (advanceBoundary completed (.t selected) outputBit data).wires selected =
            portKey .second (gateOccurrence n completed) by
          simp [advanceBoundary, portKey, gateInvoked]]
        rw [sameKeyFrames_outputFrames_second n completed false
          (data.word selected) _ fresh]
        simp [liveWireFrame, advanceBoundary, portKey, gateInvoked]
      · have retained := sameKeyFrames_remove_other_live wf
          selected wire (fun equal => same equal.symm)
        have notFirst :
            portKey .first (gateOccurrence n completed) ≠ data.wires wire :=
          Ne.symm (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .first)
        have notSecond :
            portKey .second (gateOccurrence n completed) ≠ data.wires wire :=
          Ne.symm (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .second)
        rw [show (advanceBoundary completed (.t selected) outputBit data).frames =
            outputFrames n completed false (data.word selected)
              (removeFrameKey data.frames (data.wires selected)) by rfl]
        rw [show (advanceBoundary completed (.t selected) outputBit data).wires wire =
            data.wires wire by simp [advanceBoundary, same]]
        rw [sameKeyFrames_outputFrames_other n completed false
          (data.word selected) _ _ notFirst notSecond, retained]
        simp [liveWireFrame, advanceBoundary, same]
  | cx control target distinct =>
      by_cases atControl : wire = control
      · subst wire
        have freshBase := currentFrames_fresh_for_gate wf .first
        have fresh : sameKeyFrames
            (removeFrameKey
              (removeFrameKey data.frames (data.wires control))
              (data.wires target))
            (portKey .first (gateOccurrence n completed)) = [] :=
          sameKeyFrames_removeFrameKey_fresh _ _ _
            (sameKeyFrames_removeFrameKey_fresh _ _ _ freshBase)
        rw [show (advanceBoundary completed (.cx control target distinct)
              outputBit data).frames =
            outputFrames n completed (data.word control)
              (xor (data.word target) (data.word control))
              (removeFrameKey
                (removeFrameKey data.frames (data.wires control))
                (data.wires target)) by rfl]
        rw [show (advanceBoundary completed (.cx control target distinct)
              outputBit data).wires control =
            portKey .first (gateOccurrence n completed) by
          simp [advanceBoundary, portKey, gateInvoked]]
        rw [sameKeyFrames_outputFrames_first n completed _ _ _ fresh]
        simp [liveWireFrame, advanceBoundary, update, distinct,
          portKey, gateInvoked]
      · by_cases atTarget : wire = target
        · subst wire
          have freshBase := currentFrames_fresh_for_gate wf .second
          have fresh : sameKeyFrames
              (removeFrameKey
                (removeFrameKey data.frames (data.wires control))
                (data.wires target))
              (portKey .second (gateOccurrence n completed)) = [] :=
            sameKeyFrames_removeFrameKey_fresh _ _ _
              (sameKeyFrames_removeFrameKey_fresh _ _ _ freshBase)
          rw [show (advanceBoundary completed (.cx control target distinct)
                outputBit data).frames =
              outputFrames n completed (data.word control)
                (xor (data.word target) (data.word control))
                (removeFrameKey
                  (removeFrameKey data.frames (data.wires control))
                  (data.wires target)) by rfl]
          rw [show (advanceBoundary completed (.cx control target distinct)
                outputBit data).wires target =
              portKey .second (gateOccurrence n completed) by
            simp [advanceBoundary, atControl, portKey, gateInvoked]]
          rw [sameKeyFrames_outputFrames_second n completed _ _ _ fresh]
          simp [liveWireFrame, advanceBoundary, update, atControl,
            portKey, gateInvoked]
        · have retained := sameKeyFrames_remove_two_other_live wf
            control target wire
            distinct
            (fun equal => atControl equal.symm)
            (fun equal => atTarget equal.symm)
          have notFirst :
              portKey .first (gateOccurrence n completed) ≠ data.wires wire :=
            Ne.symm (currentWire_ne_gateKey wf wire
              (Nat.le_refl completed) .first)
          have notSecond :
              portKey .second (gateOccurrence n completed) ≠ data.wires wire :=
            Ne.symm (currentWire_ne_gateKey wf wire
              (Nat.le_refl completed) .second)
          rw [show (advanceBoundary completed (.cx control target distinct)
                outputBit data).frames =
              outputFrames n completed (data.word control)
                (xor (data.word target) (data.word control))
                (removeFrameKey
                  (removeFrameKey data.frames (data.wires control))
                  (data.wires target)) by rfl]
          rw [show (advanceBoundary completed (.cx control target distinct)
                outputBit data).wires wire = data.wires wire by
            simp [advanceBoundary, atControl, atTarget]]
          rw [sameKeyFrames_outputFrames_other n completed _ _ _ _
            notFirst notSecond, retained]
          simp [liveWireFrame, advanceBoundary, update, atControl, atTarget]

def FramesConsistent (frames : List Frame) : Prop :=
  ∀ left ∈ frames, ∀ right ∈ frames,
    left.key = right.key → left.bit = right.bit

theorem framesConsistent_of_conflictFree {frames : List Frame}
    (conflictFree : hasBitConflict (frameBitPairs frames) = false) :
    FramesConsistent frames := by
  intro left leftMember right rightMember keyEqual
  by_cases bitEqual : left.bit = right.bit
  · exact bitEqual
  · have leftPair : (left.key, left.bit) ∈ frameBitPairs frames :=
      List.mem_map.mpr ⟨left, leftMember, rfl⟩
    have rightPair : (right.key, right.bit) ∈ frameBitPairs frames :=
      List.mem_map.mpr ⟨right, rightMember, rfl⟩
    have keySelected : (left.key == right.key) = true := by
      rw [keyEqual]
      exact key_beq_refl right.key
    have bitSelected : (left.bit != right.bit) = true := by
      cases leftValue : left.bit <;> cases rightValue : right.bit
      · exact (bitEqual (by simp [leftValue, rightValue])).elim
      · rfl
      · rfl
      · exact (bitEqual (by simp [leftValue, rightValue])).elim
    have inner :
        (frameBitPairs frames).any (fun candidate =>
          left.key == candidate.1 && left.bit != candidate.2) = true := by
      apply List.any_eq_true.mpr
      exact ⟨(right.key, right.bit), rightPair, by
        simp [keySelected, bitSelected]⟩
    have outer : hasBitConflict (frameBitPairs frames) = true := by
      apply List.any_eq_true.mpr
      exact ⟨(left.key, left.bit), leftPair, inner⟩
    rw [conflictFree] at outer
    contradiction

theorem conflictFree_of_framesConsistent {frames : List Frame}
    (consistent : FramesConsistent frames) :
    hasBitConflict (frameBitPairs frames) = false := by
  cases selected : hasBitConflict (frameBitPairs frames) with
  | false => rfl
  | true =>
      rcases List.any_eq_true.mp selected with ⟨leftPair, leftMember, inner⟩
      rcases List.any_eq_true.mp inner with ⟨rightPair, rightMember, conflict⟩
      rcases List.mem_map.mp leftMember with ⟨left, leftIn, leftEqual⟩
      rcases List.mem_map.mp rightMember with ⟨right, rightIn, rightEqual⟩
      subst leftPair
      subst rightPair
      rw [Bool.and_eq_true] at conflict
      have keyEqual := key_eq_of_beq left.key right.key conflict.1
      have bitEqual := consistent left leftIn right rightIn keyEqual
      simp [bitEqual] at conflict

theorem framesConsistent_removeFrameKey {frames : List Frame}
    (consistent : FramesConsistent frames) (removed : Key) :
    FramesConsistent (removeFrameKey frames removed) := by
  intro left leftMember right rightMember
  exact consistent left (removeFrameKey_mem_source leftMember)
    right (removeFrameKey_mem_source rightMember)

theorem framesConsistent_insertFrame_fresh {frames : List Frame}
    (consistent : FramesConsistent frames) (inserted : Frame)
    (fresh : sameKeyFrames frames inserted.key = []) :
    FramesConsistent (insertFrame inserted frames) := by
  intro left leftMember right rightMember keyEqual
  rcases mem_insertFrame_source inserted left frames leftMember with
      leftEqual | leftOld
  · subst left
    rcases mem_insertFrame_source inserted right frames rightMember with
        rightEqual | rightOld
    · subst right
      rfl
    · have selected :
          right ∈ sameKeyFrames frames inserted.key := by
        apply List.mem_filter.mpr
        refine ⟨rightOld, ?_⟩
        rw [keyEqual]
        exact key_beq_refl right.key
      rw [fresh] at selected
      contradiction
  · rcases mem_insertFrame_source inserted right frames rightMember with
        rightEqual | rightOld
    · subst right
      have selected : left ∈ sameKeyFrames frames inserted.key := by
        apply List.mem_filter.mpr
        refine ⟨leftOld, ?_⟩
        rw [keyEqual]
        exact key_beq_refl inserted.key
      rw [fresh] at selected
      contradiction
    · exact consistent left leftOld right rightOld keyEqual

theorem framesConsistent_outputFrames (width gateIndex : Nat)
    (first second : Bool) (retained : List Frame)
    (consistent : FramesConsistent retained)
    (firstFresh : sameKeyFrames retained
      (portKey .first (gateOccurrence width gateIndex)) = [])
    (secondFresh : sameKeyFrames retained
      (portKey .second (gateOccurrence width gateIndex)) = []) :
    FramesConsistent (outputFrames width gateIndex first second retained) := by
  let firstFrame : Frame :=
    ⟨portKey .first (gateOccurrence width gateIndex), first,
      .recalledAbsent .fresh⟩
  let secondFrame : Frame :=
    ⟨portKey .second (gateOccurrence width gateIndex), second,
      .recalledAbsent .fresh⟩
  have afterFirst := framesConsistent_insertFrame_fresh
    consistent firstFrame firstFresh
  have secondFreshAfter :
      sameKeyFrames (insertFrame firstFrame retained) secondFrame.key = [] := by
    rw [sameKeyFrames_insertFrame_other]
    · exact secondFresh
    · exact gatePortKeys_ne gateIndex
  exact framesConsistent_insertFrame_fresh afterFirst secondFrame
    secondFreshAfter

theorem advance_conflictFree {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (gate : Gate n)
    (outputBit : Bool) :
    hasBitConflict
        (frameBitPairs
          (advanceBoundary completed gate outputBit data).frames) = false := by
  have baseConsistent := framesConsistent_of_conflictFree wf.conflictFree
  cases gate with
  | h wire =>
      apply conflictFree_of_framesConsistent
      apply framesConsistent_outputFrames
      · exact framesConsistent_removeFrameKey baseConsistent _
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (currentFrames_fresh_for_gate wf .first)
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (currentFrames_fresh_for_gate wf .second)
  | t wire =>
      apply conflictFree_of_framesConsistent
      apply framesConsistent_outputFrames
      · exact framesConsistent_removeFrameKey baseConsistent _
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (currentFrames_fresh_for_gate wf .first)
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (currentFrames_fresh_for_gate wf .second)
  | cx control target distinct =>
      apply conflictFree_of_framesConsistent
      apply framesConsistent_outputFrames
      · exact framesConsistent_removeFrameKey
          (framesConsistent_removeFrameKey baseConsistent _) _
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (sameKeyFrames_removeFrameKey_fresh _ _ _
            (currentFrames_fresh_for_gate wf .first))
      · exact sameKeyFrames_removeFrameKey_fresh _ _ _
          (sameKeyFrames_removeFrameKey_fresh _ _ _
            (currentFrames_fresh_for_gate wf .second))

def deadContribution : Store → List Key
  | .decoded key => [key]
  | .bundle keys => keys
  | .burial cargo => alphaKeysLive cargo
  | _ => []

theorem mem_foldl_deadKeys_iff (probe : Key) (storage : List Store)
    (acc : List Key) :
    probe ∈ storage.foldl (fun out item =>
      match item with
      | .decoded key => insertKey key out
      | .bundle keys => unionKeys out keys
      | .burial cargo => unionKeys out (alphaKeysLive cargo)
      | _ => out) acc ↔
    probe ∈ acc ∨ ∃ item ∈ storage, probe ∈ deadContribution item := by
  induction storage generalizing acc with
  | nil => simp
  | cons item rest ih =>
      rw [List.foldl_cons, ih]
      cases item <;>
        simp [deadContribution, mem_insertKey_iff, mem_unionKeys_iff,
          or_assoc, or_left_comm]

@[simp] theorem mem_deadKeys_iff (probe : Key) (storage : List Store) :
    probe ∈ deadKeys storage ↔
      ∃ item ∈ storage, probe ∈ deadContribution item := by
  unfold deadKeys
  constructor
  · intro membership
    rcases (mem_foldl_deadKeys_iff probe storage []).mp membership with
      impossible | witness
    · contradiction
    · exact witness
  · intro witness
    exact (mem_foldl_deadKeys_iff probe storage []).mpr (.inr witness)

theorem deadKey_fresh_for_gate {n completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (port : Port) :
    portKey port (gateOccurrence n completed) ∉ deadKeys data.storage := by
  intro membership
  exact (frameSourceBefore_ne_gateKey (wf.deadSource _ membership)
    (Nat.le_refl completed) port rfl).elim

theorem advance_deadSource {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (gate : Gate n)
    (outputBit : Bool) (key : Key)
    (membership : key ∈
      deadKeys (advanceBoundary completed gate outputBit data).storage) :
    FrameSourceBefore n (completed + 1) key := by
  rw [mem_deadKeys_iff] at membership
  rcases membership with ⟨item, itemMember, contribution⟩
  cases gate with
  | h wire =>
      simp only [advanceBoundary, List.mem_cons] at itemMember
      rcases itemMember with rfl | rfl | rfl | oldMember
      · simp [deadContribution] at contribution
        subst key
        exact frameSourceBefore_mono
          (by
            rcases wf.wireSource wire with
              ⟨prepared, equal⟩ | ⟨index, before, port, equal⟩
            · exact .inl ⟨prepared.val, prepared.isLt, .second, equal⟩
            · exact .inr ⟨index, before, port, equal⟩)
          (Nat.le_succ completed)
      · simp [deadContribution] at contribution
      · simp [deadContribution, unaryHistory] at contribution
      · exact frameSourceBefore_mono
          (wf.deadSource key ((mem_deadKeys_iff key data.storage).mpr
            ⟨item, oldMember, contribution⟩))
          (Nat.le_succ completed)
  | t wire =>
      simp only [advanceBoundary, List.mem_cons] at itemMember
      rcases itemMember with rfl | rfl | rfl | oldMember
      · simp [deadContribution] at contribution
        subst key
        exact frameSourceBefore_mono
          (by
            rcases wf.wireSource wire with
              ⟨prepared, equal⟩ | ⟨index, before, port, equal⟩
            · exact .inl ⟨prepared.val, prepared.isLt, .second, equal⟩
            · exact .inr ⟨index, before, port, equal⟩)
          (Nat.le_succ completed)
      · simp [deadContribution] at contribution
      · simp [deadContribution, unaryHistory] at contribution
      · exact frameSourceBefore_mono
          (wf.deadSource key ((mem_deadKeys_iff key data.storage).mpr
            ⟨item, oldMember, contribution⟩))
          (Nat.le_succ completed)
  | cx control target distinct =>
      simp only [advanceBoundary, List.mem_cons] at itemMember
      rcases itemMember with rfl | rfl | rfl | oldMember
      · simp [deadContribution] at contribution
      · simp [deadContribution, cxHistory] at contribution
      · simp [deadContribution] at contribution
      · exact frameSourceBefore_mono
          (wf.deadSource key ((mem_deadKeys_iff key data.storage).mpr
            ⟨item, oldMember, contribution⟩))
          (Nat.le_succ completed)

@[simp] theorem mem_deadKeys_advance_h_iff {n completed : Nat}
    (data : BoundaryData n) (wire : Fin n) (outputBit : Bool) (key : Key) :
    key ∈ deadKeys
        (advanceBoundary completed (.h wire) outputBit data).storage ↔
      key = data.wires wire ∨ key ∈ deadKeys data.storage := by
  rw [mem_deadKeys_iff, mem_deadKeys_iff]
  simp [advanceBoundary, deadContribution, unaryHistory]

@[simp] theorem mem_deadKeys_advance_t_iff {n completed : Nat}
    (data : BoundaryData n) (wire : Fin n) (outputBit : Bool) (key : Key) :
    key ∈ deadKeys
        (advanceBoundary completed (.t wire) outputBit data).storage ↔
      key = data.wires wire ∨ key ∈ deadKeys data.storage := by
  rw [mem_deadKeys_iff, mem_deadKeys_iff]
  simp [advanceBoundary, deadContribution, unaryHistory]

@[simp] theorem mem_deadKeys_advance_cx_iff {n completed : Nat}
    (data : BoundaryData n) (control target : Fin n)
    (distinct : control ≠ target) (outputBit : Bool) (key : Key) :
    key ∈ deadKeys
        (advanceBoundary completed (.cx control target distinct)
          outputBit data).storage ↔
      key ∈ deadKeys data.storage := by
  rw [mem_deadKeys_iff, mem_deadKeys_iff]
  simp [advanceBoundary, deadContribution, cxHistory]

theorem advance_liveNotDead {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (gate : Gate n)
    (outputBit : Bool) (wire : Fin n) :
    (advanceBoundary completed gate outputBit data).wires wire ∉
      deadKeys (advanceBoundary completed gate outputBit data).storage := by
  cases gate with
  | h selected =>
      by_cases same : wire = selected
      · subst wire
        intro membership
        rw [mem_deadKeys_advance_h_iff] at membership
        rcases membership with collision | oldDead
        · have oldNeNew := currentWire_ne_gateKey wf selected
            (Nat.le_refl completed) .second
          apply oldNeNew
          simpa [advanceBoundary, portKey, gateInvoked] using collision.symm
        · apply deadKey_fresh_for_gate wf .second
          simpa [advanceBoundary, portKey, gateInvoked] using oldDead
      · intro membership
        rw [mem_deadKeys_advance_h_iff] at membership
        rcases membership with collision | oldDead
        · have keyEqual : data.wires wire = data.wires selected := by
            simpa [advanceBoundary, same] using collision
          exact same (wf.wiresInjective keyEqual)
        · exact wf.liveNotDead wire
            (by simpa [advanceBoundary, same] using oldDead)
  | t selected =>
      by_cases same : wire = selected
      · subst wire
        intro membership
        rw [mem_deadKeys_advance_t_iff] at membership
        rcases membership with collision | oldDead
        · have oldNeNew := currentWire_ne_gateKey wf selected
            (Nat.le_refl completed) .second
          apply oldNeNew
          simpa [advanceBoundary, portKey, gateInvoked] using collision.symm
        · apply deadKey_fresh_for_gate wf .second
          simpa [advanceBoundary, portKey, gateInvoked] using oldDead
      · intro membership
        rw [mem_deadKeys_advance_t_iff] at membership
        rcases membership with collision | oldDead
        · have keyEqual : data.wires wire = data.wires selected := by
            simpa [advanceBoundary, same] using collision
          exact same (wf.wiresInjective keyEqual)
        · exact wf.liveNotDead wire
            (by simpa [advanceBoundary, same] using oldDead)
  | cx control target distinct =>
      intro membership
      rw [mem_deadKeys_advance_cx_iff] at membership
      by_cases atControl : wire = control
      · subst wire
        apply deadKey_fresh_for_gate wf .first
        simpa [advanceBoundary, portKey, gateInvoked] using membership
      · by_cases atTarget : wire = target
        · subst wire
          apply deadKey_fresh_for_gate wf .second
          simpa [advanceBoundary, atControl, portKey, gateInvoked] using
            membership
        · exact wf.liveNotDead wire
            (by simpa [advanceBoundary, atControl, atTarget] using membership)
theorem replaceOne_injective (wires : Fin n → Key)
    (injective : Function.Injective wires) (selected : Fin n) (fresh : Key)
    (freshFromOld : ∀ wire, wire ≠ selected → fresh ≠ wires wire) :
    Function.Injective (fun wire =>
      if wire = selected then fresh else wires wire) := by
  intro left right equal
  by_cases leftSelected : left = selected
  · by_cases rightSelected : right = selected
    · exact leftSelected.trans rightSelected.symm
    · have collision : fresh = wires right := by
        simpa [leftSelected, rightSelected] using equal
      exact (freshFromOld right rightSelected collision).elim
  · by_cases rightSelected : right = selected
    · have collision : wires left = fresh := by
        simpa [leftSelected, rightSelected] using equal
      exact (freshFromOld left leftSelected collision.symm).elim
    · apply injective
      simpa [leftSelected, rightSelected] using equal

theorem replaceTwo_injective (wires : Fin n → Key)
    (injective : Function.Injective wires)
    (first second : Fin n) (distinct : first ≠ second)
    (firstKey secondKey : Key) (keysDistinct : firstKey ≠ secondKey)
    (firstFresh : ∀ wire, firstKey ≠ wires wire)
    (secondFresh : ∀ wire, secondKey ≠ wires wire) :
    Function.Injective (fun wire =>
      if wire = first then firstKey
      else if wire = second then secondKey
      else wires wire) := by
  let afterSecond := fun wire =>
    if wire = second then secondKey else wires wire
  have secondInjective : Function.Injective afterSecond := by
    apply replaceOne_injective wires injective second secondKey
    intro wire _
    exact secondFresh wire
  have firstFreshAfter : ∀ wire, wire ≠ first →
      firstKey ≠ afterSecond wire := by
    intro wire notFirst
    by_cases atSecond : wire = second
    · simp [afterSecond, atSecond, keysDistinct]
    · simpa [afterSecond, atSecond] using firstFresh wire
  simpa [afterSecond] using
    replaceOne_injective afterSecond secondInjective first firstKey
      firstFreshAfter

theorem advance_wiresInjective {n completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (gate : Gate n) (outputBit : Bool) :
    Function.Injective
      (advanceBoundary completed gate outputBit data).wires := by
  cases gate with
  | h selected =>
      apply replaceOne_injective data.wires wf.wiresInjective selected
      intro wire _
      exact Ne.symm
        (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .second)
  | t selected =>
      apply replaceOne_injective data.wires wf.wiresInjective selected
      intro wire _
      exact Ne.symm
        (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .second)
  | cx control target distinct =>
      apply replaceTwo_injective data.wires wf.wiresInjective
        control target distinct
      · exact gatePortKeys_ne completed
      · intro wire
        exact Ne.symm
          (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .first)
      · intro wire
        exact Ne.symm
          (currentWire_ne_gateKey wf wire (Nat.le_refl completed) .second)

theorem advanceBoundary_wf {n completed : Nat} {data : BoundaryData n}
    (wf : BoundaryWFAt completed data) (gate : Gate n)
    (outputBit : Bool) :
    BoundaryWFAt (completed + 1)
      (advanceBoundary completed gate outputBit data) := by
  constructor
  · exact advance_wireSource wf gate outputBit
  · exact advance_wiresInjective wf gate outputBit
  · exact advance_liveFrame wf gate outputBit
  · exact advance_frameSource wf gate outputBit
  · exact advance_liveNotDead wf gate outputBit
  · exact advance_deadSource wf gate outputBit
  · exact advance_conflictFree wf gate outputBit

def BoundaryColumnWFAt (completed : Nat)
    (branches : List (WeightedBoundaryData n)) : Prop :=
  ∀ branch ∈ branches, BoundaryWFAt completed branch.data

theorem scatterBoundary_wf {n gateIndex : Nat}
    {branch : WeightedBoundaryData n}
    (wf : BoundaryWFAt gateIndex branch.data) (gate : Gate n) :
    BoundaryColumnWFAt (gateIndex + 1)
      (scatterBoundary gateIndex gate branch) := by
  intro output membership
  cases gate with
  | h wire =>
      simp [scatterBoundary] at membership
      rcases membership with rfl | rfl
      · exact advanceBoundary_wf wf (.h wire) false
      · exact advanceBoundary_wf wf (.h wire) true
  | t wire =>
      simp [scatterBoundary] at membership
      subst output
      exact advanceBoundary_wf wf (.t wire) false
  | cx control target distinct =>
      simp [scatterBoundary] at membership
      subst output
      exact advanceBoundary_wf wf (.cx control target distinct) false

theorem flatMap_scatterBoundary_wf {n gateIndex : Nat}
    (gate : Gate n) (branches : List (WeightedBoundaryData n))
    (wf : BoundaryColumnWFAt gateIndex branches) :
    BoundaryColumnWFAt (gateIndex + 1)
      (branches.flatMap (scatterBoundary gateIndex gate)) := by
  intro output membership
  rcases List.mem_flatMap.mp membership with
    ⟨branch, branchMember, outputMember⟩
  exact scatterBoundary_wf (wf branch branchMember) gate output outputMember

theorem boundaryPathsFrom_wf {n gateIndex : Nat}
    (circuit : Circuit n) (branches : List (WeightedBoundaryData n))
    (wf : BoundaryColumnWFAt gateIndex branches) :
    BoundaryColumnWFAt (gateIndex + circuit.length)
      (boundaryPathsFrom gateIndex circuit branches) := by
  induction circuit generalizing gateIndex branches with
  | nil => simpa [boundaryPathsFrom] using wf
  | cons gate rest ih =>
      have next := flatMap_scatterBoundary_wf gate branches wf
      have result := ih (gateIndex := gateIndex + 1)
        (branches := branches.flatMap (scatterBoundary gateIndex gate)) next
      change BoundaryColumnWFAt (gateIndex + (rest.length + 1))
        (boundaryPathsFrom (gateIndex + 1) rest
          (branches.flatMap (scatterBoundary gateIndex gate)))
      rw [show gateIndex + (rest.length + 1) =
          (gateIndex + 1) + rest.length by omega]
      exact result

theorem compiledBoundaryPaths_wf (circuit : Circuit n) (word : Word n) :
    BoundaryColumnWFAt circuit.length (compiledBoundaryPaths circuit word) := by
  have initial : BoundaryColumnWFAt 0
      [⟨initialBoundaryData word, one⟩] := by
    intro branch membership
    simp at membership
    subst branch
    exact initialBoundaryWF word
  simpa [compiledBoundaryPaths] using
    boundaryPathsFrom_wf circuit [⟨initialBoundaryData word, one⟩]
      initial

end QalcGate2BoundaryInvariant
