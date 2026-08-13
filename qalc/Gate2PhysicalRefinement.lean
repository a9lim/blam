import Gate2PhysicalEvolution

/-!
# Physical refinement of the Gate-2 compiler

This file proves the compiler-facing facts directly against
`QalcComposedMachine.composedStep`.  The first lemma below deliberately starts
at the real full-NF initial state: it is the base of the preparation trace,
not a fact about the ideal schedule.
-/

namespace QalcGate2PhysicalRefinement

open QalcFiniteGram QalcComposedMachine QalcGate2Compiler
  QalcGate2PhysicalCompiler QalcGate2PhysicalEvolution

theorem headBang_cons {α : Type} [Inhabited α]
    (head : α) (tail : List α) : (head :: tail).head! = head := by
  rfl

@[simp] theorem discardOptionToNone {α β : Type} (value : Option α) :
    (match value with
      | none => none
      | some _ => (none : Option β)) = none := by
  cases value <;> rfl

theorem discardOptionToNone_ne_some {α β : Type} (value : Option α)
    (result : β)
    (impossible :
      (match value with
        | none => none
        | some _ => (none : Option β)) = some result) : False := by
  cases value <;> simp at impossible

def afterInitialB1 : NFState :=
  .run
    ⟨[.fn], .down, [], [appBullet, rb 0 [] []], none, [], []⟩
    ⟨.hole false, some [], [], []⟩

theorem compiled_initial_step (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    composedStep (compiledTerm circuit) QalcComposedMachine.initial
      (compilerCertificate circuit) =
    nfDeterministic .b1 afterInitialB1 := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  rw [compiledTerm_eq_total positiveWidth]
  simp [namedProgram, apps, lams, lowerTotal, QalcComposedMachine.initial,
    afterInitialB1,
    composedStep, finishCStage?, kernelEntry, composedEntry, kernelToken,
    isAppBullet, isBullet, deliverPort, readbackStep,
    subterm?, nfDeterministic, directionDifferent]

def afterInvocationShell : NFState :=
  .run
    ⟨shellBodyPath, .down, [], [rb 0 [] []], none, [], []⟩
    ⟨.hole false, some [], [], []⟩

theorem compiled_invocation_prefix (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledEvolve circuit 6
      [⟨QalcComposedMachine.initial, one⟩] =
    [⟨afterInvocationShell, one⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  unfold compiledEvolve
  rw [compiledTerm_eq_total positiveWidth]
  simp [evolve, stepColumn, stepBasis, edgeCoefficient,
    powDw, omegaPhysical, namedProgram, apps, lams, lowerTotal,
    QalcComposedMachine.initial, afterInvocationShell, shellBodyPath,
    composedStep, finishCStage?, kernelToken, deliverPort, readbackStep,
    subterm?, nfDeterministic, directionDifferent, appNotRB, appIs]
  native_decide

def prepInvoked (index : Nat) : Entry :=
  lp (preparationOccurrence index) []

@[simp] theorem asLP_prepInvoked (index : Nat) :
    asLP? (prepInvoked index) = some (preparationOccurrence index, []) := by
  rfl

@[simp] theorem asRB_prepInvoked (index : Nat) :
    asRB? (prepInvoked index) = none := by
  rfl

@[simp] theorem asGam_prepInvoked (index : Nat) :
    asGam? (prepInvoked index) = none := by
  rfl

@[simp] theorem isLP_prepInvoked (index : Nat) :
    isLP (prepInvoked index) = true := by
  rfl

@[simp] theorem isBullet_prepInvoked (index : Nat) :
    isBullet (prepInvoked index) = false := by
  rfl

@[simp] theorem isAppBullet_prepInvoked (index : Nat) :
    isAppBullet (prepInvoked index) = false := by
  rfl

@[simp] theorem lpLike_prepInvoked (index : Nat) :
    lpLike (prepInvoked index) = true := by
  rfl

@[simp] theorem composedEntry_prepInvoked (index : Nat) :
    composedEntry (prepInvoked index) = prepInvoked index := by
  rfl

@[simp] theorem kernelEntry_prepInvoked (index : Nat) :
    kernelEntry (prepInvoked index) = prepInvoked index := by
  rfl

@[simp] theorem instance_prepInvoked_head
    (index : Nat) (path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    instance?
      ⟨path, direction, prepInvoked index :: log, tape,
        vb, frames, storage⟩ = some (prepInvoked index) := by
  rfl

@[simp] theorem asRB_lp (occurrence : Path) (slice : List Entry) :
    asRB? (lp occurrence slice) = none := by
  simp [asRB?, lp, entry, Entries.ofList]

@[simp] theorem asLP_lp (occurrence : Path) (slice : List Entry) :
    asLP? (lp occurrence slice) = some (occurrence, slice) := by
  simp [asLP?, lp, entry]

@[simp] theorem asRB_appBullet : asRB? appBullet = none := by
  rfl

@[simp] theorem isBullet_bullet : isBullet bullet = true := by
  rfl

@[simp] theorem isRho_bullet : isRho bullet = false := by
  rfl

@[simp] theorem isMu_bullet : isMu bullet = false := by
  rfl

@[simp] theorem isCMu_bullet : isCMu bullet = false := by
  rfl

@[simp] theorem asLP_bullet : asLP? bullet = none := by
  rfl

@[simp] theorem asRB_bullet : asRB? bullet = none := by
  rfl

@[simp] theorem asAlpha_bullet : asAlpha? bullet = none := by
  rfl

@[simp] theorem asRB_rb (depth : Nat) (outputPath codePath : Path)
    (pending : List Path) :
    asRB? (rb depth outputPath codePath pending) =
      some (depth, outputPath, codePath, pending) := by
  rfl

@[simp] theorem asRB_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    asRB? (cgam port invoked occurrence first second continuation) = none := by
  rfl

@[simp] theorem asRB_cmu (port : Port) (invoked : Entry) :
    asRB? (cmu port invoked) = none := by
  rfl

@[simp] theorem asRB_mu (gate : GateName) :
    asRB? (mu gate) = none := by
  cases gate <;> rfl

@[simp] theorem asLP_ans (gate : GateName) (bit : Bool) :
    asLP? (ans gate bit) = none := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem asRB_ans (gate : GateName) (bit : Bool) :
    asRB? (ans gate bit) = none := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem asAns_ans (gate : GateName) (bit : Bool) :
    asAns? (ans gate bit) = some (gate, bit) := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem asAlpha_ans (gate : GateName) (bit : Bool) :
    asAlpha? (ans gate bit) = none := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem arrivalLP_ans (gate : GateName) (bit : Bool) :
    arrivalLP (ans gate bit) = false := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem isBullet_ans (gate : GateName) (bit : Bool) :
    isBullet (ans gate bit) = false := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem isAppBullet_ans (gate : GateName) (bit : Bool) :
    isAppBullet (ans gate bit) = false := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem asLP_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    asLP? (alpha gate port inst bit epoch) = none := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem asRB_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    asRB? (alpha gate port inst bit epoch) = none := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem asAlpha_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    asAlpha? (alpha gate port inst bit epoch) =
      some (gate, port, inst, bit, epoch) := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem arrivalLP_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    arrivalLP (alpha gate port inst bit epoch) = true := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem isBullet_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    isBullet (alpha gate port inst bit epoch) = false := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem isAppBullet_alpha (gate : GateName) (port : Option Port)
    (inst : Entry) (bit : Bool) (epoch : Epoch) :
    isAppBullet (alpha gate port inst bit epoch) = false := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem composedEntry_alpha (gate : GateName)
    (port : Option Port) (inst : Entry) (bit : Bool) (epoch : Epoch) :
    composedEntry (alpha gate port inst bit epoch) =
      alpha gate port inst bit epoch := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem kernelEntry_alpha (gate : GateName)
    (port : Option Port) (inst : Entry) (bit : Bool) (epoch : Epoch) :
    kernelEntry (alpha gate port inst bit epoch) =
      alpha gate port inst bit epoch := by
  cases gate <;> cases port <;> cases bit <;> cases epoch <;> rfl

@[simp] theorem kernelEntry_ans (gate : GateName) (bit : Bool) :
    kernelEntry (ans gate bit) = ans gate bit := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem asCGam_lp (occurrence : Path) (slice : List Entry) :
    asCGam? (lp occurrence slice) = none := by
  rfl

@[simp] theorem asGam_lp (occurrence : Path) (slice : List Entry) :
    asGam? (lp occurrence slice) = none := by
  rfl

@[simp] theorem asGam_gam (gate : GateName) :
    asGam? (gam gate) = some gate := by
  cases gate <;> rfl

@[simp] theorem asLP_gam (gate : GateName) :
    asLP? (gam gate) = none := by
  cases gate <;> rfl

@[simp] theorem asRB_gam (gate : GateName) :
    asRB? (gam gate) = none := by
  cases gate <;> rfl

@[simp] theorem asCGam_gam (gate : GateName) :
    asCGam? (gam gate) = none := by
  cases gate <;> rfl

@[simp] theorem lpLike_gam (gate : GateName) :
    lpLike (gam gate) = true := by
  cases gate <;> rfl

@[simp] theorem asAlpha_cmu (port : Port) (invoked : Entry) :
    asAlpha? (cmu port invoked) = none := by
  rfl

@[simp] theorem asAns_lp (occurrence : Path) (slice : List Entry) :
    asAns? (lp occurrence slice) = none := by
  rfl

@[simp] theorem asMu_mu (gate : GateName) :
    asMu? (mu gate) = some gate := by
  cases gate <;> rfl

def prepFirstPath (index : Nat) : Path :=
  preparationRoot index ++ [.fn, .fn, .arg]

def prepSecondPath (index : Nat) : Path :=
  preparationRoot index ++ [.fn, .arg]

@[simp] theorem prepSecondPath_getLast (index : Nat) :
    List.getLast? (prepSecondPath index) = some .arg := by
  simp [prepSecondPath]

@[simp] theorem prepSecondPath_ne_nil (index : Nat) :
    prepSecondPath index ≠ [] := by
  simp [prepSecondPath]

def prepContinuationPath (index : Nat) : Path :=
  preparationRoot index ++ [.arg]

def prepHInstance (index : Nat) : Entry :=
  let invoked := prepInvoked index
  lp (preparationRoot index ++ [.fn, .arg, .fn])
    [cgam .second invoked (preparationOccurrence index)
      (prepFirstPath index) (prepSecondPath index)
      (prepContinuationPath index)]

theorem prepHInstance_eq (index : Nat) :
    prepHInstance index =
      lp (prepSecondPath index ++ [.fn])
        [cgam .second (prepInvoked index) (preparationOccurrence index)
          (prepFirstPath index) (prepSecondPath index)
          (prepContinuationPath index)] := by
  simp [prepHInstance, prepSecondPath, List.append_assoc]

theorem prepHInstance_ne_prepInvoked (fresh stored : Nat) :
    prepHInstance fresh ≠ prepInvoked stored := by
  intro equal
  have decoded := congrArg asLP? equal
  simp [prepHInstance, prepInvoked, asLP?, lp, entry] at decoded

theorem prepCgam_ne_prepInvoked (fresh stored : Nat) :
    cgam .second (prepInvoked fresh) (preparationOccurrence fresh)
      (prepFirstPath fresh) (prepSecondPath fresh)
      (prepContinuationPath fresh) ≠ prepInvoked stored := by
  simp [cgam, prepInvoked, lp, entry]

@[simp] theorem asLP_prepHInstance (index : Nat) :
    asLP? (prepHInstance index) =
      some (prepSecondPath index ++ [.fn],
        [cgam .second (prepInvoked index) (preparationOccurrence index)
          (prepFirstPath index) (prepSecondPath index)
          (prepContinuationPath index)]) := by
  simp [prepHInstance, asLP?, lp, entry, prepSecondPath,
    List.append_assoc]

@[simp] theorem asRB_prepHInstance (index : Nat) :
    asRB? (prepHInstance index) = none := by
  rfl

@[simp] theorem isBullet_prepHInstance (index : Nat) :
    isBullet (prepHInstance index) = false := by
  rfl

@[simp] theorem isAppBullet_prepHInstance (index : Nat) :
    isAppBullet (prepHInstance index) = false := by
  rfl

@[simp] theorem kernelEntry_prepHInstance (index : Nat) :
    kernelEntry (prepHInstance index) = prepHInstance index := by
  rfl

@[simp] theorem composedEntry_prepHInstance (index : Nat) :
    composedEntry (prepHInstance index) = prepHInstance index := by
  rfl

@[simp] theorem isLP_prepHInstance (index : Nat) :
    isLP (prepHInstance index) = true := by
  rfl

@[simp] theorem asGam_prepHInstance (index : Nat) :
    asGam? (prepHInstance index) = none := by
  rfl

@[simp] theorem asCGam_prepHInstance (index : Nat) :
    asCGam? (prepHInstance index) = none := by
  rfl

@[simp] theorem instance_prepHInstance_head (index : Nat)
    (path : Path) (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    instance?
      ⟨path, direction, prepHInstance index :: log, tape,
        vb, frames, storage⟩ = some (prepHInstance index) := by
  rfl

@[simp] theorem instance_lp_head (occurrence : Path) (slice : List Entry)
    (path : Path) (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    instance?
      ⟨path, direction, lp occurrence slice :: log, tape,
        vb, frames, storage⟩ = some (lp occurrence slice) := by
  rfl

def prepHistory (index : Nat) : Store :=
  .chistory (prepInvoked index)
    (.logged (lp (prepFirstPath index ++ [.body, .body]) [])) []
    (.alpha .h none (prepHInstance index) .fresh) []
    (preparationOccurrence index) (prepContinuationPath index)

def prepHKey (index : Nat) : Key :=
  ⟨.h, none, prepHInstance index⟩

theorem mem_insertFrame_source (inserted present : Frame)
    (frames : List Frame) :
    present ∈ insertFrame inserted frames →
      present = inserted ∨ present ∈ frames := by
  induction frames with
  | nil =>
      simp [insertFrame]
  | cons head frames ih =>
      by_cases duplicate : head == inserted
      · simp only [insertFrame, duplicate, if_pos]
        intro membership
        simp only [List.mem_cons] at membership ⊢
        rcases membership with equal | old
        · exact .inr (.inl equal)
        · exact .inr (.inr old)
      · by_cases before : frameLT inserted head
        · simp [insertFrame, duplicate, before]
        · simp only [insertFrame, duplicate, Bool.false_eq_true,
            if_false, before]
          intro membership
          simp only [List.mem_cons] at membership ⊢
          rcases membership with equal | membership
          · exact .inr (.inl equal)
          · rcases ih membership with equal | old
            · exact .inl equal
            · exact .inr (.inr old)

def bitAt (word : Word count) (index : Nat) : Bool :=
  if within : index < count then word ⟨index, within⟩ else false

def wordPrefix (word : Word (count + 1)) : Word count := fun index =>
  word ⟨index.val, Nat.lt.step index.isLt⟩

def wordLast (word : Word (count + 1)) : Bool :=
  word ⟨count, Nat.lt_succ_self count⟩

def extendWord (word : Word count) (bit : Bool) : Word (count + 1) :=
  fun index => if within : index.val < count then
    word ⟨index.val, within⟩ else bit

@[simp] theorem wordPrefix_extendWord (word : Word count) (bit : Bool) :
    wordPrefix (extendWord word bit) = word := by
  funext index
  simp [wordPrefix, extendWord, index.isLt]

@[simp] theorem wordLast_extendWord (word : Word count) (bit : Bool) :
    wordLast (extendWord word bit) = bit := by
  simp [wordLast, extendWord]

theorem bitAt_wordPrefix (word : Word (count + 1)) (index : Nat)
    (inPrefix : index < count) :
    bitAt (wordPrefix word) index = bitAt word index := by
  simp [bitAt, wordPrefix, inPrefix, Nat.lt.step inPrefix]

def prepFrames : (count : Nat) → Word count → List Frame
  | 0, _ => []
  | count + 1, word =>
      insertFrame
        ⟨portKey .second (preparationOccurrence count), wordLast word,
          .recalledAbsent .fresh⟩
        (insertFrame
          ⟨portKey .first (preparationOccurrence count), false,
            .recalledAbsent .fresh⟩
          (prepFrames count (wordPrefix word)))

def prepStorage : Nat → List Store
  | 0 => []
  | count + 1 => [.bundle [], prepHistory count] ++ prepStorage count

theorem prepStorage_succ (count : Nat) :
    prepStorage (count + 1) =
      [.bundle [], prepHistory count] ++ prepStorage count := by
  rfl

@[simp] theorem findHistory_prepHInstance (stored fresh : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if prepHInstance fresh = invoked then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      simp [prepHistory, prepHInstance_ne_prepInvoked, ih]

def prepCgamLookup (stored fresh : Nat) : Option Entry :=
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if cgam .second (prepInvoked fresh)
                  (preparationOccurrence fresh) (prepFirstPath fresh)
                  (prepSecondPath fresh) (prepContinuationPath fresh) = invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored)

@[simp] theorem findHistory_prepCgam (stored fresh : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if cgam .second (prepInvoked fresh)
                  (preparationOccurrence fresh) (prepFirstPath fresh)
                  (prepSecondPath fresh) (prepContinuationPath fresh) = invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored) = none := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      simp [prepHistory, prepCgam_ne_prepInvoked, ih]

@[simp] theorem matchingHistoryInvocations_prepHInstance
    (stored fresh : Nat) :
    matchingHistoryInvocations (prepHInstance fresh)
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      rw [matchingHistoryInvocations_append]
      rw [ih]
      simp [matchingHistoryInvocations, prepHistory,
        prepHInstance_ne_prepInvoked]

@[simp] theorem matchingHistoryInvocations_prepCgam
    (stored fresh : Nat) :
    matchingHistoryInvocations
        (cgam .second (prepInvoked fresh) (preparationOccurrence fresh)
          (prepFirstPath fresh) (prepSecondPath fresh)
          (prepContinuationPath fresh))
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      rw [matchingHistoryInvocations_append]
      rw [ih]
      simp [matchingHistoryInvocations, prepHistory,
        prepCgam_ne_prepInvoked]

@[simp] theorem discardHistory_prepCgam (stored fresh : Nat) :
    (match List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if cgam .second (prepInvoked fresh)
                  (preparationOccurrence fresh) (prepFirstPath fresh)
                  (prepSecondPath fresh) (prepContinuationPath fresh) = invoked
              then some invoked else none
          | _ => none)
        (prepStorage stored) with
      | none => none
      | some _ => (none : Option (List KernelEdge))) = none := by
  rw [findHistory_prepCgam]

@[simp] theorem filterCpark_prepStorage
    (stored fresh start : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = prepInvoked fresh then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepStorage stored).zipIdx start) = [] := by
  induction stored generalizing start with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      simp [prepHistory, ih]

@[simp] theorem findCpark_prepStorage
    (stored fresh start : Nat) :
    List.findSome?
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = prepInvoked fresh then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepStorage stored).zipIdx start) = none := by
  induction stored generalizing start with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      simp [prepHistory, ih]

theorem prepFrames_gate_c (count : Nat) (word : Word count)
    (frame : Frame) (membership : frame ∈ prepFrames count word) :
    frame.key.gate = .c := by
  induction count with
  | zero => simp [prepFrames] at membership
  | succ count ih =>
      simp only [prepFrames] at membership
      rcases mem_insertFrame_source _ _ _ membership with equal | inside
      · subst frame
        rfl
      · rcases mem_insertFrame_source _ _ _ inside with equal | older
        · subst frame
          rfl
        · exact ih (wordPrefix word) older

theorem prepFrames_source (count : Nat) (word : Word count)
    (frame : Frame) (membership : frame ∈ prepFrames count word) :
    ∃ index, index < count ∧
      ((frame.key = portKey .first (preparationOccurrence index) ∧
          frame.bit = false) ∨
       (frame.key = portKey .second (preparationOccurrence index) ∧
          frame.bit = bitAt word index)) := by
  induction count with
  | zero => simp [prepFrames] at membership
  | succ count ih =>
      simp only [prepFrames] at membership
      rcases mem_insertFrame_source _ _ _ membership with equal | inside
      · subst frame
        have lastBit : wordLast word = bitAt word count := by
          simp [wordLast, bitAt]
        exact ⟨count, Nat.lt_succ_self count, .inr ⟨rfl, lastBit⟩⟩
      · rcases mem_insertFrame_source _ _ _ inside with equal | older
        · subst frame
          exact ⟨count, Nat.lt_succ_self count, .inl ⟨rfl, rfl⟩⟩
        · rcases ih (wordPrefix word) older with
            ⟨index, inPrefix, source⟩
          refine ⟨index, Nat.lt.step inPrefix, ?_⟩
          rcases source with source | source
          · exact .inl source
          · exact .inr ⟨source.1,
              source.2.trans (bitAt_wordPrefix word index inPrefix)⟩

@[simp] theorem sameKeyFrames_prepFrames_h (stored fresh : Nat)
    (word : Word stored) :
    sameKeyFrames (prepFrames stored word) (prepHKey fresh) = [] := by
  apply List.filter_eq_nil_iff.mpr
  intro frame membership
  have gateC := prepFrames_gate_c stored word frame membership
  rcases frame with ⟨⟨gate, port, inst⟩, bit, epoch⟩
  simp only at gateC
  subst gate
  intro impossible
  change false = true at impossible
  exact Bool.noConfusion impossible

@[simp] theorem sameKeyFrames_prepFrames_hInstance (stored fresh : Nat)
    (word : Word stored) :
    sameKeyFrames (prepFrames stored word)
      ⟨.h, none, prepHInstance fresh⟩ = [] := by
  simpa [prepHKey] using sameKeyFrames_prepFrames_h stored fresh word

@[simp] theorem bitfreeKeys_prepStorage (count : Nat) :
    bitfreeKeys (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ]
      change bitfreeKeys (prepStorage count) = []
      exact ih

@[simp] theorem deadKeys_prepStorage (count : Nat) :
    deadKeys (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ]
      change deadKeys (prepStorage count) = []
      exact ih

theorem preparationOccurrence_injective :
    Function.Injective preparationOccurrence := by
  intro left right equal
  have lengthEqual := congrArg List.length equal
  simp [preparationOccurrence, preparationRoot, shellBodyPath] at lengthEqual
  omega

theorem prepInvoked_ne (left right : Nat) (different : left ≠ right) :
    prepInvoked left ≠ prepInvoked right := by
  intro equal
  have pathsEqual := congrArg
    (fun value => match value with
      | .mk _ _ _ _ _ paths _ _ _ => paths) equal
  have occurrenceEqual :
      preparationOccurrence left = preparationOccurrence right := by
    simpa [prepInvoked, lp, entry] using pathsEqual
  exact different (preparationOccurrence_injective occurrenceEqual)

theorem prepInvoked_injective : Function.Injective prepInvoked := by
  intro left right equal
  by_cases same : left = right
  · exact same
  · exact False.elim (prepInvoked_ne left right same equal)

theorem prepFrames_same_key_bit (count : Nat) (word : Word count)
    (left right : Frame) (leftMem : left ∈ prepFrames count word)
    (rightMem : right ∈ prepFrames count word)
    (sameKey : left.key = right.key) : left.bit = right.bit := by
  rcases prepFrames_source count word left leftMem with
    ⟨leftIndex, _, leftSource⟩
  rcases prepFrames_source count word right rightMem with
    ⟨rightIndex, _, rightSource⟩
  rcases leftSource with leftSource | leftSource <;>
    rcases rightSource with rightSource | rightSource
  · exact leftSource.2.trans rightSource.2.symm
  · have keyEqual :
        portKey .first (preparationOccurrence leftIndex) =
          portKey .second (preparationOccurrence rightIndex) := by
      simpa [leftSource.1, rightSource.1] using sameKey
    have impossible := congrArg Key.port keyEqual
    simp [portKey] at impossible
  · have keyEqual :
        portKey .second (preparationOccurrence leftIndex) =
          portKey .first (preparationOccurrence rightIndex) := by
      simpa [leftSource.1, rightSource.1] using sameKey
    have impossible := congrArg Key.port keyEqual
    simp [portKey] at impossible
  · have keyEqual :
        portKey .second (preparationOccurrence leftIndex) =
          portKey .second (preparationOccurrence rightIndex) := by
      simpa [leftSource.1, rightSource.1] using sameKey
    have instanceEqual : prepInvoked leftIndex = prepInvoked rightIndex := by
      change lp (preparationOccurrence leftIndex) [] =
        lp (preparationOccurrence rightIndex) []
      simpa [portKey] using congrArg Key.inst keyEqual
    have indexEqual := prepInvoked_injective instanceEqual
    subst rightIndex
    exact leftSource.2.trans rightSource.2.symm

theorem key_eq_of_beq (left right : Key)
    (equal : (left == right) = true) : left = right := by
  rcases left with ⟨leftGate, leftPort, leftInst⟩
  rcases right with ⟨rightGate, rightPort, rightInst⟩
  change (leftGate == rightGate &&
    (leftPort == rightPort && leftInst == rightInst)) = true at equal
  simp only [Bool.and_eq_true] at equal
  have gateEqual : leftGate = rightGate := by
    cases leftGate <;> cases rightGate
    all_goals try rfl
    all_goals
      have impossible := equal.1
      change false = true at impossible
      exact Bool.noConfusion impossible
  have portEqual : leftPort = rightPort := by
    cases leftPort <;> cases rightPort
    all_goals try rfl
    case none.some =>
      have impossible := equal.2.1
      change false = true at impossible
      exact Bool.noConfusion impossible
    case some.none =>
      have impossible := equal.2.1
      change false = true at impossible
      exact Bool.noConfusion impossible
    case some.some val other =>
      cases val <;> cases other
      all_goals try rfl
      all_goals
        have impossible := equal.2.1
        change false = true at impossible
        exact Bool.noConfusion impossible
  have instEqual : leftInst = rightInst :=
    entry_eq_of_beq equal.2.2
  subst rightGate
  subst rightPort
  subst rightInst
  rfl

@[simp] theorem hasBitConflict_prepFrames (count : Nat)
    (word : Word count) :
    hasBitConflict (frameBitPairs (prepFrames count word)) = false := by
  cases isTrue :
      hasBitConflict (frameBitPairs (prepFrames count word)) with
  | false => rfl
  | true =>
      unfold hasBitConflict at isTrue
      rcases List.any_eq_true.mp isTrue with
        ⟨leftPair, leftPairMem, innerTrue⟩
      rcases List.any_eq_true.mp innerTrue with
        ⟨rightPair, rightPairMem, conflict⟩
      rcases List.mem_map.mp leftPairMem with ⟨left, leftMem, rfl⟩
      rcases List.mem_map.mp rightPairMem with ⟨right, rightMem, rfl⟩
      simp only [Bool.and_eq_true] at conflict
      have sameKey : left.key = right.key :=
        key_eq_of_beq left.key right.key conflict.1
      have sameBit := prepFrames_same_key_bit count word left right
        leftMem rightMem sameKey
      simp [sameBit] at conflict

@[simp] theorem prepInvoked_beq_ne (left right : Nat)
    (different : left ≠ right) :
    (prepInvoked left == prepInvoked right) = false :=
  beq_eq_false_iff_ne.mpr (prepInvoked_ne left right different)

@[simp] theorem filterCparkBEq_prepStorage
    (stored fresh start : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if (other == prepInvoked fresh) = true then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepStorage stored).zipIdx start) = [] := by
  induction stored generalizing start with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      simp [prepHistory, ih]

theorem prepStorage_no_future (stored fresh : Nat)
    (notFuture : stored ≤ fresh) :
    (prepStorage stored).any (fun item =>
      match item with
      | .cpark other _ _ _ _ _ => other == prepInvoked fresh
      | .chistory other _ _ _ _ _ _ => other == prepInvoked fresh
      | _ => false) = false := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ]
      have priorDifferent : stored ≠ fresh := by omega
      have priorNotFuture : stored ≤ fresh := by omega
      simp [prepHistory, prepInvoked_beq_ne stored fresh priorDifferent,
        ih priorNotFuture]

