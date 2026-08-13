import Gate2ContextualOutput

/-!
# Literal common terminal garbage for compiled Gate-2 sectors

The output protocol consumes every live wire frame.  What remains are the
false-valued first-port buffers created by preparation and unary gates.  This
file proves that statement on the actual ordered frame list, rather than
quotienting by keys or decoding the terminal state.
-/

namespace QalcGate2TerminalGarbage

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

def eraseFrameBit (frame : Frame) : Frame :=
  ⟨frame.key, false, frame.epoch⟩

def CompilerFrameKey (key : Key) : Prop :=
  ∃ port occurrence, key = portKey port occurrence

theorem compilerFrameKey_portKey (port : Port) (occurrence : Path) :
    CompilerFrameKey (portKey port occurrence) :=
  ⟨port, occurrence, rfl⟩

theorem frameSourceBefore_compilerKey
    (source : FrameSourceBefore n completed key) :
    CompilerFrameKey key := by
  rcases source with
      ⟨wire, before, port, rfl⟩ |
      ⟨gateIndex, before, port, rfl⟩ <;>
    exact compilerFrameKey_portKey _ _

theorem boundaryFrame_compilerKey {completed : Nat}
    {data : BoundaryData n} (wf : BoundaryWFAt completed data)
    (frame : Frame) (membership : frame ∈ data.frames) :
    CompilerFrameKey frame.key :=
  frameSourceBefore_compilerKey (wf.frameSource frame membership)

theorem portKey_injective_occurrence (port : Port) :
    Function.Injective (portKey port) := by
  intro left right equal
  have instanceEqual := congrArg Key.inst equal
  exact lp_empty_injective (by simpa [portKey] using instanceEqual)

theorem frameLT_eraseFrameBit (left right : Frame)
    (leftCompiler : CompilerFrameKey left.key)
    (rightCompiler : CompilerFrameKey right.key)
    (different : left.key ≠ right.key) :
    frameLT (eraseFrameBit left) (eraseFrameBit right) =
      frameLT left right := by
  rcases left with ⟨leftKey, leftBit, leftEpoch⟩
  rcases right with ⟨rightKey, rightBit, rightEpoch⟩
  change CompilerFrameKey leftKey at leftCompiler
  change CompilerFrameKey rightKey at rightCompiler
  change leftKey ≠ rightKey at different
  rcases leftCompiler with ⟨leftPort, leftOccurrence, rfl⟩
  rcases rightCompiler with ⟨rightPort, rightOccurrence, rfl⟩
  cases leftPort <;> cases rightPort
  all_goals
    simp only [eraseFrameBit, frameLT, frameGateRank, portKey, asLP_lp]
  · have occurrenceDifferent : leftOccurrence ≠ rightOccurrence := by
      intro equal
      subst rightOccurrence
      exact different rfl
    have instanceDifferent :
        lp leftOccurrence [] ≠ lp rightOccurrence [] := by
      exact fun equal => occurrenceDifferent (lp_empty_injective equal)
    simp [instanceDifferent]
  · rfl
  · rfl
  · have occurrenceDifferent : leftOccurrence ≠ rightOccurrence := by
      intro equal
      subst rightOccurrence
      exact different rfl
    have instanceDifferent :
        lp leftOccurrence [] ≠ lp rightOccurrence [] := by
      exact fun equal => occurrenceDifferent (lp_empty_injective equal)
    simp [instanceDifferent]

theorem eraseFrameBit_key (frame : Frame) :
    (eraseFrameBit frame).key = frame.key := rfl

theorem map_eraseFrameBit_insertFrame (inserted : Frame)
    (frames : List Frame)
    (insertedCompiler : CompilerFrameKey inserted.key)
    (framesCompiler : ∀ frame ∈ frames, CompilerFrameKey frame.key)
    (fresh : ∀ frame ∈ frames, frame.key ≠ inserted.key) :
    (insertFrame inserted frames).map eraseFrameBit =
      insertFrame (eraseFrameBit inserted) (frames.map eraseFrameBit) := by
  induction frames with
  | nil => rfl
  | cons head tail ih =>
      have headCompiler := framesCompiler head (by simp)
      have tailCompiler : ∀ frame ∈ tail,
          CompilerFrameKey frame.key := by
        intro frame membership
        exact framesCompiler frame (by simp [membership])
      have headFresh := fresh head (by simp)
      have tailFresh : ∀ frame ∈ tail, frame.key ≠ inserted.key := by
        intro frame membership
        exact fresh frame (by simp [membership])
      have originalDifferent : (head == inserted) = false := by
        cases same : head == inserted with
        | false => rfl
        | true =>
            exact (headFresh (frame_key_eq_of_beq head inserted same)).elim
      have erasedDifferent :
          (eraseFrameBit head == eraseFrameBit inserted) = false := by
        cases same : eraseFrameBit head == eraseFrameBit inserted with
        | false => rfl
        | true =>
            have keyEqual := frame_key_eq_of_beq
              (eraseFrameBit head) (eraseFrameBit inserted) same
            exact (headFresh keyEqual).elim
      have order := frameLT_eraseFrameBit inserted head insertedCompiler
        headCompiler (Ne.symm headFresh)
      by_cases before : frameLT inserted head
      · have erasedBefore :
            frameLT (eraseFrameBit inserted) (eraseFrameBit head) = true := by
          rw [order, before]
        simp [insertFrame, originalDifferent, erasedDifferent, before,
          erasedBefore]
      · have erasedBefore :
            frameLT (eraseFrameBit inserted) (eraseFrameBit head) = false := by
          rw [order]
          cases value : frameLT inserted head with
          | false => rfl
          | true => exact (before value).elim
        simp [insertFrame, originalDifferent, erasedDifferent, before,
          erasedBefore, ih tailCompiler tailFresh]