@[simp] theorem prepStorage_no_current (count : Nat) :
    (prepStorage count).any (fun item =>
      match item with
      | .cpark other _ _ _ _ _ => other == prepInvoked count
      | .chistory other _ _ _ _ _ _ => other == prepInvoked count
      | _ => false) = false :=
  prepStorage_no_future count count (Nat.le_refl count)

@[simp] theorem hasPriorCInvocation_prepStorage (count : Nat) :
    hasPriorCInvocation (prepInvoked count) (prepStorage count) = false := by
  unfold hasPriorCInvocation
  exact prepStorage_no_current count

@[simp] theorem prepStorage_no_current_exists (count : Nat) :
    ¬∃ item, item ∈ prepStorage count ∧
      (match item with
       | .cpark other _ _ _ _ _ => other == prepInvoked count
       | .chistory other _ _ _ _ _ _ => other == prepInvoked count
       | _ => false) = true := by
  intro existsRefire
  have anyTrue :
      (prepStorage count).any (fun item =>
        match item with
        | .cpark other _ _ _ _ _ => other == prepInvoked count
        | .chistory other _ _ _ _ _ _ => other == prepInvoked count
        | _ => false) = true :=
    List.any_eq_true.mpr existsRefire
  rw [prepStorage_no_current] at anyTrue
  contradiction