theorem map_eraseFrameBit_removeFrameKey (frames : List Frame) (key : Key) :
    (removeFrameKey frames key).map eraseFrameBit =
      removeFrameKey (frames.map eraseFrameBit) key := by
  rw [removeFrameKey_eq_filter_key, removeFrameKey_eq_filter_key]
  induction frames with
  | nil => rfl
  | cons head tail ih =>
      by_cases keep : !(head.key == key)
      · simp [List.filter, keep, ih, eraseFrameBit]
      · simp [List.filter, keep, ih, eraseFrameBit]

theorem map_eraseFrameBit_outputFramesAfter (data : BoundaryData n)
    (processed : Nat) :
    (outputFramesAfter data processed).map eraseFrameBit =
      outputFramesAfter
        { data with frames := data.frames.map eraseFrameBit } processed := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputFramesAfter_succ data processed within,
          outputFramesAfter_succ
            { data with frames := data.frames.map eraseFrameBit }
            processed within,
          map_eraseFrameBit_removeFrameKey, ih]
      · simp [outputFramesAfter, within, ih]

theorem portKey_ne_of_occurrence_ne (leftPort rightPort : Port)
    {left right : Path} (different : left ≠ right) :
    portKey leftPort left ≠ portKey rightPort right := by
  intro equal
  have instanceEqual := congrArg Key.inst equal
  exact different (lp_empty_injective (by simpa [portKey] using instanceEqual))

theorem prepFrame_compilerKey (count : Nat) (word : Word count)
    (frame : Frame) (membership : frame ∈ prepFrames count word) :
    CompilerFrameKey frame.key := by
  rcases prepFrames_source count word frame membership with
    ⟨index, before, source | source⟩
  · exact ⟨.first, preparationOccurrence index, source.1⟩
  · exact ⟨.second, preparationOccurrence index, source.1⟩

theorem prepFrame_fresh_occurrence (count : Nat) (word : Word count)
    (port : Port) (frame : Frame) (membership : frame ∈ prepFrames count word) :
    frame.key ≠ portKey port (preparationOccurrence count) := by
  rcases prepFrames_source count word frame membership with
    ⟨index, before, source | source⟩
  · rw [source.1]
    apply portKey_ne_of_occurrence_ne
    exact fun equal => by
      have indexEqual := preparationOccurrence_injective equal
      omega
  · rw [source.1]
    apply portKey_ne_of_occurrence_ne
    exact fun equal => by
      have indexEqual := preparationOccurrence_injective equal
      omega

def falseWord (n : Nat) : Word n := fun _ => false

@[simp] theorem wordPrefix_falseWord (count : Nat) :
    wordPrefix (falseWord (count + 1)) = falseWord count := by
  funext wire
  rfl

@[simp] theorem wordLast_falseWord (count : Nat) :
    wordLast (falseWord (count + 1)) = false := rfl

theorem eraseFrameBit_prepFrames (count : Nat) (word : Word count) :
    (prepFrames count word).map eraseFrameBit =
      prepFrames count (falseWord count) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      let second : Frame :=
        ⟨portKey .second (preparationOccurrence count), wordLast word,
          .recalledAbsent .fresh⟩
      let first : Frame :=
        ⟨portKey .first (preparationOccurrence count), false,
          .recalledAbsent .fresh⟩
      let older := prepFrames count (wordPrefix word)
      have firstCompiler : CompilerFrameKey first.key :=
        compilerFrameKey_portKey _ _
      have secondCompiler : CompilerFrameKey second.key :=
        compilerFrameKey_portKey _ _
      have olderCompiler : ∀ frame ∈ older,
          CompilerFrameKey frame.key := by
        intro frame membership
        exact prepFrame_compilerKey count (wordPrefix word) frame membership
      have firstFresh : ∀ frame ∈ older, frame.key ≠ first.key := by
        intro frame membership
        exact prepFrame_fresh_occurrence count (wordPrefix word) .first
          frame membership
      have secondFreshOlder : ∀ frame ∈ older,
          frame.key ≠ second.key := by
        intro frame membership
        exact prepFrame_fresh_occurrence count (wordPrefix word) .second
          frame membership
      have firstSecond : first.key ≠ second.key := by
        simp [first, second, portKey]
      have withFirstCompiler : ∀ frame ∈ insertFrame first older,
          CompilerFrameKey frame.key := by
        intro frame membership
        rcases mem_insertFrame_source first frame older membership with
          rfl | old
        · exact firstCompiler
        · exact olderCompiler frame old
      have secondFresh : ∀ frame ∈ insertFrame first older,
          frame.key ≠ second.key := by
        intro frame membership
        rcases mem_insertFrame_source first frame older membership with
          rfl | old
        · exact firstSecond
        · exact secondFreshOlder frame old
      change (insertFrame second (insertFrame first older)).map
          eraseFrameBit = _
      rw [map_eraseFrameBit_insertFrame second (insertFrame first older)
        secondCompiler withFirstCompiler secondFresh]
      rw [map_eraseFrameBit_insertFrame first older firstCompiler
        olderCompiler firstFresh]
      rw [ih (wordPrefix word)]
      simp [prepFrames, second, first, falseWord, eraseFrameBit]