@[simp] theorem finishCStage_prepStorage (count : Nat) (path : Path)
    (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames, prepStorage count⟩ = none := by
  cases count <;> rfl

@[simp] theorem finishCStage_cstage (kind : CStageKind) (path : Path)
    (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames, .cstage kind :: storage⟩ =
      some (kernelDeterministic (finishStageRow kind)
        (.run ⟨path, direction, log, tape, vb, frames, storage⟩)) := by
  rfl

@[simp] theorem finishCStage_cpark (invoked : Entry) (bit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (occurrence continuation path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames,
        .cpark invoked bit descriptor descriptors occurrence continuation ::
          storage⟩ = none := by
  rfl

def preparedPrefixState (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨prepContinuationPath (count - 1), .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def word1 (bit : Bool) : Word 1 := fun _ => bit

example : compiledEvolve empty1 51
      [⟨QalcComposedMachine.initial, one⟩] =
    [⟨preparedPrefixState 1 (word1 false), invSqrt2⟩,
     ⟨preparedPrefixState 1 (word1 true), invSqrt2⟩] := by native_decide

def word2 (first second : Bool) : Word 2
  | ⟨0, _⟩ => first
  | ⟨1, _⟩ => second

example : compiledEvolve (show Circuit 2 from []) 98
      [⟨QalcComposedMachine.initial, one⟩] =
    [⟨preparedPrefixState 2 (word2 false false), ⟨1, 0, 0, 0, 2⟩⟩,
     ⟨preparedPrefixState 2 (word2 false true), ⟨1, 0, 0, 0, 2⟩⟩,
     ⟨preparedPrefixState 2 (word2 true false), ⟨1, 0, 0, 0, 2⟩⟩,
     ⟨preparedPrefixState 2 (word2 true true), ⟨1, 0, 0, 0, 2⟩⟩] := by
  native_decide

def zeroTerm : Term := .lam (.lam (.var 2))

def prepOneProgram (tail : Term) : Term :=
  let body := .app (.app (.app (.var 1) zeroTerm)
    (.app (.var 3) zeroTerm)) (.lam (.lam tail))
  .app (.app (.app (.lam (.lam (.lam body))) (.gate .h)) (.gate .t))
    (.gate .c)

/-! The raw de Bruijn shape of an arbitrary preparation prefix.  Every
completed preparation CNOT contributes two binders, so the next native CNOT
and H references move outward by exactly two indices.  Keeping this shape
separate from the named compiler makes the width induction below a statement
about the actual immutable term, not an assumed schedule. -/
def prepNode (index : Nat) (tail : Term) : Term :=
  .app (.app (.app (.var (2 * index + 1)) zeroTerm)
    (.app (.var (2 * index + 3)) zeroTerm)) (.lam (.lam tail))

def prepChain : Nat → Nat → Term → Term
  | _, 0, tail => tail
  | index, count + 1, tail =>
      prepNode index (prepChain (index + 1) count tail)

def prepProgram (width : Nat) (tail : Term) : Term :=
  .app (.app (.app (.lam (.lam (.lam (prepChain 0 width tail))))
    (.gate .h)) (.gate .t)) (.gate .c)

def prepBlock : Path := [.arg, .body, .body]

theorem subterm_append (term : Term) (pathPrefix suffix : Path) :
    subterm? term (pathPrefix ++ suffix) =
      (subterm? term pathPrefix).bind fun inside => subterm? inside suffix := by
  induction pathPrefix generalizing term with
  | nil => simp [subterm?]
  | cons step rest ih =>
      cases term <;> cases step <;> simp [subterm?, ih]

theorem subterm_prepChain_last (start count : Nat) (tail : Term) :
    subterm? (prepChain start (count + 1) tail)
        (List.flatten (List.replicate count prepBlock)) =
      some (prepNode (start + count) tail) := by
  induction count generalizing start with
  | zero => simp [prepChain, subterm?]
  | succ count ih =>
      change subterm?
          (prepNode start (prepChain (start + 1) (count + 1) tail))
          (prepBlock ++ List.flatten (List.replicate count prepBlock)) =
        some (prepNode (start + (count + 1)) tail)
      rw [subterm_append]
      change subterm? (prepChain (start + 1) (count + 1) tail)
          (List.flatten (List.replicate count prepBlock)) =
        some (prepNode (start + (count + 1)) tail)
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        ih (start + 1)

theorem subterm_prepChain_drop (start before remaining : Nat) (tail : Term) :
    subterm? (prepChain start (before + remaining) tail)
        (List.flatten (List.replicate before prepBlock)) =
      some (prepChain (start + before) remaining tail) := by
  induction before generalizing start with
  | zero => simp [prepChain, subterm?]
  | succ before ih =>
      rw [show List.flatten (List.replicate (before + 1) prepBlock) =
          prepBlock ++ List.flatten (List.replicate before prepBlock) by
        simp [List.replicate_succ]]
      rw [show before + 1 + remaining = (before + remaining) + 1 by omega]
      change subterm?
          (prepNode start
            (prepChain (start + 1) (before + remaining) tail))
          (prepBlock ++ List.flatten (List.replicate before prepBlock)) = _
      rw [subterm_append]
      simp only [prepNode, prepBlock, subterm?, Option.bind_some]
      change subterm? (prepChain (start + 1) (before + remaining) tail)
          (List.flatten (List.replicate before prepBlock)) = _
      rw [ih (start + 1)]
      have indexEqual : start + 1 + before = start + (before + 1) := by
        omega
      rw [indexEqual]

theorem preparationRoot_eq (index : Nat) :
    preparationRoot index = shellBodyPath ++
      List.flatten (List.replicate index prepBlock) := by
  rfl

theorem subterm_prepProgram_root (index : Nat) (tail : Term) :
    subterm? (prepProgram (index + 1) tail) (preparationRoot index) =
      some (prepNode index tail) := by
  rw [preparationRoot_eq, subterm_append]
  simp only [prepProgram, shellBodyPath, subterm?, Option.bind_some]
  simpa using subterm_prepChain_last 0 index tail

@[simp] theorem subterm_prepProgram_occurrence (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail)
        (preparationOccurrence index) =
      some (.var (2 * index + 1)) := by
  rw [show preparationOccurrence index =
      preparationRoot index ++ [.fn, .fn, .fn] by rfl]
  rw [subterm_append, subterm_prepProgram_root]
  simp [prepNode, subterm?]

@[simp] theorem subterm_prepProgram_firstPath (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail) (prepFirstPath index) =
      some zeroTerm := by
  rw [show prepFirstPath index =
      preparationRoot index ++ [.fn, .fn, .arg] by rfl]
  rw [subterm_append, subterm_prepProgram_root]
  simp [prepNode, zeroTerm, subterm?]

@[simp] theorem subterm_prepProgram_secondPath (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail) (prepSecondPath index) =
      some (.app (.var (2 * index + 3)) zeroTerm) := by
  rw [show prepSecondPath index =
      preparationRoot index ++ [.fn, .arg] by rfl]
  rw [subterm_append, subterm_prepProgram_root]
  simp [prepNode, zeroTerm, subterm?]

@[simp] theorem subterm_prepProgram_second_zero (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail)
        (prepSecondPath index ++ [.arg]) = some zeroTerm := by
  rw [subterm_append, subterm_prepProgram_secondPath]
  simp [subterm?, zeroTerm]

@[simp] theorem subterm_prepProgram_firstPath_body (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail)
        (prepFirstPath index ++ [.body]) =
      some (.lam (.var 2)) := by
  rw [subterm_append, subterm_prepProgram_firstPath]
  simp [zeroTerm, subterm?]

@[simp] theorem subterm_prepProgram_firstPath_body_body (index : Nat)
    (tail : Term) :
    subterm? (prepProgram (index + 1) tail)
        (prepFirstPath index ++ [.body, .body]) =
      some (.var 2) := by
  rw [subterm_append, subterm_prepProgram_firstPath]
  simp [zeroTerm, subterm?]

@[simp] theorem preparationOccurrence_getLast (index : Nat) :
    (preparationOccurrence index).getLast? = some .fn := by
  simp [preparationOccurrence]

@[simp] theorem preparationOccurrence_ne_nil (index : Nat) :
    preparationOccurrence index ≠ [] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [preparationOccurrence, preparationRoot, shellBodyPath] at lengths

@[simp] theorem preparationOccurrence_dropLast_arg (index : Nat) :
    (preparationOccurrence index).dropLast ++ [.arg] =
      prepFirstPath index := by
  simp [preparationOccurrence, prepFirstPath]

theorem subterm_prepProgram_at (index remaining : Nat) (tail : Term) :
    subterm? (prepProgram (index + remaining) tail) (preparationRoot index) =
      some (prepChain index remaining tail) := by
  rw [preparationRoot_eq, subterm_append]
  simp only [prepProgram, shellBodyPath, subterm?, Option.bind_some]
  simpa using subterm_prepChain_drop 0 index remaining tail

@[simp] theorem subterm_prepProgram_cBinder (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail)
        [.fn, .fn, .fn, .body, .body] =
      some (.lam (prepChain 0 width tail)) := by
  simp [prepProgram, subterm?]

def hBinderPath : Path := [.fn, .fn, .fn]
def tBinderPath : Path := [.fn, .fn, .fn, .body]
def cBinderPath : Path := [.fn, .fn, .fn, .body, .body]

@[simp] theorem subterm_prepProgram_hBinderPath
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) hBinderPath =
      some (.lam (.lam (.lam (prepChain 0 width tail)))) := by
  simp [hBinderPath, prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_hBinderConcrete
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn, .fn, .fn] =
      some (.lam (.lam (.lam (prepChain 0 width tail)))) := by
  simpa [hBinderPath] using subterm_prepProgram_hBinderPath width tail

@[simp] theorem subterm_prepProgram_hApplication
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn, .fn] =
      some (.app (.lam (.lam (.lam (prepChain 0 width tail))))
        (.gate .h)) := by
  simp [prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_tApplication
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn] =
      some (.app
        (.app (.lam (.lam (.lam (prepChain 0 width tail)))) (.gate .h))
        (.gate .t)) := by
  simp [prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_hGate
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn, .fn, .arg] =
      some (.gate .h) := by
  simp [prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_tGate
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn, .arg] =
      some (.gate .t) := by
  simp [prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_cGate
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.arg] = some (.gate .c) := by
  simp [prepProgram, subterm?]

@[simp] theorem hBinderPath_getLast :
    hBinderPath.getLast? = some .fn := by
  rfl

@[simp] theorem hBinderPath_ne_nil : hBinderPath ≠ [] := by
  native_decide

@[simp] theorem hBinderPath_dropLast :
    hBinderPath.dropLast = [.fn, .fn] := by
  rfl

@[simp] theorem subterm_prepProgram_tBinderPath
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) tBinderPath =
      some (.lam (.lam (prepChain 0 width tail))) := by
  simp [tBinderPath, prepProgram, subterm?]

@[simp] theorem subterm_prepProgram_tBinderConcrete
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) [.fn, .fn, .fn, .body] =
      some (.lam (.lam (prepChain 0 width tail))) := by
  simpa [tBinderPath] using subterm_prepProgram_tBinderPath width tail

@[simp] theorem tBinderPath_getLast :
    tBinderPath.getLast? = some .body := by
  rfl

@[simp] theorem tBinderPath_dropLast :
    tBinderPath.dropLast = hBinderPath := by
  rfl

@[simp] theorem subterm_prepProgram_cBinderPath
    (width : Nat) (tail : Term) :
    subterm? (prepProgram width tail) cBinderPath =
      some (.lam (prepChain 0 width tail)) := by
  simpa [cBinderPath] using subterm_prepProgram_cBinder width tail

@[simp] theorem cBinderPath_getLast :
    cBinderPath.getLast? = some .body := by
  rfl

@[simp] theorem cBinderPath_dropLast :
    cBinderPath.dropLast = tBinderPath := by
  rfl

@[simp] theorem cBinderPath_ne_prepContinuation (index : Nat) :
    cBinderPath ≠ prepContinuationPath index := by
  intro equal
  have lengths := congrArg List.length equal
  simp [cBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem hBinderPath_ne_prepContinuation (index : Nat) :
    hBinderPath ≠ prepContinuationPath index := by
  intro equal
  have lengths := congrArg List.length equal
  simp [hBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem hBinderPath_ne_prepContinuation_body (index : Nat) :
    hBinderPath ≠ prepContinuationPath index ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [hBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem prepContinuation_ne_hBinderPath (index : Nat) :
    prepContinuationPath index ≠ hBinderPath := by
  exact Ne.symm (hBinderPath_ne_prepContinuation index)

@[simp] theorem prepContinuation_ne_cBinderPath (index : Nat) :
    prepContinuationPath index ≠ cBinderPath := by
  exact Ne.symm (cBinderPath_ne_prepContinuation index)

@[simp] theorem prepContinuation_ne_virtualPath (index : Nat) :
    prepContinuationPath index ≠ [.fn, .fn, .arg] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengths

@[simp] theorem prepContinuation_ne_prepSecondFn
    (stored fresh : Nat) :
    prepContinuationPath stored ≠ prepSecondPath fresh ++ [.fn] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, prepSecondPath, preparationRoot,
    shellBodyPath] at lengths
  omega

@[simp] theorem cBinderPath_ne_prepContinuation_body (index : Nat) :
    cBinderPath ≠ prepContinuationPath index ++ [.body] := by
  intro equal
  have lengths := congrArg List.length equal
  simp [cBinderPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengths

@[simp] theorem cBinderPath_beq_prepContinuation (index : Nat) :
    (cBinderPath == prepContinuationPath index) = false :=
  beq_eq_false_iff_ne.mpr (cBinderPath_ne_prepContinuation index)

@[simp] theorem cBinderPath_beq_prepContinuation_body (index : Nat) :
    (cBinderPath == prepContinuationPath index ++ [.body]) = false :=
  beq_eq_false_iff_ne.mpr (cBinderPath_ne_prepContinuation_body index)

theorem storedPortBindings_append (path : Path)
    (left right : List Store) :
    storedPortBindings path (left ++ right) =
      storedPortBindings path left ++ storedPortBindings path right := by
  simp [storedPortBindings, List.filterMap_append]

@[simp] theorem deliverPort_down (term : Term) (path : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    deliverPort term
      ⟨path, .down, log, tape, vb, frames, storage⟩ = none := by
  rfl

@[simp] theorem deliverPort_bullet (term : Term) (path : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    deliverPort term
      ⟨path, .up, log, bullet :: tape, vb, frames, storage⟩ = none := by
  rfl

@[simp] theorem deliverPort_cgam (term : Term) (path : Path)
    (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    deliverPort term
      ⟨path, .up, log,
        cgam port invoked occurrence first second continuation :: tape,
        vb, frames, storage⟩ = none := by
  rfl

@[simp] theorem deliverPort_gam (term : Term) (path : Path)
    (gate : GateName) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    deliverPort term
      ⟨path, .up, log, gam gate :: tape, vb, frames, storage⟩ = none := by
  rfl

@[simp] theorem closeVirtualPort_gam (path : Path)
    (gate : GateName) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    closeVirtualPort
      ⟨path, .up, log, gam gate :: tape, vb, frames, storage⟩ = none := by
  have headNotBullet : isBullet (gam gate :: tape).head! = false :=
    by cases gate <;> rfl
  cases vb <;> simp [closeVirtualPort, headNotBullet]

@[simp] theorem returnContinuation_gam (path : Path)
    (gate : GateName) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    returnContinuation
      ⟨path, .up, log, gam gate :: tape, vb, frames, storage⟩ = none := by
  have notBullet : isBullet (gam gate) = false := by cases gate <;> rfl
  simp [returnContinuation, notBullet]

@[simp] theorem returnContinuation_cgam (path : Path)
    (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    returnContinuation
      ⟨path, .up, log,
        cgam port invoked occurrence first second continuation :: tape,
        vb, frames, storage⟩ = none := by
  have notBullet :
      isBullet (cgam port invoked occurrence first second continuation) =
        false := by rfl
  have headNotBullet :
      isBullet
        (cgam port invoked occurrence first second continuation :: tape).head! =
          false := by
    change isBullet
      (cgam port invoked occurrence first second continuation) = false
    exact notBullet
  simp [returnContinuation, notBullet, headNotBullet]

@[simp] theorem closeVirtualPort_cgam (path : Path)
    (direction : Direction) (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    closeVirtualPort
      ⟨path, direction, log,
        cgam port invoked occurrence first second continuation :: tape,
        vb, frames, storage⟩ = none := by
  have notBullet :
      isBullet (cgam port invoked occurrence first second continuation) =
        false := by rfl
  have headNotBullet :
      isBullet
        (cgam port invoked occurrence first second continuation :: tape).head! =
          false := by
    change isBullet
      (cgam port invoked occurrence first second continuation) = false
    exact notBullet
  cases direction <;> simp [closeVirtualPort, notBullet, headNotBullet]

@[simp] theorem closeVirtualPort_down (path : Path) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    closeVirtualPort
      ⟨path, .down, log, tape, vb, frames, storage⟩ = none := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  simp [closeVirtualPort, directionDifferent]

@[simp] theorem closeVirtualPort_lp (path occurrence : Path)
    (direction : Direction) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    closeVirtualPort
      ⟨path, direction, log, lp occurrence slice :: tape,
        vb, frames, storage⟩ = none := by
  have notBullet : isBullet (lp occurrence slice) = false := by rfl
  have headNotBullet :
      isBullet (lp occurrence slice :: tape).head! = false := by
    exact notBullet
  cases direction <;> simp [closeVirtualPort, headNotBullet]

@[simp] theorem closeVirtualPort_alpha (path : Path) (direction : Direction)
    (gate : GateName) (port : Option Port) (inst : Entry)
    (bit : Bool) (epoch : Epoch) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    closeVirtualPort
      ⟨path, direction, log,
        alpha gate port inst bit epoch :: tape,
        vb, frames, storage⟩ = none := by
  have headNotBullet :
      isBullet (alpha gate port inst bit epoch :: tape).head! = false := by
    change isBullet (alpha gate port inst bit epoch) = false
    exact isBullet_alpha gate port inst bit epoch
  cases direction <;> simp [closeVirtualPort, headNotBullet]

@[simp] theorem composedEntry_lp (occurrence : Path)
    (slice : List Entry) :
    composedEntry (lp occurrence slice) = lp occurrence slice := by
  rfl

@[simp] theorem composedEntry_bullet :
    composedEntry bullet = appBullet := by
  rfl

@[simp] theorem composedEntry_rb (depth : Nat) (outputPath codePath : Path)
    (pending : List Path) :
    composedEntry (rb depth outputPath codePath pending) =
      rb depth outputPath codePath pending := by
  rfl

@[simp] theorem composedEntry_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    composedEntry (cgam port invoked occurrence first second continuation) =
      cgam port invoked occurrence first second continuation := by
  rfl

@[simp] theorem composedEntry_cmu (port : Port) (invoked : Entry) :
    composedEntry (cmu port invoked) = cmu port invoked := by
  rfl

@[simp] theorem composedEntry_mu (gate : GateName) :
    composedEntry (mu gate) = mu gate := by
  cases gate <;> rfl

@[simp] theorem composedEntry_gam (gate : GateName) :
    composedEntry (gam gate) = gam gate := by
  cases gate <;> rfl

@[simp] theorem composedEntry_ans (gate : GateName) (bit : Bool) :
    composedEntry (ans gate bit) = ans gate bit := by
  cases gate <;> cases bit <;> rfl

@[simp] theorem kernelEntry_lp (occurrence : Path) (slice : List Entry) :
    kernelEntry (lp occurrence slice) = lp occurrence slice := by
  rfl

@[simp] theorem kernelEntry_appBullet :
    kernelEntry appBullet = bullet := by
  rfl

@[simp] theorem isAppBullet_appBullet :
    isAppBullet appBullet = true := by
  rfl

@[simp] theorem isAppBullet_lp (occurrence : Path) (slice : List Entry) :
    isAppBullet (lp occurrence slice) = false := by
  rfl

@[simp] theorem isBullet_lp (occurrence : Path) (slice : List Entry) :
    isBullet (lp occurrence slice) = false := by
  rfl

@[simp] theorem isBullet_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    isBullet (cgam port invoked occurrence first second continuation) = false := by
  rfl

@[simp] theorem isBullet_cmu (port : Port) (invoked : Entry) :
    isBullet (cmu port invoked) = false := by
  rfl

@[simp] theorem isAppBullet_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    isAppBullet (cgam port invoked occurrence first second continuation) =
      false := by
  rfl

@[simp] theorem isAppBullet_cmu (port : Port) (invoked : Entry) :
    isAppBullet (cmu port invoked) = false := by
  rfl

@[simp] theorem isBullet_mu (gate : GateName) :
    isBullet (mu gate) = false := by
  cases gate <;> rfl

@[simp] theorem isAppBullet_mu (gate : GateName) :
    isAppBullet (mu gate) = false := by
  cases gate <;> rfl

@[simp] theorem isBullet_gam (gate : GateName) :
    isBullet (gam gate) = false := by
  cases gate <;> rfl

@[simp] theorem isAppBullet_gam (gate : GateName) :
    isAppBullet (gam gate) = false := by
  cases gate <;> rfl

@[simp] theorem isLP_lp (occurrence : Path) (slice : List Entry) :
    isLP (lp occurrence slice) = true := by
  rfl

@[simp] theorem arrivalLP_lp (occurrence : Path) (slice : List Entry) :
    arrivalLP (lp occurrence slice) = true := by
  rfl

@[simp] theorem alphaBitPairs_lp_empty (occurrence : Path) :
    alphaBitPairs (lp occurrence []) = [] := by
  rfl

@[simp] theorem alphaKeysLive_lp_empty (occurrence : Path) :
    alphaKeysLive (lp occurrence []) = [] := by
  rfl

@[simp] theorem eraseKeys_nil (removed : List Key) :
    eraseKeys [] removed = [] := by
  rfl

@[simp] theorem unionKeys_nil_nil : unionKeys [] [] = [] := by
  rfl

@[simp] theorem isMu_mu (gate : GateName) :
    isMu (mu gate) = true := by
  cases gate <;> rfl

@[simp] theorem isCMu_mu (gate : GateName) :
    isCMu (mu gate) = false := by
  cases gate <;> rfl

@[simp] theorem lpLike_lp (occurrence : Path) (slice : List Entry) :
    lpLike (lp occurrence slice) = true := by
  rfl

@[simp] theorem lpLike_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    lpLike (cgam port invoked occurrence first second continuation) = true := by
  rfl

@[simp] theorem isAppBullet_rb (depth : Nat) (outputPath codePath : Path)
    (pending : List Path) :
    isAppBullet (rb depth outputPath codePath pending) = false := by
  rfl

@[simp] theorem kernelEntry_rb (depth : Nat) (outputPath codePath : Path)
    (pending : List Path) :
    kernelEntry (rb depth outputPath codePath pending) =
      rb depth outputPath codePath pending := by
  rfl

@[simp] theorem kernelEntry_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    kernelEntry (cgam port invoked occurrence first second continuation) =
      cgam port invoked occurrence first second continuation := by
  rfl

@[simp] theorem kernelEntry_cmu (port : Port) (invoked : Entry) :
    kernelEntry (cmu port invoked) = cmu port invoked := by
  rfl

@[simp] theorem kernelEntry_gam (gate : GateName) :
    kernelEntry (gam gate) = gam gate := by
  cases gate <;> rfl

@[simp] theorem asCGam_cgam (port : Port) (invoked : Entry)
    (occurrence first second continuation : Path) :
    asCGam? (cgam port invoked occurrence first second continuation) =
      some (port, invoked, occurrence, first, second, continuation) := by
  rfl

@[simp] theorem asCMu_cmu (port : Port) (invoked : Entry) :
    asCMu? (cmu port invoked) = some (port, invoked) := by
  rfl

@[simp] theorem isMu_cmu (port : Port) (invoked : Entry) :
    isMu (cmu port invoked) = false := by
  rfl

@[simp] theorem isCMu_cmu (port : Port) (invoked : Entry) :
    isCMu (cmu port invoked) = true := by
  rfl

@[simp] theorem composed_kernelEntry_rb (depth : Nat)
    (outputPath codePath : Path) (pending : List Path) :
    composedEntry (kernelEntry (rb depth outputPath codePath pending)) =
      rb depth outputPath codePath pending := by
  rfl

@[simp] theorem storedPortBindings_cBinder_prepStorage (count : Nat) :
    storedPortBindings cBinderPath (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory]

@[simp] theorem storedPortBindings_hBinder_prepStorage (count : Nat) :
    storedPortBindings hBinderPath (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory,
        prepContinuation_ne_hBinderPath,
        hBinderPath_ne_prepContinuation_body]

@[simp] theorem deliverPort_cBinder_prepStorage (term : Term)
    (count : Nat) (occurrence : Path) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort term
      ⟨cBinderPath, .up, log, lp occurrence slice :: tape,
        vb, frames, prepStorage count⟩ = none := by
  simp [deliverPort, lp, entry, asLP?]

@[simp] theorem storedReturnOccurrences_cBinder_prepStorage
    (count : Nat) :
    storedReturnOccurrences cBinderPath (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ]
      rw [storedReturnOccurrences_append]
      rw [ih]
      simp [storedReturnOccurrences, prepHistory,
        prepContinuation_ne_cBinderPath]

@[simp] theorem storedReturnOccurrences_hBinder_prepStorage
    (count : Nat) :
    storedReturnOccurrences hBinderPath (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory,
        prepContinuation_ne_hBinderPath]

@[simp] theorem storedReturnOccurrences_virtual_prepStorage
    (count : Nat) :
    storedReturnOccurrences [.fn, .fn, .arg] (prepStorage count) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory,
        prepContinuation_ne_virtualPath]

@[simp] theorem storedReturnOccurrences_prepSecondFn_prepStorage
    (stored fresh : Nat) :
    storedReturnOccurrences (prepSecondPath fresh ++ [.fn])
      (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      simp [storedReturnOccurrences, prepHistory,
        prepContinuation_ne_prepSecondFn]

@[simp] theorem returnContinuation_hBinder_prepStorage
    (count : Nat) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    returnContinuation
      ⟨hBinderPath, .up, log, tape, vb, frames, prepStorage count⟩ = none := by
  simp [returnContinuation]

@[simp] theorem returnContinuation_cBinder_prepStorage
    (count : Nat) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    returnContinuation
      ⟨cBinderPath, .up, log, tape, vb, frames, prepStorage count⟩ = none := by
  simp [returnContinuation]

@[simp] theorem returnContinuation_bullet_lp
    (path : Path) (log tape slice : List Entry) (occurrence : Path)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    returnContinuation
      ⟨path, .up, log, bullet :: lp occurrence slice :: tape,
        vb, frames, storage⟩ = none := by
  simp [returnContinuation]

@[simp] theorem returnContinuation_lp
    (path : Path) (log tape slice : List Entry) (occurrence : Path)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    returnContinuation
      ⟨path, .up, log, lp occurrence slice :: tape,
        vb, frames, storage⟩ = none := by
  simp [returnContinuation]

@[simp] theorem returnContinuation_bullet_prepInvoked
    (index : Nat) (path : Path) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    returnContinuation
      ⟨path, .up, log, bullet :: prepInvoked index :: tape,
        vb, frames, storage⟩ = none := by
  simpa [prepInvoked] using
    returnContinuation_bullet_lp path log tape ([] : List Entry)
      (preparationOccurrence index) vb frames storage

@[simp] theorem returnContinuation_prepInvoked
    (index : Nat) (path : Path) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame)
    (storage : List Store) :
    returnContinuation
      ⟨path, .up, log, prepInvoked index :: tape,
        vb, frames, storage⟩ = none := by
  simpa [prepInvoked] using
    returnContinuation_lp path log tape ([] : List Entry)
      (preparationOccurrence index) vb frames storage

@[simp] theorem returnContinuation_down (path : Path)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    returnContinuation
      ⟨path, .down, log, tape, vb, frames, storage⟩ = none := by
  rfl

@[simp] theorem boundHeadStep_emptyZipper (term : Term) (token : Token) :
    boundHeadStep? term token
      ⟨.hole false, some [], [], []⟩ = none := by
  simp [boundHeadStep?, binderIndex]

def shellBinders : List Path := [cBinderPath, tBinderPath, hBinderPath]

def priorPrepBinders (count : Nat) : List Path :=
  (List.range count).reverse.flatMap fun index =>
    [preparationRoot index ++ [.arg, .body],
     preparationRoot index ++ [.arg]]

theorem commute_flatten_replicate (count : Nat) (items : List α) :
    items ++ List.flatten (List.replicate count items) =
      List.flatten (List.replicate count items) ++ items := by
  induction count with
  | zero => simp
  | succ count ih =>
      simp only [List.replicate_succ, List.flatten_cons]
      simp only [List.append_assoc]
      rw [ih]

theorem flatten_replicate_succ_right (count : Nat) (items : List α) :
    List.flatten (List.replicate (count + 1) items) =
      List.flatten (List.replicate count items) ++ items := by
  simp only [List.replicate_succ, List.flatten_cons]
  exact commute_flatten_replicate count items

theorem preparationRoot_succ (index : Nat) :
    preparationRoot (index + 1) = preparationRoot index ++ prepBlock := by
  simp [preparationRoot, prepBlock, flatten_replicate_succ_right,
    List.append_assoc]

theorem priorPrepBinders_succ (count : Nat) :
    priorPrepBinders (count + 1) =
      [preparationRoot count ++ [.arg, .body],
       preparationRoot count ++ [.arg]] ++ priorPrepBinders count := by
  simp [priorPrepBinders, List.range_succ, List.flatMap_append]

@[simp] theorem priorPrepBinders_length (count : Nat) :
    (priorPrepBinders count).length = 2 * count := by
  induction count with
  | zero => simp [priorPrepBinders]
  | succ count ih =>
      rw [priorPrepBinders_succ]
      simp [ih]
      omega

theorem priorPrepBinders_second_get (count : Nat) (wire : Fin count) :
    (priorPrepBinders count)[2 * (count - 1 - wire.val)]? =
      some (prepContinuationPath wire.val ++ [.body]) := by
  induction count with
  | zero => exact Fin.elim0 wire
  | succ count ih =>
      rw [priorPrepBinders_succ]
      by_cases newest : wire.val = count
      · have wireEq : wire = ⟨count, Nat.lt_succ_self count⟩ :=
          Fin.ext newest
        rw [wireEq]
        simp [prepContinuationPath]
      · let older : Fin count := ⟨wire.val, by omega⟩
        have prior := ih older
        have indexShift :
            2 * (count + 1 - 1 - wire.val) =
              2 + 2 * (count - 1 - older.val) := by
          simp [older]
          omega
        rw [indexShift]
        let offset := 2 * (count - 1 - older.val)
        change
          ((preparationRoot count ++ [.arg, .body]) ::
            (preparationRoot count ++ [.arg]) ::
            priorPrepBinders count)[2 + offset]? = _
        rw [show 2 + offset = (offset + 1) + 1 by omega,
          List.getElem?_cons_succ, List.getElem?_cons_succ]
        simpa [offset, older] using prior

theorem binderPathGo_prepChain_last (start count : Nat) (tail : Term)
    (suffix : Path) :
    binderPathGo (prepChain start (count + 1) tail)
        (List.flatten (List.replicate count prepBlock) ++ suffix)
        (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
      binderPathGo (prepNode (start + count) tail) suffix
        (preparationRoot (start + count))
        (priorPrepBinders (start + count) ++ shellBinders) := by
  induction count generalizing start with
  | zero => simp [prepChain]
  | succ count ih =>
      rw [show List.flatten (List.replicate (count + 1) prepBlock) =
          prepBlock ++ List.flatten (List.replicate count prepBlock) by
        simp [List.replicate_succ]]
      change binderPathGo
          (prepNode start (prepChain (start + 1) (count + 1) tail))
          (prepBlock ++
            (List.flatten (List.replicate count prepBlock) ++ suffix))
          (preparationRoot start) (priorPrepBinders start ++ shellBinders) = _
      simp only [prepNode, prepBlock, List.append_assoc,
        List.cons_append, List.nil_append, binderPathGo]
      rw [show preparationRoot start ++ [.arg, .body, .body] =
          preparationRoot (start + 1) by
        symm
        exact preparationRoot_succ start]
      change binderPathGo (prepChain (start + 1) (count + 1) tail)
          (List.flatten (List.replicate count prepBlock) ++ suffix)
          (preparationRoot (start + 1))
          ([preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders)) = _
      rw [show [preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders) =
          priorPrepBinders (start + 1) ++ shellBinders by
        rw [priorPrepBinders_succ]
        simp]
      rw [show start + (count + 1) = (start + 1) + count by omega]
      exact ih (start + 1)

theorem binderPathGo_prepChain_tail (start count : Nat) (tail : Term)
    (suffix : Path) :
    binderPathGo (prepChain start count tail)
        (List.flatten (List.replicate count prepBlock) ++ suffix)
        (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
      binderPathGo tail suffix (preparationRoot (start + count))
        (priorPrepBinders (start + count) ++ shellBinders) := by
  induction count generalizing start with
  | zero => simp [prepChain]
  | succ count ih =>
      rw [show List.flatten (List.replicate (count + 1) prepBlock) =
          prepBlock ++ List.flatten (List.replicate count prepBlock) by
        simp [List.replicate_succ]]
      change binderPathGo
          (prepNode start (prepChain (start + 1) count tail))
          (prepBlock ++
            (List.flatten (List.replicate count prepBlock) ++ suffix))
          (preparationRoot start) (priorPrepBinders start ++ shellBinders) = _
      simp only [prepNode, prepBlock, List.append_assoc,
        List.cons_append, List.nil_append, binderPathGo]
      rw [show preparationRoot start ++ [.arg, .body, .body] =
          preparationRoot (start + 1) by
        symm
        exact preparationRoot_succ start]
      change binderPathGo (prepChain (start + 1) count tail)
          (List.flatten (List.replicate count prepBlock) ++ suffix)
          (preparationRoot (start + 1))
          ([preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders)) = _
      rw [show [preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders) =
          priorPrepBinders (start + 1) ++ shellBinders by
        rw [priorPrepBinders_succ]
        simp]
      rw [show start + (count + 1) = (start + 1) + count by omega]
      exact ih (start + 1)

theorem binder_prepProgram_tail (width : Nat) (tail : Term)
    (suffix : Path) :
    binderPath? (prepProgram width tail) (preparationRoot width ++ suffix) =
      binderPathGo tail suffix (preparationRoot width)
        (priorPrepBinders width ++ shellBinders) := by
  simp only [binderPath?, prepProgram, preparationRoot_eq,
    List.append_assoc]
  simp only [shellBodyPath, List.cons_append, List.nil_append, binderPathGo]
  simpa [preparationRoot, shellBodyPath, prepBlock, priorPrepBinders,
    shellBinders, hBinderPath, tBinderPath, cBinderPath]
    using binderPathGo_prepChain_tail 0 width tail suffix

theorem binder_prepProgram_local (index : Nat) (tail : Term)
    (suffix : Path) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ suffix) =
      binderPathGo (prepNode index tail) suffix (preparationRoot index)
        (priorPrepBinders index ++ shellBinders) := by
  simp only [binderPath?, prepProgram, preparationRoot_eq,
    List.append_assoc]
  simp only [shellBodyPath, List.cons_append, List.nil_append, binderPathGo]
  simpa [preparationRoot, shellBodyPath, prepBlock, priorPrepBinders,
    shellBinders, hBinderPath, tBinderPath, cBinderPath]
    using binderPathGo_prepChain_last 0 index tail suffix

theorem binder_prepProgram_first_zero (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (prepFirstPath index ++ [.body, .body]) =
      some (prepFirstPath index) := by
  rw [show prepFirstPath index ++ [.body, .body] =
      preparationRoot index ++ [.fn, .fn, .arg, .body, .body] by
    simp [prepFirstPath, List.append_assoc]]
  rw [binder_prepProgram_local]
  simp [prepNode, zeroTerm, binderPathGo, prepFirstPath,
    List.getElem?_append]

theorem binder_prepProgram_h_zero (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .arg, .arg, .body, .body]) =
      some (preparationRoot index ++ [.fn, .arg, .arg]) := by
  rw [binder_prepProgram_local]
  simp [prepNode, zeroTerm, binderPathGo, List.getElem?_append]

@[simp] theorem binder_prepProgram_c_root (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .fn, .fn]) = some cBinderPath := by
  rw [binder_prepProgram_local]
  simp [prepNode, binderPathGo, shellBinders, cBinderPath]

@[simp] theorem binder_prepProgram_h_root (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .arg, .fn]) = some hBinderPath := by
  rw [binder_prepProgram_local]
  simp [prepNode, binderPathGo, shellBinders, hBinderPath, tBinderPath,
    cBinderPath]

@[simp] theorem binder_prepProgram_first_zero_root (index : Nat)
    (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .fn, .arg, .body, .body]) =
      some (preparationRoot index ++ [.fn, .fn, .arg]) := by
  simpa [prepFirstPath, List.append_assoc] using
    binder_prepProgram_first_zero index tail

@[simp] theorem binder_prepProgram_h_zero_root (index : Nat)
    (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .arg, .arg, .body, .body]) =
      some (preparationRoot index ++ [.fn, .arg, .arg]) :=
  binder_prepProgram_h_zero index tail

theorem binder_c_in_prepChain (start count : Nat) (tail : Term) :
    binderPathGo (prepChain start (count + 1) tail)
        (List.flatten (List.replicate count prepBlock) ++ [.fn, .fn, .fn])
        (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
      some cBinderPath := by
  induction count generalizing start with
  | zero =>
      simp [prepChain, prepNode, binderPathGo, shellBinders,
        cBinderPath, List.getElem?_append]
  | succ count ih =>
      rw [show List.flatten (List.replicate (count + 1) prepBlock) =
          prepBlock ++ List.flatten (List.replicate count prepBlock) by
        simp [List.replicate_succ]]
      change binderPathGo
          (prepNode start (prepChain (start + 1) (count + 1) tail))
          (prepBlock ++
            (List.flatten (List.replicate count prepBlock) ++
              [.fn, .fn, .fn]))
          (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
        some cBinderPath
      simp only [prepNode, prepBlock, List.append_assoc,
        List.cons_append, List.nil_append, binderPathGo]
      rw [show preparationRoot start ++ [.arg, .body, .body] =
          preparationRoot (start + 1) by
        symm
        exact preparationRoot_succ start]
      change binderPathGo (prepChain (start + 1) (count + 1) tail)
          (List.flatten (List.replicate count prepBlock) ++ [.fn, .fn, .fn])
          (preparationRoot (start + 1))
          ([preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders)) = some cBinderPath
      rw [show [preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders) =
          priorPrepBinders (start + 1) ++ shellBinders by
        rw [priorPrepBinders_succ]
        simp [List.append_assoc]]
      exact ih (start + 1)

theorem binder_h_in_prepChain (start count : Nat) (tail : Term) :
    binderPathGo (prepChain start (count + 1) tail)
        (List.flatten (List.replicate count prepBlock) ++ [.fn, .arg, .fn])
        (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
      some hBinderPath := by
  induction count generalizing start with
  | zero =>
      simp [prepChain, prepNode, binderPathGo, shellBinders,
        hBinderPath, tBinderPath, cBinderPath, List.getElem?_append]
  | succ count ih =>
      rw [show List.flatten (List.replicate (count + 1) prepBlock) =
          prepBlock ++ List.flatten (List.replicate count prepBlock) by
        simp [List.replicate_succ]]
      change binderPathGo
          (prepNode start (prepChain (start + 1) (count + 1) tail))
          (prepBlock ++
            (List.flatten (List.replicate count prepBlock) ++
              [.fn, .arg, .fn]))
          (preparationRoot start) (priorPrepBinders start ++ shellBinders) =
        some hBinderPath
      simp only [prepNode, prepBlock, List.append_assoc,
        List.cons_append, List.nil_append, binderPathGo]
      rw [show preparationRoot start ++ [.arg, .body, .body] =
          preparationRoot (start + 1) by
        symm
        exact preparationRoot_succ start]
      change binderPathGo (prepChain (start + 1) (count + 1) tail)
          (List.flatten (List.replicate count prepBlock) ++ [.fn, .arg, .fn])
          (preparationRoot (start + 1))
          ([preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders)) = some hBinderPath
      rw [show [preparationRoot start ++ [.arg, .body],
              preparationRoot start ++ [.arg]] ++
            (priorPrepBinders start ++ shellBinders) =
          priorPrepBinders (start + 1) ++ shellBinders by
        rw [priorPrepBinders_succ]
        simp [List.append_assoc]]
      exact ih (start + 1)

theorem binder_prepProgram_c (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail) (preparationOccurrence index) =
      some cBinderPath := by
  simp only [binderPath?, prepProgram, preparationOccurrence,
    preparationRoot_eq]
  simp only [shellBodyPath, List.cons_append, List.nil_append, binderPathGo]
  simpa [preparationRoot, shellBodyPath, priorPrepBinders, shellBinders, hBinderPath,
    tBinderPath, cBinderPath] using
    binder_c_in_prepChain 0 index tail

@[simp] theorem cArguments_prepProgram (index : Nat) (tail : Term) :
    cArguments? (prepProgram (index + 1) tail)
        (preparationOccurrence index) =
      some (prepFirstPath index, prepSecondPath index,
        prepContinuationPath index) := by
  simp [cArguments?, preparationOccurrence, prepFirstPath,
    prepSecondPath, prepContinuationPath, subterm_append,
    subterm_prepProgram_root, prepNode, subterm?]
  rfl

@[simp] theorem deliverPort_tApplication_prepInvoked
    (count : Nat) (tail : Term) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort (prepProgram (count + 1) tail)
      ⟨[.fn], .up, log, prepInvoked count :: tape,
        vb, frames, prepStorage count⟩ = none := by
  simp [prepInvoked, deliverPort, binder_prepProgram_c, cBinderPath,
    lp, entry, asLP?]

def prepCheckpoint10Kernel (count : Nat) (word : Word count) :
    KernelState :=
  .run
    ⟨[.arg], .up, [prepInvoked count],
      [cgam .first (prepInvoked count) (preparationOccurrence count)
          (prepFirstPath count) (prepSecondPath count)
          (prepContinuationPath count),
        bullet, bullet, cmu .first (prepInvoked count),
        bullet, bullet, rb 0 [] []],
      none, prepFrames count word, prepStorage count⟩

@[simp] theorem freshCCall_preparation (count : Nat) (word : Word count)
    (tail : Term) :
    freshCCall (prepProgram (count + 1) tail)
      ⟨[.arg], .down, [prepInvoked count],
        [bullet, bullet, bullet, rb 0 [] []], none,
        prepFrames count word, prepStorage count⟩ =
      kernelDeterministic .callC (prepCheckpoint10Kernel count word) := by
  simp only [freshCCall, instance_prepInvoked_head, asLP_prepInvoked,
    cArguments_prepProgram, hasPriorCInvocation_prepStorage,
    Bool.false_eq_true, if_false]
  simp [prepCheckpoint10Kernel]

theorem binder_prepProgram_h (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (preparationRoot index ++ [.fn, .arg, .fn]) =
      some hBinderPath := by
  simp only [binderPath?, prepProgram, preparationRoot_eq]
  simp only [shellBodyPath, List.cons_append, List.nil_append, binderPathGo]
  simpa [preparationRoot, shellBodyPath, priorPrepBinders, shellBinders, hBinderPath,
    tBinderPath, cBinderPath] using
    binder_h_in_prepChain 0 index tail

@[simp] theorem binder_prepProgram_second_fn (index : Nat) (tail : Term) :
    binderPath? (prepProgram (index + 1) tail)
        (prepSecondPath index ++ [.fn]) = some hBinderPath := by
  simpa [prepSecondPath, List.append_assoc] using
    binder_prepProgram_h index tail

@[simp] theorem level_prepSecond_fn (index : Nat) :
    level (prepSecondPath index ++ [.fn]) = index + 1 := by
  simp [level, prepSecondPath, preparationRoot, shellBodyPath]

@[simp] theorem prepHOccurrence_eq (index : Nat) :
    preparationRoot index ++ [.fn, .arg, .fn] =
      prepSecondPath index ++ [.fn] := by
  simp [prepSecondPath, List.append_assoc]

@[simp] theorem prepSecondZeroBody_eq (index : Nat) :
    prepSecondPath index ++ [.arg, .body] =
      preparationRoot index ++ [.fn, .arg, .arg, .body] := by
  simp [prepSecondPath, List.append_assoc]

@[simp] theorem level_hBinderPath : level hBinderPath = 0 := by
  rfl

def preparedEnvironment : Nat → List SourceName
  | 0 => [.c, .t, .h]
  | count + 1 =>
      .prepSecond count :: .prepFirst count :: preparedEnvironment count

@[simp] theorem lookup_c_preparedEnvironment (count : Nat) :
    lookupName .c (preparedEnvironment count) = some (2 * count + 1) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simp [preparedEnvironment, lookupName, ih]
      omega

@[simp] theorem lookup_t_preparedEnvironment (count : Nat) :
    lookupName .t (preparedEnvironment count) = some (2 * count + 2) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simp [preparedEnvironment, lookupName, ih]
      omega

@[simp] theorem lookup_h_preparedEnvironment (count : Nat) :
    lookupName .h (preparedEnvironment count) = some (2 * count + 3) := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simp [preparedEnvironment, lookupName, ih]
      omega

theorem lookup_prepSecond_preparedEnvironment (count : Nat)
    (wire : Fin count) :
    lookupName (.prepSecond wire.val) (preparedEnvironment count) =
      some (2 * (count - 1 - wire.val) + 1) := by
  induction count with
  | zero => exact Fin.elim0 wire
  | succ count ih =>
      by_cases newest : wire.val = count
      · simp [preparedEnvironment, lookupName, newest]
      · let older : Fin count := ⟨wire.val, by omega⟩
        have prior := ih older
        have before : wire.val < count := by omega
        simp [preparedEnvironment, lookupName, newest, prior, older]
        omega

@[simp] theorem lowerTotal_zero (environment : List SourceName) :
    lowerTotal QalcGate2PhysicalCompiler.zero environment = zeroTerm := by
  simp [QalcGate2PhysicalCompiler.zero, lams, lowerTotal, zeroTerm,
    lookupName]

theorem lowerTotal_preparation (circuit : Circuit width)
    (remaining : Nat) (within : remaining ≤ width) :
    lowerTotal (preparation width circuit remaining)
        (preparedEnvironment (width - remaining)) =
      prepChain (width - remaining) remaining
        (lowerTotal (compileGatesWith width 0 wireName circuit)
          (preparedEnvironment width)) := by
  induction remaining with
  | zero => simp [preparation, prepChain]
  | succ remaining ih =>
      simp only [preparation, cnot, apps, lams, lowerTotal]
      rw [lowerTotal_zero]
      have currentNext : width - (remaining + 1) + 1 = width - remaining := by
        omega
      have envNext :
          .prepSecond (width - (remaining + 1)) ::
            .prepFirst (width - (remaining + 1)) ::
              preparedEnvironment (width - (remaining + 1)) =
            preparedEnvironment (width - remaining) := by
        rw [← currentNext]
        rfl
      rw [envNext]
      simp only [lookup_c_preparedEnvironment, lookup_h_preparedEnvironment,
        Option.getD_some]
      rw [ih (by omega)]
      simp [prepChain, prepNode]
      rw [currentNext]

theorem compiledTerm_eq_prepProgram (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledTerm circuit = prepProgram n
      (lowerTotal (compileGatesWith n 0 wireName circuit)
        (preparedEnvironment n)) := by
  rw [compiledTerm_eq_total positiveWidth]
  simp only [namedProgram, apps, lams, lowerTotal]
  have preparationShape := lowerTotal_preparation circuit n (by omega)
  simp only [Nat.sub_self, preparedEnvironment] at preparationShape
  rw [preparationShape]
  rfl

def prepReadyState (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨preparationRoot count, .down, [], [rb 0 [] []], none,
      prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepMarker (port : Port) (index : Nat) : Entry :=
  cgam port (prepInvoked index) (preparationOccurrence index)
    (prepFirstPath index) (prepSecondPath index)
    (prepContinuationPath index)

def prepFirstLogged (index : Nat) : Entry :=
  lp (prepFirstPath index ++ [.body, .body]) []

@[simp] theorem asLP_prepFirstLogged (index : Nat) :
    asLP? (prepFirstLogged index) =
      some (prepFirstPath index ++ [.body, .body], []) := by
  rfl

@[simp] theorem asRB_prepFirstLogged (index : Nat) :
    asRB? (prepFirstLogged index) = none := by
  rfl

@[simp] theorem asAlpha_prepFirstLogged (index : Nat) :
    asAlpha? (prepFirstLogged index) = none := by
  rfl

@[simp] theorem isBullet_prepFirstLogged (index : Nat) :
    isBullet (prepFirstLogged index) = false := by
  rfl

@[simp] theorem isAppBullet_prepFirstLogged (index : Nat) :
    isAppBullet (prepFirstLogged index) = false := by
  rfl

@[simp] theorem arrivalLP_prepFirstLogged (index : Nat) :
    arrivalLP (prepFirstLogged index) = true := by
  rfl

@[simp] theorem composedEntry_prepFirstLogged (index : Nat) :
    composedEntry (prepFirstLogged index) = prepFirstLogged index := by
  rfl

@[simp] theorem kernelEntry_prepFirstLogged (index : Nat) :
    kernelEntry (prepFirstLogged index) = prepFirstLogged index := by
  rfl

def prepPark (index : Nat) : Store :=
  .cpark (prepInvoked index) false (.logged (prepFirstLogged index)) []
    (preparationOccurrence index) (prepContinuationPath index)

@[simp] theorem matchingHistoryInvocations_prepVirtualStorage
    (count : Nat) :
    matchingHistoryInvocations (prepHInstance count)
        (Store.bundle [] :: prepPark count :: prepStorage count) = [] := by
  change matchingHistoryInvocations (prepHInstance count)
      (prepStorage count) = []
  exact matchingHistoryInvocations_prepHInstance count count

@[simp] theorem matchingHistoryInvocations_prepSecondStorage
    (count : Nat) :
    matchingHistoryInvocations
        (cgam .second (prepInvoked count) (preparationOccurrence count)
          (prepFirstPath count) (prepSecondPath count)
          (prepContinuationPath count))
        (Store.bundle [] :: prepPark count :: prepStorage count) = [] := by
  change matchingHistoryInvocations
      (cgam .second (prepInvoked count) (preparationOccurrence count)
        (prepFirstPath count) (prepSecondPath count)
        (prepContinuationPath count))
      (prepStorage count) = []
  exact matchingHistoryInvocations_prepCgam count count

@[simp] theorem findHistory_prepCgam_prepPark (count : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if cgam .second (prepInvoked count)
                  (preparationOccurrence count) (prepFirstPath count)
                  (prepSecondPath count) (prepContinuationPath count) = invoked
              then some invoked else none
          | _ => none)
        (prepPark count :: prepStorage count) = none := by
  simp [prepPark, findHistory_prepCgam]

@[simp] theorem cparkMatches_prepPark (count : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other == prepInvoked count then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepPark count, 1) :: (prepStorage count).zipIdx 2) =
      [(1, false, .logged (prepFirstLogged count), [],
        preparationOccurrence count, prepContinuationPath count)] := by
  simp [prepPark, filterCpark_prepStorage, entryBEq_refl]

@[simp] theorem cparkMatchesFull_prepPark (count : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if (other == prepInvoked count) = true then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((Store.bundle [], 0) :: (prepPark count, 1) ::
          (prepStorage count).zipIdx 2) =
      [(1, false, .logged (prepFirstLogged count), [],
        preparationOccurrence count, prepContinuationPath count)] := by
  simp [prepPark, filterCparkBEq_prepStorage, entryBEq_refl]

@[simp] theorem cparkFind_prepPark (count : Nat) :
    List.findSome?
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other == prepInvoked count then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepPark count, 1) :: (prepStorage count).zipIdx 2) =
      some (1, false, .logged (prepFirstLogged count), [],
        preparationOccurrence count, prepContinuationPath count) := by
  simp [prepPark, entryBEq_refl]

@[simp] theorem cparkMatchesEq_prepPark (count : Nat) :
    List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = prepInvoked count then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepPark count, 1) :: (prepStorage count).zipIdx 2) =
      [(1, false, .logged (prepFirstLogged count), [],
        preparationOccurrence count, prepContinuationPath count)] := by
  simp [prepPark, filterCpark_prepStorage]

@[simp] theorem cparkMatchesEqLength_prepPark (count : Nat) :
    (List.filterMap
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = prepInvoked count then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepPark count, 1) :: (prepStorage count).zipIdx 2)).length = 1 := by
  rw [cparkMatchesEq_prepPark]
  rfl

@[simp] theorem cparkFindEq_prepPark (count : Nat) :
    List.findSome?
        (fun x =>
          match x.fst with
          | .cpark other bit descriptor descriptors occurrence continuation =>
              if other = prepInvoked count then
                some (x.snd, bit, descriptor, descriptors,
                  occurrence, continuation)
              else none
          | _ => none)
        ((prepPark count, 1) :: (prepStorage count).zipIdx 2) =
      some (1, false, .logged (prepFirstLogged count), [],
        preparationOccurrence count, prepContinuationPath count) := by
  simp [prepPark]

@[simp] theorem replace_prepPark_with_history (count : Nat)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor) :
    replaceStoreAt?
        (Store.bundle [] :: prepPark count :: prepStorage count) 1
        (.chistory (prepInvoked count)
          (.logged (prepFirstLogged count)) [] descriptor descriptors
          (preparationOccurrence count) (prepContinuationPath count)) =
      some (Store.bundle [] ::
        .chistory (prepInvoked count)
          (.logged (prepFirstLogged count)) [] descriptor descriptors
          (preparationOccurrence count) (prepContinuationPath count) ::
        prepStorage count) := by
  rfl

@[simp] theorem storedReturnOccurrences_virtual_bundle_prepPark
    (count : Nat) :
    storedReturnOccurrences [.fn, .fn, .arg]
      (Store.bundle [] :: prepPark count :: prepStorage count) = [] := by
  change storedReturnOccurrences [.fn, .fn, .arg]
      (prepStorage count) = []
  exact storedReturnOccurrences_virtual_prepStorage count

@[simp] theorem storedReturnOccurrences_prepSecondFn_bundle_prepPark
    (count : Nat) :
    storedReturnOccurrences (prepSecondPath count ++ [.fn])
      (Store.bundle [] :: prepPark count :: prepStorage count) = [] := by
  change storedReturnOccurrences (prepSecondPath count ++ [.fn])
      (prepStorage count) = []
  exact storedReturnOccurrences_prepSecondFn_prepStorage count count

@[simp] theorem findHistory_prepPark (stored fresh : Nat) :
    List.findSome?
        (fun item =>
          match item with
          | .chistory invoked _ _ _ _ _ _ =>
              if prepHInstance fresh = invoked then some invoked else none
          | _ => none)
        (prepPark fresh :: prepStorage stored) = none := by
  simp [prepPark, findHistory_prepHInstance]

@[simp] theorem finishCStage_prepPark (count : Nat) (path : Path)
    (direction : Direction) (log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    finishCStage?
      ⟨path, direction, log, tape, vb, frames,
        prepPark count :: prepStorage count⟩ = none := by
  rfl

@[simp] theorem bitfreeKeys_prepPark (count : Nat) :
    bitfreeKeys (prepPark count :: prepStorage count) = [] := by
  change bitfreeKeys (prepStorage count) = []
  exact bitfreeKeys_prepStorage count

@[simp] theorem deadKeys_prepPark (count : Nat) :
    deadKeys (prepPark count :: prepStorage count) = [] := by
  change deadKeys (prepStorage count) = []
  exact deadKeys_prepStorage count

@[simp] theorem storedPortBindings_hBinder_prepPark (count : Nat) :
    storedPortBindings hBinderPath
      (prepPark count :: prepStorage count) = [] := by
  rw [show prepPark count :: prepStorage count =
      [prepPark count] ++ prepStorage count by rfl]
  rw [storedPortBindings_append,
    storedPortBindings_hBinder_prepStorage]
  simp [prepPark, storedPortBindings]

@[simp] theorem storedPortBindings_hBinder_bundle_prepPark (count : Nat) :
    storedPortBindings hBinderPath
      (Store.bundle [] :: prepPark count :: prepStorage count) = [] := by
  change storedPortBindings hBinderPath
      (prepPark count :: prepStorage count) = []
  exact storedPortBindings_hBinder_prepPark count

@[simp] theorem deliverPort_prepHInstance (count : Nat) (tail : Term)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort (prepProgram (count + 1) tail)
      ⟨hBinderPath, .up, log, prepHInstance count :: tape,
        vb, frames, prepPark count :: prepStorage count⟩ = none := by
  simp [deliverPort, prepHInstance, binder_prepProgram_second_fn,
    storedPortBindings_hBinder_prepPark]

@[simp] theorem deliverPort_hBinder_prepPark (term : Term)
    (count : Nat) (occurrence : Path) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort term
      ⟨hBinderPath, .up, log, lp occurrence slice :: tape,
        vb, frames, prepPark count :: prepStorage count⟩ = none := by
  simp [deliverPort, storedPortBindings_hBinder_prepPark]

theorem deliverPort_hBinder_cpark_prepStorage (term : Term)
    (count : Nat) (parkedInvoked : Entry) (parkedBit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (parkedOccurrence parkedContinuation occurrence : Path)
    (slice log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort term
      ⟨hBinderPath, .up, log, lp occurrence slice :: tape,
        vb, frames,
        .cpark parkedInvoked parkedBit descriptor descriptors
          parkedOccurrence parkedContinuation :: prepStorage count⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bindings :
      storedPortBindings hBinderPath
          (.cpark parkedInvoked parkedBit descriptor descriptors
            parkedOccurrence parkedContinuation :: prepStorage count) = [] := by
    change storedPortBindings hBinderPath (prepStorage count) = []
    exact storedPortBindings_hBinder_prepStorage count
  simp [deliverPort, bindings, directionSame]

def prepAnswer (index : Nat) (bit : Bool) : Entry :=
  alpha .h none (prepHInstance index) bit .fresh

@[simp] theorem decodeInput_prepAnswer (count : Nat)
    (word : Word count) (bit : Bool) :
    decodeInput bit (prepAnswer count bit) (prepFrames count word) =
      some (.alpha .h none (prepHInstance count) .fresh, [],
        prepFrames count word) := by
  cases bit <;>
    simp only [decodeInput, prepAnswer, asAlpha_alpha,
      Bool.false_eq_true, if_false]
  all_goals
    rw [show List.filter
        (fun frame : Frame =>
          frame.key == ⟨.h, none, prepHInstance count⟩)
        (prepFrames count word) = [] by
      exact sameKeyFrames_prepFrames_hInstance count count word]
    simp

def prepFireSource (count : Nat) (word : Word count)
    (bit : Bool) : Token :=
  ⟨prepSecondPath count, .up,
    [cgam .second (prepInvoked count) (preparationOccurrence count)
      (prepFirstPath count) (prepSecondPath count)
      (prepContinuationPath count)],
    List.replicate (bitNat bit) bullet ++
      [prepAnswer count bit, cmu .second (prepInvoked count),
        bullet, rb 0 [] []],
    none, prepFrames count word,
    Store.bundle [] :: prepPark count :: prepStorage count⟩

def prepExtendedFrames (count : Nat) (word : Word count)
    (bit : Bool) : List Frame :=
  insertFrame
    ⟨portKey .second (preparationOccurrence count), bit,
      .recalledAbsent .fresh⟩
    (insertFrame
      ⟨portKey .first (preparationOccurrence count), false,
        .recalledAbsent .fresh⟩
      (prepFrames count word))

@[simp] theorem prepExtendedFrames_eq (count : Nat) (word : Word count)
    (bit : Bool) :
    prepExtendedFrames count word bit =
      prepFrames (count + 1) (extendWord word bit) := by
  simp [prepExtendedFrames, prepFrames]

def prepCheckpoint5 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨tBinderPath, .up, [],
      [appBullet, prepInvoked count, appBullet, appBullet, appBullet,
        rb 0 [] []], none, prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint10 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨[.arg], .up, [prepInvoked count],
      [prepMarker .first count, appBullet, appBullet,
        cmu .first (prepInvoked count), appBullet, appBullet, rb 0 [] []],
      none, prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint15 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨cBinderPath, .down, [],
      [prepInvoked count, prepMarker .first count, appBullet, appBullet,
        cmu .first (prepInvoked count), appBullet, appBullet, rb 0 [] []],
      none, prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint20 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨prepFirstPath count, .up, [prepMarker .first count],
      [prepFirstLogged count, cmu .first (prepInvoked count),
        appBullet, appBullet, rb 0 [] []],
      none, prepFrames count word, prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

@[simp] theorem prepFirstPath_getLast (index : Nat) :
    (prepFirstPath index).getLast? = some .arg := by
  simp [prepFirstPath]

@[simp] theorem prepFirstPath_ne_nil (index : Nat) :
    prepFirstPath index ≠ [] := by
  intro equal
  have lastEqual := congrArg List.getLast? equal
  simp at lastEqual

@[simp] theorem prepFirstPath_dropLast (index : Nat) :
    (prepFirstPath index).dropLast =
      preparationRoot index ++ [.fn, .fn] := by
  simp [prepFirstPath]

theorem prepFirstPath_ne_continuation (fresh stored : Nat) :
    prepFirstPath fresh ≠ prepContinuationPath stored := by
  intro equal
  have lengthEqual := congrArg List.length equal
  simp [prepFirstPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengthEqual
  omega

theorem prepFirstPath_ne_continuation_body (fresh stored : Nat) :
    prepFirstPath fresh ≠ prepContinuationPath stored ++ [.body] := by
  intro equal
  have lengthEqual := congrArg List.length equal
  simp [prepFirstPath, prepContinuationPath, preparationRoot,
    shellBodyPath] at lengthEqual
  omega

theorem prepHZeroBinder_ne_continuation (fresh stored : Nat) :
    preparationRoot fresh ++ [.fn, .arg, .arg] ≠
      prepContinuationPath stored := by
  intro equal
  have lengthEqual := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengthEqual
  omega

theorem prepHZeroBinder_ne_continuation_body (fresh stored : Nat) :
    preparationRoot fresh ++ [.fn, .arg, .arg] ≠
      prepContinuationPath stored ++ [.body] := by
  intro equal
  have lengthEqual := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengthEqual
  omega

@[simp] theorem level_prepHZero_return (index : Nat) :
    level
        (preparationRoot index ++
          [.fn, .arg, .arg, .body, .body]) -
      level (preparationRoot index ++ [.fn, .arg, .arg]) = 0 := by
  simp [level]

@[simp] theorem storedPortBindings_prepFirstPath_prepStorage
    (fresh stored : Nat) :
    storedPortBindings (prepFirstPath fresh) (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory,
        prepFirstPath_ne_continuation,
        prepFirstPath_ne_continuation_body]

@[simp] theorem storedPortBindings_prepHZero_prepStorage
    (fresh stored : Nat) :
    storedPortBindings
        (preparationRoot fresh ++ [.fn, .arg, .arg])
        (prepStorage stored) = [] := by
  induction stored with
  | zero => rfl
  | succ stored ih =>
      rw [prepStorage_succ, storedPortBindings_append, ih]
      simp [storedPortBindings, prepHistory,
        prepHZeroBinder_ne_continuation,
        prepHZeroBinder_ne_continuation_body]

@[simp] theorem storedPortBindings_prepHZero_prepPark (count : Nat) :
    storedPortBindings
        (preparationRoot count ++ [.fn, .arg, .arg])
        (prepPark count :: prepStorage count) = [] := by
  change storedPortBindings
      (preparationRoot count ++ [.fn, .arg, .arg])
      (prepStorage count) = []
  exact storedPortBindings_prepHZero_prepStorage count count

@[simp] theorem deliverPort_prepHZero (count : Nat) (tail : Term)
    (occurrence : Path) (slice log tape : List Entry)
    (vb : Option VirtualBoolean) (frames : List Frame) :
    deliverPort (prepProgram (count + 1) tail)
      ⟨preparationRoot count ++ [.fn, .arg, .arg], .up,
        log, lp occurrence slice :: tape, vb, frames,
        prepPark count :: prepStorage count⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  simp [deliverPort, binder_prepProgram_h_zero_root,
    storedPortBindings_prepHZero_prepPark, directionSame]

@[simp] theorem deliverPort_prepHZero_cpark (count : Nat)
    (tail : Term) (parkedInvoked : Entry) (parkedBit : Bool)
    (descriptor : Descriptor) (descriptors : List FrameDescriptor)
    (parkedOccurrence parkedContinuation occurrence : Path)
    (slice log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort (prepProgram (count + 1) tail)
      ⟨preparationRoot count ++ [.fn, .arg, .arg], .up,
        log, lp occurrence slice :: tape, vb, frames,
        .cpark parkedInvoked parkedBit descriptor descriptors
          parkedOccurrence parkedContinuation :: prepStorage count⟩ = none := by
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have bindings :
      storedPortBindings
          (preparationRoot count ++ [.fn, .arg, .arg])
          (.cpark parkedInvoked parkedBit descriptor descriptors
            parkedOccurrence parkedContinuation :: prepStorage count) = [] := by
    change storedPortBindings
        (preparationRoot count ++ [.fn, .arg, .arg])
        (prepStorage count) = []
    exact storedPortBindings_prepHZero_prepStorage count count
  simp [deliverPort, binder_prepProgram_h_zero_root,
    bindings, directionSame]

@[simp] theorem deliverPort_prepFirstLogged (count : Nat) (tail : Term)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) :
    deliverPort (prepProgram (count + 1) tail)
      ⟨prepFirstPath count, .up, log, prepFirstLogged count :: tape,
        vb, frames, prepStorage count⟩ = none := by
  simp [deliverPort, prepFirstLogged, binder_prepProgram_first_zero]

@[simp] theorem closeVirtualPort_prepFirstLogged (count : Nat)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    closeVirtualPort
      ⟨prepFirstPath count, .up, log, prepFirstLogged count :: tape,
        vb, frames, storage⟩ = none := by
  have notBullet : isBullet (prepFirstLogged count) = false := by
    rfl
  have headNotBullet :
      isBullet (prepFirstLogged count :: tape).head! = false := by
    exact notBullet
  simp [closeVirtualPort, notBullet, headNotBullet]

@[simp] theorem returnContinuation_prepFirstLogged (count : Nat)
    (log tape : List Entry) (vb : Option VirtualBoolean)
    (frames : List Frame) (storage : List Store) :
    returnContinuation
      ⟨prepFirstPath count, .up, log, prepFirstLogged count :: tape,
        vb, frames, storage⟩ = none := by
  simp [returnContinuation, prepFirstLogged]

@[simp] theorem classifyArrival_prepFirstLogged (count : Nat) :
    classifyArrival
      [prepFirstLogged count, cmu .first (prepInvoked count),
        bullet, bullet, rb 0 [] []] =
      some (false, prepFirstLogged count, [bullet, bullet, rb 0 [] []]) := by
  rfl

@[simp] theorem decodeInput_prepFirstLogged (count : Nat)
    (frames : List Frame) :
    decodeInput false (prepFirstLogged count) frames =
      some (.logged (prepFirstLogged count), [], frames) := by
  rfl

def prepCheckpoint25 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .down, [prepHInstance count],
      [appBullet, appBullet, appBullet, cmu .second (prepInvoked count),
        appBullet, rb 0 [] []],
      none, prepFrames count word, prepPark count :: prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint29 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨prepSecondPath count ++ [.arg], .down,
      [gam .h, prepMarker .second count],
      [appBullet, appBullet, mu .h, appBullet, appBullet,
        cmu .second (prepInvoked count), appBullet, rb 0 [] []],
      none, prepFrames count word, prepPark count :: prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint30 (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨preparationRoot count ++ [.fn, .arg, .arg, .body], .down,
      [gam .h, prepMarker .second count],
      [appBullet, mu .h, appBullet, appBullet,
        cmu .second (prepInvoked count), appBullet, rb 0 [] []],
      none, prepFrames count word, prepPark count :: prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint33 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨preparationRoot count ++ [.fn, .arg, .arg], .up,
      [gam .h, prepMarker .second count],
      [ans .h bit, appBullet, appBullet,
        cmu .second (prepInvoked count), appBullet, rb 0 [] []],
      none, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint38 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .down, [prepHInstance count],
      [appBullet, cmu .second (prepInvoked count), appBullet, rb 0 [] []],
      some ⟨.h, none, bit, 1⟩, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

@[simp] theorem closeVirtualPort_prepVirtual (count : Nat)
    (word : Word count) (bit : Bool) :
    closeVirtualPort
      ⟨[.fn, .fn, .arg], .up, [prepHInstance count],
        List.replicate (bitNat bit + 1) bullet ++
          [prepAnswer count bit, cmu .second (prepInvoked count),
            bullet, rb 0 [] []],
        none, prepFrames count word,
        [.bundle [], prepPark count] ++ prepStorage count⟩ = none := by
  cases bit <;>
    simp [closeVirtualPort, headBang_cons, prepAnswer, prepPark]

theorem closeVirtualPort_prepVirtual_false (count : Nat)
    (word : Word count) :
    closeVirtualPort
      ⟨[.fn, .fn, .arg], .up, [prepHInstance count],
        [bullet, alpha .h none (prepHInstance count) false .fresh,
          cmu .second (prepInvoked count), bullet, rb 0 [] []],
        none, prepFrames count word,
        Store.bundle [] :: prepPark count :: prepStorage count⟩ = none := by
  simpa [prepAnswer, bitNat] using
    closeVirtualPort_prepVirtual count word false

theorem closeVirtualPort_prepVirtual_true (count : Nat)
    (word : Word count) :
    closeVirtualPort
      ⟨[.fn, .fn, .arg], .up, [prepHInstance count],
        [bullet, bullet, alpha .h none (prepHInstance count) true .fresh,
          cmu .second (prepInvoked count), bullet, rb 0 [] []],
        none, prepFrames count word,
        Store.bundle [] :: prepPark count :: prepStorage count⟩ = none := by
  simpa [prepAnswer, bitNat] using
    closeVirtualPort_prepVirtual count word true

theorem closeVirtualPort_prepSecond (count : Nat)
    (word : Word count) (bit : Bool) :
    closeVirtualPort
      ⟨prepSecondPath count ++ [.fn], .up,
        [cgam .second (prepInvoked count) (preparationOccurrence count)
          (prepFirstPath count) (prepSecondPath count)
          (prepContinuationPath count)],
        List.replicate (bitNat bit + 1) bullet ++
          [prepAnswer count bit, cmu .second (prepInvoked count),
            bullet, rb 0 [] []],
        none, prepFrames count word,
        Store.bundle [] :: prepPark count :: prepStorage count⟩ = none := by
  cases bit <;>
    simp [closeVirtualPort, headBang_cons, prepAnswer, prepPark]

theorem closeVirtualPort_prepSecond_false (count : Nat)
    (word : Word count) :
    closeVirtualPort
      ⟨prepSecondPath count ++ [.fn], .up,
        [cgam .second (prepInvoked count) (preparationOccurrence count)
          (prepFirstPath count) (prepSecondPath count)
          (prepContinuationPath count)],
        [bullet, alpha .h none (prepHInstance count) false .fresh,
          cmu .second (prepInvoked count), bullet, rb 0 [] []],
        none, prepFrames count word,
        Store.bundle [] :: prepPark count :: prepStorage count⟩ = none := by
  simpa [prepAnswer, bitNat] using
    closeVirtualPort_prepSecond count word false

theorem closeVirtualPort_prepSecond_true (count : Nat)
    (word : Word count) :
    closeVirtualPort
      ⟨prepSecondPath count ++ [.fn], .up,
        [cgam .second (prepInvoked count) (preparationOccurrence count)
          (prepFirstPath count) (prepSecondPath count)
          (prepContinuationPath count)],
        [bullet, bullet, alpha .h none (prepHInstance count) true .fresh,
          cmu .second (prepInvoked count), bullet, rb 0 [] []],
        none, prepFrames count word,
        Store.bundle [] :: prepPark count :: prepStorage count⟩ = none := by
  simpa [prepAnswer, bitNat] using
    closeVirtualPort_prepSecond count word true

def prepCheckpoint43 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨prepSecondPath count, .up, [prepMarker .second count],
      List.replicate (bitNat bit) appBullet ++
        [prepAnswer count bit, cmu .second (prepInvoked count),
          appBullet, rb 0 [] []],
      none, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint41 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨hBinderPath, .down, [],
      prepHInstance count ::
        (List.replicate (bitNat bit + 1) appBullet ++
          [prepAnswer count bit, cmu .second (prepInvoked count),
            appBullet, rb 0 [] []]),
      none, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint40 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨[.fn, .fn, .arg], .up, [prepHInstance count],
      List.replicate (bitNat bit + 1) appBullet ++
        [prepAnswer count bit, cmu .second (prepInvoked count),
          appBullet, rb 0 [] []],
      none, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint42 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨prepSecondPath count ++ [.fn], .up,
      [cgam .second (prepInvoked count) (preparationOccurrence count)
        (prepFirstPath count) (prepSecondPath count)
        (prepContinuationPath count)],
      List.replicate (bitNat bit + 1) appBullet ++
        [prepAnswer count bit, cmu .second (prepInvoked count),
          appBullet, rb 0 [] []],
      none, prepFrames count word,
      [.bundle [], prepPark count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint45 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨prepContinuationPath count, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      prepExtendedFrames count word bit,
      [.bundle [], prepHistory count] ++ prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prepCheckpoint44 (count : Nat) (word : Word count)
    (bit : Bool) : NFState :=
  .run
    ⟨prepContinuationPath count, .down, [],
      [appBullet, appBullet, rb 0 [] []], none,
      prepExtendedFrames count word bit,
      .cstage .fire :: [.bundle [], prepHistory count] ++
        prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

@[simp] theorem prepCheckpoint45_eq (count : Nat) (word : Word count)
    (bit : Bool) :
    prepCheckpoint45 count word bit =
      preparedPrefixState (count + 1) (extendWord word bit) := by
  simp [prepCheckpoint45, preparedPrefixState, prepStorage_succ,
    prepContinuationPath]

def preparationScatter (branch : Branch count) : List (Branch (count + 1)) :=
  [⟨extendWord branch.word false, mul invSqrt2 branch.amplitude⟩,
   ⟨extendWord branch.word true, mul invSqrt2 branch.amplitude⟩]

def preparationBranches : (count : Nat) → List (Branch count)
  | 0 => [⟨fun wire => Fin.elim0 wire, one⟩]
  | count + 1 =>
      (preparationBranches count).flatMap preparationScatter

def prepReadyColumn (branches : List (Branch count)) : PhysicalColumn :=
  branches.map fun branch =>
    ⟨prepReadyState count branch.word, branch.amplitude⟩

def preparedPrefixColumn (branches : List (Branch count)) : PhysicalColumn :=
  branches.map fun branch =>
    ⟨preparedPrefixState count branch.word, branch.amplitude⟩

def preparationBoundaryColumn : (count : Nat) → PhysicalColumn
  | 0 => [⟨afterInvocationShell, one⟩]
  | count + 1 => preparedPrefixColumn (preparationBranches (count + 1))

def preparationBodyCost : Nat → Nat
  | 0 => 0
  | count + 1 => preparationBodyCost count + if count = 0 then 45 else 47

@[simp] theorem prepReadyColumn_zero :
    prepReadyColumn (preparationBranches 0) =
      [⟨afterInvocationShell, one⟩] := by
  rfl

theorem prepChain_succ_tail (start count : Nat) (tail : Term) :
    prepChain start (count + 1) tail =
      prepChain start count (prepNode (start + count) tail) := by
  induction count generalizing start with
  | zero => simp [prepChain]
  | succ count ih =>
      change prepNode start (prepChain (start + 1) (count + 1) tail) =
        prepNode start
          (prepChain (start + 1) count
            (prepNode (start + (count + 1)) tail))
      rw [ih (start + 1)]
      have indexEqual : start + 1 + count = start + (count + 1) := by
        omega
      rw [indexEqual]

theorem prepProgram_succ_tail (count : Nat) (tail : Term) :
    prepProgram (count + 1) tail = prepProgram count (prepNode count tail) := by
  simp only [prepProgram]
  rw [prepChain_succ_tail]
  simp

theorem preparationCertificate_lookup_last (count : Nat)
    (tailCertificate : Certificate) :
    certificateLookup
        (preparationCertificate (count + 1) ++ tailCertificate)
        (preparationRoot count ++ [.fn, .arg, .arg]) = some [] := by
  have noPrevious :
      List.find?
          (fun item : Path × List Key =>
            item.1 == preparationRoot count ++ [.fn, .arg, .arg])
          (preparationCertificate count) = none := by
    rw [List.find?_eq_none]
    intro item membership selected
    simp only [preparationCertificate, List.mem_map] at membership
    obtain ⟨wire, wireInRange, rfl⟩ := membership
    have wireBefore : wire < count := List.mem_range.mp wireInRange
    have pathEqual :
        preparationRoot wire ++ [.fn, .arg, .arg] =
          preparationRoot count ++ [.fn, .arg, .arg] :=
      beq_iff_eq.mp selected
    have lengthEqual := congrArg List.length pathEqual
    simp [preparationRoot, shellBodyPath] at lengthEqual
    omega
  simp [certificateLookup, preparationCertificate, List.range_succ,
    List.map_append, List.find?_append, noPrevious]

theorem subterm_prepProgram_continuation (prior : Nat) (tail : Term) :
    subterm? (prepProgram (prior + 2) tail) (prepContinuationPath prior) =
      some (.lam (.lam (prepNode (prior + 1) tail))) := by
  rw [show prepContinuationPath prior = preparationRoot prior ++ [.arg] by
    rfl]
  rw [subterm_append, subterm_prepProgram_at prior 2 tail]
  simp [prepChain, prepNode, subterm?]

theorem subterm_prepProgram_continuation_body (prior : Nat) (tail : Term) :
    subterm? (prepProgram (prior + 2) tail)
        (prepContinuationPath prior ++ [.body]) =
      some (.lam (prepNode (prior + 1) tail)) := by
  rw [subterm_append, subterm_prepProgram_continuation]
  simp [subterm?]

theorem subterm_prepProgram_last_continuation (prior : Nat) (tail : Term) :
    subterm? (prepProgram (prior + 1) tail) (prepContinuationPath prior) =
      some (.lam (.lam tail)) := by
  rw [show prepContinuationPath prior = preparationRoot prior ++ [.arg] by
    rfl]
  rw [subterm_append, subterm_prepProgram_root]
  simp [prepNode, subterm?]

theorem subterm_prepProgram_last_continuation_body (prior : Nat)
    (tail : Term) :
    subterm? (prepProgram (prior + 1) tail)
        (prepContinuationPath prior ++ [.body]) =
      some (.lam tail) := by
  rw [subterm_append, subterm_prepProgram_last_continuation]
  simp [subterm?]

theorem subterm_prepProgram_last_continuation_body_body (prior : Nat)
    (tail : Term) :
    subterm? (prepProgram (prior + 1) tail)
        (prepContinuationPath prior ++ [.body, .body]) = some tail := by
  rw [subterm_append, subterm_prepProgram_last_continuation]
  simp [subterm?]

@[simp] theorem fireSecond_preparation (count : Nat)
    (word : Word count) (tail : Term) (bit : Bool) :
    fireSecond (prepProgram (count + 1) tail)
        (prepFireSource count word bit)
        (bit, prepAnswer count bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨prepContinuationPath count, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            prepExtendedFrames count word bit,
            Store.bundle [] :: prepHistory count ::
              prepStorage count⟩)) := by
  have portSame : (Port.second != Port.second) = false := by
    native_decide
  have pairSame :
      ((Port.second, prepInvoked count) ==
        (Port.second, prepInvoked count)) = true := by
    change (true && entryBEq (prepInvoked count) (prepInvoked count)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.second, prepInvoked count) !=
        some (Port.second, prepInvoked count)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by
    native_decide
  cases bit <;>
    simp [fireSecond, cparkMatches, prepFireSource, bitNat, portSame,
      probeSame, entryBEq_refl, decodeInput_prepAnswer,
      subterm_prepProgram_last_continuation,
      subterm_prepProgram_last_continuation_body]
  all_goals
    split <;> rename_i parked
    · simp [cparkMatches, prepPark, findCpark_prepStorage, replaceStoreAt?,
        headBang_cons, bulletIs, portKey, prepInvoked,
        decodeInput_prepAnswer, prepExtendedFrames, prepFrames,
        prepHistory, prepFirstLogged,
        subterm_prepProgram_last_continuation,
        subterm_prepProgram_last_continuation_body,
        replace_prepPark_with_history]
    · exact (parked (cparkMatchesEqLength_prepPark count)).elim

@[simp] theorem fireSecond_preparation_expanded (count : Nat)
    (word : Word count) (tail : Term) (bit : Bool) :
    fireSecond (prepProgram (count + 1) tail)
        ⟨prepSecondPath count, .up,
          [cgam .second (prepInvoked count) (preparationOccurrence count)
            (prepFirstPath count) (prepSecondPath count)
            (prepContinuationPath count)],
          List.replicate (bitNat bit) bullet ++
            [prepAnswer count bit, cmu .second (prepInvoked count),
              bullet, rb 0 [] []],
          none, prepFrames count word,
          Store.bundle [] :: prepPark count :: prepStorage count⟩
        (bit, prepAnswer count bit, [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨prepContinuationPath count, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            prepExtendedFrames count word bit,
            Store.bundle [] :: prepHistory count ::
              prepStorage count⟩)) := by
  simpa only [prepFireSource] using
    fireSecond_preparation count word tail bit

@[simp] theorem fireSecond_preparation_alpha (count : Nat)
    (word : Word count) (tail : Term) (bit : Bool) :
    fireSecond (prepProgram (count + 1) tail)
        ⟨prepSecondPath count, .up,
          [cgam .second (prepInvoked count) (preparationOccurrence count)
            (prepFirstPath count) (prepSecondPath count)
            (prepContinuationPath count)],
          List.replicate (bitNat bit) bullet ++
            [alpha .h none (prepHInstance count) bit .fresh,
              cmu .second (prepInvoked count), bullet, rb 0 [] []],
          none, prepFrames count word,
          Store.bundle [] :: prepPark count :: prepStorage count⟩
        (bit, alpha .h none (prepHInstance count) bit .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨prepContinuationPath count, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            prepExtendedFrames count word bit,
            Store.bundle [] :: prepHistory count ::
              prepStorage count⟩)) := by
  simpa only [prepAnswer] using
    fireSecond_preparation_expanded count word tail bit

@[simp] theorem fireSecond_preparation_false (count : Nat)
    (word : Word count) (tail : Term) :
    fireSecond (prepProgram (count + 1) tail)
        ⟨prepSecondPath count, .up,
          [cgam .second (prepInvoked count) (preparationOccurrence count)
            (prepFirstPath count) (prepSecondPath count)
            (prepContinuationPath count)],
          [alpha .h none (prepHInstance count) false .fresh,
            cmu .second (prepInvoked count), bullet, rb 0 [] []],
          none, prepFrames count word,
          Store.bundle [] :: prepPark count :: prepStorage count⟩
        (false, alpha .h none (prepHInstance count) false .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨prepContinuationPath count, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            prepExtendedFrames count word false,
            Store.bundle [] :: prepHistory count ::
              prepStorage count⟩)) := by
  simpa [bitNat] using
    fireSecond_preparation_alpha count word tail false

@[simp] theorem fireSecond_preparation_true (count : Nat)
    (word : Word count) (tail : Term) :
    fireSecond (prepProgram (count + 1) tail)
        ⟨prepSecondPath count, .up,
          [cgam .second (prepInvoked count) (preparationOccurrence count)
            (prepFirstPath count) (prepSecondPath count)
            (prepContinuationPath count)],
          [bullet, alpha .h none (prepHInstance count) true .fresh,
            cmu .second (prepInvoked count), bullet, rb 0 [] []],
          none, prepFrames count word,
          Store.bundle [] :: prepPark count :: prepStorage count⟩
        (true, alpha .h none (prepHInstance count) true .fresh,
          [bullet, rb 0 [] []]) =
      splitCustom .fire
        (kernelDeterministic .fireC1 (.run
          ⟨prepContinuationPath count, .down, [],
            [bullet, bullet, rb 0 [] []], none,
            prepExtendedFrames count word true,
            Store.bundle [] :: prepHistory count ::
              prepStorage count⟩)) := by
  simpa [bitNat] using
    fireSecond_preparation_alpha count word tail true

theorem prep_tail_entry (prior : Nat) (word : Word (prior + 1))
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (prior + 2) tail) certificate 2
        [⟨preparedPrefixState (prior + 1) word, amplitude⟩] =
      [⟨prepReadyState (prior + 1) word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, preparedPrefixState, prepReadyState,
    subterm_prepProgram_continuation,
    subterm_prepProgram_continuation_body, composedStep, readbackStep,
    prepStorage_succ, finishCStage?, kernelToken, deliverPort,
    directionDifferent, appNotRB, appIs, nfDeterministic, edgeCoefficient,
    preparationRoot_succ, prepBlock, List.append_assoc]
  simp [prepContinuationPath, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul]

theorem prep_local_0_5 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepReadyState count word, amplitude⟩] =
      [⟨prepCheckpoint5 count word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepReadyState, prepCheckpoint5,
    composedStep, readbackStep, kernelToken,
    directionDifferent, appNotRB, appIs,
    delegateStep, cnotStepToken, closeVirtualPort,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode, zeroTerm,
    binder_prepProgram_c, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepInvoked,
    preparationOccurrence, tBinderPath]

theorem prep_local_5_10 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint5 count word, amplitude⟩] =
      [⟨prepCheckpoint10 count word, amplitude⟩] := by
  have bulletIs : isBullet bullet = true := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.down == Direction.down) = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint5, prepCheckpoint10,
    composedStep, readbackStep, rbAfterOutputBullets, firstRB, treeAt?,
    kernelToken, bulletIs, directionDifferent, directionSame,
    delegateStep, cnotStepToken, closeVirtualPort, freshCCall, instance?,
    isLP, cArguments_prepProgram, prepStorage_no_future,
    prepStorage_no_current_exists,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode, zeroTerm,
    binder_prepProgram_c, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker]

theorem prep_local_10_15 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint10 count word, amplitude⟩] =
      [⟨prepCheckpoint15 count word, amplitude⟩] := by
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
    subterm_prepProgram_root, subterm?, prepNode, zeroTerm,
    binder_prepProgram_c, deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker, cBinderPath]

theorem prep_local_15_20 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint15 count word, amplitude⟩] =
      [⟨prepCheckpoint20 count word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint15, prepCheckpoint20,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, appIs, delegateStep, cnotStepToken,
    closeVirtualPort, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode, zeroTerm,
    binder_prepProgram_c, binder_prepProgram_first_zero,
    binder_prepProgram_first_zero_root,
    deliverPort_cBinder_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepFirstLogged, cBinderPath, level]

theorem prep_local_20_25 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint20 count word, amplitude⟩] =
      [⟨prepCheckpoint25 count word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionSame :
      (Direction.up == Direction.up) = true := by native_decide
  have portSame :
      (Port.first != Port.first) = false := by native_decide
  have pairSame :
      ((Port.first, prepInvoked count) ==
        (Port.first, prepInvoked count)) = true := by
    change (true && entryBEq (prepInvoked count) (prepInvoked count)) = true
    simp [entryBEq_refl]
  have probeSame :
      (some (Port.first, prepInvoked count) !=
        some (Port.first, prepInvoked count)) = false := by
    simp [bne_eq, pairSame]
  have bulletIs : isBullet bullet = true := by native_decide
  have secondPresent :
      isBullet ([bullet, bullet, rb 0 [] []].head!) = true := by
    native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  simp [evolve, stepColumn, stepBasis, prepCheckpoint20, prepCheckpoint25,
    composedStep, readbackStep, firstRB, treeAt?, kernelToken,
    directionDifferent, directionSame, portSame, probeSame,
    bulletIs, secondPresent, appIs, delegateStep, cnotStepToken,
    splitCustom, stageRow,
    kernelStepToken, kernelDeterministic, tokenWith, kernelEntry,
    composedToken, mapKernelEdge, subterm_append,
    subterm_prepProgram_root, subterm?, prepNode, zeroTerm,
    binder_prepProgram_c, binder_prepProgram_h,
    binder_prepProgram_first_zero,
    deliverPort_cBinder_prepStorage,
    deliverPort_hBinder_cpark_prepStorage,
    returnContinuation_cBinder_prepStorage,
    returnContinuation_hBinder_prepStorage,
    classifyArrival, parkFirst, decodeInput,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHInstance_eq, prepPark]

set_option maxHeartbeats 0 in
def prep25BeforeToken (count : Nat) (word : Word count) : Token :=
  ⟨prepSecondPath count ++ [.fn], .up,
    [cgam .second (prepInvoked count)
      (preparationOccurrence count) (prepFirstPath count)
      (prepSecondPath count) (prepContinuationPath count)],
    [gam .h, appBullet, appBullet, mu .h, appBullet, appBullet,
      cmu .second (prepInvoked count), appBullet, rb 0 [] []],
    none, prepFrames count word, prepPark count :: prepStorage count⟩

def prep25BeforeState (count : Nat) (word : Word count) : NFState :=
  .run (prep25BeforeToken count word) ⟨.hole false, some [], [], []⟩

def prep25AtArgumentState (count : Nat) (word : Word count) : NFState :=
  .run
    ⟨prepSecondPath count ++ [.arg], .down,
      [gam .h,
        cgam .second (prepInvoked count)
          (preparationOccurrence count) (prepFirstPath count)
          (prepSecondPath count) (prepContinuationPath count)],
      [appBullet, appBullet, mu .h, appBullet, appBullet,
        cmu .second (prepInvoked count), appBullet, rb 0 [] []],
      none, prepFrames count word, prepPark count :: prepStorage count⟩
    ⟨.hole false, some [], [], []⟩

def prep25KernelToken (count : Nat) (word : Word count) : Token :=
  kernelToken (prep25BeforeToken count word)

theorem prep25KernelToken_eq (count : Nat) (word : Word count) :
    prep25KernelToken count word =
      ⟨prepSecondPath count ++ [.fn], .up,
        [cgam .second (prepInvoked count)
          (preparationOccurrence count) (prepFirstPath count)
          (prepSecondPath count) (prepContinuationPath count)],
        [gam .h, bullet, bullet, mu .h, bullet, bullet,
          cmu .second (prepInvoked count), bullet, rb 0 [] []],
        none, prepFrames count word, prepPark count :: prepStorage count⟩ := by
  have appIs : isAppBullet appBullet = true := by native_decide
  have gamNot : isAppBullet (gam GateName.h) = false := by native_decide
  have muNot : isAppBullet (mu GateName.h) = false := by native_decide
  have cmuNot :
      isAppBullet (cmu Port.second (prepInvoked count)) = false := by rfl
  have rbNot : isAppBullet (rb 0 [] []) = false := by native_decide
  simp [prep25KernelToken, kernelToken, kernelEntry, prep25BeforeToken,
    appIs, gamNot, muNot, cmuNot, rbNot]

theorem prep25FinishNone (count : Nat) (word : Word count) :
    finishCStage? (kernelToken (prep25BeforeToken count word)) = none := by
  simp [finishCStage?, kernelToken, prep25BeforeToken, prepPark]

theorem prep25DeliverNone (count : Nat) (word : Word count) (tail : Term) :
    deliverPort (prepProgram (count + 1) tail)
      (kernelToken (prep25BeforeToken count word)) = none := by
  have gamNot : isAppBullet (gam GateName.h) = false := by native_decide
  have directionSame : (Direction.up != Direction.up) = false := by
    native_decide
  have gamNotLP : asLP? (gam GateName.h) = none := by rfl
  simp [deliverPort, kernelToken, kernelEntry, prep25BeforeToken, gamNot,
    directionSame, gamNotLP]

theorem prep25BoundNone (count : Nat) (word : Word count) (tail : Term) :
    boundHeadStep? (prepProgram (count + 1) tail)
      (prep25BeforeToken count word) ⟨.hole false, some [], [], []⟩ = none := by
  simp [boundHeadStep?, binderIndex, prep25BeforeToken]

theorem prep25CloseNone (count : Nat) (word : Word count) :
    closeVirtualPort (prep25KernelToken count word) = none := by
  rw [prep25KernelToken_eq]
  rfl

theorem prep25ReturnNone (count : Nat) (word : Word count) :
    returnContinuation (prep25KernelToken count word) = none := by
  rw [prep25KernelToken_eq]
  rfl

theorem prep25CnotKernel (count : Nat) (word : Word count) (tail : Term)
    (certificate : Certificate) :
    cnotStepToken (prepProgram (count + 1) tail)
        (prep25KernelToken count word) certificate =
      kernelStepToken (prepProgram (count + 1) tail)
        (prep25KernelToken count word) certificate := by
  simp only [cnotStepToken]
  rw [show finishCStage? (prep25KernelToken count word) = none by
    simp [prep25KernelToken, kernelToken, prep25BeforeToken,
      finishCStage?, prepPark]]
  rw [prep25CloseNone]
  rw [show deliverPort (prepProgram (count + 1) tail)
      (prep25KernelToken count word) = none by
    simpa [prep25KernelToken] using prep25DeliverNone count word tail]
  rw [prep25ReturnNone]
  rw [show subterm? (prepProgram (count + 1) tail)
      (prep25KernelToken count word).path = some (.var (2 * count + 3)) by
    change subterm? (prepProgram (count + 1) tail)
      (prepSecondPath count ++ [.fn]) = _
    rw [subterm_append, subterm_prepProgram_secondPath]
    rfl]
  simp [prep25KernelToken, kernelToken, prep25BeforeToken]

theorem prep25KernelStep (count : Nat) (word : Word count) (tail : Term)
    (certificate : Certificate) :
    kernelStepToken (prepProgram (count + 1) tail)
        (prep25KernelToken count word) certificate =
      [⟨1, 0, 0, .row .arg,
        .run
          ⟨prepSecondPath count ++ [.arg], .down,
            [gam .h,
              cgam .second (prepInvoked count)
                (preparationOccurrence count) (prepFirstPath count)
                (prepSecondPath count) (prepContinuationPath count)],
            [bullet, bullet, mu .h, bullet, bullet,
              cmu .second (prepInvoked count), bullet, rb 0 [] []],
            none, prepFrames count word,
            prepPark count :: prepStorage count⟩⟩] := by
  rw [prep25KernelToken_eq]
  simp only [kernelStepToken]
  rw [show subterm? (prepProgram (count + 1) tail)
      (prepSecondPath count ++ [.fn]) = some (.var (2 * count + 3)) by
    rw [subterm_append, subterm_prepProgram_secondPath]
    rfl]
  have gamNotBullet : isBullet (gam GateName.h) = false := by native_decide
  have gamLike : lpLike (gam GateName.h) = true := by native_decide
  have notArrival :
      (List.getLast? (prepSecondPath count ++ [.fn]) == some .arg) = false := by
    simp
  have pathNotEmpty :
      List.isEmpty (prepSecondPath count ++ [.fn]) = false := by simp
  have pathLast :
      List.getLast? (prepSecondPath count ++ [.fn]) = some .fn := by simp
  have fnNotArg : (some PathStep.fn == some PathStep.arg) = false := by
    native_decide
  simp only [notArrival, Bool.false_and, Bool.false_eq_true, if_false]
  simp only [pathNotEmpty, pathLast, gamNotBullet, gamLike, if_true,
    kernelDeterministic, tokenWith]
  simp only [Bool.false_eq_true, if_false]
  have dropLastPath :
      List.dropLast (prepSecondPath count ++ [.fn]) = prepSecondPath count := by
    simp
  rw [dropLastPath]

theorem prep25Delegate (count : Nat) (word : Word count) (tail : Term)
    (certificate : Certificate) :
    delegateStep (prepProgram (count + 1) tail) (prep25BeforeToken count word)
        ⟨.hole false, some [], [], []⟩ certificate =
      [⟨1, 0, 0, .row .arg, prep25AtArgumentState count word⟩] := by
  simp only [delegateStep]
  rw [show kernelToken (prep25BeforeToken count word) =
      prep25KernelToken count word by rfl]
  rw [prep25CnotKernel, prep25KernelStep]
  have bulletIs : isBullet bullet = true := by native_decide
  have muNot : isBullet (mu GateName.h) = false := by native_decide
  have cmuNot :
      isBullet (cmu Port.second (prepInvoked count)) = false := by rfl
  have rbNot : isBullet (rb 0 [] []) = false := by native_decide
  simp [prep25AtArgumentState, mapKernelEdge, composedToken, composedEntry,
    bulletIs, muNot, cmuNot, rbNot]

theorem prep25BeforeStep (count : Nat) (word : Word count) (tail : Term)
    (certificate : Certificate) :
    composedStep (prepProgram (count + 1) tail)
        (prep25BeforeState count word) certificate =
      [⟨1, 0, 0, .row .arg, prep25AtArgumentState count word⟩] := by
  simp only [prep25BeforeState, composedStep, readbackStep]
  rw [prep25FinishNone, prep25DeliverNone]
  change (match subterm? (prepProgram (count + 1) tail)
      (prepSecondPath count ++ [.fn]) with
    | none => _
    | some _ => _) = _
  rw [show subterm? (prepProgram (count + 1) tail)
      (prepSecondPath count ++ [.fn]) = some (.var (2 * count + 3)) by
    rw [subterm_append, subterm_prepProgram_secondPath]
    rfl]
  rw [prep25BoundNone]
  have gamNot : isAppBullet (gam GateName.h) = false := by native_decide
  have gamNotRB : asRB? (gam GateName.h) = none := by rfl
  have appNotRB : asRB? appBullet = none := by rfl
  have muNotRB : asRB? (mu GateName.h) = none := by rfl
  have cmuNotRB :
      asRB? (cmu Port.second (prepInvoked count)) = none := by rfl
  have rbIs : asRB? (rb 0 [] []) = some (0, [], [], []) := by rfl
  have pathNotEmpty : prepSecondPath count ++ [.fn] ≠ [] := by simp
  have pathBeqEmpty : (prepSecondPath count ++ [.fn] == []) = false := by
    simp
  have expandedPathNotEmpty :
      preparationRoot count ++ [.fn, .arg, .fn] ≠ [] := by simp
  have expandedPathBeqEmpty :
      (preparationRoot count ++ [.fn, .arg, .fn] == []) = false := by simp
  simp only [List.getLast?_append, gamNot, Bool.false_eq_true, if_false]
  simp [prep25BeforeToken, prep25AtArgumentState, gamNot, gamNotRB,
    appNotRB, muNotRB, cmuNotRB, rbIs, rbAfterOutputBullets, firstRB,
    treeAt?, pathNotEmpty, pathBeqEmpty, expandedPathNotEmpty,
    expandedPathBeqEmpty, prep25Delegate, nfDeterministic]
  change delegateStep (prepProgram (count + 1) tail)
      (prep25BeforeToken count word) ⟨.hole false, some [], [], []⟩
      certificate =
    [⟨1, 0, 0, .row .arg, prep25AtArgumentState count word⟩]
  exact prep25Delegate count word tail certificate

theorem prep25AtArgumentStep (count : Nat) (word : Word count) (tail : Term)
    (certificate : Certificate) :
    composedStep (prepProgram (count + 1) tail)
        (prep25AtArgumentState count word) certificate =
      [⟨1, 0, 0, .row .b2, prepCheckpoint30 count word⟩] := by
  have appIs : isAppBullet appBullet = true := by native_decide
  have appNotRB : asRB? appBullet = none := by native_decide
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  simp [prep25AtArgumentState, prepCheckpoint30, composedStep,
    finishCStage?, kernelToken, kernelEntry, deliverPort, prepPark,
    directionDifferent, readbackStep, appNotRB, appIs,
    subterm_append, subterm_prepProgram_second_zero, zeroTerm,
    subterm?, treeAt?, nfDeterministic, prepMarker]

set_option maxHeartbeats 0 in
theorem prep_local_25_30 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint25 count word, amplitude⟩] =
      [⟨prepCheckpoint30 count word, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletIs : isBullet bullet = true := by native_decide
  have gamNotBullet : isBullet (gam GateName.h) = false := by rfl
  have muNotBullet : isBullet (mu GateName.h) = false := by rfl
  have cmuNotBullet :
      isBullet (cmu Port.second (prepInvoked count)) = false := by rfl
  have rbNotBullet : isBullet (rb 0 [] []) = false := by rfl
  obtain ⟨ampA, ampB, ampC, ampD, ampK⟩ := amplitude
  simp [evolve, stepColumn, stepBasis, prepCheckpoint25,
    prepCheckpoint30, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, directionDifferent, appIs, bulletIs, countBullets,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_hGate, subterm?,
    binder_prepProgram_h_zero, binder_prepProgram_h_zero_root,
    nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker, prepHKey]
  rw [if_pos (by rfl)]
  simp only [List.map_cons, List.map_nil, List.flatMap_cons,
    List.flatMap_nil, Function.comp_apply, mapKernelEdge, composedToken,
    List.map, edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul]
  simp only [composedEntry, gamNotBullet, muNotBullet, cmuNotBullet,
    rbNotBullet, bulletIs, Bool.false_eq_true, if_false, if_true,
    Int.mul_zero, Int.zero_mul, Int.mul_one, Int.one_mul, Int.add_zero,
    Int.zero_add, Int.sub_zero, Nat.zero_add]
  change evolve (prepProgram (count + 1) tail) certificate 2
    [⟨prep25BeforeState count word,
      { a := ampA, b := ampB, c := ampC, d := ampD, k := ampK }⟩] = _
  simp [evolve, stepColumn, stepBasis, prep25BeforeStep,
    prep25AtArgumentStep, edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul, prepCheckpoint30, prepMarker]

theorem prep_local_30_33 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate)
    (amplitude : Dw)
    (admitted : certificateLookup certificate
      (preparationRoot count ++ [.fn, .arg, .arg]) = some []) :
    evolve (prepProgram (count + 1) tail) certificate 3
        [⟨prepCheckpoint30 count word, amplitude⟩] =
      [⟨prepCheckpoint33 count word false, mul invSqrt2 amplitude⟩,
       ⟨prepCheckpoint33 count word true, mul invSqrt2 amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have gateSame : (GateName.h != GateName.h) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  have filterFalse :
      List.filter (fun _ : Frame => false) (prepFrames count word) = [] := by
    simp
  have filterTrue :
      List.filter (fun _ : Frame => true) (prepFrames count word) =
        prepFrames count word := by
    simp
  simp [evolve, stepColumn, stepBasis, prepCheckpoint30,
    prepCheckpoint33, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, directionDifferent, gateSame, appIs,
    filterFalse, filterTrue,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, binder_prepProgram_h_zero,
    binder_prepProgram_h_zero_root, admitted,
    classifyArrival, fireTargets, nfDeterministic, edgeCoefficient, powDw,
    invSqrt2,
    QalcFiniteGram.one, QalcFiniteGram.mul, prepMarker, prepHKey]

theorem prep_local_33_38 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint33 count word bit, amplitude⟩] =
      [⟨prepCheckpoint38 count word bit, amplitude⟩] := by
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
            cmu .second (prepInvoked count), appBullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  have kernelAnswerHeadNotBullet :
      isBullet
          ([ans GateName.h bit, bullet, bullet,
            cmu .second (prepInvoked count), bullet,
            rb 0 [] []] : List Entry).head! = false := by
    change isBullet (ans GateName.h bit) = false
    exact ansNotBullet
  cases bit <;> simp [evolve, stepColumn, stepBasis, prepCheckpoint33,
    prepCheckpoint38, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, headBang_cons, directionDifferent, directionSame, directionUpSame,
    directionDownNotUp, appIs, gateHSame,
    finishCStage?, deliverPort, closeVirtualPort, returnContinuation,
    ansNotApp, ansNotLP, ansNotRB,
    ansNotBullet, answerHeadNotBullet, kernelAnswerHeadNotBullet,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, binder_prepProgram_h_zero,
    binder_prepProgram_h_zero_root,
    deliverPort_prepHZero, classifyArrival, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, prepHInstance_eq]