def eraseBoundaryBits (data : BoundaryData n) : BoundaryData n :=
  ⟨falseWord n, data.wires, data.frames.map eraseFrameBit, data.storage⟩

theorem mem_removeFrameKey_source (frames : List Frame) (key : Key)
    {frame : Frame} (membership : frame ∈ removeFrameKey frames key) :
    frame ∈ frames := by
  rw [removeFrameKey_eq_filter_key] at membership
  exact (List.mem_filter.mp membership).1

theorem map_eraseFrameBit_outputFrames {completed : Nat}
    (gateIndex : Nat) (data : BoundaryData n)
    (wf : BoundaryWFAt completed data) (future : completed ≤ gateIndex)
    (firstBit secondBit : Bool) (retained : List Frame)
    (retainedSource : ∀ frame ∈ retained, frame ∈ data.frames) :
    (outputFrames n gateIndex firstBit secondBit retained).map
        eraseFrameBit =
      outputFrames n gateIndex false false
        (retained.map eraseFrameBit) := by
  let invoked := gateInvoked n gateIndex
  let first : Frame :=
    ⟨⟨.c, some .first, invoked⟩, firstBit, .recalledAbsent .fresh⟩
  let second : Frame :=
    ⟨⟨.c, some .second, invoked⟩, secondBit, .recalledAbsent .fresh⟩
  have firstKey : first.key = portKey .first
      (gateOccurrence n gateIndex) := by
    rfl
  have secondKey : second.key = portKey .second
      (gateOccurrence n gateIndex) := by
    rfl
  have firstCompiler : CompilerFrameKey first.key := by
    rw [firstKey]
    exact compilerFrameKey_portKey _ _
  have secondCompiler : CompilerFrameKey second.key := by
    rw [secondKey]
    exact compilerFrameKey_portKey _ _
  have retainedCompiler : ∀ frame ∈ retained,
      CompilerFrameKey frame.key := by
    intro frame membership
    exact boundaryFrame_compilerKey wf frame
      (retainedSource frame membership)
  have firstFresh : ∀ frame ∈ retained, frame.key ≠ first.key := by
    intro frame membership
    rw [firstKey]
    exact frameSourceBefore_ne_gateKey
      (wf.frameSource frame (retainedSource frame membership)) future .first
  have secondFreshRetained : ∀ frame ∈ retained,
      frame.key ≠ second.key := by
    intro frame membership
    rw [secondKey]
    exact frameSourceBefore_ne_gateKey
      (wf.frameSource frame (retainedSource frame membership)) future .second
  have firstSecond : first.key ≠ second.key := by
    simp [first, second, invoked]
  have withFirstCompiler : ∀ frame ∈ insertFrame first retained,
      CompilerFrameKey frame.key := by
    intro frame membership
    rcases mem_insertFrame_source first frame retained membership with
      rfl | old
    · exact firstCompiler
    · exact retainedCompiler frame old
  have secondFresh : ∀ frame ∈ insertFrame first retained,
      frame.key ≠ second.key := by
    intro frame membership
    rcases mem_insertFrame_source first frame retained membership with
      rfl | old
    · exact firstSecond
    · exact secondFreshRetained frame old
  change (insertFrame second (insertFrame first retained)).map
      eraseFrameBit = _
  rw [map_eraseFrameBit_insertFrame second (insertFrame first retained)
    secondCompiler withFirstCompiler secondFresh]
  rw [map_eraseFrameBit_insertFrame first retained firstCompiler
    retainedCompiler firstFresh]
  simp [outputFrames, first, second, invoked, eraseFrameBit]