theorem prep_local_38_40 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 2
        [⟨prepCheckpoint38 count word bit, amplitude⟩] =
      [⟨prepCheckpoint40 count word bit, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionNotUp :
      (Direction.down == Direction.up) = false := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis, prepCheckpoint38,
    prepCheckpoint40, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, headBang_cons, directionDifferent, directionNotUp,
    directionUpSame, appIs,
    finishCStage?, deliverPort, returnContinuation,
    emitLambda?, fill?, nextCursor, holes, replaceTree?,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, binder_prepProgram_h_zero,
    binder_prepProgram_h_zero_root,
    classifyArrival, nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, prepAnswer, bitNat]

theorem prep_local_40_41 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 1
        [⟨prepCheckpoint40 count word bit, amplitude⟩] =
      [⟨prepCheckpoint41 count word bit, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis,
    prepCheckpoint40, prepCheckpoint41, composedStep, readbackStep,
    firstRB, rbAfterOutputBullets, treeAt?, kernelToken, headBang_cons,
    directionUpSame, appIs, finishCStage?, deliverPort,
    returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, classifyArrival, nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, prepAnswer, bitNat]
  · rw [closeVirtualPort_prepVirtual_false]
    simp [returnContinuation,
      storedReturnOccurrences_virtual_prepStorage,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      hBinderPath]
  · rw [closeVirtualPort_prepVirtual_true]
    simp [returnContinuation,
      storedReturnOccurrences_virtual_prepStorage,
      storedReturnOccurrences_virtual_bundle_prepPark,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      hBinderPath]