theorem eraseFrameBit_advanceBoundary (gateIndex : Nat)
    (gate : Gate n) (outputBit : Bool) (data : BoundaryData n)
    (wf : BoundaryWFAt gateIndex data) :
    (advanceBoundary gateIndex gate outputBit data).frames.map
        eraseFrameBit =
      (advanceBoundary gateIndex gate false
        (eraseBoundaryBits data)).frames := by
  cases gate with
  | h wire =>
      let retained := removeFrameKey data.frames (data.wires wire)
      have retainedSource : ∀ frame ∈ retained, frame ∈ data.frames := by
        intro frame membership
        exact mem_removeFrameKey_source data.frames (data.wires wire)
          membership
      have mapped := map_eraseFrameBit_outputFrames gateIndex data wf
        (Nat.le_refl _) false outputBit retained retainedSource
      simp only [advanceBoundary, eraseBoundaryBits]
      rw [← map_eraseFrameBit_removeFrameKey data.frames (data.wires wire)]
      exact mapped
  | t wire =>
      let retained := removeFrameKey data.frames (data.wires wire)
      have retainedSource : ∀ frame ∈ retained, frame ∈ data.frames := by
        intro frame membership
        exact mem_removeFrameKey_source data.frames (data.wires wire)
          membership
      have mapped := map_eraseFrameBit_outputFrames gateIndex data wf
        (Nat.le_refl _) false (data.word wire) retained retainedSource
      simp only [advanceBoundary, eraseBoundaryBits, falseWord]
      rw [← map_eraseFrameBit_removeFrameKey data.frames (data.wires wire)]
      exact mapped
  | cx control target distinct =>
      let retained := removeFrameKey
        (removeFrameKey data.frames (data.wires control))
        (data.wires target)
      have retainedSource : ∀ frame ∈ retained, frame ∈ data.frames := by
        intro frame membership
        exact mem_removeFrameKey_source data.frames (data.wires control)
          (mem_removeFrameKey_source
            (removeFrameKey data.frames (data.wires control))
            (data.wires target) membership)
      have mapped := map_eraseFrameBit_outputFrames gateIndex data wf
        (Nat.le_refl _) (data.word control)
        (xor (data.word target) (data.word control)) retained retainedSource
      simp only [advanceBoundary, eraseBoundaryBits, falseWord]
      rw [← map_eraseFrameBit_removeFrameKey data.frames (data.wires control)]
      rw [← map_eraseFrameBit_removeFrameKey
        (removeFrameKey data.frames (data.wires control))
        (data.wires target)]
      exact mapped

def erasedBoundaryRun : Nat → BoundaryData n → Circuit n → BoundaryData n
  | _, data, [] => data
  | gateIndex, data, gate :: rest =>
      erasedBoundaryRun (gateIndex + 1)
        (advanceBoundary gateIndex gate false data) rest

theorem eraseBoundaryBits_initialBoundaryData (word : Word n) :
    eraseBoundaryBits (initialBoundaryData word) =
      initialBoundaryData (falseWord n) := by
  simp [eraseBoundaryBits, initialBoundaryData,
    eraseFrameBit_prepFrames]

theorem eraseBoundaryBits_advanceBoundary (gateIndex : Nat)
    (gate : Gate n) (outputBit : Bool) (data : BoundaryData n)
    (wf : BoundaryWFAt gateIndex data) :
    eraseBoundaryBits (advanceBoundary gateIndex gate outputBit data) =
      advanceBoundary gateIndex gate false (eraseBoundaryBits data) := by
  have frames := eraseFrameBit_advanceBoundary gateIndex gate outputBit data wf
  cases gate with
  | h wire =>
      simp only [eraseBoundaryBits, advanceBoundary]
      have wordEqual : falseWord n = update (falseWord n) wire false := by
        funext index
        simp [falseWord, update]
      have framesEqual :
          (outputFrames n gateIndex false outputBit
              (removeFrameKey data.frames (data.wires wire))).map
              eraseFrameBit =
            outputFrames n gateIndex false false
              (removeFrameKey (data.frames.map eraseFrameBit)
                (data.wires wire)) := by
        simpa [eraseBoundaryBits, advanceBoundary] using frames
      rw [← wordEqual, framesEqual]
  | t wire =>
      simp only [eraseBoundaryBits, advanceBoundary]
      simpa [falseWord, eraseBoundaryBits, advanceBoundary] using frames
  | cx control target distinct =>
      simp only [eraseBoundaryBits, advanceBoundary]
      have wordEqual : falseWord n =
          update (falseWord n) target
            (xor (falseWord n target) (falseWord n control)) := by
        funext index
        simp [falseWord, update]
      have framesEqual :
          (outputFrames n gateIndex (data.word control)
              (xor (data.word target) (data.word control))
              (removeFrameKey
                (removeFrameKey data.frames (data.wires control))
                (data.wires target))).map eraseFrameBit =
            outputFrames n gateIndex (falseWord n control)
              (xor (falseWord n target) (falseWord n control))
              (removeFrameKey
                (removeFrameKey (data.frames.map eraseFrameBit)
                  (data.wires control)) (data.wires target)) := by
        simpa [falseWord, eraseBoundaryBits, advanceBoundary] using frames
      rw [← wordEqual, framesEqual]

theorem boundaryPathsFrom_erased (prior remaining : Circuit n)
    (branches : List (WeightedBoundaryData n))
    (canonical : BoundaryData n)
    (wf : ∀ branch ∈ branches,
      CompiledBoundaryWFAt prior branch.data)
    (erased : ∀ branch ∈ branches,
      eraseBoundaryBits branch.data = canonical) :
    ∀ output ∈ boundaryPathsFrom prior.length remaining branches,
      eraseBoundaryBits output.data =
        erasedBoundaryRun prior.length canonical remaining := by
  induction remaining generalizing prior branches canonical with
  | nil =>
      intro output membership
      simpa [boundaryPathsFrom, erasedBoundaryRun] using
        erased output membership
  | cons gate rest ih =>
      let nextBranches := branches.flatMap (scatterBoundary prior.length gate)
      let nextCanonical := advanceBoundary prior.length gate false canonical
      have nextWF := flatMap_scatterBoundary_compiled_wf prior gate branches wf
      have nextErased : ∀ branch ∈ nextBranches,
          eraseBoundaryBits branch.data = nextCanonical := by
        intro output membership
        rcases List.mem_flatMap.mp membership with
          ⟨source, sourceMember, produced⟩
        have sourceWF := (wf source sourceMember).machine
        have sourceErased := erased source sourceMember
        cases gate with
        | h wire =>
            simp [scatterBoundary] at produced
            rcases produced with rfl | rfl
            all_goals
              rw [eraseBoundaryBits_advanceBoundary _ _ _ _ sourceWF,
                sourceErased]
        | t wire =>
            simp [scatterBoundary] at produced
            subst output
            rw [eraseBoundaryBits_advanceBoundary _ _ _ _ sourceWF,
              sourceErased]
        | cx control target distinct =>
            simp [scatterBoundary] at produced
            subst output
            rw [eraseBoundaryBits_advanceBoundary _ _ _ _ sourceWF,
              sourceErased]
      have result := ih (prior := prior ++ [gate])
        (branches := nextBranches) (canonical := nextCanonical)
        nextWF nextErased
      simpa [boundaryPathsFrom, erasedBoundaryRun, nextBranches,
        nextCanonical, List.append_assoc] using result