theorem prep_local_38_41 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 3
        [⟨prepCheckpoint38 count word bit, amplitude⟩] =
      [⟨prepCheckpoint41 count word bit, amplitude⟩] := by
  rw [show 3 = 2 + 1 by omega, evolve_add,
    prep_local_38_40 count word tail certificate bit amplitude]
  exact prep_local_40_41 count word tail certificate bit amplitude

theorem prep_local_41_42 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 1
        [⟨prepCheckpoint41 count word bit, amplitude⟩] =
      [⟨prepCheckpoint42 count word bit, amplitude⟩] := by
  have directionDifferent :
      (Direction.down != Direction.up) = true := by native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis, prepCheckpoint41,
    prepCheckpoint42, composedStep, readbackStep, firstRB,
    rbAfterOutputBullets, treeAt?,
    kernelToken, headBang_cons, directionDifferent, directionUpSame,
    appIs, finishCStage?, deliverPort, closeVirtualPort,
    closeVirtualPort_prepVirtual, returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, classifyArrival, nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, prepAnswer, bitNat,
    storedReturnOccurrences_virtual_prepStorage,
    findHistory_prepHInstance, findHistory_prepCgam]

theorem prep_local_42_43 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 1
        [⟨prepCheckpoint42 count word bit, amplitude⟩] =
      [⟨prepCheckpoint43 count word bit, amplitude⟩] := by
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis,
    prepCheckpoint42, prepCheckpoint43, composedStep, readbackStep,
    firstRB, rbAfterOutputBullets, treeAt?, kernelToken, headBang_cons,
    directionUpSame, appIs, finishCStage?, deliverPort,
    returnContinuation,
    delegateStep, cnotStepToken, kernelStepToken, kernelDeterministic,
    tokenWith, kernelEntry, composedToken, mapKernelEdge,
    subterm_append, subterm_prepProgram_root, subterm?, prepNode,
    zeroTerm, classifyArrival, nfDeterministic, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul,
    prepMarker, prepHKey, prepAnswer, bitNat,
    findHistory_prepHInstance, findHistory_prepCgam]
  · rw [closeVirtualPort_prepSecond_false]
    simp [edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]
  · rw [closeVirtualPort_prepSecond_true]
    simp [returnContinuation,
      storedReturnOccurrences_prepSecondFn_bundle_prepPark,
      edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

theorem prep_local_41_43 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 2
        [⟨prepCheckpoint41 count word bit, amplitude⟩] =
      [⟨prepCheckpoint43 count word bit, amplitude⟩] := by
  rw [show 2 = 1 + 1 by omega, evolve_add,
    prep_local_41_42 count word tail certificate bit amplitude]
  exact prep_local_42_43 count word tail certificate bit amplitude

theorem prep_local_38_43 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 5
        [⟨prepCheckpoint38 count word bit, amplitude⟩] =
      [⟨prepCheckpoint43 count word bit, amplitude⟩] := by
  rw [show 5 = 3 + 2 by omega, evolve_add,
    prep_local_38_41 count word tail certificate bit amplitude]
  exact prep_local_41_43 count word tail certificate bit amplitude

set_option maxHeartbeats 0 in
theorem prep_local_43_44 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 1
        [⟨prepCheckpoint43 count word bit, amplitude⟩] =
      [⟨prepCheckpoint44 count word bit, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by
    native_decide
  have directionUpSame :
      (Direction.up != Direction.up) = false := by native_decide
  have directionUpEq :
      (Direction.up == Direction.up) = true := by native_decide
  have appIs : isAppBullet appBullet = true := by native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis, prepCheckpoint43,
    prepCheckpoint44, composedStep, readbackStep, firstRB, treeAt?,
    kernelToken, headBang_cons, directionUpSame, directionUpEq, appIs,
    finishCStage?, deliverPort, closeVirtualPort, returnContinuation,
    delegateStep, cnotStepToken, kernelDeterministic, kernelEntry,
    composedToken, mapKernelEdge, zeroTerm, classifyArrival,
    edgeCoefficient, QalcFiniteGram.mul, prepMarker, prepAnswer, bitNat,
    prepExtendedFrames, prepHistory, rbNotBullet] <;>
    simp_all (config := { maxSteps := 1000000 })
      [fireSecond_preparation_false, fireSecond_preparation_true,
      prepFireSource, prepPark, findHistory_prepCgam,
      findHistory_prepCgam_prepPark, discardHistory_prepCgam,
      splitCustom, stageRow, mapKernelEdge, composedToken, composedEntry,
      kernelEntry, edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul, decodeInput_prepAnswer,
      subterm_prepProgram_last_continuation,
      subterm_prepProgram_continuation,
      subterm_prepProgram_continuation_body]

theorem prep_local_44_45 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 1
        [⟨prepCheckpoint44 count word bit, amplitude⟩] =
      [⟨prepCheckpoint45 count word bit, amplitude⟩] := by
  have rbNotBullet : isBullet (rb 0 [] []) = false := by
    native_decide
  cases bit <;> simp [evolve, stepColumn, stepBasis,
    prepCheckpoint44, prepCheckpoint45, composedStep, readbackStep,
    finishCStage?, finishStageRow, kernelDeterministic,
    kernelToken, kernelEntry, composedToken, composedEntry, mapKernelEdge,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    prepExtendedFrames, prepHistory, rbNotBullet]

theorem prep_local_43_45 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 2
        [⟨prepCheckpoint43 count word bit, amplitude⟩] =
      [⟨prepCheckpoint45 count word bit, amplitude⟩] := by
  rw [show 2 = 1 + 1 by omega, evolve_add,
    prep_local_43_44 count word tail certificate bit amplitude]
  exact prep_local_44_45 count word tail certificate bit amplitude

theorem prep_local_0_10 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 10
        [⟨prepReadyState count word, amplitude⟩] =
      [⟨prepCheckpoint10 count word, amplitude⟩] := by
  rw [show 10 = 5 + 5 by omega]
  exact evolve_compose _ _ 5 5 _ _ _
    (prep_local_0_5 count word tail certificate amplitude)
    (prep_local_5_10 count word tail certificate amplitude)

theorem prep_local_10_20 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 10
        [⟨prepCheckpoint10 count word, amplitude⟩] =
      [⟨prepCheckpoint20 count word, amplitude⟩] := by
  rw [show 10 = 5 + 5 by omega]
  exact evolve_compose _ _ 5 5 _ _ _
    (prep_local_10_15 count word tail certificate amplitude)
    (prep_local_15_20 count word tail certificate amplitude)

theorem prep_local_20_30 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 10
        [⟨prepCheckpoint20 count word, amplitude⟩] =
      [⟨prepCheckpoint30 count word, amplitude⟩] := by
  rw [show 10 = 5 + 5 by omega]
  exact evolve_compose _ _ 5 5 _ _ _
    (prep_local_20_25 count word tail certificate amplitude)
    (prep_local_25_30 count word tail certificate amplitude)

theorem prep_local_10_30 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 20
        [⟨prepCheckpoint10 count word, amplitude⟩] =
      [⟨prepCheckpoint30 count word, amplitude⟩] := by
  rw [show 20 = 10 + 10 by omega]
  exact evolve_compose _ _ 10 10 _ _ _
    (prep_local_10_20 count word tail certificate amplitude)
    (prep_local_20_30 count word tail certificate amplitude)

theorem prep_local_0_30 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 30
        [⟨prepReadyState count word, amplitude⟩] =
      [⟨prepCheckpoint30 count word, amplitude⟩] := by
  rw [show 30 = 10 + 20 by omega]
  exact evolve_compose _ _ 10 20 _ _ _
    (prep_local_0_10 count word tail certificate amplitude)
    (prep_local_10_30 count word tail certificate amplitude)

theorem prep_local_33_45_bit (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (bit : Bool)
    (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 12
        [⟨prepCheckpoint33 count word bit, amplitude⟩] =
      [⟨preparedPrefixState (count + 1) (extendWord word bit),
          amplitude⟩] := by
  have tailTrace :
      evolve (prepProgram (count + 1) tail) certificate 7
          [⟨prepCheckpoint38 count word bit, amplitude⟩] =
        [⟨preparedPrefixState (count + 1) (extendWord word bit),
            amplitude⟩] := by
    rw [show 7 = 5 + 2 by omega]
    exact evolve_compose _ _ 5 2 _ _ _
      (prep_local_38_43 count word tail certificate bit amplitude)
      (by simpa using
        prep_local_43_45 count word tail certificate bit amplitude)
  rw [show 12 = 5 + 7 by omega]
  exact evolve_compose _ _ 5 7 _ _ _
    (prep_local_33_38 count word tail certificate bit amplitude)
    tailTrace

theorem prep_local_33_45_column (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw) :
    evolve (prepProgram (count + 1) tail) certificate 12
        [⟨prepCheckpoint33 count word false, mul invSqrt2 amplitude⟩,
         ⟨prepCheckpoint33 count word true, mul invSqrt2 amplitude⟩] =
      [⟨preparedPrefixState (count + 1) (extendWord word false),
          mul invSqrt2 amplitude⟩,
       ⟨preparedPrefixState (count + 1) (extendWord word true),
          mul invSqrt2 amplitude⟩] := by
  calc
    evolve (prepProgram (count + 1) tail) certificate 12
        [⟨prepCheckpoint33 count word false, mul invSqrt2 amplitude⟩,
         ⟨prepCheckpoint33 count word true, mul invSqrt2 amplitude⟩] =
      evolve (prepProgram (count + 1) tail) certificate 12
          [⟨prepCheckpoint33 count word false, mul invSqrt2 amplitude⟩] ++
        evolve (prepProgram (count + 1) tail) certificate 12
          [⟨prepCheckpoint33 count word true, mul invSqrt2 amplitude⟩] :=
      evolve_cons _ _ 12 _ _
    _ = [⟨preparedPrefixState (count + 1) (extendWord word false),
            mul invSqrt2 amplitude⟩] ++
        [⟨preparedPrefixState (count + 1) (extendWord word true),
            mul invSqrt2 amplitude⟩] := by
      rw [prep_local_33_45_bit count word tail certificate false,
        prep_local_33_45_bit count word tail certificate true]

set_option maxHeartbeats 0 in
theorem prep_local_30_45 (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (preparationRoot count ++ [.fn, .arg, .arg]) = some []) :
    evolve (prepProgram (count + 1) tail) certificate 15
        [⟨prepCheckpoint30 count word, amplitude⟩] =
      [⟨preparedPrefixState (count + 1) (extendWord word false),
          mul invSqrt2 amplitude⟩,
       ⟨preparedPrefixState (count + 1) (extendWord word true),
          mul invSqrt2 amplitude⟩] := by
  rw [show 15 = 3 + 12 by omega]
  exact evolve_compose _ _ 3 12 _ _ _
    (prep_local_30_33 count word tail certificate amplitude admitted)
    (prep_local_33_45_column count word tail certificate amplitude)

set_option maxHeartbeats 0 in
theorem prep_node_physical (count : Nat) (word : Word count)
    (tail : Term) (certificate : Certificate) (amplitude : Dw)
    (admitted : certificateLookup certificate
      (preparationRoot count ++ [.fn, .arg, .arg]) = some []) :
    evolve (prepProgram (count + 1) tail) certificate 45
        [⟨prepReadyState count word, amplitude⟩] =
      [⟨preparedPrefixState (count + 1) (extendWord word false),
          mul invSqrt2 amplitude⟩,
       ⟨preparedPrefixState (count + 1) (extendWord word true),
          mul invSqrt2 amplitude⟩] := by
  rw [show 45 = 30 + 15 by omega]
  exact evolve_compose _ _ 30 15 _ _ _
    (prep_local_0_30 count word tail certificate amplitude)
    (prep_local_30_45 count word tail certificate amplitude admitted)

set_option maxHeartbeats 0 in
theorem prep_node_column (count : Nat) (branches : List (Branch count))
    (tail : Term) (certificate : Certificate)
    (admitted : certificateLookup certificate
      (preparationRoot count ++ [.fn, .arg, .arg]) = some []) :
    evolve (prepProgram (count + 1) tail) certificate 45
        (prepReadyColumn branches) =
      preparedPrefixColumn (branches.flatMap preparationScatter) := by
  let input : Branch count → WeightedState := fun branch =>
    ⟨prepReadyState count branch.word, branch.amplitude⟩
  let output : Branch count → PhysicalColumn := fun branch =>
    [⟨preparedPrefixState (count + 1) (extendWord branch.word false),
        mul invSqrt2 branch.amplitude⟩,
     ⟨preparedPrefixState (count + 1) (extendWord branch.word true),
        mul invSqrt2 branch.amplitude⟩]
  have trace : ∀ branch,
      evolve (prepProgram (count + 1) tail) certificate 45
          [input branch] = output branch := by
    intro branch
    exact prep_node_physical count branch.word tail certificate
      branch.amplitude admitted
  rw [show prepReadyColumn branches = branches.map input by rfl]
  rw [evolve_map_flatMap _ _ 45 input output branches trace]
  induction branches with
  | nil => rfl
  | cons branch branches ih =>
      simp [output, preparedPrefixColumn, preparationScatter, ih]

set_option maxHeartbeats 0 in
theorem prep_tail_column (prior : Nat)
    (branches : List (Branch (prior + 1)))
    (tail : Term) (certificate : Certificate) :
    evolve (prepProgram (prior + 2) tail) certificate 2
        (preparedPrefixColumn branches) =
      prepReadyColumn branches := by
  let input : Branch (prior + 1) → WeightedState := fun branch =>
    ⟨preparedPrefixState (prior + 1) branch.word, branch.amplitude⟩
  let output : Branch (prior + 1) → PhysicalColumn := fun branch =>
    [⟨prepReadyState (prior + 1) branch.word, branch.amplitude⟩]
  have trace : ∀ branch,
      evolve (prepProgram (prior + 2) tail) certificate 2
          [input branch] = output branch := by
    intro branch
    exact prep_tail_entry prior branch.word tail certificate branch.amplitude
  rw [show preparedPrefixColumn branches = branches.map input by rfl]
  rw [evolve_map_flatMap _ _ 2 input output branches trace]
  induction branches with
  | nil => rfl
  | cons branch branches ih =>
      simp [output, prepReadyColumn, ih]

theorem preparation_physical (width : Nat) (tail : Term)
    (tailCertificate : Certificate) :
    evolve (prepProgram width tail)
        (preparationCertificate width ++ tailCertificate)
        (preparationBodyCost width)
        [⟨afterInvocationShell, one⟩] =
      preparationBoundaryColumn width := by
  induction width generalizing tail tailCertificate with
  | zero => rfl
  | succ width ih =>
      let lastItem : Path × List Key :=
        (preparationRoot width ++ [.fn, .arg, .arg], [])
      have programEqual :
          prepProgram (width + 1) tail =
            prepProgram width (prepNode width tail) :=
        prepProgram_succ_tail width tail
      have certificateEqual :
          preparationCertificate (width + 1) ++ tailCertificate =
            preparationCertificate width ++ (lastItem :: tailCertificate) := by
        simp [lastItem, preparationCertificate, List.range_succ,
          List.map_append, List.append_assoc]
      have previous := ih (prepNode width tail) (lastItem :: tailCertificate)
      rw [← programEqual, ← certificateEqual] at previous
      simp only [preparationBodyCost]
      rw [evolve_add, previous]
      have admitted :
          certificateLookup
              (preparationCertificate (width + 1) ++ tailCertificate)
              (preparationRoot width ++ [.fn, .arg, .arg]) = some [] :=
        preparationCertificate_lookup_last width tailCertificate
      cases width with
      | zero =>
          rw [if_pos rfl]
          change evolve (prepProgram 1 tail)
              (preparationCertificate 1 ++ tailCertificate) 45
              (prepReadyColumn (preparationBranches 0)) = _
          rw [prep_node_column 0 (preparationBranches 0) tail
            (preparationCertificate 1 ++ tailCertificate) admitted]
          rfl
      | succ prior =>
          rw [if_neg (by omega)]
          rw [show 47 = 2 + 45 by omega, evolve_add]
          change evolve (prepProgram (prior + 2) tail)
              (preparationCertificate (prior + 2) ++ tailCertificate) 45
              (evolve (prepProgram (prior + 2) tail)
                (preparationCertificate (prior + 2) ++ tailCertificate) 2
                (preparedPrefixColumn
                  (preparationBranches (prior + 1)))) = _
          rw [prep_tail_column prior (preparationBranches (prior + 1)) tail
            (preparationCertificate (prior + 2) ++ tailCertificate)]
          rw [prep_node_column (prior + 1)
            (preparationBranches (prior + 1)) tail
            (preparationCertificate (prior + 2) ++ tailCertificate) admitted]
          rfl

theorem preparationBodyCost_exact (positiveWidth : 0 < width) :
    6 + preparationBodyCost width = preparedAt width := by
  induction width with
  | zero => omega
  | succ width ih =>
      cases width with
      | zero => native_decide
      | succ prior =>
          have previous := ih (by omega)
          rw [show preparationBodyCost (Nat.succ (Nat.succ prior)) =
              preparationBodyCost (prior + 1) + 47 by
            simp [preparationBodyCost]]
          calc
            6 + (preparationBodyCost (prior + 1) + 47) =
                (6 + preparationBodyCost (prior + 1)) + 47 := by omega
            _ = preparedAt (prior + 1) + 47 := by rw [previous]
            _ = preparedAt (prior + 2) := by
              simp [preparedAt]
              omega

theorem compiled_preparation_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledEvolve circuit (preparedAt n)
        [⟨QalcComposedMachine.initial, one⟩] =
      preparationBoundaryColumn n := by
  rw [← preparationBodyCost_exact positiveWidth]
  unfold compiledEvolve
  rw [evolve_add]
  have prefixResult := compiled_invocation_prefix positiveWidth circuit
  unfold compiledEvolve at prefixResult
  rw [prefixResult]
  rw [compiledTerm_eq_prepProgram positiveWidth circuit]
  change evolve
      (prepProgram n
        (lowerTotal (compileGatesWith n 0 wireName circuit)
          (preparedEnvironment n)))
      (preparationCertificate n ++
        gateCertificate n 0 (initialWireKeys n) circuit)
      (preparationBodyCost n) [⟨afterInvocationShell, one⟩] = _
  exact preparation_physical n _ _

end QalcGate2PhysicalRefinement