theorem compiledPreparedBoundaryBranches_erased (circuit : Circuit n)
    (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    eraseBoundaryBits output.data =
      erasedBoundaryRun 0 (initialBoundaryData (falseWord n)) circuit := by
  apply boundaryPathsFrom_erased ([] : Circuit n) circuit
    (preparedBoundaryBranches n) (initialBoundaryData (falseWord n))
    preparedBoundaryBranches_fullWF
  · intro branch member
    simp only [preparedBoundaryBranches, List.mem_map] at member
    rcases member with ⟨source, sourceMember, rfl⟩
    exact eraseBoundaryBits_initialBoundaryData source.word
  · exact membership

def TrueFramesLive (data : BoundaryData n) : Prop :=
  ∀ frame ∈ data.frames, frame.bit = true →
    ∃ wire : Fin n, frame.key = data.wires wire

theorem initialBoundaryData_trueFramesLive (word : Word n) :
    TrueFramesLive (initialBoundaryData word) := by
  intro frame membership bitTrue
  rcases prepFrames_source n word frame membership with
    ⟨index, before, source | source⟩
  · rw [source.2] at bitTrue
    contradiction
  · exact ⟨⟨index, before⟩, by
      simpa [initialBoundaryData, initialWireKeys] using source.1⟩

theorem mem_removeFrameKey_ne (frames : List Frame) (key : Key)
    {frame : Frame} (membership : frame ∈ removeFrameKey frames key) :
    frame.key ≠ key := by
  rw [removeFrameKey_eq_filter_key] at membership
  have survives := (List.mem_filter.mp membership).2
  intro equal
  rw [equal, key_beq_refl] at survives
  contradiction

theorem advanceBoundary_trueFramesLive (gateIndex : Nat)
    (gate : Gate n) (outputBit : Bool) (data : BoundaryData n)
    (live : TrueFramesLive data) :
    TrueFramesLive (advanceBoundary gateIndex gate outputBit data) := by
  intro frame membership bitTrue
  cases gate with
  | h selected =>
      simp only [advanceBoundary] at membership ⊢
      rcases mem_insertFrame_source _ frame _ membership with
        rfl | inside
      · exact ⟨selected, by simp⟩
      · rcases mem_insertFrame_source _ frame _ inside with
          rfl | retained
        · contradiction
        · rcases live frame
            (mem_removeFrameKey_source data.frames (data.wires selected)
              retained) bitTrue with ⟨wire, keyAtWire⟩
          have different : wire ≠ selected := by
            intro equal
            subst wire
            exact (mem_removeFrameKey_ne data.frames (data.wires selected)
              retained) keyAtWire
          exact ⟨wire, by simp [different, keyAtWire]⟩
  | t selected =>
      simp only [advanceBoundary] at membership ⊢
      rcases mem_insertFrame_source _ frame _ membership with
        rfl | inside
      · exact ⟨selected, by simp⟩
      · rcases mem_insertFrame_source _ frame _ inside with
          rfl | retained
        · contradiction
        · rcases live frame
            (mem_removeFrameKey_source data.frames (data.wires selected)
              retained) bitTrue with ⟨wire, keyAtWire⟩
          have different : wire ≠ selected := by
            intro equal
            subst wire
            exact (mem_removeFrameKey_ne data.frames (data.wires selected)
              retained) keyAtWire
          exact ⟨wire, by simp [different, keyAtWire]⟩
  | cx control target distinct =>
      simp only [advanceBoundary] at membership ⊢
      rcases mem_insertFrame_source _ frame _ membership with
        rfl | inside
      · exact ⟨target, by simp [Ne.symm distinct]⟩
      · rcases mem_insertFrame_source _ frame _ inside with
          rfl | retained
        · exact ⟨control, by simp⟩
        · have afterTarget := mem_removeFrameKey_source
            (removeFrameKey data.frames (data.wires control))
            (data.wires target) retained
          have oldMember := mem_removeFrameKey_source data.frames
            (data.wires control) afterTarget
          rcases live frame oldMember bitTrue with ⟨wire, keyAtWire⟩
          have notControl : wire ≠ control := by
            intro equal
            subst wire
            exact (mem_removeFrameKey_ne data.frames (data.wires control)
              afterTarget) keyAtWire
          have notTarget : wire ≠ target := by
            intro equal
            subst wire
            exact (mem_removeFrameKey_ne
              (removeFrameKey data.frames (data.wires control))
              (data.wires target) retained) keyAtWire
          exact ⟨wire, by simp [notControl, notTarget, keyAtWire]⟩

theorem boundaryPathsFrom_trueFramesLive (gateIndex : Nat)
    (circuit : Circuit n) (branches : List (WeightedBoundaryData n))
    (live : ∀ branch ∈ branches, TrueFramesLive branch.data) :
    ∀ output ∈ boundaryPathsFrom gateIndex circuit branches,
      TrueFramesLive output.data := by
  induction circuit generalizing gateIndex branches with
  | nil =>
      intro output membership
      simpa [boundaryPathsFrom] using live output membership
  | cons gate rest ih =>
      apply ih (gateIndex := gateIndex + 1)
        (branches := branches.flatMap (scatterBoundary gateIndex gate))
      intro output membership
      rcases List.mem_flatMap.mp membership with
        ⟨source, sourceMember, produced⟩
      have sourceLive := live source sourceMember
      cases gate with
      | h wire =>
          simp [scatterBoundary] at produced
          rcases produced with rfl | rfl <;>
            exact advanceBoundary_trueFramesLive gateIndex _ _ _ sourceLive
      | t wire =>
          simp [scatterBoundary] at produced
          subst output
          exact advanceBoundary_trueFramesLive gateIndex _ _ _ sourceLive
      | cx control target distinct =>
          simp [scatterBoundary] at produced
          subst output
          exact advanceBoundary_trueFramesLive gateIndex _ _ _ sourceLive

theorem compiledPreparedBoundaryBranches_trueFramesLive
    (circuit : Circuit n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    TrueFramesLive output.data := by
  apply boundaryPathsFrom_trueFramesLive 0 circuit
    (preparedBoundaryBranches n)
  · intro branch member
    simp only [preparedBoundaryBranches, List.mem_map] at member
    rcases member with ⟨source, sourceMember, rfl⟩
    exact initialBoundaryData_trueFramesLive source.word
  · exact membership

theorem frameSurvivesAfter_ne_live (data : BoundaryData n)
    (processed : Nat) (bounded : processed ≤ n) (frame : Frame)
    (survives : frameSurvivesAfter data processed frame = true)
    (wire : Fin n) (before : wire.val < processed) :
    frame.key ≠ data.wires wire := by
  induction processed generalizing wire with
  | zero => omega
  | succ processed ih =>
      have within : processed < n := by omega
      simp only [frameSurvivesAfter, dif_pos within,
        Bool.and_eq_true] at survives
      by_cases current : wire.val = processed
      · have wireEqual : wire = ⟨processed, within⟩ := by
          apply Fin.ext
          exact current
        subst wire
        intro equal
        rw [equal, key_beq_refl] at survives
        simp at survives
      · have earlier : wire.val < processed := by omega
        exact ih (by omega) survives.1 wire earlier

theorem outputFramesAfter_false (data : BoundaryData n)
    (live : TrueFramesLive data) (frame : Frame)
    (membership : frame ∈ outputFramesAfter data n) :
    frame.bit = false := by
  rw [outputFramesAfter_eq_filter] at membership
  rcases List.mem_filter.mp membership with ⟨sourceMember, survives⟩
  cases bit : frame.bit with
  | false => rfl
  | true =>
      rcases live frame sourceMember bit with ⟨wire, keyAtWire⟩
      exact (frameSurvivesAfter_ne_live data n (Nat.le_refl _) frame
        survives wire wire.isLt keyAtWire).elim

theorem map_eraseFrameBit_eq_self (frames : List Frame)
    (allFalse : ∀ frame ∈ frames, frame.bit = false) :
    frames.map eraseFrameBit = frames := by
  induction frames with
  | nil => rfl
  | cons head tail ih =>
      have headFalse := allFalse head (by simp)
      have tailFalse : ∀ frame ∈ tail, frame.bit = false := by
        intro frame membership
        exact allFalse frame (by simp [membership])
      have headErase : eraseFrameBit head = head := by
        rcases head with ⟨key, bit, epoch⟩
        simp only at headFalse
        subst bit
        rfl
      simp [headErase, ih tailFalse]

theorem outputFramesAfter_eraseBoundaryBits (data : BoundaryData n)
    (processed : Nat) :
    outputFramesAfter
        { data with frames := data.frames.map eraseFrameBit } processed =
      outputFramesAfter (eraseBoundaryBits data) processed := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputFramesAfter_succ _ processed within,
          outputFramesAfter_succ _ processed within, ih]
        rfl
      · simp [outputFramesAfter, within, ih]

theorem outputStorageAfter_eraseBoundaryBits (circuit : Circuit n)
    (data : BoundaryData n) (processed : Nat) :
    outputStorageAfter circuit (eraseBoundaryBits data) processed =
      outputStorageAfter circuit data processed := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputStorageAfter_succ circuit _ processed within,
          outputStorageAfter_succ circuit _ processed within, ih]
        rfl
      · simp [outputStorageAfter, within, ih]

theorem outputResiduesAfter_eraseBoundaryBits (circuit : Circuit n)
    (data : BoundaryData n) (processed : Nat) :
    outputResiduesAfter circuit (eraseBoundaryBits data) processed =
      outputResiduesAfter circuit data processed := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputResiduesAfter_succ circuit _ processed within,
          outputResiduesAfter_succ circuit _ processed within, ih]
        rfl
      · simp [outputResiduesAfter, within, ih]

def commonBoundaryData (circuit : Circuit n) : BoundaryData n :=
  erasedBoundaryRun 0 (initialBoundaryData (falseWord n)) circuit

def commonTerminalFrames (circuit : Circuit n) : List Frame :=
  outputFramesAfter (commonBoundaryData circuit) n

theorem compiledPreparedBoundaryBranches_terminalFrames
    (circuit : Circuit n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    outputFramesAfter output.data n = commonTerminalFrames circuit := by
  have erased := compiledPreparedBoundaryBranches_erased circuit output
    membership
  have live := compiledPreparedBoundaryBranches_trueFramesLive circuit output
    membership
  have allFalse : ∀ frame ∈ outputFramesAfter output.data n,
      frame.bit = false := by
    exact outputFramesAfter_false output.data live
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

def commonTerminalGarbage (circuit : Circuit n) : TerminalGarbage :=
  outputTerminalGarbage circuit (commonBoundaryData circuit)

theorem compiledPreparedBoundaryBranches_terminalGarbage
    (circuit : Circuit n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    outputTerminalGarbage circuit output.data =
      commonTerminalGarbage circuit := by
  have erased := compiledPreparedBoundaryBranches_erased circuit output
    membership
  have wiresEqual := congrArg BoundaryData.wires erased
  have storageEqual := congrArg BoundaryData.storage erased
  have framesEqual := compiledPreparedBoundaryBranches_terminalFrames circuit
    output membership
  have storageOutput :
      outputStorageAfter circuit output.data n =
        outputStorageAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputStorageAfter_eraseBoundaryBits circuit output.data n,
      erased]
    rfl
  have residuesOutput :
      outputResiduesAfter circuit output.data n =
        outputResiduesAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputResiduesAfter_eraseBoundaryBits circuit output.data n,
      erased]
    rfl
  unfold commonTerminalGarbage commonBoundaryData outputTerminalGarbage
  rw [framesEqual, storageOutput, residuesOutput]
  simp [commonTerminalFrames, commonBoundaryData]

def cleanHaltedState (circuit : Circuit n) (data : BoundaryData n) :
    NFState :=
  .done .halt (some (outputTreeAfter data n))
    (commonTerminalGarbage circuit) 0

def cleanHaltedColumn (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) : PhysicalColumn :=
  branches.map fun branch =>
    ⟨cleanHaltedState circuit branch.data, branch.amplitude⟩

theorem haltedBoundaryColumn_eq_clean (circuit : Circuit n) :
    haltedBoundaryColumn circuit (compiledPreparedBoundaryBranches circuit) =
      cleanHaltedColumn circuit (compiledPreparedBoundaryBranches circuit) := by
  apply List.map_congr_left
  intro branch membership
  have garbage := compiledPreparedBoundaryBranches_terminalGarbage circuit
    branch membership
  simp [outputHaltedState, cleanHaltedState, garbage]

theorem compiled_full_nf_clean (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledEvolve circuit (fullPhysicalTime circuit)
        [⟨QalcComposedMachine.initial, one⟩] =
      cleanHaltedColumn circuit
        (compiledPreparedBoundaryBranches circuit) := by
  rw [compiled_full_nf_physical positiveWidth circuit,
    haltedBoundaryColumn_eq_clean]

theorem physicalCircuitTime_add_output (circuit : Circuit n) :
    physicalCircuitTime circuit + physicalOutputTime circuit =
      circuitCost circuit + outputCost n := by
  induction circuit with
  | nil => simp [physicalCircuitTime, physicalOutputTime, circuitCost,
      outputCost]
  | cons gate rest ih =>
      cases gate <;>
        simp [physicalCircuitTime, physicalGateTime, physicalOutputTime,
          circuitCost, gateCost, outputCost] at ih ⊢ <;> omega

theorem fullPhysicalTime_eq_prepared_runtime (circuit : Circuit n) :
    fullPhysicalTime circuit = preparedAt n + runtime circuit := by
  unfold fullPhysicalTime runtime
  rw [show preparedAt n + physicalCircuitTime circuit +
      physicalOutputTime circuit =
      preparedAt n +
        (physicalCircuitTime circuit + physicalOutputTime circuit) by omega,
    physicalCircuitTime_add_output]
  omega

def basisCleanHaltedColumn (circuit : Circuit n) (word : Word n) :
    PhysicalColumn :=
  cleanHaltedColumn circuit (compiledBoundaryPaths circuit word)

theorem compiledBoundaryPaths_erased (circuit : Circuit n)
    (word : Word n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    eraseBoundaryBits output.data = commonBoundaryData circuit := by
  unfold commonBoundaryData
  apply boundaryPathsFrom_erased ([] : Circuit n) circuit
    [⟨initialBoundaryData word, one⟩]
    (initialBoundaryData (falseWord n))
  · intro branch member
    simp at member
    subst branch
    exact compiledBoundaryPath_fullWF [] word
      ⟨initialBoundaryData word, one⟩ (by
        simp [compiledBoundaryPaths, boundaryPathsFrom])
  · intro branch member
    simp at member
    subst branch
    exact eraseBoundaryBits_initialBoundaryData word
  · unfold compiledBoundaryPaths at membership
    exact membership

theorem compiledBoundaryPaths_trueFramesLive (circuit : Circuit n)
    (word : Word n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    TrueFramesLive output.data := by
  unfold compiledBoundaryPaths at membership
  apply boundaryPathsFrom_trueFramesLive 0 circuit
    [⟨initialBoundaryData word, one⟩]
  · intro branch member
    simp at member
    subst branch
    exact initialBoundaryData_trueFramesLive word
  · exact membership

theorem compiledBoundaryPaths_terminalFrames (circuit : Circuit n)
    (word : Word n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    outputFramesAfter output.data n = commonTerminalFrames circuit := by
  have erased := compiledBoundaryPaths_erased circuit word output membership
  have live := compiledBoundaryPaths_trueFramesLive circuit word output
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

theorem compiledBoundaryPaths_terminalGarbage (circuit : Circuit n)
    (word : Word n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledBoundaryPaths circuit word) :
    outputTerminalGarbage circuit output.data =
      commonTerminalGarbage circuit := by
  have erased := compiledBoundaryPaths_erased circuit word output membership
  have framesEqual := compiledBoundaryPaths_terminalFrames circuit word output
    membership
  have storageOutput :
      outputStorageAfter circuit output.data n =
        outputStorageAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputStorageAfter_eraseBoundaryBits circuit output.data n,
      erased]
  have residuesOutput :
      outputResiduesAfter circuit output.data n =
        outputResiduesAfter circuit (commonBoundaryData circuit) n := by
    rw [← outputResiduesAfter_eraseBoundaryBits circuit output.data n,
      erased]
  unfold commonTerminalGarbage outputTerminalGarbage
  rw [framesEqual, storageOutput, residuesOutput]
  rfl

theorem compiled_basis_full_nf_clean (positiveWidth : 0 < n)
    (circuit : Circuit n) (word : Word n) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (runtime circuit)
        [⟨boundaryState n 0 (initialBoundaryData word), one⟩] =
      basisCleanHaltedColumn circuit word := by
  rw [show runtime circuit = physicalCircuitTime circuit +
      physicalOutputTime circuit by
    rw [physicalCircuitTime_add_output]
    unfold runtime
    omega,
    evolve_add, compiled_circuit_boundary_physical positiveWidth circuit word]
  have output := compiled_output_column positiveWidth circuit
    (compiledBoundaryPaths circuit word)
    (fun branch membership =>
      compiledBoundaryPath_fullWF circuit word branch membership)
    (fun branch membership =>
      compiledBoundaryPaths_storage circuit word branch membership)
  rw [output]
  unfold basisCleanHaltedColumn
  apply List.map_congr_left
  intro branch membership
  have garbage := compiledBoundaryPaths_terminalGarbage circuit word branch
    membership
  simp [outputHaltedState, cleanHaltedState, garbage]

end QalcGate2TerminalGarbage
