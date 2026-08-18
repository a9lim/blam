import Gate2ContextualCircuit

/-!
# Literal full-NF output from a compiled circuit boundary

The compiler ends every gate list in one tuple-output lambda.  This file
refines the readback tail of the actual composed machine: tuple-head setup,
nine rows for every live wire, compiler-history unwind, root completion, and
the first halt tick.
-/

namespace QalcGate2ContextualOutput

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
open QalcGate2ContextualCircuit

def finalOutputTerm (circuit : Circuit n) : Term :=
  lowerTotal
    (compileGatesWith n circuit.length
      (sourceWiresFrom 0 wireName circuit) [])
    (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)

theorem subterm_compiledTerm_final_output (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) (gateRoot n circuit.length) =
      some (finalOutputTerm circuit) := by
  simpa [finalOutputTerm] using
    compiledTerm_at_gateRoot positiveWidth circuit ([] : Circuit n)

@[simp] theorem finalOutputTerm_shape (circuit : Circuit n) :
    finalOutputTerm circuit =
      .lam
        (lowerTotal
          (apps (.var (.output circuit.length))
            ((List.finRange n).map fun wire =>
              .var (sourceWiresFrom 0 wireName circuit wire)))
          (.output circuit.length ::
            sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)) := by
  simp [finalOutputTerm, compileGatesWith, lowerTotal]

def finalOutputBodyPath (circuit : Circuit n) : Path :=
  gateRoot n circuit.length ++ [.body]

def finalOutputWirePath (circuit : Circuit n) (wire : Fin n) : Path :=
  finalOutputBodyPath circuit ++
    List.replicate (n - 1 - wire.val) .fn ++ [.arg]

def outputLambdaState (circuit : Circuit n) (data : BoundaryData n) :
    NFState :=
  .run
    ⟨finalOutputBodyPath circuit, .down, [], [rb 1 [] []], none,
      data.frames, data.storage⟩
    ⟨.lam (.hole false), some [.body],
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩

def termApps : Term → List Term → Term
  | head, [] => head
  | head, argument :: rest => termApps (.app head argument) rest

def termSpineRev (head : Term) : List Term → Term
  | [] => head
  | argument :: rest => .app (termSpineRev head rest) argument

theorem termApps_append (head : Term) (left right : List Term) :
    termApps head (left ++ right) = termApps (termApps head left) right := by
  induction left generalizing head with
  | nil => rfl
  | cons argument rest ih =>
      simp [termApps, ih]

theorem termApps_eq_termSpineRev (head : Term) (arguments : List Term) :
    termApps head arguments = termSpineRev head arguments.reverse := by
  have spineAppend : ∀ (left right : List Term) (base : Term),
      termSpineRev base (left ++ right) =
        termSpineRev (termSpineRev base right) left := by
    intro left right base
    induction left with
    | nil => rfl
    | cons argument rest ih =>
        simp [termSpineRev, ih]
  induction arguments generalizing head with
  | nil => rfl
  | cons argument rest ih =>
      rw [List.reverse_cons]
      rw [spineAppend]
      simp [termApps, termSpineRev, ih]

theorem lowerTotal_apps (head : NamedTerm) (arguments : List NamedTerm)
    (environment : List SourceName) :
    lowerTotal (apps head arguments) environment =
      termApps (lowerTotal head environment)
        (arguments.map fun argument => lowerTotal argument environment) := by
  induction arguments generalizing head with
  | nil => rfl
  | cons argument rest ih =>
      simp [apps, termApps, lowerTotal, ih]

def outputArgumentTerms (circuit : Circuit n) : List Term :=
  (List.finRange n).map fun wire =>
    lowerTotal (.var (sourceWiresFrom 0 wireName circuit wire))
      (.output circuit.length ::
        sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)

theorem final_output_body_termSpineRev (circuit : Circuit n) :
    lowerTotal
        (apps (.var (.output circuit.length))
          ((List.finRange n).map fun wire =>
            .var (sourceWiresFrom 0 wireName circuit wire)))
        (.output circuit.length ::
          sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) =
      termSpineRev (.var 1) (outputArgumentTerms circuit).reverse := by
  rw [lowerTotal_apps, termApps_eq_termSpineRev]
  simp only [outputArgumentTerms, List.map_map]
  rw [show lowerTotal (.var (.output circuit.length))
      (.output circuit.length ::
        sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) =
      .var 1 by simp [lowerTotal, lookupName]]
  rfl

theorem subterm_compiledTerm_final_output_root (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) (finalOutputBodyPath circuit) =
      some
        (lowerTotal
          (apps (.var (.output circuit.length))
            ((List.finRange n).map fun wire =>
              .var (sourceWiresFrom 0 wireName circuit wire)))
          (.output circuit.length ::
            sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)) := by
  rw [finalOutputBodyPath, subterm_append,
    subterm_compiledTerm_final_output positiveWidth]
  simp [finalOutputTerm_shape, subterm?]

theorem subterm_compiledTerm_final_output_spine (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit) (finalOutputBodyPath circuit) =
      some (termSpineRev (.var 1)
        (outputArgumentTerms circuit).reverse) := by
  rw [subterm_compiledTerm_final_output_root positiveWidth]
  simp [final_output_body_termSpineRev]

def spineDescentState (base : Path) (steps : Nat) (tape : List Entry)
    (frames : List Frame) (storage : List Store) (zipper : Zipper) :
    NFState :=
  .run
    ⟨base ++ List.replicate steps .fn, .down, [],
      List.replicate steps appBullet ++ tape, none, frames, storage⟩
    zipper

theorem replicate_append_cons_same (count : Nat) (item : α)
    (tail : List α) :
    List.replicate count item ++ item :: tail =
      item :: (List.replicate count item ++ tail) := by
  induction count with
  | zero => rfl
  | succ count ih => simp [List.replicate_succ, ih]

theorem take_cons_replicate (count : Nat) (item tail : α) :
    List.take count (item :: List.replicate count item ++ [tail]) =
      List.replicate count item := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simp only [List.replicate_succ, List.cons_append,
        List.take_succ_cons]
      congr 1

theorem drop_replicate_append_singleton (count : Nat) (item tail : α) :
    List.drop (count + 1) (List.replicate count item ++ [tail]) = [] := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simpa [List.replicate_succ, Nat.add_assoc] using ih

set_option maxHeartbeats 0 in
theorem evolve_termSpineRev_descent (term : Term)
    (certificate : Certificate) (base : Path) (head : Term)
    (arguments : List Term) (tape : List Entry)
    (frames : List Frame) (storage : List Store) (zipper : Zipper)
    (amplitude : Dw)
    (atCode : subterm? term base = some (termSpineRev head arguments))
    (noStage : ∀ kind tail, storage ≠ .cstage kind :: tail) :
    evolve term certificate arguments.length
        [⟨spineDescentState base 0 tape frames storage zipper, amplitude⟩] =
      [⟨spineDescentState base arguments.length tape frames storage zipper,
        amplitude⟩] := by
  induction arguments generalizing base tape with
  | nil => simp [spineDescentState]
  | cons argument rest ih =>
      have nextCode :
          subterm? term (base ++ [.fn]) =
            some (termSpineRev head rest) := by
        rw [subterm_append, atCode]
        simp [termSpineRev, subterm?]
      have finishNone := finishCStage_none_of_noStageHead storage noStage
      simp only [List.length_cons]
      rw [show rest.length + 1 = 1 + rest.length by omega]
      change evolve term certificate (1 + rest.length)
          [⟨spineDescentState base 0 tape frames storage zipper,
            amplitude⟩] = _
      rw [evolve_add]
      have firstStep :
          evolve term certificate 1
              [⟨spineDescentState base 0 tape frames storage zipper,
                amplitude⟩] =
            [⟨spineDescentState (base ++ [.fn]) 0
              (appBullet :: tape) frames storage zipper, amplitude⟩] := by
        simp [evolve, stepColumn, stepBasis, spineDescentState, atCode,
          termSpineRev, finishNone, composedStep, readbackStep,
          delegateStep, cnotStepToken, kernelToken, composedToken,
          mapKernelEdge, nfDeterministic, edgeCoefficient, powDw,
          QalcFiniteGram.one, QalcFiniteGram.mul]
      rw [firstStep]
      have tailTrace := ih (base := base ++ [.fn])
        (tape := appBullet :: tape) nextCode
      simpa [spineDescentState, List.append_assoc, List.replicate_succ,
        Nat.add_comm, Nat.add_left_comm,
        replicate_append_cons_same] using tailTrace

theorem subterm_termSpineRev_head (head : Term) (arguments : List Term) :
    subterm? (termSpineRev head arguments)
        (List.replicate arguments.length .fn) = some head := by
  induction arguments with
  | nil => simp [termSpineRev, subterm?]
  | cons argument rest ih =>
      simp [termSpineRev, subterm?, List.replicate_succ, ih]

theorem subterm_termSpineRev_argument (head : Term)
    (arguments : List Term) (offset : Nat) (within : offset < arguments.length) :
    subterm? (termSpineRev head arguments)
        (List.replicate offset .fn ++ [.arg]) = arguments[offset]? := by
  induction offset generalizing arguments with
  | zero =>
      cases arguments with
      | nil => simp at within
      | cons argument rest => simp [termSpineRev, subterm?]
  | succ offset ih =>
      cases arguments with
      | nil => simp at within
      | cons argument rest =>
          simp only [List.length_cons] at within
          simp [termSpineRev, subterm?, List.replicate_succ,
            ih rest (by omega)]

theorem subterm_termSpineRev_functions (head : Term)
    (arguments : List Term) (count : Nat) (bounded : count ≤ arguments.length) :
    subterm? (termSpineRev head arguments) (List.replicate count .fn) =
      some (termSpineRev head (arguments.drop count)) := by
  induction count generalizing arguments with
  | zero => simp [termSpineRev, subterm?]
  | succ count ih =>
      cases arguments with
      | nil => simp at bounded
      | cons argument rest =>
          simp only [List.length_cons] at bounded
          simp [termSpineRev, subterm?, List.replicate_succ,
            ih rest (by omega)]

theorem binderPathGo_termSpineRev_argument (head : Term)
    (arguments : List Term) (offset index : Nat)
    (here : Path) (binders : List Path)
    (positiveIndex : 0 < index)
    (found : arguments[offset]? = some (.var index)) :
    binderPathGo (termSpineRev head arguments)
        (List.replicate offset .fn ++ [.arg]) here binders =
      binders[index - 1]? := by
  induction offset generalizing arguments here with
  | zero =>
      cases arguments with
      | nil => simp at found
      | cons argument rest =>
          simp only [List.getElem?_cons_zero] at found
          have equal : argument = .var index := Option.some.inj found
          subst argument
          have indexNe : index ≠ 0 := Nat.ne_of_gt positiveIndex
          simp [termSpineRev, binderPathGo, indexNe]
  | succ offset ih =>
      cases arguments with
      | nil => simp at found
      | cons argument rest =>
          simp only [List.getElem?_cons_succ] at found
          simp [termSpineRev, binderPathGo, List.replicate_succ,
            ih rest (here ++ [.fn]) found]

theorem binderPathGo_termSpineRev_var_one (arguments : List Term)
    (here : Path) (binders : List Path) :
    binderPathGo (termSpineRev (.var 1) arguments)
        (List.replicate arguments.length .fn) here binders = binders[0]? := by
  induction arguments generalizing here with
  | nil => simp [termSpineRev, binderPathGo]
  | cons argument rest ih =>
      simp [termSpineRev, binderPathGo, List.replicate_succ, ih,
        Nat.add_comm]

def outputHeadDescentState (circuit : Circuit n)
    (data : BoundaryData n) : NFState :=
  spineDescentState (finalOutputBodyPath circuit) n [rb 1 [] []]
    data.frames data.storage
    ⟨.lam (.hole false), some [.body],
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩

theorem outputArgumentTerms_length (circuit : Circuit n) :
    (outputArgumentTerms circuit).length = n := by
  simp [outputArgumentTerms]

theorem compiled_output_spine_descent (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate n
        [⟨outputLambdaState circuit data, amplitude⟩] =
      [⟨outputHeadDescentState circuit data, amplitude⟩] := by
  have trace := evolve_termSpineRev_descent
    (compiledTerm circuit) certificate (finalOutputBodyPath circuit)
    (.var 1) (outputArgumentTerms circuit).reverse [rb 1 [] []]
    data.frames data.storage
    ⟨.lam (.hole false), some [.body],
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩
    amplitude
    (subterm_compiledTerm_final_output_spine positiveWidth circuit)
    wf.storage.noStageHead
  simpa [outputLambdaState, outputHeadDescentState, spineDescentState,
    outputArgumentTerms_length] using trace

theorem subterm_compiledTerm_final_output_head (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    subterm? (compiledTerm circuit)
        (finalOutputBodyPath circuit ++ List.replicate n .fn) =
      some (.var 1) := by
  rw [subterm_append,
    subterm_compiledTerm_final_output_spine positiveWidth]
  simpa [outputArgumentTerms_length] using
    subterm_termSpineRev_head (.var 1) (outputArgumentTerms circuit).reverse

theorem binder_compiledTerm_final_output_head (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    binderPath? (compiledTerm circuit)
        (finalOutputBodyPath circuit ++ List.replicate n .fn) =
      some (gateRoot n circuit.length) := by
  rw [show finalOutputBodyPath circuit ++ List.replicate n .fn =
      gateRoot n circuit.length ++
        ([.body] ++ List.replicate n .fn) by
    simp [finalOutputBodyPath, List.append_assoc]]
  have result := binder_compiledTerm_after_prefix positiveWidth circuit
    ([] : Circuit n) ([.body] ++ List.replicate n .fn)
  have lowered :
      lowerTotal
          (compileGatesWith n circuit.length
            (sourceWiresFrom 0 wireName circuit) [])
          (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) =
        .lam (termSpineRev (.var 1)
          (outputArgumentTerms circuit).reverse) := by
    simp [compileGatesWith, lowerTotal,
      final_output_body_termSpineRev]
  rw [lowered] at result
  simp only [List.cons_append, binderPathGo] at result
  simp only [List.nil_append, List.append_nil] at result
  have computed :
      binderPathGo
          (termSpineRev (.var 1) (outputArgumentTerms circuit).reverse)
          (List.replicate n .fn)
          (gateRoot n circuit.length ++ [.body])
          (gateRoot n circuit.length ::
            (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
              (sourceBinderPath n)) =
        some (gateRoot n circuit.length) := by
    have generic := binderPathGo_termSpineRev_var_one
      (outputArgumentTerms circuit).reverse
      (gateRoot n circuit.length ++ [.body])
      (gateRoot n circuit.length ::
        (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
          (sourceBinderPath n))
    simpa [outputArgumentTerms_length] using generic
  rw [computed] at result
  simpa using result

theorem outputArgumentTerms_reverse_get (circuit : Circuit n)
    (wire : Fin n) :
    (outputArgumentTerms circuit).reverse[n - 1 - wire.val]? =
      some
        (lowerTotal (.var (sourceWiresFrom 0 wireName circuit wire))
          (.output circuit.length ::
            sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)) := by
  have within : n - 1 - wire.val < (outputArgumentTerms circuit).length := by
    simp [outputArgumentTerms_length]
    omega
  rw [List.getElem?_reverse within]
  have indexEq :
      (outputArgumentTerms circuit).length - 1 - (n - 1 - wire.val) =
        wire.val := by
    simp only [outputArgumentTerms_length]
    omega
  have wireWithin : wire.val < (outputArgumentTerms circuit).length := by
    simpa [outputArgumentTerms_length] using wire.isLt
  rw [indexEq, List.getElem?_eq_getElem wireWithin]
  simp [outputArgumentTerms, List.getElem_map, List.getElem_finRange]

theorem subterm_compiledTerm_final_output_wire (positiveWidth : 0 < n)
    (circuit : Circuit n) (wire : Fin n) :
    ∃ index,
      subterm? (compiledTerm circuit) (finalOutputWirePath circuit wire) =
          some (.var index) ∧
        lookupName (sourceWiresFrom 0 wireName circuit wire)
            (.output circuit.length ::
              sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) =
          some index := by
  have member : sourceWiresFrom 0 wireName circuit wire ∈
      (.output circuit.length ::
        sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) := by
    simp [compilerSourceWire_mem]
  rcases lookupName_some_of_mem member with ⟨index, found⟩
  refine ⟨index, ?_, found⟩
  rw [show finalOutputWirePath circuit wire =
      finalOutputBodyPath circuit ++
        (List.replicate (n - 1 - wire.val) .fn ++ [.arg]) by
    simp [finalOutputWirePath, List.append_assoc]]
  rw [subterm_append,
    subterm_compiledTerm_final_output_spine positiveWidth]
  simp only [Option.bind_some]
  rw [subterm_termSpineRev_argument (.var 1)
    (outputArgumentTerms circuit).reverse (n - 1 - wire.val) (by
      simp [outputArgumentTerms_length]
      omega)]
  rw [outputArgumentTerms_reverse_get]
  simp [lowerTotal, found]

theorem binder_compiledTerm_final_output_wire (positiveWidth : 0 < n)
    (circuit : Circuit n) (wire : Fin n) :
    binderPath? (compiledTerm circuit) (finalOutputWirePath circuit wire) =
      some (sourceBinderPath n
        (sourceWiresFrom 0 wireName circuit wire)) := by
  rw [show finalOutputWirePath circuit wire =
      gateRoot n circuit.length ++
        ([.body] ++ List.replicate (n - 1 - wire.val) .fn ++ [.arg]) by
    simp [finalOutputWirePath, finalOutputBodyPath, List.append_assoc]]
  have prefixBinder := binder_compiledTerm_after_prefix positiveWidth circuit
    ([] : Circuit n)
    ([.body] ++ List.replicate (n - 1 - wire.val) .fn ++ [.arg])
  simp only [List.append_nil] at prefixBinder
  rw [prefixBinder]
  rcases compilerSourceWire_lookup_binder circuit wire with
    ⟨index, found, binder⟩
  have lowered :
      lowerTotal
          (compileGatesWith n circuit.length
            (sourceWiresFrom 0 wireName circuit) [])
          (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit) =
        .lam (termSpineRev (.var 1)
          (outputArgumentTerms circuit).reverse) := by
    simp [compileGatesWith, lowerTotal, final_output_body_termSpineRev]
  rw [lowered]
  simp only [List.cons_append, binderPathGo]
  have argumentFound :
      (outputArgumentTerms circuit).reverse[n - 1 - wire.val]? =
        some (.var (index + 1)) := by
    rw [outputArgumentTerms_reverse_get]
    have sourceNeOutput :
        sourceWiresFrom 0 wireName circuit wire ≠
          .output circuit.length := by
      rcases compilerSourceWire_before circuit wire with source | source
      · rcases source with ⟨initial, shape⟩
        simp [shape]
      · rcases source with ⟨gateIndex, before, shape⟩
        rcases shape with shape | shape <;> simp [shape]
    simp [lowerTotal, lookupName, sourceNeOutput, found]
  simp only [List.nil_append]
  calc
    binderPathGo (termSpineRev (.var 1)
        (outputArgumentTerms circuit).reverse)
        (List.replicate (n - 1 - wire.val) .fn ++ [.arg])
        (gateRoot n circuit.length ++ [.body])
        (gateRoot n circuit.length ::
          (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
            (sourceBinderPath n)) =
        (gateRoot n circuit.length ::
          (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
            (sourceBinderPath n))[(index + 1) - 1]? :=
      binderPathGo_termSpineRev_argument (.var 1)
        (outputArgumentTerms circuit).reverse (n - 1 - wire.val)
        (index + 1) (gateRoot n circuit.length ++ [.body])
        (gateRoot n circuit.length ::
          (sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
            (sourceBinderPath n)) (by omega) argumentFound
    _ = ((sourceEnvironmentFrom 0 (preparedEnvironment n) circuit).map
          (sourceBinderPath n))[index - 1]? := by
      have positiveIndex := lookupName_positive found
      obtain ⟨prior, rfl⟩ := Nat.exists_eq_succ_of_ne_zero
        (Nat.ne_of_gt positiveIndex)
      simp
    _ = some (sourceBinderPath n
          (sourceWiresFrom 0 wireName circuit wire)) := binder

theorem compilerSourceBinder_before_finalOutputWire (circuit : Circuit n)
    (wire : Fin n) :
    1 ≤ level (finalOutputWirePath circuit wire) -
      level (sourceBinderPath n
        (sourceWiresFrom 0 wireName circuit wire)) := by
  rcases compilerSourceWire_before circuit wire with source | source
  · rcases source with ⟨initial, shape⟩
    rw [shape]
    simp [finalOutputWirePath, finalOutputBodyPath, sourceBinderPath,
      gateRoot, preparationRoot, prepContinuationPath, shellBodyPath, level]
    omega
  · rcases source with ⟨gateIndex, before, shape⟩
    rcases shape with shape | shape <;> rw [shape] <;>
      simp [finalOutputWirePath, finalOutputBodyPath, sourceBinderPath,
        gateRoot, preparationRoot, gateContinuationPath, shellBodyPath,
        level] <;> omega

def finalOutputHeadPath (circuit : Circuit n) : Path :=
  finalOutputBodyPath circuit ++ List.replicate n .fn

def outputHeadReadyState (circuit : Circuit n)
    (data : BoundaryData n) : NFState :=
  .run
    ⟨finalOutputHeadPath circuit, .up, [],
      List.replicate n appBullet ++
        [rb 1 [] [] (spineSchedule [.body] n)],
      none, data.frames, data.storage⟩
    ⟨.lam (spine (.var 1) n),
      (spineSchedule [.body] n).head?,
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩

def outputHeadBoundState (circuit : Circuit n)
    (data : BoundaryData n) : NFState :=
  .run
    ⟨gateRoot n circuit.length, .up, [],
      lp (finalOutputHeadPath circuit) [] ::
        List.replicate n appBullet ++ [rb 1 [] []],
      none, data.frames, data.storage⟩
    ⟨.lam (.hole false), some [.body],
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩

def outputHeadBuiltState (circuit : Circuit n)
    (data : BoundaryData n) : NFState :=
  .run
    ⟨gateRoot n circuit.length, .down, [],
      lp (finalOutputHeadPath circuit) [] ::
        List.replicate n appBullet ++
          [rb 1 [] [] (spineSchedule [.body] n)],
      none, data.frames, data.storage⟩
    ⟨.lam (spine (.var 1) n),
      (spineSchedule [.body] n).head?,
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩], []⟩

theorem holes_from (tree : NFTree) (basePath : Path) :
    holes tree basePath = (holes tree []).map (basePath ++ ·) := by
  induction tree generalizing basePath with
  | hole armed => simp [holes]
  | var index => simp [holes]
  | gate name => simp [holes]
  | lam body ih =>
      calc
        holes (.lam body) basePath =
            holes body (basePath ++ [.body]) := rfl
        _ = (holes body []).map ((basePath ++ [.body]) ++ ·) :=
          ih (basePath ++ [.body])
        _ = (holes body [.body]).map (basePath ++ ·) := by
          rw [ih [.body]]
          simp only [List.map_map]
          apply congrArg (fun function => (holes body []).map function)
          funext path
          simp only [Function.comp_apply, List.append_assoc]
        _ = (holes (.lam body) []).map (basePath ++ ·) := rfl
  | app fn argument fnIH argumentIH =>
      calc
        holes (.app fn argument) basePath =
            holes fn (basePath ++ [.fn]) ++
              holes argument (basePath ++ [.arg]) := rfl
        _ = (holes fn []).map ((basePath ++ [.fn]) ++ ·) ++
              (holes argument []).map ((basePath ++ [.arg]) ++ ·) := by
          calc
            holes fn (basePath ++ [.fn]) ++
                holes argument (basePath ++ [.arg]) =
                (holes fn []).map ((basePath ++ [.fn]) ++ ·) ++
                  holes argument (basePath ++ [.arg]) :=
              congrArg (· ++ holes argument (basePath ++ [.arg]))
                (fnIH (basePath ++ [.fn]))
            _ = (holes fn []).map ((basePath ++ [.fn]) ++ ·) ++
                  (holes argument []).map ((basePath ++ [.arg]) ++ ·) :=
              congrArg
                ((holes fn []).map ((basePath ++ [.fn]) ++ ·) ++ ·)
                (argumentIH (basePath ++ [.arg]))
        _ = (holes fn [.fn]).map (basePath ++ ·) ++
              (holes argument [.arg]).map (basePath ++ ·) := by
          rw [fnIH [.fn], argumentIH [.arg]]
          simp only [List.map_map]
          congr 1 <;>
            apply congrArg (fun function => List.map function _) <;>
            funext path <;>
            simp only [Function.comp_apply, List.append_assoc]
        _ = (holes (.app fn argument) []).map (basePath ++ ·) := by
          simp only [holes, List.nil_append, List.map_append]

@[simp] theorem holes_output_tuple (width : Nat) :
    holes (.lam (spine (.var 1) width)) [] =
      spineSchedule [.body] width := by
  simp only [holes, List.nil_append, spineSchedule]
  exact holes_from (spine (.var 1) width) [.body]

@[simp] theorem replaceFirst_outputDelimiter_tail (width : Nat)
    (schedule : List Path) :
    replaceFirst
        (List.replicate width appBullet ++ [rb 1 [] []])
        (rb 1 [] []) (rb 1 [] [] schedule) =
      some
        (List.replicate width appBullet ++ [rb 1 [] [] schedule]) := by
  induction width with
  | zero => simp [replaceFirst]
  | succ width ih =>
      rw [List.replicate_succ]
      have different : (appBullet == rb 1 [] []) = false := by
        simp [appBullet, rb, entry, entryBEq]
      simp only [List.cons_append, replaceFirst, different,
        Bool.false_eq_true, ↓reduceIte]
      rw [ih]
      rfl

@[simp] theorem replaceFirst_outputDelimiter (headPath : Path)
    (width : Nat) (schedule : List Path) :
    replaceFirst
        (lp headPath [] ::
          (List.replicate width appBullet ++ [rb 1 [] []]))
        (rb 1 [] []) (rb 1 [] [] schedule) =
      some
        (lp headPath [] ::
          (List.replicate width appBullet ++ [rb 1 [] [] schedule])) := by
  have different : (lp headPath [] == rb 1 [] []) = false := by
    simp [lp, rb, entry, entryBEq]
  simp only [replaceFirst, different, Bool.false_eq_true, ↓reduceIte]
  rw [replaceFirst_outputDelimiter_tail]
  rfl

set_option maxHeartbeats 0 in
theorem compiled_output_head_var (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputHeadDescentState circuit data, amplitude⟩] =
      [⟨outputHeadBoundState circuit data, amplitude⟩] := by
  have atHead := subterm_compiledTerm_final_output_head positiveWidth circuit
  have binderHead :=
    binder_compiledTerm_final_output_head positiveWidth circuit
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have rbNotBullet : isBullet (rb 1 [] []) = false := by native_decide
  simp [evolve, stepColumn, stepBasis, outputHeadDescentState,
    spineDescentState, outputHeadBoundState, finalOutputHeadPath,
    atHead, binderHead, finishNone, rbNotBullet, composedStep, readbackStep,
    delegateStep, cnotStepToken, kernelStepToken, kernelToken,
    composedToken, tokenWith, kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_head_build (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputHeadBoundState circuit data, amplitude⟩] =
      [⟨outputHeadBuiltState circuit data, amplitude⟩] := by
  have atOutput := subterm_compiledTerm_final_output positiveWidth circuit
  have binderHead :=
    binder_compiledTerm_final_output_head positiveWidth circuit
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have rootEmpty := wf.storage.futureRoot circuit.length (Nat.le_refl _)
  have deliverNone := deliverPort_none_of_emptyBindings
    (compiledTerm circuit) (gateRoot n circuit.length) .up []
    (lp (finalOutputBodyPath circuit ++ List.replicate n .fn) [] ::
      (List.replicate n bullet ++ [rb 1 [] []]))
    none data.frames data.storage rootEmpty
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputHeadBoundState,
    outputHeadBuiltState, finalOutputHeadPath, atOutput, binderHead,
    finalOutputTerm_shape, finishNone, deliverNone, directionSame,
    composedStep, readbackStep,
    delegateStep, cnotStepToken, kernelStepToken, kernelToken,
    composedToken, tokenWith, kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic,
    boundHeadStep?, binderIndex, fill?, treeAt?, replaceTree?, holes,
    nextCursor, holes_output_tuple, sourceIdentity,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]
  exact congrArg List.head?
    (holes_from (spine (.var 1) n) [.body])

set_option maxHeartbeats 0 in
theorem compiled_output_head_return (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputHeadBuiltState circuit data, amplitude⟩] =
      [⟨outputHeadReadyState circuit data, amplitude⟩] := by
  have atOutput := subterm_compiledTerm_final_output positiveWidth circuit
  have binderHead :=
    binder_compiledTerm_final_output_head positiveWidth circuit
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  have rbNotBullet :
      isBullet (rb 1 [] [] (spineSchedule [.body] n)) = false := by
    simp [isBullet, rb, bullet, entry, entryBEq]
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputHeadBuiltState,
    outputHeadReadyState, finalOutputHeadPath, atOutput, binderHead,
    finalOutputTerm_shape, finishNone, rbNotBullet, composedStep, readbackStep,
    delegateStep, cnotStepToken, kernelStepToken, kernelToken,
    composedToken, tokenWith, kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic,
    firstRB, rbAfterOutputBullets, treeAt?,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_entry (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 2
        [⟨boundaryState n circuit.length data, amplitude⟩] =
      [⟨gateReadyState n circuit.length data, amplitude⟩] := by
  rcases List.eq_nil_or_concat circuit with rfl | ⟨prior, previous, rfl⟩
  · rw [compiledTerm_eq_prepProgram positiveWidth]
    let tail := lowerTotal (compileGatesWith n 0 wireName [])
      (preparedEnvironment n)
    change evolve (prepProgram n tail) certificate 2
        [⟨boundaryState n 0 data, amplitude⟩] = _
    obtain ⟨width, widthEq⟩ := Nat.exists_eq_succ_of_ne_zero
      (Nat.ne_of_gt positiveWidth)
    subst n
    have directionDifferent :
        (Direction.down != Direction.up) = true := by native_decide
    have appNotRB : asRB? appBullet = none := by native_decide
    have finishNone := finishCStage_none_of_noStageHead data.storage
      wf.storage.noStageHead
    have continuation :
        subterm? (prepProgram (width + 1) tail)
            (preparationRoot width ++ [.arg]) =
          some (.lam (.lam tail)) := by
      simpa [prepContinuationPath] using
        subterm_prepProgram_last_continuation width tail
    have continuationBody :
        subterm? (prepProgram (width + 1) tail)
            (preparationRoot width ++ [.arg, .body]) =
          some (.lam tail) := by
      simpa [prepContinuationPath, List.append_assoc] using
        subterm_prepProgram_last_continuation_body width tail
    simp [evolve, stepColumn, stepBasis, boundaryState, gateReadyState,
      circuitBoundaryPath, inputBoundaryPath, continuation, continuationBody,
      finishNone, composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, mapKernelEdge,
      kernelDeterministic, nfDeterministic, directionDifferent, appNotRB,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      gateRoot, preparationRoot_succ, prepBlock,
      prepContinuationPath, List.append_assoc]
  · have continuation :=
      subterm_compiledTerm_current_continuation positiveWidth prior previous
        ([] : Circuit n)
    have continuationBody :=
      subterm_compiledTerm_current_continuation_body positiveWidth prior
        previous ([] : Circuit n)
    have continuationAtRoot :
        subterm? (compiledTerm (prior ++ [previous]))
            (gateRoot n prior.length ++ [.arg]) =
          some (.lam (.lam (compiledTailAfter prior previous []))) := by
      simpa [gateContinuationPath] using continuation
    have continuationBodyAtRoot :
        subterm? (compiledTerm (prior ++ [previous]))
            (gateRoot n prior.length ++ [.arg, .body]) =
          some (.lam (compiledTailAfter prior previous [])) := by
      simpa [gateContinuationPath, List.append_assoc] using continuationBody
    have nextRoot := gateRoot_succ n prior.length
    have directionDifferent :
        (Direction.down != Direction.up) = true := by native_decide
    have appNotRB : asRB? appBullet = none := by native_decide
    have finishNone := finishCStage_none_of_noStageHead data.storage
      wf.storage.noStageHead
    simp [evolve, stepColumn, stepBasis, boundaryState, gateReadyState,
      circuitBoundaryPath, gateBoundaryPath, continuation, continuationBody,
      continuationAtRoot, continuationBodyAtRoot, finishNone,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, mapKernelEdge,
      kernelDeterministic, nfDeterministic, directionDifferent, appNotRB,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      nextRoot, gateBlock, prepBlock, List.append_assoc]

theorem compiled_output_emit_lambda (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨gateReadyState n circuit.length data, amplitude⟩] =
      [⟨outputLambdaState circuit data, amplitude⟩] := by
  have atOutput := subterm_compiledTerm_final_output positiveWidth circuit
  have finishNone := finishCStage_none_of_noStageHead data.storage
    wf.storage.noStageHead
  simp [evolve, stepColumn, stepBasis, gateReadyState, outputLambdaState,
    finalOutputBodyPath, atOutput, finalOutputTerm_shape, finishNone,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, mapKernelEdge,
    kernelDeterministic, nfDeterministic, emitLambda?, fill?, treeAt?,
    replaceTree?, holes, nextCursor, sourceIdentity,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul]

theorem compiled_output_head_setup (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate (n + 6)
        [⟨boundaryState n circuit.length data, amplitude⟩] =
      [⟨outputHeadReadyState circuit data, amplitude⟩] := by
  rw [show n + 6 = 2 + (1 + (n + (1 + (1 + 1)))) by omega]
  rw [evolve_add, compiled_output_entry positiveWidth circuit certificate
    data amplitude wf]
  rw [evolve_add, compiled_output_emit_lambda positiveWidth circuit
    certificate data amplitude wf]
  rw [evolve_add, compiled_output_spine_descent positiveWidth circuit
    certificate data amplitude wf]
  rw [evolve_add, compiled_output_head_var positiveWidth circuit certificate
    data amplitude wf]
  rw [evolve_add, compiled_output_head_build positiveWidth circuit certificate
    data amplitude wf]
  exact compiled_output_head_return positiveWidth circuit certificate data
    amplitude wf

/-! ## Uniform wire-output boundary

The tuple is filled left to right.  These definitions expose the exact state
after `processed` persistent ports have returned, without hiding any token,
zipper, frame, or store component behind a decoder. -/

def encodedBoolean (bit : Bool) : NFTree :=
  .lam (.lam (.var (if bit then 1 else 2)))

def outputPrefix (data : BoundaryData n) : Nat → NFTree
  | 0 => .var 1
  | processed + 1 =>
      if within : processed < n then
        .app (outputPrefix data processed)
          (encodedBoolean (data.word ⟨processed, within⟩))
      else outputPrefix data processed

def outputTreeAfter (data : BoundaryData n) (processed : Nat) : NFTree :=
  .lam (spine (outputPrefix data processed) (n - processed))

def outputPathAt (width processed : Nat) : Path :=
  [.body] ++ List.replicate (width - 1 - processed) .fn ++ [.arg]

def outputParentCodePath (circuit : Circuit n) (processed : Nat) : Path :=
  finalOutputBodyPath circuit ++ List.replicate (n - processed) .fn

def outputWireCodePath (circuit : Circuit n) (processed : Nat) : Path :=
  finalOutputBodyPath circuit ++
    List.replicate (n - 1 - processed) .fn ++ [.arg]

def outputReturnLog (circuit : Circuit n) (processed : Nat) : Entry :=
  rbl (outputParentCodePath circuit processed)
    (outputPathAt n processed) (outputWireCodePath circuit processed)

def outputLoggedPosition (circuit : Circuit n) (processed : Nat) : Entry :=
  lp (outputWireCodePath circuit processed)
    [outputReturnLog circuit processed]

def outputFramesAfter (data : BoundaryData n) : Nat → List Frame
  | 0 => data.frames
  | processed + 1 =>
      if within : processed < n then
        removeFrameKey (outputFramesAfter data processed)
          (data.wires ⟨processed, within⟩)
      else outputFramesAfter data processed

theorem removeFrameKey_eq_filter_key (frames : List Frame) (key : Key) :
    removeFrameKey frames key =
      frames.filter fun frame => !(frame.key == key) := by
  unfold removeFrameKey
  apply List.filter_congr
  intro frame membership
  simp only [sameKeyFrames, List.contains_eq_any_beq,
    List.any_filter]
  apply congrArg (fun value : Bool => !value)
  cases target : frame.key == key with
  | false =>
      rw [List.any_eq_false]
      intro candidate candidateMember
      by_cases same : frame == candidate
      · have keyEqual := frame_key_eq_of_beq frame candidate same
        have candidateTarget : (candidate.key == key) = false := by
          simpa [keyEqual] using target
        simp [candidateTarget]
      · simp [same]
  | true =>
      rw [List.any_eq_true]
      exact ⟨frame, membership, by simp [target]⟩

def frameSurvivesAfter (data : BoundaryData n) : Nat → Frame → Bool
  | 0, _ => true
  | processed + 1, frame =>
      if within : processed < n then
        frameSurvivesAfter data processed frame &&
          !(frame.key == data.wires ⟨processed, within⟩)
      else frameSurvivesAfter data processed frame

theorem outputFramesAfter_eq_filter (data : BoundaryData n)
    (processed : Nat) :
    outputFramesAfter data processed =
      data.frames.filter (frameSurvivesAfter data processed) := by
  induction processed with
  | zero =>
      symm
      apply List.filter_eq_self.mpr
      intro frame membership
      rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputFramesAfter, dif_pos within,
          removeFrameKey_eq_filter_key, ih]
        rw [List.filter_filter]
        apply List.filter_congr
        intro frame membership
        simp [frameSurvivesAfter, within, Bool.and_comm]
      · rw [outputFramesAfter, dif_neg within, ih]
        simp [frameSurvivesAfter, within]

def outputDeadStore (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : Store :=
  let key := data.wires wire
  .cdead (keyPort key) key.inst (.recalledAbsent .fresh)
    (outputLoggedPosition circuit wire.val) true

def outputStorageAfter (circuit : Circuit n) (data : BoundaryData n) :
    Nat → List Store
  | 0 => data.storage
  | processed + 1 =>
      if within : processed < n then
        outputDeadStore circuit data ⟨processed, within⟩ ::
          outputStorageAfter circuit data processed
      else outputStorageAfter circuit data processed

def outputResidue (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : Residue :=
  let key := data.wires wire
  .virtualScope (outputPathAt n wire.val) .c (some (keyPort key))
    key.inst .fresh

def outputResiduesAfter (circuit : Circuit n) (data : BoundaryData n) :
    Nat → List Residue
  | 0 => []
  | processed + 1 =>
      if within : processed < n then
        outputResiduesAfter circuit data processed ++
          [outputResidue circuit data ⟨processed, within⟩]
      else outputResiduesAfter circuit data processed

def outputWireBoundaryState (circuit : Circuit n) (data : BoundaryData n)
    (processed : Nat) : NFState :=
  .run
    ⟨outputParentCodePath circuit processed, .up, [],
      List.replicate (n - processed) appBullet ++
        [rb 1 [] [] ((spineSchedule [.body] n).drop processed)],
      none, outputFramesAfter data processed,
      outputStorageAfter circuit data processed⟩
    ⟨outputTreeAfter data processed,
      (spineSchedule [.body] n)[processed]?,
      [⟨[], sourceIdentity (gateRoot n circuit.length) []⟩],
      outputResiduesAfter circuit data processed⟩

@[simp] theorem outputPrefix_zero (data : BoundaryData n) :
    outputPrefix data 0 = .var 1 := rfl

@[simp] theorem outputPrefix_succ (data : BoundaryData n)
    (processed : Nat) (within : processed < n) :
    outputPrefix data (processed + 1) =
      .app (outputPrefix data processed)
        (encodedBoolean (data.word ⟨processed, within⟩)) := by
  simp [outputPrefix, within]

@[simp] theorem outputFramesAfter_succ (data : BoundaryData n)
    (processed : Nat) (within : processed < n) :
    outputFramesAfter data (processed + 1) =
      removeFrameKey (outputFramesAfter data processed)
        (data.wires ⟨processed, within⟩) := by
  simp [outputFramesAfter, within]

@[simp] theorem outputStorageAfter_succ (circuit : Circuit n)
    (data : BoundaryData n) (processed : Nat) (within : processed < n) :
    outputStorageAfter circuit data (processed + 1) =
      outputDeadStore circuit data ⟨processed, within⟩ ::
        outputStorageAfter circuit data processed := by
  simp [outputStorageAfter, within]

@[simp] theorem outputResiduesAfter_succ (circuit : Circuit n)
    (data : BoundaryData n) (processed : Nat) (within : processed < n) :
    outputResiduesAfter circuit data (processed + 1) =
      outputResiduesAfter circuit data processed ++
        [outputResidue circuit data ⟨processed, within⟩] := by
  simp [outputResiduesAfter, within]

theorem outputWireBoundaryState_zero (circuit : Circuit n)
    (data : BoundaryData n) :
    outputWireBoundaryState circuit data 0 =
      outputHeadReadyState circuit data := by
  simp [outputWireBoundaryState, outputHeadReadyState, outputTreeAfter,
    outputParentCodePath, finalOutputHeadPath, outputFramesAfter,
    outputStorageAfter, outputResiduesAfter]
  exact List.head?_eq_getElem?.symm

theorem treeAt_spine_firstHole (head : NFTree) (remaining : Nat) :
    treeAt? (spine head (remaining + 1))
        (List.replicate remaining .fn ++ [.arg]) =
      some (.hole true) := by
  induction remaining with
  | zero => simp [spine, treeAt?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++ [.arg] =
          .fn :: (List.replicate remaining .fn ++ [.arg]) by
        simp [List.replicate_succ]]
      simp only [spine, treeAt?]
      exact ih

theorem replaceTree_spine_firstHole (head value : NFTree)
    (remaining : Nat) :
    replaceTree? (spine head (remaining + 1))
        (List.replicate remaining .fn ++ [.arg]) value =
      some (spine (.app head value) remaining) := by
  induction remaining with
  | zero => simp [spine, replaceTree?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++ [.arg] =
          .fn :: (List.replicate remaining .fn ++ [.arg]) by
        simp [List.replicate_succ]]
      simp only [spine, replaceTree?]
      change (do
          let updated ← replaceTree? (spine head (remaining + 1))
            (List.replicate remaining PathStep.fn ++ [PathStep.arg]) value
          pure (NFTree.app updated (.hole true))) = _
      rw [ih]
      rfl

theorem treeAt_spine_headArgument (head value : NFTree)
    (remaining : Nat) :
    treeAt? (spine (.app head value) remaining)
        (List.replicate remaining .fn ++ [.arg]) = some value := by
  induction remaining with
  | zero => simp [spine, treeAt?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++ [.arg] =
          .fn :: (List.replicate remaining .fn ++ [.arg]) by
        simp [List.replicate_succ]]
      simp only [spine, treeAt?]
      exact ih

theorem replaceTree_spine_headArgument (head oldValue newValue : NFTree)
    (remaining : Nat) :
    replaceTree? (spine (.app head oldValue) remaining)
        (List.replicate remaining .fn ++ [.arg]) newValue =
      some (spine (.app head newValue) remaining) := by
  induction remaining with
  | zero => simp [spine, replaceTree?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++ [.arg] =
          .fn :: (List.replicate remaining .fn ++ [.arg]) by
        simp [List.replicate_succ]]
      simp only [spine, replaceTree?]
      change (do
          let updated ← replaceTree? (spine (.app head oldValue) remaining)
            (List.replicate remaining PathStep.fn ++ [PathStep.arg])
            newValue
          pure (NFTree.app updated (.hole true))) = _
      rw [ih]
      rfl

theorem treeAt_spine_headArgument_append (head value : NFTree)
    (remaining : Nat) (suffix : Path) :
    treeAt? (spine (.app head value) remaining)
        (List.replicate remaining .fn ++ .arg :: suffix) =
      treeAt? value suffix := by
  induction remaining with
  | zero => simp [spine, treeAt?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++
          .arg :: suffix =
        .fn :: (List.replicate remaining .fn ++ .arg :: suffix) by
          simp [List.replicate_succ]]
      simp only [spine, treeAt?]
      exact ih

theorem replaceTree_spine_headArgument_append (head value newValue : NFTree)
    (remaining : Nat) (suffix : Path) :
    replaceTree? (spine (.app head value) remaining)
        (List.replicate remaining .fn ++ .arg :: suffix) newValue =
      (do
        let updated ← replaceTree? value suffix newValue
        pure (spine (.app head updated) remaining)) := by
  induction remaining with
  | zero => simp [spine, replaceTree?]
  | succ remaining ih =>
      rw [show List.replicate (remaining + 1) PathStep.fn ++
          .arg :: suffix =
        .fn :: (List.replicate remaining .fn ++ .arg :: suffix) by
          simp [List.replicate_succ]]
      simp only [spine, replaceTree?]
      rw [ih]
      cases replaceTree? value suffix newValue <;> rfl

@[simp] theorem holes_encodedBoolean (bit : Bool) (base : Path) :
    holes (encodedBoolean bit) base = [] := by
  cases bit <;> rfl

@[simp] theorem holes_outputPrefix (data : BoundaryData n)
    (processed : Nat) (base : Path) :
    holes (outputPrefix data processed) base = [] := by
  induction processed generalizing base with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · simp [outputPrefix, within, holes, ih]
      · simp [outputPrefix, within, ih]

theorem reverse_range_succ (count : Nat) :
    (List.range count).reverse.map (· + 1) ++ [0] =
      (List.range (count + 1)).reverse := by
  induction count with
  | zero => rfl
  | succ count ih =>
      simpa [List.range_succ, List.reverse_append] using
        congrArg ([count + 1] ++ ·) ih

theorem holes_spine_closed (head : NFTree)
    (headClosed : ∀ base, holes head base = [])
    (remaining : Nat) (base : Path) :
    holes (spine head remaining) base =
      (List.range remaining).reverse.map fun offset =>
        base ++ List.replicate offset .fn ++ [.arg] := by
  induction remaining generalizing head base with
  | zero => simp [spine, headClosed]
  | succ remaining ih =>
      rw [spine]
      simp only [holes, List.append_nil, List.map_append]
      have recur := ih head headClosed (base ++ [.fn])
      rw [recur]
      let pathAt : Nat → Path := fun offset =>
        base ++ List.replicate offset .fn ++ [.arg]
      have shifted :
          (List.range remaining).reverse.map (fun offset =>
              base ++ [.fn] ++ List.replicate offset .fn ++ [.arg]) =
            ((List.range remaining).reverse.map (· + 1)).map pathAt := by
        simp only [List.map_map]
        apply List.map_congr_left
        intro offset membership
        simp [pathAt, List.replicate_succ, List.append_assoc]
      rw [shifted]
      rw [show base ++ [.arg] = pathAt 0 by simp [pathAt]]
      simpa [List.map_map, pathAt, List.append_assoc] using
        congrArg (List.map pathAt) (reverse_range_succ remaining)

theorem holes_outputTreeAfter (data : BoundaryData n)
    (processed : Nat) :
    holes (outputTreeAfter data processed) [] =
      (List.range (n - processed)).reverse.map fun offset =>
        [.body] ++ List.replicate offset .fn ++ [.arg] := by
  simp [outputTreeAfter, holes,
    holes_spine_closed (outputPrefix data processed)
      (holes_outputPrefix data processed)]

theorem spineSchedule_eq_outputPaths (width : Nat) :
    spineSchedule [.body] width =
      (List.range width).reverse.map (fun offset =>
        [.body] ++ List.replicate offset .fn ++ [.arg]) := by
  rw [spineSchedule]
  rw [holes_spine_closed (.var 1) (by intro base; rfl)]
  simp [List.map_map, Function.comp_apply, List.append_assoc]

theorem spineSchedule_get (processed : Nat) (within : processed < n) :
    (spineSchedule [.body] n)[processed]? =
      some (outputPathAt n processed) := by
  rw [spineSchedule_eq_outputPaths, List.getElem?_map]
  have reverseWithin : processed < (List.range n).reverse.length := by
    simpa using within
  rw [List.getElem?_eq_getElem reverseWithin]
  have reverseValue :
      (List.range n).reverse[processed] = n - 1 - processed := by
    rw [List.getElem_reverse]
    simp
  simp [reverseValue, outputPathAt]

@[simp] theorem spineSchedule_length (width : Nat) :
    (spineSchedule [.body] width).length = width := by
  simp [spineSchedule_eq_outputPaths]

theorem spineSchedule_drop_head (processed : Nat) (within : processed < n) :
    ((spineSchedule [.body] n).drop processed).head? =
      some (outputPathAt n processed) := by
  rw [List.head?_eq_getElem?, List.getElem?_drop]
  simpa using spineSchedule_get processed within

theorem spineSchedule_drop_headBang (processed : Nat)
    (within : processed < n) :
    ((spineSchedule [.body] n).drop processed).head! =
      outputPathAt n processed := by
  have result := spineSchedule_drop_head processed within
  rcases List.head?_eq_some_iff.mp result with ⟨tail, shape⟩
  rw [shape]
  rfl

theorem spineSchedule_drop_tailBang (processed : Nat)
    (within : processed < n) :
    ((spineSchedule [.body] n).drop processed).tail! =
      (spineSchedule [.body] n).drop (processed + 1) := by
  have headResult := spineSchedule_drop_head processed within
  rcases List.head?_eq_some_iff.mp headResult with ⟨tail, shape⟩
  have dropOne :
      List.drop 1 ((spineSchedule [.body] n).drop processed) =
        (spineSchedule [.body] n).drop (processed + 1) := by
    rw [List.drop_drop]
  have tailShape :
      tail = (spineSchedule [.body] n).drop (processed + 1) := by
    rw [shape] at dropOne
    simpa using dropOne
  rw [shape]
  simpa [tailShape]

theorem spineSchedule_getElem (processed : Nat) (within : processed < n) :
    ∀ scheduleWithin : processed < (spineSchedule [.body] n).length,
      (spineSchedule [.body] n)[processed]'scheduleWithin =
        outputPathAt n processed := by
  intro scheduleWithin
  have result := spineSchedule_get processed within
  rw [List.getElem?_eq_getElem scheduleWithin] at result
  exact Option.some.inj result

def outputTreeWith (data : BoundaryData n) (processed : Nat)
    (value : NFTree) : NFTree :=
  .lam (spine (.app (outputPrefix data processed) value)
    (n - 1 - processed))

theorem treeAt_outputTreeAfter (data : BoundaryData n)
    (processed : Nat) (within : processed < n) :
    treeAt? (outputTreeAfter data processed) (outputPathAt n processed) =
      some (.hole true) := by
  have remaining : n - processed = (n - 1 - processed) + 1 := by omega
  rw [outputTreeAfter, outputPathAt, remaining]
  exact treeAt_spine_firstHole (outputPrefix data processed)
    (n - 1 - processed)

theorem replaceTree_outputTreeAfter (data : BoundaryData n)
    (processed : Nat) (within : processed < n) (value : NFTree) :
    replaceTree? (outputTreeAfter data processed)
        (outputPathAt n processed) value =
      some (outputTreeWith data processed value) := by
  have remaining : n - processed = (n - 1 - processed) + 1 := by omega
  rw [outputTreeAfter, outputPathAt, remaining]
  change (do
      let updated ← replaceTree? (spine (outputPrefix data processed)
          (n - 1 - processed + 1))
        (List.replicate (n - 1 - processed) PathStep.fn ++ [PathStep.arg])
          value
      pure (NFTree.lam updated)) = _
  rw [replaceTree_spine_firstHole]
  rfl

theorem outputTreeWith_encodedBoolean (data : BoundaryData n)
    (processed : Nat) (within : processed < n) :
    outputTreeWith data processed
        (encodedBoolean (data.word ⟨processed, within⟩)) =
      outputTreeAfter data (processed + 1) := by
  rw [outputTreeWith, outputTreeAfter,
    outputPrefix_succ data processed within]
  congr 2
  omega

theorem treeAt_outputTreeWith (data : BoundaryData n)
    (processed : Nat) (value : NFTree) :
    treeAt? (outputTreeWith data processed value)
        (outputPathAt n processed) = some value := by
  simp only [outputTreeWith, outputPathAt, treeAt?]
  exact treeAt_spine_headArgument (outputPrefix data processed) value
    (n - 1 - processed)

theorem replaceTree_outputTreeWith (data : BoundaryData n)
    (processed : Nat) (oldValue newValue : NFTree) :
    replaceTree? (outputTreeWith data processed oldValue)
        (outputPathAt n processed) newValue =
      some (outputTreeWith data processed newValue) := by
  simp only [outputTreeWith, outputPathAt]
  change (do
      let updated ← replaceTree?
        (spine (.app (outputPrefix data processed) oldValue)
          (n - 1 - processed))
        (List.replicate (n - 1 - processed) PathStep.fn ++ [PathStep.arg])
        newValue
      pure (NFTree.lam updated)) = _
  rw [replaceTree_spine_headArgument]
  rfl

theorem treeAt_outputTreeWith_append (data : BoundaryData n)
    (processed : Nat) (value : NFTree) (suffix : Path) :
    treeAt? (outputTreeWith data processed value)
        (outputPathAt n processed ++ suffix) =
      treeAt? value suffix := by
  simp only [outputTreeWith, outputPathAt, List.append_assoc, treeAt?]
  exact treeAt_spine_headArgument_append (outputPrefix data processed) value
    (n - 1 - processed) suffix

theorem replaceTree_outputTreeWith_append (data : BoundaryData n)
    (processed : Nat) (value newValue : NFTree) (suffix : Path) :
    replaceTree? (outputTreeWith data processed value)
        (outputPathAt n processed ++ suffix) newValue =
      (do
        let updated ← replaceTree? value suffix newValue
        pure (outputTreeWith data processed updated)) := by
  simp only [outputTreeWith, outputPathAt, List.append_assoc]
  change (do
      let updated ← replaceTree?
        (spine (.app (outputPrefix data processed) value)
          (n - 1 - processed))
        (List.replicate (n - 1 - processed) PathStep.fn ++
          PathStep.arg :: suffix)
        newValue
      pure (NFTree.lam updated)) = _
  rw [replaceTree_spine_headArgument_append]
  cases replaceTree? value suffix newValue <;> rfl

theorem outputFramesAfter_live {completed : Nat}
    (data : BoundaryData n) (wf : BoundaryWFAt completed data)
    (processed : Nat) (wire : Fin n) (notProcessed : processed ≤ wire.val) :
    sameKeyFrames (outputFramesAfter data processed) (data.wires wire) =
      [liveWireFrame data wire] := by
  induction processed generalizing wire with
  | zero => simpa [outputFramesAfter] using wf.liveFrame wire
  | succ processed ih =>
      have processedWithin : processed < n := by omega
      let removed : Fin n := ⟨processed, processedWithin⟩
      have removedBefore : processed ≤ removed.val := Nat.le_refl _
      have targetBefore : processed ≤ wire.val := by omega
      have removedMatching := ih removed removedBefore
      have targetMatching := ih wire targetBefore
      have distinct : removed ≠ wire := by
        intro equal
        have values := congrArg Fin.val equal
        simp [removed] at values
        omega
      have frameDifferent :
          liveWireFrame data removed ≠ liveWireFrame data wire :=
        liveWireFrame_ne wf removed wire distinct
      rw [outputFramesAfter_succ data processed processedWithin]
      exact sameKeyFrames_removeFrameKey_other _ _ _ _ _
        removedMatching targetMatching frameDifferent

theorem liveWireInstance_isLP {completed : Nat} (data : BoundaryData n)
    (wf : BoundaryWFAt completed data) (wire : Fin n) :
    isLP (data.wires wire).inst = true := by
  rcases wf.wireSource wire with source | source
  · rcases source with ⟨initial, shape⟩
    rw [shape]
    simp [initialWireKeys, portKey, prepInvoked, isLP, asLP?, lp, entry]
  · rcases source with ⟨gateIndex, before, port, shape⟩
    rw [shape]
    cases port <;>
      simp [portKey, gateInvoked, isLP, asLP?, lp, entry]

theorem liveWireInstance_asRBL_none {completed : Nat}
    (data : BoundaryData n) (wf : BoundaryWFAt completed data)
    (wire : Fin n) :
    asRBL? (data.wires wire).inst = none := by
  rcases wf.wireSource wire with source | source
  · rcases source with ⟨initial, shape⟩
    rw [shape]
    simp [initialWireKeys, portKey, prepInvoked, asRBL?, lp, entry]
  · rcases source with ⟨gateIndex, before, port, shape⟩
    rw [shape]
    cases port <;>
      simp [portKey, gateInvoked, asRBL?, lp, entry]

theorem storedPortBindings_outputStorageAfter (path : Path)
    (circuit : Circuit n) (data : BoundaryData n) (processed : Nat) :
    storedPortBindings path (outputStorageAfter circuit data processed) =
      storedPortBindings path data.storage := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputStorageAfter_succ circuit data processed within]
        simpa [storedPortBindings, outputDeadStore] using ih
      · simp [outputStorageAfter, within, ih]

theorem storedReturnOccurrences_outputStorageAfter (path : Path)
    (circuit : Circuit n) (data : BoundaryData n) (processed : Nat) :
    storedReturnOccurrences path
        (outputStorageAfter circuit data processed) =
      storedReturnOccurrences path data.storage := by
  induction processed with
  | zero => rfl
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputStorageAfter_succ circuit data processed within]
        simpa [storedReturnOccurrences, outputDeadStore] using ih
      · simp [outputStorageAfter, within, ih]

theorem outputStorageAfter_noStageHead (circuit : Circuit n)
    (data : BoundaryData n) (processed : Nat)
    (noStage : ∀ kind tail, data.storage ≠ .cstage kind :: tail) :
    ∀ kind tail,
      outputStorageAfter circuit data processed ≠ .cstage kind :: tail := by
  induction processed with
  | zero => simpa [outputStorageAfter] using noStage
  | succ processed ih =>
      by_cases within : processed < n
      · rw [outputStorageAfter_succ circuit data processed within]
        intro kind tail equal
        cases equal
      · simpa [outputStorageAfter, within] using ih

def firstMatchingHistory (invoked : Entry)
    (storage : List Store) : Option Entry :=
  (matchingHistoryInvocations invoked storage).head?

theorem firstMatchingHistory_of_liveBinding
    (path : Path) (invoked : Entry) (port : Port) (storage : List Store)
    (live : storedPortBindings path storage = [(invoked, port)]) :
    firstMatchingHistory invoked storage = some invoked := by
  induction storage with
  | nil => simp [storedPortBindings] at live
  | cons item tail ih =>
      cases item <;>
        simp only [firstMatchingHistory, matchingHistoryInvocations,
          List.filterMap_cons, List.head?_cons]
      all_goals try
        simp only [storedPortBindings, List.filterMap_cons] at live
      all_goals try exact ih live
      case chistory other descriptor descriptors descriptor2 descriptors2
          occurrence continuation =>
        by_cases same : (invoked == other) = true
        · have equal : invoked = other := entry_eq_of_beq same
          simp [same, ← equal]
        · simp only [same, ↓reduceIte]
          by_cases first : (path == continuation) = true
          · have headEqual := congrArg List.head? live
            simp [storedPortBindings, first] at headEqual
            have equal : other = invoked := headEqual.1
            subst other
            simp at same
          · by_cases second : (path == continuation ++ [.body]) = true
            · have headEqual := congrArg List.head? live
              simp [storedPortBindings, first, second] at headEqual
              have equal : other = invoked := headEqual.1
              subst other
              simp at same
            · apply ih
              simpa [storedPortBindings, first, second] using live

def unansweredDeadMatches (port : Port) (invoked : Entry)
    (storage : List Store) (start : Nat := 0) :
    List (Nat × Epoch × Entry) :=
  unansweredCDeadRecords port invoked storage start

theorem unansweredDeadMatches_none_of_noDead
    (port : Port) (invoked : Entry) (storage : List Store)
    (noDead : ∀ deadPort deadInvoked epoch logged answered,
      .cdead deadPort deadInvoked epoch logged answered ∉ storage)
    (start : Nat) :
    unansweredDeadMatches port invoked storage start = [] := by
  apply List.filterMap_eq_nil_iff.mpr
  intro pair membership
  rcases pair with ⟨item, index⟩
  have indexedFacts := List.mem_zipIdx membership
  have offsetLt : index - start < storage.length := by omega
  have itemEq : item = storage[index - start] := indexedFacts.2.2
  have itemMembership : item ∈ storage := by
    rw [itemEq]
    exact List.getElem_mem offsetLt
  cases item <;> try rfl
  case cdead deadPort deadInvoked epoch logged answered =>
    have impossible : False := by
      cases answered
      · exact noDead deadPort deadInvoked epoch logged false itemMembership
      · exact noDead deadPort deadInvoked epoch logged true itemMembership
    exact impossible.elim

theorem unansweredDeadMatches_outputStorageAfter
    (circuit : Circuit n) (data : BoundaryData n)
    (wf : CompiledBoundaryWFAt circuit data)
    (processed : Nat) (wire : Fin n) (notProcessed : processed ≤ wire.val)
    (start : Nat) :
    unansweredDeadMatches (keyPort (data.wires wire))
        (data.wires wire).inst
        (outputStorageAfter circuit data processed) start = [] := by
  induction processed generalizing start with
  | zero =>
      exact unansweredDeadMatches_none_of_noDead _ _ data.storage
        wf.storage.noDead start
  | succ processed ih =>
      have within : processed < n := by omega
      let previous : Fin n := ⟨processed, within⟩
      have previousBefore : processed ≤ previous.val := Nat.le_refl _
      have targetBefore : processed ≤ wire.val := by omega
      have distinct : previous ≠ wire := by
        intro equal
        have values := congrArg Fin.val equal
        simp [previous] at values
        omega
      have keyNe : data.wires previous ≠ data.wires wire :=
        fun equal => distinct (wf.machine.wiresInjective equal)
      have componentMismatch : ¬
          ((keyPort (data.wires previous) == keyPort (data.wires wire)) =
              true ∧
            (data.wires previous).inst = (data.wires wire).inst) := by
        intro both
        have portEqual : keyPort (data.wires previous) =
            keyPort (data.wires wire) := by
          cases leftShape : keyPort (data.wires previous) <;>
            cases rightShape : keyPort (data.wires wire) <;>
            simp [leftShape, rightShape] at both ⊢
          all_goals
            have impossible := both.1
            change false = true at impossible
            contradiction
        apply keyNe
        rw [← liveWireKey_normalized wf.machine previous,
          ← liveWireKey_normalized wf.machine wire, portEqual, both.2]
      rw [outputStorageAfter_succ circuit data processed within]
      unfold unansweredDeadMatches unansweredCDeadRecords
      change
        List.filterMap _
            ((outputDeadStore circuit data previous ::
              outputStorageAfter circuit data processed).zipIdx start) = []
      rw [show
          (outputDeadStore circuit data previous ::
            outputStorageAfter circuit data processed).zipIdx start =
          (outputDeadStore circuit data previous, start) ::
            (outputStorageAfter circuit data processed).zipIdx (start + 1) by
        rfl]
      simp only [List.filterMap_cons]
      rw [show List.filterMap _
          ((outputStorageAfter circuit data processed).zipIdx (start + 1)) =
          unansweredDeadMatches (keyPort (data.wires wire))
            (data.wires wire).inst
            (outputStorageAfter circuit data processed) (start + 1) by rfl,
        ih targetBefore (start + 1)]
      simp [outputDeadStore, previous, componentMismatch]

theorem boundHeadStep_none_after_appBullets
    (term : Term) (path : Path) (log : List Entry)
    (count : Nat) (logged : Entry) (tail : List Entry) (frames : List Frame)
    (storage : List Store) (zipper : Zipper)
    (notApp : isAppBullet logged = false)
    (notLP : asLP? logged = none) :
    boundHeadStep? term
        ⟨path, .up, log,
          List.replicate (count + 1) appBullet ++ logged :: tail, none,
          frames, storage⟩ zipper = none := by
  have appIs : isAppBullet appBullet = true := by native_decide
  cases selected : binderIndex zipper (sourceIdentity path log) <;>
    simp (config := { maxSteps := 100000 })
      [boundHeadStep?, selected, appIs, notApp, notLP]

theorem nextCursor_outputTreeAfter_lt (data : BoundaryData n)
    (processed : Nat) (within : processed < n) :
    nextCursor (outputTreeAfter data processed) =
      some (outputPathAt n processed) := by
  have remaining : n - processed = (n - 1 - processed) + 1 := by omega
  rw [nextCursor, holes_outputTreeAfter, remaining,
    List.range_succ, List.reverse_append]
  simp [outputPathAt]

theorem nextCursor_outputTreeAfter_width (data : BoundaryData n) :
    nextCursor (outputTreeAfter data n) = none := by
  simp [nextCursor, holes_outputTreeAfter]

theorem nextCursor_outputTreeAfter_succ_eq_schedule
    (data : BoundaryData n) (processed : Nat) (within : processed < n) :
    nextCursor (outputTreeAfter data (processed + 1)) =
      (spineSchedule [.body] n)[processed + 1]? := by
  by_cases more : processed + 1 < n
  · rw [nextCursor_outputTreeAfter_lt data (processed + 1) more,
      spineSchedule_get (processed + 1) more]
  · have last : processed + 1 = n := by omega
    subst n
    rw [nextCursor_outputTreeAfter_width]
    simp [spineSchedule_eq_outputPaths]

def outputChildDelimiter (circuit : Circuit n) (processed depth : Nat) :
    Entry :=
  rb depth (outputPathAt n processed)
    (outputWireCodePath circuit processed)

def outputParentDelimiter (width processed : Nat) : Entry :=
  rb 1 [] [] ((spineSchedule [.body] width).drop (processed + 1))

def outputWireTail (circuit : Circuit n) (processed : Nat) : List Entry :=
  List.replicate (n - processed) appBullet ++
    [outputParentDelimiter n processed]

def outputRootBinder (circuit : Circuit n) : BinderMark :=
  ⟨[], sourceIdentity (gateRoot n circuit.length) []⟩

def outputVirtualBinder (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) (phase : Nat) : BinderMark :=
  let key := data.wires wire
  ⟨outputPathAt n wire.val ++ List.replicate phase .body,
    virtualIdentity .c (some (keyPort key)) key.inst phase
      (outputWireCodePath circuit wire.val)⟩

def outputEnteredState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  .run
    ⟨outputWireCodePath circuit wire.val, .down,
      [outputReturnLog circuit wire.val],
      outputChildDelimiter circuit wire.val 1 ::
        outputWireTail circuit wire.val,
      none, outputFramesAfter data wire.val,
      outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (.hole false),
      some (outputPathAt n wire.val),
      [outputRootBinder circuit],
      outputResiduesAfter circuit data wire.val⟩

def outputVariableState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  .run
    ⟨sourceBinderPath n (sourceWiresFrom 0 wireName circuit wire), .up, [],
      outputLoggedPosition circuit wire.val ::
        outputChildDelimiter circuit wire.val 1 ::
          outputWireTail circuit wire.val,
      none, outputFramesAfter data wire.val,
      outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (.hole false),
      some (outputPathAt n wire.val),
      [outputRootBinder circuit],
      outputResiduesAfter circuit data wire.val⟩

def outputDeadStoreAt (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) (answered : Bool) : Store :=
  let key := data.wires wire
  .cdead (keyPort key) key.inst (.recalledAbsent .fresh)
    (outputLoggedPosition circuit wire.val) answered

def outputDeliveredState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .down,
      [key.inst, outputReturnLog circuit wire.val],
      outputChildDelimiter circuit wire.val 1 ::
        outputWireTail circuit wire.val,
      some ⟨.c, some (keyPort key), data.word wire, 0⟩,
      removeFrameKey (outputFramesAfter data wire.val) key,
      outputDeadStoreAt circuit data wire false ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (.hole false),
      some (outputPathAt n wire.val),
      [outputRootBinder circuit],
      outputResiduesAfter circuit data wire.val⟩

def outputVLamOneState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .down,
      [key.inst, outputReturnLog circuit wire.val],
      outputChildDelimiter circuit wire.val 2 ::
        outputWireTail circuit wire.val,
      some ⟨.c, some (keyPort key), data.word wire, 1⟩,
      removeFrameKey (outputFramesAfter data wire.val) key,
      outputDeadStoreAt circuit data wire false ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (.lam (.hole false)),
      some (outputPathAt n wire.val ++ [.body]),
      [outputRootBinder circuit, outputVirtualBinder circuit data wire 0],
      outputResiduesAfter circuit data wire.val⟩

def outputVLamTwoState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .down,
      [key.inst, outputReturnLog circuit wire.val],
      outputChildDelimiter circuit wire.val 3 ::
        outputWireTail circuit wire.val,
      some ⟨.c, some (keyPort key), data.word wire, 2⟩,
      removeFrameKey (outputFramesAfter data wire.val) key,
      outputDeadStoreAt circuit data wire false ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (.lam (.lam (.hole false))),
      some (outputPathAt n wire.val ++ [.body, .body]),
      [outputRootBinder circuit, outputVirtualBinder circuit data wire 0,
        outputVirtualBinder circuit data wire 1],
      outputResiduesAfter circuit data wire.val⟩

def outputAnswerTape (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : List Entry :=
  List.replicate (bitNat (data.word wire)) appBullet ++
    alpha .c (some (keyPort (data.wires wire))) (data.wires wire).inst
      (data.word wire) .fresh ::
    outputChildDelimiter circuit wire.val 3 ::
    outputWireTail circuit wire.val

def outputVVarState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .up,
      [key.inst, outputReturnLog circuit wire.val],
      appBullet :: outputAnswerTape circuit data wire,
      none, removeFrameKey (outputFramesAfter data wire.val) key,
      outputDeadStoreAt circuit data wire false ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (encodedBoolean (data.word wire)),
      (spineSchedule [.body] n)[wire.val + 1]?,
      [outputRootBinder circuit, outputVirtualBinder circuit data wire 0,
        outputVirtualBinder circuit data wire 1],
      outputResiduesAfter circuit data wire.val⟩

def outputAnswerStagedState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .up,
      [outputReturnLog circuit wire.val],
      outputAnswerTape circuit data wire,
      none, removeFrameKey (outputFramesAfter data wire.val) key,
      .cstage .answerPort :: outputDeadStoreAt circuit data wire true ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (encodedBoolean (data.word wire)),
      (spineSchedule [.body] n)[wire.val + 1]?,
      [outputRootBinder circuit, outputVirtualBinder circuit data wire 0,
        outputVirtualBinder circuit data wire 1],
      outputResiduesAfter circuit data wire.val⟩

def outputAnsweredState (circuit : Circuit n) (data : BoundaryData n)
    (wire : Fin n) : NFState :=
  let key := data.wires wire
  .run
    ⟨outputWireCodePath circuit wire.val, .up,
      [outputReturnLog circuit wire.val],
      outputAnswerTape circuit data wire,
      none, removeFrameKey (outputFramesAfter data wire.val) key,
      outputDeadStoreAt circuit data wire true ::
        outputStorageAfter circuit data wire.val⟩
    ⟨outputTreeWith data wire.val (encodedBoolean (data.word wire)),
      (spineSchedule [.body] n)[wire.val + 1]?,
      [outputRootBinder circuit, outputVirtualBinder circuit data wire 0,
        outputVirtualBinder circuit data wire 1],
      outputResiduesAfter circuit data wire.val⟩

theorem subterm_compiledTerm_outputParent (positiveWidth : 0 < n)
    (circuit : Circuit n) (wire : Fin n) :
    subterm? (compiledTerm circuit)
        (outputParentCodePath circuit wire.val) =
      some (termSpineRev (.var 1)
        ((outputArgumentTerms circuit).reverse.drop (n - wire.val))) := by
  rw [outputParentCodePath, subterm_append,
    subterm_compiledTerm_final_output_spine positiveWidth]
  exact subterm_termSpineRev_functions (.var 1)
    (outputArgumentTerms circuit).reverse (n - wire.val) (by
      simp [outputArgumentTerms_length])

set_option maxHeartbeats 0 in
theorem compiled_output_wire_enter (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data)
    (noReturn : storedReturnOccurrences
        (outputParentCodePath circuit wire.val) data.storage = []) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputWireBoundaryState circuit data wire.val, amplitude⟩] =
      [⟨outputEnteredState circuit data wire, amplitude⟩] := by
  have atParent := subterm_compiledTerm_outputParent positiveWidth circuit wire
  have remaining : n - wire.val = (n - 1 - wire.val) + 1 := by omega
  have atParentExact :
      subterm? (compiledTerm circuit)
          (finalOutputBodyPath circuit ++
            .fn :: List.replicate (n - 1 - wire.val) .fn) =
        some (termSpineRev (.var 1)
          ((outputArgumentTerms circuit).reverse.drop (n - wire.val))) := by
    simpa [outputParentCodePath, remaining, List.replicate_succ,
      List.append_assoc] using atParent
  have noStage := outputStorageAfter_noStageHead circuit data wire.val
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data wire.val) noStage
  have scheduleHead := spineSchedule_get wire.val wire.isLt
  have scheduleHeadBang := spineSchedule_drop_headBang wire.val wire.isLt
  have scheduleTailBang := spineSchedule_drop_tailBang wire.val wire.isLt
  have scheduleValue := spineSchedule_getElem wire.val wire.isLt
    (by simpa using wire.isLt)
  have scheduleLength := spineSchedule_length n
  have atHole := treeAt_outputTreeAfter data wire.val wire.isLt
  have atHoleExact :
      treeAt? (outputTreeAfter data wire.val)
          (PathStep.body ::
            (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
        some (.hole true) := by
    simpa [outputPathAt, List.append_assoc] using atHole
  have replaced := replaceTree_outputTreeAfter data wire.val wire.isLt
    (.hole false)
  have replacedExact :
      replaceTree? (outputTreeAfter data wire.val)
          (PathStep.body ::
            (List.replicate (n - 1 - wire.val) .fn ++ [.arg]))
          (.hole false) =
        some (outputTreeWith data wire.val (.hole false)) := by
    simpa [outputPathAt, List.append_assoc] using replaced
  have cursorNow := nextCursor_outputTreeAfter_lt data wire.val wire.isLt
  have appIs : isAppBullet appBullet = true := by native_decide
  have bulletNotLP : asLP? bullet = none := by native_decide
  have directionSame : (Direction.up != Direction.up) = false := by
    native_decide
  have rbNotApp : isAppBullet
      (rb 1 [] [] ((spineSchedule [.body] n).drop wire.val)) = false := by
    rfl
  have rbNeApp :
      rb 1 [] [] ((spineSchedule [.body] n).drop wire.val) ≠ appBullet := by
    intro equal
    simp [rb, appBullet, entry] at equal
  have noReturnAfter :
      storedReturnOccurrences (outputParentCodePath circuit wire.val)
          (outputStorageAfter circuit data wire.val) = [] := by
    rw [storedReturnOccurrences_outputStorageAfter, noReturn]
  have noReturnAfterExact :
      storedReturnOccurrences
          (finalOutputBodyPath circuit ++
            .fn :: List.replicate (n - 1 - wire.val) .fn)
          (outputStorageAfter circuit data wire.val) = [] := by
    simpa [outputParentCodePath, remaining, List.replicate_succ,
      List.append_assoc] using noReturnAfter
  have notPast : ¬n ≤ wire.val := by omega
  have parentEndsFn :
      (PathStep.fn :: List.replicate (n - 1 - wire.val)
        PathStep.fn).getLast? = some PathStep.fn := by
    let count := n - 1 - wire.val
    change (PathStep.fn :: List.replicate count PathStep.fn).getLast? = _
    induction count with
    | zero => rfl
    | succ count ih => simpa [List.replicate_succ] using ih
  have takeBullets :
      List.take (n - 1 - wire.val)
          (appBullet ::
            (List.replicate (n - 1 - wire.val) appBullet ++
              [rb 1 [] []
                ((spineSchedule [.body] n).drop wire.val)])) =
        List.replicate (n - 1 - wire.val) appBullet :=
    take_cons_replicate (n - 1 - wire.val) appBullet
      (rb 1 [] [] ((spineSchedule [.body] n).drop wire.val))
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputWireBoundaryState,
    outputEnteredState, outputWireTail, outputParentDelimiter,
    outputChildDelimiter, outputReturnLog, outputParentCodePath,
    outputWireCodePath, outputPathAt, outputRootBinder,
    atParent, atParentExact, finishNone, scheduleHead, scheduleHeadBang,
    scheduleValue, scheduleLength, scheduleTailBang, atHole, atHoleExact, replaced,
    replacedExact, cursorNow,
    noReturnAfter, noReturnAfterExact, notPast, parentEndsFn,
    takeBullets,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, boundHeadStep?, binderIndex,
    finishCStage?, deliverPort, closeVirtualPort, returnContinuation,
    rbAfterOutputBullets, disarm?, treeAt?, replaceTree?, firstRB,
    take_cons_replicate, drop_replicate_append_singleton,
    sourceIdentity, rbl, lp,
    entryBEq, appIs, rbNotApp, rbNeApp, bulletNotLP, directionSame,
    remaining, List.replicate_succ,
    edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul, List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_var (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputEnteredState circuit data wire, amplitude⟩] =
      [⟨outputVariableState circuit data wire, amplitude⟩] := by
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have binderWire :=
    binder_compiledTerm_final_output_wire positiveWidth circuit wire
  have binderWireExact :
      binderPath? (compiledTerm circuit)
          (outputWireCodePath circuit wire.val) =
        some (sourceBinderPath n
          (sourceWiresFrom 0 wireName circuit wire)) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      binderWire
  have noStage := outputStorageAfter_noStageHead circuit data wire.val
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data wire.val) noStage
  have childNotBullet :
      isBullet (outputChildDelimiter circuit wire.val 1) = false := by
    simp [isBullet, outputChildDelimiter, rb, bullet, entry, entryBEq]
  have childNotApp :
      isAppBullet (outputChildDelimiter circuit wire.val 1) = false := by
    simp [isAppBullet, outputChildDelimiter, rb, appBullet, entry, entryBEq]
  have parentNotBullet :
      isBullet
          (rb 1 [] []
            ((spineSchedule [.body] n).drop (wire.val + 1))) = false := by
    simp [isBullet, rb, bullet, entry, entryBEq]
  have directionDifferent :
      (Direction.down == Direction.up) = false := by native_decide
  have sourceDepth :
      1 ≤ level (outputWireCodePath circuit wire.val) -
        level (sourceBinderPath n
          (sourceWiresFrom 0 wireName circuit wire)) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      compilerSourceBinder_before_finalOutputWire circuit wire
  have logTake :
      List.take
          (level (outputWireCodePath circuit wire.val) -
            level (sourceBinderPath n
              (sourceWiresFrom 0 wireName circuit wire)))
          [outputReturnLog circuit wire.val] =
        [outputReturnLog circuit wire.val] :=
    List.take_of_length_le sourceDepth
  have logDrop :
      List.drop
          (level (outputWireCodePath circuit wire.val) -
            level (sourceBinderPath n
              (sourceWiresFrom 0 wireName circuit wire)))
          [outputReturnLog circuit wire.val] = [] :=
    List.drop_eq_nil_of_le sourceDepth
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputEnteredState,
    outputVariableState, outputLoggedPosition, outputWireTail,
    outputParentDelimiter,
    atWire, atWireExact, binderWire, binderWireExact, noStage, finishNone,
    childNotBullet, childNotApp, parentNotBullet, directionDifferent,
    sourceDepth,
    logTake, logDrop,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_deliver (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputVariableState circuit data wire, amplitude⟩] =
      [⟨outputDeliveredState circuit data wire, amplitude⟩] := by
  have binderWire :=
    binder_compiledTerm_final_output_wire positiveWidth circuit wire
  have binderWireExact :
      binderPath? (compiledTerm circuit)
          (outputWireCodePath circuit wire.val) =
        some (sourceBinderPath n
          (sourceWiresFrom 0 wireName circuit wire)) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      binderWire
  have bindingAfter :
      storedPortBindings
          (sourceBinderPath n
            (sourceWiresFrom 0 wireName circuit wire))
          (outputStorageAfter circuit data wire.val) =
        [((data.wires wire).inst, keyPort (data.wires wire))] := by
    rw [storedPortBindings_outputStorageAfter]
    exact wf.storage.liveBinding wire
  have matching := outputFramesAfter_live data wf.machine wire.val wire
    (Nat.le_refl _)
  have keyEqual := liveWireKey_normalized wf.machine wire
  have noStage := outputStorageAfter_noStageHead circuit data wire.val
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data wire.val) noStage
  have directionSame :
      (Direction.up != Direction.up) = false := by native_decide
  have childNotBullet :
      isBullet (outputChildDelimiter circuit wire.val 1) = false := by
    simp [isBullet, outputChildDelimiter, rb, bullet, entry, entryBEq]
  have childNotBulletExact :
      isBullet
          (rb 1 (outputPathAt n wire.val)
            (outputWireCodePath circuit wire.val)) = false := by
    simp [isBullet, rb, bullet, entry, entryBEq]
  have parentNotBullet :
      isBullet
          (rb 1 [] []
            ((spineSchedule [.body] n).drop (wire.val + 1))) = false := by
    simp [isBullet, rb, bullet, entry, entryBEq]
  have retainedShape :
      (outputFramesAfter data wire.val).filter
          (fun frame => frame != liveWireFrame data wire) =
        (outputFramesAfter data wire.val).filter
          (fun frame => !(frame == liveWireFrame data wire)) := by
    rfl
  have retainedShapeExpanded :
      (outputFramesAfter data wire.val).filter
          (fun frame => frame !=
            { key := data.wires wire, bit := data.word wire,
              epoch := .recalledAbsent .fresh }) =
        (outputFramesAfter data wire.val).filter
          (fun frame => !(frame ==
            { key := data.wires wire, bit := data.word wire,
              epoch := .recalledAbsent .fresh })) := by
    simpa [liveWireFrame] using retainedShape
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputVariableState,
    outputDeliveredState, outputLoggedPosition, outputChildDelimiter,
    outputWireTail, outputParentDelimiter, outputDeadStoreAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, finishNone, deliverPort,
    binderWireExact, bindingAfter, matching, keyEqual, directionSame,
    childNotBullet, childNotBulletExact, parentNotBullet, retainedShape,
    retainedShapeExpanded, headBang_cons, liveWireFrame, removeFrameKey,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_vlam_one (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputDeliveredState circuit data wire, amplitude⟩] =
      [⟨outputVLamOneState circuit data wire, amplitude⟩] := by
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have instanceLP := liveWireInstance_isLP data wf.machine wire
  have instanceIsSome :
      (asLP? (data.wires wire).inst).isSome = true := by
    simpa [isLP] using instanceLP
  have atValue := treeAt_outputTreeWith data wire.val (.hole false)
  have replaced := replaceTree_outputTreeWith data wire.val (.hole false)
    (.lam (.hole false))
  have finishNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            outputDeadStoreAt circuit data wire false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have finishNoneExpanded : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            .cdead (keyPort (data.wires wire)) (data.wires wire).inst
              (.recalledAbsent .fresh)
              (outputLoggedPosition circuit wire.val) false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have parentNotApp :
      isAppBullet (outputParentDelimiter n wire.val) = false := by
    simp [isAppBullet, outputParentDelimiter, rb, appBullet, entry,
      entryBEq]
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputDeliveredState,
    outputVLamOneState, outputVirtualBinder, outputChildDelimiter,
    outputWireTail, outputDeadStoreAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, atWireExact, instanceLP,
    instanceIsSome, finishNone, finishNoneExpanded, parentNotApp,
    emitLambda?, fill?, atValue, replaced, instance?, isLP,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_vlam_two (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputVLamOneState circuit data wire, amplitude⟩] =
      [⟨outputVLamTwoState circuit data wire, amplitude⟩] := by
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have instanceLP := liveWireInstance_isLP data wf.machine wire
  have instanceIsSome :
      (asLP? (data.wires wire).inst).isSome = true := by
    simpa [isLP] using instanceLP
  have atValue :
      treeAt? (outputTreeWith data wire.val (.lam (.hole false)))
          (outputPathAt n wire.val ++ [.body]) = some (.hole false) := by
    rw [treeAt_outputTreeWith_append]
    rfl
  have replaced :
      replaceTree? (outputTreeWith data wire.val (.lam (.hole false)))
          (outputPathAt n wire.val ++ [.body]) (.lam (.hole false)) =
        some (outputTreeWith data wire.val
          (.lam (.lam (.hole false)))) := by
    rw [replaceTree_outputTreeWith_append]
    rfl
  have finishNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            outputDeadStoreAt circuit data wire false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have finishNoneExpanded : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            .cdead (keyPort (data.wires wire)) (data.wires wire).inst
              (.recalledAbsent .fresh)
              (outputLoggedPosition circuit wire.val) false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have parentNotApp :
      isAppBullet (outputParentDelimiter n wire.val) = false := by
    simp [isAppBullet, outputParentDelimiter, rb, appBullet, entry,
      entryBEq]
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputVLamOneState,
    outputVLamTwoState, outputVirtualBinder, outputChildDelimiter,
    outputWireTail, outputDeadStoreAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, atWireExact, instanceLP,
    instanceIsSome, finishNone, finishNoneExpanded, parentNotApp,
    emitLambda?, fill?, atValue, replaced, instance?, isLP,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

theorem binderIndex_outputVirtual (circuit : Circuit n)
    (data : BoundaryData n) (wire : Fin n) (tree : NFTree)
    (residues : List Residue) :
    binderIndex
        ⟨tree, some (outputPathAt n wire.val ++ [.body, .body]),
          [outputRootBinder circuit,
            outputVirtualBinder circuit data wire 0,
            outputVirtualBinder circuit data wire 1], residues⟩
        (virtualIdentity .c (some (keyPort (data.wires wire)))
          (data.wires wire).inst (bitNat (data.word wire))
          (outputWireCodePath circuit wire.val)) =
      some (if data.word wire then 1 else 2) := by
  let base := outputPathAt n wire.val
  have rootLength :
      ([] : Path).length <
        (base ++ [PathStep.body, PathStep.body]).length := by simp
  have rootNext :
      (base ++ [PathStep.body, PathStep.body])[0]? =
        some PathStep.body := by
    simp [base, outputPathAt]
  have phaseZeroLength :
      base.length < (base ++ [PathStep.body, PathStep.body]).length := by
    simp
  have phaseZeroTake :
      (base ++ [PathStep.body, PathStep.body]).take base.length = base := by
    exact List.take_left
  have phaseZeroNext :
      (base ++ [PathStep.body, PathStep.body])[base.length]? =
        some PathStep.body := by
    rw [List.getElem?_append_right (Nat.le_refl _)]
    simp
  have phaseOneLength :
      (base ++ [PathStep.body]).length <
        (base ++ [PathStep.body, PathStep.body]).length := by simp
  have phaseOneTake :
      (base ++ [PathStep.body, PathStep.body]).take
          (base ++ [PathStep.body]).length =
        base ++ [PathStep.body] := by
    rw [show base ++ [PathStep.body, PathStep.body] =
        (base ++ [PathStep.body]) ++ [PathStep.body] by simp]
    exact List.take_left
  have phaseOneNext :
      getElem? (base ++ [PathStep.body, PathStep.body])
          (base ++ [PathStep.body]).length = some PathStep.body := by
    rw [show base ++ [PathStep.body, PathStep.body] =
        (base ++ [PathStep.body]) ++ [PathStep.body] by simp]
    rw [List.getElem?_append_right (Nat.le_refl _)]
    simp
  let cursor := base ++ [PathStep.body, PathStep.body]
  let rootMark := outputRootBinder circuit
  let zeroMark := outputVirtualBinder circuit data wire 0
  let oneMark := outputVirtualBinder circuit data wire 1
  let enclosing := fun mark : BinderMark =>
    decide (mark.outputPath.length < cursor.length) &&
      cursor.take mark.outputPath.length == mark.outputPath &&
      cursor[mark.outputPath.length]? == some PathStep.body
  have cursorRootLength : 0 < cursor.length := by
    simpa [cursor] using rootLength
  have cursorRootNext : cursor[0]? = some PathStep.body := by
    simpa [cursor] using rootNext
  have cursorZeroLength : base.length < cursor.length := by
    simpa [cursor] using phaseZeroLength
  have cursorZeroTake : cursor.take base.length = base := by
    simpa [cursor] using phaseZeroTake
  have cursorZeroNext : cursor[base.length]? = some PathStep.body := by
    simpa [cursor] using phaseZeroNext
  have cursorOneLength :
      (base ++ [PathStep.body]).length < cursor.length := by
    simpa [cursor] using phaseOneLength
  have cursorOneTake :
      cursor.take (base ++ [PathStep.body]).length =
        base ++ [PathStep.body] := by
    simpa [cursor] using phaseOneTake
  have cursorOneNext :
      cursor[(base ++ [PathStep.body]).length]? = some PathStep.body := by
    simpa [cursor] using phaseOneNext
  have rootPath : rootMark.outputPath = [] := by
    simp [rootMark, outputRootBinder]
  have zeroPath : zeroMark.outputPath = base := by
    simp [zeroMark, outputVirtualBinder, base]
  have onePath : oneMark.outputPath = base ++ [PathStep.body] := by
    simp [oneMark, outputVirtualBinder, base]
  have cursorRootLengthDecide : decide (0 < cursor.length) = true :=
    decide_eq_true cursorRootLength
  have cursorZeroLengthDecide :
      decide (base.length < cursor.length) = true :=
    decide_eq_true cursorZeroLength
  have cursorOneLengthDecide :
      decide ((base ++ [PathStep.body]).length < cursor.length) = true :=
    decide_eq_true cursorOneLength
  have cursorRootTakeBEq :
      (cursor.take 0 == ([] : Path)) = true := by simp
  have cursorRootNextBEq :
      (cursor[0]? == some PathStep.body) = true := by
    calc
      (cursor[0]? == some PathStep.body) =
          (some PathStep.body == some PathStep.body) :=
        congrArg (fun value => value == some PathStep.body) cursorRootNext
      _ = true := beq_self_eq_true _
  have cursorZeroTakeBEq :
      (cursor.take base.length == base) = true := by
    calc
      (cursor.take base.length == base) = (base == base) :=
        congrArg (fun value => value == base) cursorZeroTake
      _ = true := beq_self_eq_true _
  have cursorZeroNextBEq :
      (cursor[base.length]? == some PathStep.body) = true := by
    calc
      (cursor[base.length]? == some PathStep.body) =
          (some PathStep.body == some PathStep.body) :=
        congrArg (fun value => value == some PathStep.body) cursorZeroNext
      _ = true := beq_self_eq_true _
  have cursorOneTakeBEq :
      (cursor.take (base ++ [PathStep.body]).length ==
        base ++ [PathStep.body]) = true := by
    calc
      (cursor.take (base ++ [PathStep.body]).length ==
          base ++ [PathStep.body]) =
          (base ++ [PathStep.body] == base ++ [PathStep.body]) :=
        congrArg (fun value => value == base ++ [PathStep.body])
          cursorOneTake
      _ = true := beq_self_eq_true _
  have cursorOneNextBEq :
      (cursor[(base ++ [PathStep.body]).length]? ==
        some PathStep.body) = true := by
    calc
      (cursor[(base ++ [PathStep.body]).length]? ==
          some PathStep.body) =
          (some PathStep.body == some PathStep.body) :=
        congrArg (fun value => value == some PathStep.body) cursorOneNext
      _ = true := beq_self_eq_true _
  have rootEnclosing : enclosing rootMark = true := by
    unfold enclosing
    rw [rootPath]
    simp only [List.length_nil]
    rw [cursorRootLengthDecide, cursorRootTakeBEq,
      cursorRootNextBEq]
    rfl
  have zeroEnclosing : enclosing zeroMark = true := by
    unfold enclosing
    rw [zeroPath, cursorZeroLengthDecide, cursorZeroTakeBEq,
      cursorZeroNextBEq]
    rfl
  have oneEnclosing : enclosing oneMark = true := by
    unfold enclosing
    rw [onePath, cursorOneLengthDecide, cursorOneTakeBEq,
      cursorOneNextBEq]
    rfl
  have filtered :
      [rootMark, zeroMark, oneMark].filter enclosing =
        [rootMark, zeroMark, oneMark] := by
    simp [rootEnclosing, zeroEnclosing, oneEnclosing]
  change (do
      let found ←
        (([rootMark, zeroMark, oneMark].filter enclosing).reverse).findIdx?
          (fun mark : BinderMark => mark.identity ==
            virtualIdentity .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (bitNat (data.word wire))
              (outputWireCodePath circuit wire.val))
      pure (found + 1)) = _
  rw [filtered]
  cases bitShape : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
      [rootMark, zeroMark, oneMark, outputRootBinder,
      outputVirtualBinder, bitNat, bitShape, sourceIdentity,
      virtualIdentity, entry, entryBEq, entriesBEq, List.findIdx?,
      List.findIdx?.go]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_vvar (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputVLamTwoState circuit data wire, amplitude⟩] =
      [⟨outputVVarState circuit data wire, amplitude⟩] := by
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have instanceLP := liveWireInstance_isLP data wf.machine wire
  have instanceIsSome :
      (asLP? (data.wires wire).inst).isSome = true := by
    simpa [isLP] using instanceLP
  have selected := binderIndex_outputVirtual circuit data wire
    (outputTreeWith data wire.val (.lam (.lam (.hole false))))
    (outputResiduesAfter circuit data wire.val)
  have selectedExact :
      binderIndex
          ⟨outputTreeWith data wire.val (.lam (.lam (.hole false))),
            some (outputPathAt n wire.val ++ [.body, .body]),
            [outputRootBinder circuit,
              outputVirtualBinder circuit data wire 0,
              outputVirtualBinder circuit data wire 1],
            outputResiduesAfter circuit data wire.val⟩
          (virtualIdentity .c (some (keyPort (data.wires wire)))
            (data.wires wire).inst
            (match data.word wire with | false => 0 | true => 1)
            (outputWireCodePath circuit wire.val)) =
        some (if data.word wire then 1 else 2) := by
    cases bitShape : data.word wire <;>
      simpa [bitShape, bitNat] using selected
  have atValue :
      treeAt? (outputTreeWith data wire.val (.lam (.lam (.hole false))))
          (outputPathAt n wire.val ++ [.body, .body]) =
        some (.hole false) := by
    rw [treeAt_outputTreeWith_append]
    rfl
  have replaced :
      replaceTree?
          (outputTreeWith data wire.val (.lam (.lam (.hole false))))
          (outputPathAt n wire.val ++ [.body, .body])
          (.var (if data.word wire then 1 else 2)) =
        some (outputTreeWith data wire.val
          (encodedBoolean (data.word wire))) := by
    rw [replaceTree_outputTreeWith_append]
    rfl
  have finishNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            outputDeadStoreAt circuit data wire false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have finishNoneExpanded : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            .cdead (keyPort (data.wires wire)) (data.wires wire).inst
              (.recalledAbsent .fresh)
              (outputLoggedPosition circuit wire.val) false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have parentNotApp :
      isAppBullet (outputParentDelimiter n wire.val) = false := by
    simp [isAppBullet, outputParentDelimiter, rb, appBullet, entry,
      entryBEq]
  have nextFilled :
      nextCursor
          (outputTreeWith data wire.val
            (encodedBoolean (data.word wire))) =
        (spineSchedule [.body] n)[wire.val + 1]? := by
    rw [outputTreeWith_encodedBoolean data wire.val wire.isLt]
    exact nextCursor_outputTreeAfter_succ_eq_schedule data wire.val wire.isLt
  cases bitShape : data.word wire <;>
    simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputVLamTwoState,
    outputVVarState, outputAnswerTape,
    outputChildDelimiter, outputWireTail, outputDeadStoreAt,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, atWireExact, instanceLP,
    instanceIsSome, finishNone, finishNoneExpanded, parentNotApp,
    selected, selectedExact, fill?, atValue, replaced, nextFilled, bitShape,
    instance?, isLP, bitNat, encodedBoolean,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc, List.replicate_succ]
  all_goals
    have selectedCase := selectedExact
    simp only [bitShape] at selectedCase
    rw [selectedCase]
    simp only [Bool.false_eq_true, Bool.true_eq, if_false, if_true]
    have replacedCase := replaced
    simp [bitShape, encodedBoolean] at replacedCase
    rw [replacedCase]
    have nextCase := nextFilled
    simp [bitShape, encodedBoolean] at nextCase
    simp [bitShape, nextCase, edgeCoefficient, powDw,
      QalcFiniteGram.one, QalcFiniteGram.mul]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_answer_stage (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputVVarState circuit data wire, amplitude⟩] =
      [⟨outputAnswerStagedState circuit data wire, amplitude⟩] := by
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have bindingAfter :
      storedPortBindings
          (sourceBinderPath n
            (sourceWiresFrom 0 wireName circuit wire))
          (outputStorageAfter circuit data wire.val) =
        [((data.wires wire).inst, keyPort (data.wires wire))] := by
    rw [storedPortBindings_outputStorageAfter]
    exact wf.storage.liveBinding wire
  have historyHead := firstMatchingHistory_of_liveBinding
    (sourceBinderPath n (sourceWiresFrom 0 wireName circuit wire))
    (data.wires wire).inst (keyPort (data.wires wire))
    (outputStorageAfter circuit data wire.val) bindingAfter
  have tailDeadNone := unansweredDeadMatches_outputStorageAfter circuit data
    wf wire.val wire (Nat.le_refl _) 1
  have portSelf :
      (keyPort (data.wires wire) == keyPort (data.wires wire)) = true := by
    cases keyPort (data.wires wire) <;> rfl
  have deadExactly :
      unansweredDeadMatches (keyPort (data.wires wire))
          (data.wires wire).inst
          (outputDeadStoreAt circuit data wire false ::
            outputStorageAfter circuit data wire.val) 0 =
        [(0, .recalledAbsent .fresh,
          outputLoggedPosition circuit wire.val)] := by
    unfold unansweredDeadMatches unansweredCDeadRecords
    change List.filterMap _
        ((outputDeadStoreAt circuit data wire false ::
          outputStorageAfter circuit data wire.val).zipIdx 0) = _
    rw [show
        (outputDeadStoreAt circuit data wire false ::
          outputStorageAfter circuit data wire.val).zipIdx 0 =
        (outputDeadStoreAt circuit data wire false, 0) ::
          (outputStorageAfter circuit data wire.val).zipIdx 1 by rfl]
    simp only [List.filterMap_cons]
    rw [show List.filterMap _
        ((outputStorageAfter circuit data wire.val).zipIdx 1) =
        unansweredDeadMatches (keyPort (data.wires wire))
          (data.wires wire).inst
          (outputStorageAfter circuit data wire.val) 1 by rfl,
      tailDeadNone]
    simp [outputDeadStoreAt, portSelf]
  have deadFilter :
      List.filterMap
          (fun pair =>
            match pair.1 with
            | .cdead deadPort deadInvoked epoch logged false =>
                if (deadPort == keyPort (data.wires wire)) = true ∧
                    deadInvoked = (data.wires wire).inst then
                  some (pair.2, epoch, logged)
                else none
            | _ => none)
          ((outputDeadStoreAt circuit data wire false ::
            outputStorageAfter circuit data wire.val).zipIdx 0) =
        [(0, .recalledAbsent .fresh,
          outputLoggedPosition circuit wire.val)] := by
    exact deadExactly
  have deadFilterCons :
      List.filterMap
          (fun pair =>
            match pair.1 with
            | .cdead deadPort deadInvoked epoch logged false =>
                if (deadPort == keyPort (data.wires wire)) = true ∧
                    deadInvoked = (data.wires wire).inst then
                  some (pair.2, epoch, logged)
                else none
            | _ => none)
          ((outputDeadStoreAt circuit data wire false, 0) ::
            (outputStorageAfter circuit data wire.val).zipIdx 1) =
        [(0, .recalledAbsent .fresh,
          outputLoggedPosition circuit wire.val)] := by
    simpa only [List.zipIdx_cons] using deadFilter
  have finishNone : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            outputDeadStoreAt circuit data wire false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have finishNoneExpandedAnswer : ∀ path direction log tape vb frames,
      finishCStage?
          ⟨path, direction, log, tape, vb, frames,
            .cdead (keyPort (data.wires wire)) (data.wires wire).inst
              (.recalledAbsent .fresh)
              (outputLoggedPosition circuit wire.val) false ::
              outputStorageAfter circuit data wire.val⟩ = none := by
    intro path direction log tape vb frames
    rfl
  have parentNotApp :
      isAppBullet (outputParentDelimiter n wire.val) = false := by
    simp [isAppBullet, outputParentDelimiter, rb, appBullet, entry]
  have wireEndsArg :
      (outputWireCodePath circuit wire.val).getLast? = some .arg := by
    simp [outputWireCodePath]
  have wireNotFn :
      (outputWireCodePath circuit wire.val).getLast? ≠ some .fn := by
    rw [wireEndsArg]
    intro impossible
    cases impossible
  have liveNotRBL := liveWireInstance_asRBL_none data wf.machine wire
  have atCompleted := treeAt_outputTreeWith data wire.val
    (encodedBoolean (data.word wire))
  cases bitShape : data.word wire
  all_goals
    have alphaNotApp :
        isAppBullet
            (alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh) = false := by
      exact isAppBullet_alpha _ _ _ _ _
    have alphaNotLP :
        asLP?
            (alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh) = none := by
      exact asLP_alpha _ _ _ _ _
    have childNotApp3 :
        isAppBullet (outputChildDelimiter circuit wire.val 3) = false := by
      simp [isAppBullet, outputChildDelimiter, rb, appBullet, entry,
        entryBEq]
    have childNotBullet3 :
        isBullet (outputChildDelimiter circuit wire.val 3) = false := by
      simp [isBullet, outputChildDelimiter, rb, bullet, entry, entryBEq]
    have parentNotBullet :
        isBullet (outputParentDelimiter n wire.val) = false := by
      simp [isBullet, outputParentDelimiter, rb, bullet, entry, entryBEq]
    have boundNoneRaw := boundHeadStep_none_after_appBullets
      (compiledTerm circuit) (outputWireCodePath circuit wire.val)
      [(data.wires wire).inst, outputReturnLog circuit wire.val]
      (bitNat (data.word wire))
      (alpha .c (some (keyPort (data.wires wire)))
        (data.wires wire).inst (data.word wire) .fresh)
      (outputChildDelimiter circuit wire.val 3 ::
        outputWireTail circuit wire.val)
      (removeFrameKey (outputFramesAfter data wire.val) (data.wires wire))
      (outputDeadStoreAt circuit data wire false ::
        outputStorageAfter circuit data wire.val)
      ⟨outputTreeWith data wire.val (encodedBoolean (data.word wire)),
        (spineSchedule [.body] n)[wire.val + 1]?,
        [outputRootBinder circuit, outputVirtualBinder circuit data wire 0,
          outputVirtualBinder circuit data wire 1],
        outputResiduesAfter circuit data wire.val⟩
      alphaNotApp alphaNotLP
    have boundNone := boundNoneRaw
    simp [bitShape, bitNat, outputDeadStoreAt, outputChildDelimiter,
      outputWireTail, outputParentDelimiter, List.replicate_succ,
      List.append_assoc] at boundNone
    simp (config := { maxSteps := 1000000 })
      [evolve, stepColumn, stepBasis, outputVVarState,
      outputAnswerStagedState, outputAnswerTape, outputDeadStoreAt,
      outputChildDelimiter, outputParentDelimiter,
      outputChildDelimiter, outputWireTail, outputParentDelimiter,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      kernelEntry, composedEntry, mapKernelEdge,
      kernelDeterministic, nfDeterministic, atWireExact, finishNone,
      finishNoneExpandedAnswer,
      deliverPort, boundNone, firstRB, returnSuccessor?, liveNotRBL,
      portSelf, parentNotApp, wireEndsArg, wireNotFn, atCompleted,
      replaceStoreAt?, splitCustom, bitNat, bitShape, headBang_cons,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      List.append_assoc]
  all_goals
    have atCompletedCase := atCompleted
    simp only [bitShape] at atCompletedCase
    have bulletIs : isBullet bullet = true := by
      simp [isBullet, bullet, entry, entryBEq]
    have directionSame : (Direction.up != Direction.up) = false := by
      rfl
    have alphaNotBullet :
        isBullet
            (alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh) = false := by
      simp [isBullet, bullet, alpha, entry, entryBEq]
    have alphaDecoded :
        asAlpha?
            (alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh) =
          some (.c, some (keyPort (data.wires wire)),
            (data.wires wire).inst, data.word wire, .fresh) := by
      simp [asAlpha?, alpha, entry, Entries.ofList]
    have alphaNeBullet :
        alpha .c (some (keyPort (data.wires wire)))
            (data.wires wire).inst (data.word wire) .fresh ≠ bullet := by
      intro equal
      have observable := congrArg isBullet equal
      rw [alphaNotBullet, bulletIs] at observable
      contradiction
    have alphaNeConcrete := alphaNeBullet
    simp [bitShape, bullet, entry] at alphaNeConcrete
    let answerSource : Token :=
      ⟨outputWireCodePath circuit wire.val, .up,
        [(data.wires wire).inst, outputReturnLog circuit wire.val],
        List.replicate (bitNat (data.word wire) + 1) bullet ++
          alpha .c (some (keyPort (data.wires wire)))
            (data.wires wire).inst (data.word wire) .fresh ::
          outputChildDelimiter circuit wire.val 3 ::
          (List.replicate (n - wire.val) bullet ++
            [outputParentDelimiter n wire.val]),
        none, removeFrameKey (outputFramesAfter data wire.val)
          (data.wires wire),
        outputDeadStoreAt circuit data wire false ::
          outputStorageAfter circuit data wire.val⟩
    let answeredSource : Token :=
      ⟨outputWireCodePath circuit wire.val, .up,
        [outputReturnLog circuit wire.val],
        List.replicate (bitNat (data.word wire)) bullet ++
          alpha .c (some (keyPort (data.wires wire)))
            (data.wires wire).inst (data.word wire) .fresh ::
          outputChildDelimiter circuit wire.val 3 ::
          (List.replicate (n - wire.val) bullet ++
            [outputParentDelimiter n wire.val]),
        none, removeFrameKey (outputFramesAfter data wire.val)
          (data.wires wire),
        outputDeadStoreAt circuit data wire true ::
          outputStorageAfter circuit data wire.val⟩
    have closeGuard :
        (answerSource.direction != .up || answerSource.vb.isSome ||
          answerSource.log.isEmpty || answerSource.tape.isEmpty ||
          !isBullet answerSource.tape.head!) = false := by
      dsimp [answerSource]
      simp [directionSame, bulletIs, bitNat, bitShape,
        List.replicate_succ, headBang_cons]
    have historyAnswerFilter :
        (matchingHistoryInvocations answerSource.log.head!
          answerSource.storage).head? = some (data.wires wire).inst := by
      change
        (matchingHistoryInvocations (data.wires wire).inst
          (outputDeadStoreAt circuit data wire false ::
            outputStorageAfter circuit data wire.val)).head? =
          some (data.wires wire).inst
      rw [show outputDeadStoreAt circuit data wire false =
          .cdead (keyPort (data.wires wire)) (data.wires wire).inst
            (.recalledAbsent .fresh)
            (outputLoggedPosition circuit wire.val) false by rfl]
      rw [matchingHistoryInvocations_cdead]
      exact historyHead
    have answerDeadFilter :
        unansweredCDeadRecords (keyPort (data.wires wire))
            (data.wires wire).inst
            (outputDeadStoreAt circuit data wire false ::
              outputStorageAfter circuit data wire.val) =
          [(0, .recalledAbsent .fresh,
            outputLoggedPosition circuit wire.val)] := by
      simpa only [unansweredDeadMatches] using deadExactly
    have closeExact :
        closeVirtualPort answerSource =
          some (splitCustom .answerPort
            (kernelDeterministic .answerCPort1 (.run answeredSource))) := by
      unfold closeVirtualPort
      rw [closeGuard]
      simp only [Bool.false_eq_true, if_false]
      rw [historyAnswerFilter]
      dsimp [answerSource, answeredSource]
      simp [alphaNotBullet, alphaDecoded,
        List.head!, List.takeWhile, bitNat, bitShape,
        List.replicate_succ]
      rw [answerDeadFilter]
      simp [replaceStoreAt?, splitCustom, kernelDeterministic,
        outputDeadStoreAt, bitNat, bitShape, List.replicate_succ]
    have closeKernelExact :
        closeVirtualPort
            (kernelToken
              ⟨outputWireCodePath circuit wire.val, .up,
                [(data.wires wire).inst,
                  outputReturnLog circuit wire.val],
                appBullet :: outputAnswerTape circuit data wire,
                none, removeFrameKey (outputFramesAfter data wire.val)
                  (data.wires wire),
                outputDeadStoreAt circuit data wire false ::
                  outputStorageAfter circuit data wire.val⟩) =
          some (splitCustom .answerPort
            (kernelDeterministic .answerCPort1 (.run answeredSource))) := by
      rw [show
        kernelToken
            ⟨outputWireCodePath circuit wire.val, .up,
              [(data.wires wire).inst,
                outputReturnLog circuit wire.val],
              appBullet :: outputAnswerTape circuit data wire,
              none, removeFrameKey (outputFramesAfter data wire.val)
                (data.wires wire),
              outputDeadStoreAt circuit data wire false ::
                outputStorageAfter circuit data wire.val⟩ =
          answerSource by
        dsimp [answerSource]
        simp [kernelToken, kernelEntry, outputAnswerTape,
          outputWireTail, bitNat, bitShape, List.replicate_succ,
          childNotApp3, parentNotApp, List.append_assoc]]
      exact closeExact
    have closeExpandedExact :
        closeVirtualPort
            ⟨outputWireCodePath circuit wire.val, .up,
              [(data.wires wire).inst,
                outputReturnLog circuit wire.val],
              List.replicate (bitNat (data.word wire) + 1) bullet ++
                alpha .c (some (keyPort (data.wires wire)))
                    (data.wires wire).inst (data.word wire) .fresh ::
                  outputChildDelimiter circuit wire.val 3 ::
                  (List.replicate (n - wire.val) bullet ++
                    [outputParentDelimiter n wire.val]),
              none, removeFrameKey (outputFramesAfter data wire.val)
                (data.wires wire),
              outputDeadStoreAt circuit data wire false ::
                outputStorageAfter circuit data wire.val⟩ =
          some (splitCustom .answerPort
            (kernelDeterministic .answerCPort1 (.run answeredSource))) := by
      simpa [kernelToken, kernelEntry, outputAnswerTape,
        outputWireTail, bitNat, bitShape, List.replicate_succ,
        childNotApp3, parentNotApp, List.append_assoc] using
          closeKernelExact
    have closeCaseExact := closeExpandedExact
    simp [bitShape, bitNat, outputChildDelimiter, outputParentDelimiter,
      outputDeadStoreAt, List.replicate_succ, List.append_assoc] at closeCaseExact
    have closeConcreteExact := closeCaseExact
    simp [isBullet, rb, bullet, entry, entryBEq] at closeConcreteExact
    rw [atCompletedCase]
    simp [answerSource, answeredSource, closeExact, closeKernelExact,
      closeExpandedExact,
      closeCaseExact, closeConcreteExact,
      matchingHistoryInvocations,
      deadFilterCons,
      replaceStoreAt?, splitCustom, kernelDeterministic,
      mapKernelEdge, composedToken, composedEntry,
      outputAnswerStagedState, outputAnswerTape, outputDeadStoreAt,
      outputChildDelimiter, outputParentDelimiter,
      List.head!, List.takeWhile, bitNat, bitShape,
      childNotApp3, parentNotApp, childNotBullet3, parentNotBullet,
      isBullet, rb, bullet, entry, entryBEq,
      alphaNeBullet, alphaNeConcrete,
      edgeCoefficient, powDw, QalcFiniteGram.one,
      QalcFiniteGram.mul, List.append_assoc]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_answer_finish (circuit : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (wire : Fin n)
    (amplitude : Dw) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputAnswerStagedState circuit data wire, amplitude⟩] =
      [⟨outputAnsweredState circuit data wire, amplitude⟩] := by
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputAnswerStagedState,
    outputAnsweredState, composedStep, finishCStage?, kernelToken,
    kernelEntry, composedToken, composedEntry, mapKernelEdge,
    kernelDeterministic, nfDeterministic, outputAnswerTape,
    outputDeadStoreAt, outputChildDelimiter, outputWireTail,
    outputParentDelimiter, isBullet, isAppBullet, rb, bullet, appBullet,
    alpha, entry, entryBEq, Entries.ofList, edgeCoefficient, powDw,
    QalcFiniteGram.one,
    QalcFiniteGram.mul, List.append_assoc]

theorem firstRB_outputAnswerTape (circuit : Circuit n)
    (data : BoundaryData n) (wire : Fin n) :
    firstRB (outputAnswerTape circuit data wire) =
      some (List.replicate (bitNat (data.word wire)) appBullet ++
          [alpha .c (some (keyPort (data.wires wire)))
            (data.wires wire).inst (data.word wire) .fresh],
        outputChildDelimiter circuit wire.val 3,
        outputWireTail circuit wire.val) := by
  cases bitShape : data.word wire <;>
    simp [outputAnswerTape, outputChildDelimiter, outputWireTail,
      outputParentDelimiter, firstRB, asRB?, bitNat, bitShape, alpha,
      appBullet, rb, entry, Entries.ofList]

theorem binderPathLT_nil_nonempty (path : Path) (nonempty : path ≠ []) :
    binderPathLT [] path = true := by
  cases path with
  | nil => contradiction
  | cons head tail => rfl

theorem binderPathLT_append_body (path : Path) :
    binderPathLT path (path ++ [.body]) = true := by
  induction path with
  | nil => rfl
  | cons head tail ih =>
      cases head <;> simp [binderPathLT, binderPathRank, ih]

set_option maxHeartbeats 0 in
theorem compiled_output_wire_return (circuit : Circuit n)
    (certificate : Certificate) (data : BoundaryData n) (wire : Fin n)
    (amplitude : Dw) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputAnsweredState circuit data wire, amplitude⟩] =
      [⟨outputWireBoundaryState circuit data (wire.val + 1), amplitude⟩] := by
  have positiveWidth : 0 < n := Nat.zero_lt_of_lt wire.isLt
  rcases subterm_compiledTerm_final_output_wire positiveWidth circuit wire with
    ⟨index, atWire, lookupWire⟩
  have atWireExact :
      subterm? (compiledTerm circuit) (outputWireCodePath circuit wire.val) =
        some (.var index) := by
    simpa [outputWireCodePath, finalOutputWirePath, List.append_assoc] using
      atWire
  have atWireExpanded :
      subterm? (compiledTerm circuit)
          (finalOutputBodyPath circuit ++
            (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
        some (.var index) := by
    simpa [outputWireCodePath, List.append_assoc] using atWireExact
  have firstAnswer := firstRB_outputAnswerTape circuit data wire
  have firstAnswerExpanded :
      firstRB
          (List.replicate (bitNat (data.word wire)) appBullet ++
            alpha .c (some (keyPort (data.wires wire)))
                (data.wires wire).inst (data.word wire) .fresh ::
              outputChildDelimiter circuit wire.val 3 ::
                outputWireTail circuit wire.val) =
        some (List.replicate (bitNat (data.word wire)) appBullet ++
            [alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh],
          outputChildDelimiter circuit wire.val 3,
          outputWireTail circuit wire.val) := by
    simpa [outputAnswerTape] using firstAnswer
  have remainingPositive : 0 < n - wire.val := by omega
  have remainingShape : n - wire.val = (n - 1 - wire.val) + 1 := by omega
  have parentEndsFn :
      (PathStep.fn :: List.replicate (n - 1 - wire.val)
        PathStep.fn).getLast? = some PathStep.fn := by
    let count := n - 1 - wire.val
    change (PathStep.fn :: List.replicate count PathStep.fn).getLast? = _
    induction count with
    | zero => rfl
    | succ count ih => simpa [List.replicate_succ] using ih
  have returnedHead :
      (appBullet ::
        (List.replicate (n - 1 - wire.val) appBullet ++
          [outputParentDelimiter n wire.val])).head! = appBullet := rfl
  have directionEq : (Direction.up == Direction.up) = true := by
    native_decide
  have atCompleted := treeAt_outputTreeWith data wire.val
    (encodedBoolean (data.word wire))
  have atCompletedExpanded :
      treeAt? (outputTreeWith data wire.val
          (encodedBoolean (data.word wire)))
          (.body :: (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
        some (encodedBoolean (data.word wire)) := by
    simpa [outputPathAt, List.append_assoc] using atCompleted
  have atCompletedConcreteFalse : data.word wire = false →
      treeAt? (outputTreeWith data wire.val (.lam (.lam (.var 2))))
          (.body :: (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
        some (.lam (.lam (.var 2))) := by
    intro _
    simpa [encodedBoolean, *] using atCompletedExpanded
  have atCompletedConcreteTrue : data.word wire = true →
      treeAt? (outputTreeWith data wire.val (.lam (.lam (.var 1))))
          (.body :: (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
        some (.lam (.lam (.var 1))) := by
    intro _
    simpa [encodedBoolean, *] using atCompletedExpanded
  have outputPathNonempty : outputPathAt n wire.val ≠ [] := by
    simp [outputPathAt]
  have binderFirst :
      binderPathLT [] (outputPathAt n wire.val) = true :=
    binderPathLT_nil_nonempty _ outputPathNonempty
  have binderNested :
      binderPathLT (outputPathAt n wire.val)
          (outputPathAt n wire.val ++ [.body]) = true :=
    binderPathLT_append_body _
  have scopeExact :
      scopeResidue
          (List.replicate (bitNat (data.word wire)) appBullet ++
            [alpha .c (some (keyPort (data.wires wire)))
              (data.wires wire).inst (data.word wire) .fresh])
          (outputChildDelimiter circuit wire.val 3)
          ⟨outputTreeWith data wire.val (encodedBoolean (data.word wire)),
            (spineSchedule [.body] n)[wire.val + 1]?,
            [outputRootBinder circuit,
              outputVirtualBinder circuit data wire 0,
              outputVirtualBinder circuit data wire 1],
            outputResiduesAfter circuit data wire.val⟩ =
        (outputResidue circuit data wire,
          [outputRootBinder circuit]) := by
    cases bitCase : data.word wire <;>
      simp (config := { maxSteps := 1000000 })
        [scopeResidue, outputChildDelimiter, atCompleted,
        atCompletedExpanded, bitCase, bitNat, encodedBoolean,
        outputResidue, outputRootBinder, outputVirtualBinder,
        virtualPrefixCode, canonicalBoolean?, asAlpha?, asRB?,
        bindersCanonical,
        binderFirst, binderNested, outputPathNonempty,
        binderPathLT, binderPathRank, sourceIdentity, virtualIdentity,
        alpha, appBullet,
        rb, entry, entryBEq, isAppBullet, Entries.ofList,
        List.append_assoc]
    all_goals
      have atCase := atCompleted
      simp only [bitCase] at atCase
      simp [encodedBoolean] at atCase
      rw [atCase]
      simp (config := { maxSteps := 1000000 })
        [bitCase, bitNat, encodedBoolean, outputResidue,
        outputRootBinder, outputVirtualBinder, virtualPrefixCode,
        canonicalBoolean?, asAlpha?, bindersCanonical, binderFirst,
        binderNested, outputPathNonempty, sourceIdentity, virtualIdentity,
        alpha, appBullet, entry, entryBEq, isAppBullet, Entries.ofList]
  cases bitShape : data.word wire
  all_goals
    have firstCase := firstAnswerExpanded
    simp only [bitShape] at firstCase
    simp [bitNat, outputChildDelimiter, outputWireTail,
      outputParentDelimiter, outputPathAt, outputWireCodePath,
      alpha, appBullet, rb, entry, remainingShape, List.replicate_succ,
      Entries.ofList, List.append_assoc] at firstCase
    have scopeCase := scopeExact
    simp only [bitShape] at scopeCase
    simp [bitNat, encodedBoolean, outputChildDelimiter, outputPathAt,
      outputWireCodePath, outputResidue, outputRootBinder,
      outputVirtualBinder, alpha, appBullet, rb, entry, Entries.ofList,
      List.append_assoc] at scopeCase
    have atConcrete :
        treeAt? (outputTreeWith data wire.val
            (encodedBoolean (data.word wire)))
            (.body :: (List.replicate (n - 1 - wire.val) .fn ++ [.arg])) =
          some (encodedBoolean (data.word wire)) := atCompletedExpanded
    simp [bitShape, encodedBoolean] at atConcrete
    simp (config := { maxSteps := 1000000 })
      [bitShape, evolve, stepColumn, stepBasis, outputAnsweredState,
      outputWireBoundaryState, outputAnswerTape, outputChildDelimiter,
      outputWireTail, outputParentDelimiter, outputDeadStoreAt,
      outputDeadStore, outputResidue, outputReturnLog, outputLoggedPosition,
      outputParentCodePath, outputWireCodePath, outputPathAt,
      outputRootBinder, outputVirtualBinder, atWireExact, atWireExpanded,
      firstAnswer, firstAnswerExpanded, firstCase, scopeCase,
      atCompleted, atCompletedExpanded, atConcrete,
      scopeExact, remainingPositive, remainingShape, parentEndsFn,
      returnedHead, directionEq,
      outputTreeWith_encodedBoolean data wire.val wire.isLt,
      outputFramesAfter_succ data wire.val wire.isLt,
      outputStorageAfter_succ circuit data wire.val wire.isLt,
      outputResiduesAfter_succ circuit data wire.val wire.isLt,
      nextCursor_outputTreeAfter_succ_eq_schedule data wire.val wire.isLt,
      composedStep, readbackStep, delegateStep, cnotStepToken,
      kernelStepToken, kernelToken, composedToken, tokenWith,
      kernelEntry, composedEntry, mapKernelEdge,
      kernelDeterministic, nfDeterministic, finishCStage?, deliverPort,
      boundHeadStep?, returnContinuation, returnSuccessor?,
      treeAt_outputTreeWith, holes, leadingLambdas,
      bitNat, encodedBoolean, rb, rbl, alpha, appBullet, bullet, entry,
      Entries.ofList, entryBEq, isBullet, isAppBullet, asLP?, asRB?, asRBL?,
      edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
      guard, headBang_cons, List.replicate_succ, List.append_assoc]
  all_goals
    constructor
    · omega
    · simpa [bitShape, encodedBoolean] using
        outputTreeWith_encodedBoolean data wire.val wire.isLt

theorem compiled_output_wire (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (wire : Fin n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 9
        [⟨outputWireBoundaryState circuit data wire.val, amplitude⟩] =
      [⟨outputWireBoundaryState circuit data (wire.val + 1), amplitude⟩] := by
  have noReturn :
      storedReturnOccurrences (outputParentCodePath circuit wire.val)
          data.storage = [] := by
    simpa [outputParentCodePath, finalOutputBodyPath, List.append_assoc] using
      wf.storage.futureOutputReturn circuit.length
        (List.replicate (n - wire.val) .fn) (Nat.le_refl _)
  rw [show 9 = 1 + (1 + (1 + (1 + (1 + (1 + (1 + (1 + 1))))))) by
    omega]
  rw [evolve_add, compiled_output_wire_enter positiveWidth circuit certificate
    data wire amplitude wf noReturn]
  rw [evolve_add, compiled_output_wire_var positiveWidth circuit certificate
    data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_deliver positiveWidth circuit certificate
    data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_vlam_one positiveWidth circuit
    certificate data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_vlam_two positiveWidth circuit
    certificate data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_vvar positiveWidth circuit certificate
    data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_answer_stage positiveWidth circuit
    certificate data wire amplitude wf]
  rw [evolve_add, compiled_output_wire_answer_finish circuit certificate data
    wire amplitude]
  exact compiled_output_wire_return circuit certificate data wire amplitude

theorem compiled_output_wires_from (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (processed remaining : Nat)
    (complete : processed + remaining = n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate (9 * remaining)
        [⟨outputWireBoundaryState circuit data processed, amplitude⟩] =
      [⟨outputWireBoundaryState circuit data n, amplitude⟩] := by
  induction remaining generalizing processed with
  | zero =>
      have processedEq : processed = n := by omega
      subst processed
      simp
  | succ remaining ih =>
      have processedBefore : processed < n := by omega
      let wire : Fin n := ⟨processed, processedBefore⟩
      rw [show 9 * (remaining + 1) = 9 + 9 * remaining by omega,
        evolve_add]
      rw [show outputWireBoundaryState circuit data processed =
          outputWireBoundaryState circuit data wire.val by rfl]
      rw [compiled_output_wire positiveWidth circuit certificate data wire
        amplitude wf]
      exact ih (processed + 1) (by omega)

theorem compiled_output_wires (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate (9 * n)
        [⟨outputHeadReadyState circuit data, amplitude⟩] =
      [⟨outputWireBoundaryState circuit data n, amplitude⟩] := by
  rw [← outputWireBoundaryState_zero circuit data]
  exact compiled_output_wires_from positiveWidth circuit certificate data 0 n
    (by omega) amplitude wf

/-! ## Uniform history unwind

Preparation and gate continuations lie on one ordinal path chain.  Rank
`r` has root `preparationRoot r`; the first `n` records are preparation
histories and the remaining records are the completed circuit gates. -/

theorem gateRoot_eq_preparationRoot (width gateIndex : Nat) :
    gateRoot width gateIndex = preparationRoot (width + gateIndex) := by
  have replicated : ∀ left right,
      List.replicate (left + right)
          ([.arg, .body, .body] : List PathStep) =
        List.replicate left [.arg, .body, .body] ++
          List.replicate right [.arg, .body, .body] := by
    intro left right
    induction left with
    | zero => simp
    | succ left ih =>
        rw [Nat.succ_add, List.replicate_succ, List.replicate_succ, ih]
        simp only [List.cons_append]
  unfold gateRoot preparationRoot
  rw [replicated width gateIndex, List.flatten_append]
  simp [List.append_assoc]

theorem gateContinuation_eq_prepContinuation (width gateIndex : Nat) :
    gateContinuationPath width gateIndex =
      prepContinuationPath (width + gateIndex) := by
  simp [gateContinuationPath, prepContinuationPath,
    gateRoot_eq_preparationRoot]

theorem gateOccurrence_eq_preparationOccurrence (width gateIndex : Nat) :
    gateOccurrence width gateIndex =
      preparationOccurrence (width + gateIndex) := by
  simp [gateOccurrence, preparationOccurrence,
    gateRoot_eq_preparationRoot]

theorem prepContinuationPath_injective :
    Function.Injective prepContinuationPath := by
  intro left right equal
  have lengths := congrArg List.length equal
  simp [prepContinuationPath, preparationRoot, shellBodyPath] at lengths
  omega

theorem storedReturnOccurrences_prepStorage_rank (count rank : Nat) :
    storedReturnOccurrences (prepContinuationPath rank) (prepStorage count) =
      if rank < count then [preparationOccurrence rank] else [] := by
  induction count with
  | zero => simp [prepStorage, storedReturnOccurrences]
  | succ count ih =>
      rw [prepStorage_succ, storedReturnOccurrences_append, ih]
      by_cases current : rank = count
      · subst rank
        simp [storedReturnOccurrences, prepHistory]
      · have different :
          prepContinuationPath count ≠ prepContinuationPath rank := by
          exact fun equal => current (prepContinuationPath_injective equal.symm)
        by_cases before : rank < count
        · simp [storedReturnOccurrences, prepHistory, before, different]
          omega
        · have after : count < rank := by omega
          simp [storedReturnOccurrences, prepHistory, before, current,
            different]
          omega

theorem storedReturnOccurrences_nextBoundary_rank
    (gateIndex rank : Nat) (wires : Fin n → Key) (storage : List Store)
    (gate : Gate n)
    (lookup : storedReturnOccurrences (prepContinuationPath rank) storage =
      if rank < n + gateIndex then [preparationOccurrence rank] else []) :
    storedReturnOccurrences (prepContinuationPath rank)
        (nextBoundaryStorage gateIndex wires storage gate) =
      if rank < n + (gateIndex + 1) then
        [preparationOccurrence rank] else [] := by
  rw [storedReturnOccurrences_nextBoundaryStorage, lookup]
  by_cases current : rank = n + gateIndex
  · subst rank
    cases gate <;>
      simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
        cxHistory, gateContinuation_eq_prepContinuation,
        gateOccurrence_eq_preparationOccurrence]
  · have different :
      prepContinuationPath (n + gateIndex) ≠
        prepContinuationPath rank := by
      exact fun equal => current (prepContinuationPath_injective equal.symm)
    by_cases before : rank < n + gateIndex
    · cases gate <;>
        simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
          cxHistory, before, current, different, Ne.symm different,
          gateContinuation_eq_prepContinuation,
          gateOccurrence_eq_preparationOccurrence] <;> omega
    · have after : n + gateIndex < rank := by omega
      cases gate <;>
        simp [completedGateHistory, storedReturnOccurrences, unaryHistory,
          cxHistory, before, current, different, Ne.symm different,
          gateContinuation_eq_prepContinuation,
          gateOccurrence_eq_preparationOccurrence] <;> omega

theorem storedReturnOccurrences_boundaryStorageFrom_rank
    (gateIndex : Nat) (wires : Fin n → Key) (storage : List Store)
    (circuit : Circuit n)
    (baseLookup : ∀ rank,
      storedReturnOccurrences (prepContinuationPath rank) storage =
        if rank < n + gateIndex then [preparationOccurrence rank] else []) :
    ∀ rank,
      storedReturnOccurrences (prepContinuationPath rank)
          (boundaryStorageFrom gateIndex wires storage circuit) =
        if rank < n + (gateIndex + circuit.length) then
          [preparationOccurrence rank] else [] := by
  induction circuit generalizing gateIndex wires storage with
  | nil =>
      intro rank
      simpa [boundaryStorageFrom] using baseLookup rank
  | cons gate rest ih =>
      have nextLookup : ∀ rank,
          storedReturnOccurrences (prepContinuationPath rank)
              (nextBoundaryStorage gateIndex wires storage gate) =
            if rank < n + (gateIndex + 1) then
              [preparationOccurrence rank] else [] := by
        intro rank
        exact storedReturnOccurrences_nextBoundary_rank gateIndex rank wires
          storage gate (baseLookup rank)
      have result := ih (gateIndex := gateIndex + 1)
        (wires := nextWireKeys n gateIndex wires gate)
        (storage := nextBoundaryStorage gateIndex wires storage gate)
        nextLookup
      simpa [boundaryStorageFrom, Nat.add_assoc, Nat.add_comm,
        Nat.add_left_comm] using result

theorem compiledStorage_return_rank (circuit : Circuit n) (rank : Nat) :
    storedReturnOccurrences (prepContinuationPath rank)
        (boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit) =
      if rank < n + circuit.length then [preparationOccurrence rank] else [] := by
  have base : ∀ rank,
      storedReturnOccurrences (prepContinuationPath rank) (prepStorage n) =
        if rank < n + 0 then [preparationOccurrence rank] else [] := by
    intro rank
    simpa using storedReturnOccurrences_prepStorage_rank n rank
  simpa using storedReturnOccurrences_boundaryStorageFrom_rank 0
    (initialWireKeys n) (prepStorage n) circuit base rank

def historyTailState (circuit : Circuit n) (data : BoundaryData n)
    (rank : Nat) : NFState :=
  .run
    ⟨preparationRoot rank, .up, [],
      [appBullet, rb 1 [] [] []], none,
      outputFramesAfter data n, outputStorageAfter circuit data n⟩
    ⟨outputTreeAfter data n, none,
      [outputRootBinder circuit], outputResiduesAfter circuit data n⟩

theorem outputBoundary_to_historyTail (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 1
        [⟨outputWireBoundaryState circuit data n, amplitude⟩] =
      [⟨historyTailState circuit data (n + circuit.length), amplitude⟩] := by
  have atBody := subterm_compiledTerm_final_output_root positiveWidth circuit
  have atBodyRank :
      subterm? (compiledTerm circuit)
          (preparationRoot (n + circuit.length) ++ [.body]) =
        some
          (lowerTotal
            (apps (.var (.output circuit.length))
              ((List.finRange n).map fun wire =>
                .var (sourceWiresFrom 0 wireName circuit wire)))
            (.output circuit.length ::
              sourceEnvironmentFrom 0 (preparedEnvironment n) circuit)) := by
    simpa [finalOutputBodyPath, gateRoot_eq_preparationRoot] using atBody
  have scheduleDrop : (spineSchedule [.body] n).drop n = [] := by
    apply List.drop_eq_nil_of_le
    simp [spineSchedule_length]
  have noStage := outputStorageAfter_noStageHead circuit data n
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data n) noStage
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, outputWireBoundaryState,
    historyTailState, outputParentCodePath, finalOutputBodyPath,
    gateRoot_eq_preparationRoot, atBody, atBodyRank, scheduleDrop,
    finishNone, outputTreeAfter,
    outputFramesAfter, outputStorageAfter, outputResiduesAfter,
    outputRootBinder, composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge, deliverPort, boundHeadStep?,
    kernelDeterministic,
    nfDeterministic, finishCStage?, asLP?, isAppBullet, rb, appBullet, entry,
    Entries.ofList, edgeCoefficient, powDw,
    QalcFiniteGram.one, QalcFiniteGram.mul, List.append_assoc]

set_option maxHeartbeats 0 in
theorem historyTail_return (circuit : Circuit n)
    (certificate : Certificate) (data : BoundaryData n)
    (rank : Nat) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data)
    (atRoot : ∃ code,
      subterm? (compiledTerm circuit) (preparationRoot (rank + 1)) =
        some code)
    (atBody : ∃ code,
      subterm? (compiledTerm circuit)
          (prepContinuationPath rank ++ [.body]) = some code)
    (atContinuation : ∃ code,
      subterm? (compiledTerm circuit) (prepContinuationPath rank) =
        some code)
    (lookup : storedReturnOccurrences (prepContinuationPath rank)
        (outputStorageAfter circuit data n) =
      [preparationOccurrence rank]) :
    evolve (compiledTerm circuit) certificate 3
        [⟨historyTailState circuit data (rank + 1), amplitude⟩] =
      [⟨historyTailState circuit data rank, amplitude⟩] := by
  rcases atRoot with ⟨rootCode, atRoot⟩
  rcases atBody with ⟨bodyCode, atBody⟩
  rcases atContinuation with ⟨continuationCode, atContinuation⟩
  have atRootExact :
      subterm? (compiledTerm circuit)
          (preparationRoot rank ++ [.arg, .body, .body]) =
        some rootCode := by
    simpa [preparationRoot_succ, prepBlock, List.append_assoc] using atRoot
  have atBodyExact :
      subterm? (compiledTerm circuit)
          (preparationRoot rank ++ [.arg, .body]) = some bodyCode := by
    simpa [prepContinuationPath, List.append_assoc] using atBody
  have atContinuationExact :
      subterm? (compiledTerm circuit)
          (preparationRoot rank ++ [.arg]) = some continuationCode := by
    simpa [prepContinuationPath, List.append_assoc] using atContinuation
  have lookupExact :
      storedReturnOccurrences (preparationRoot rank ++ [.arg])
          (outputStorageAfter circuit data n) =
        [preparationOccurrence rank] := by
    simpa [prepContinuationPath] using lookup
  have occurrenceReturn :
      (preparationOccurrence rank).take
          ((preparationOccurrence rank).length - 3) =
        preparationRoot rank := by
    simp [preparationOccurrence]
  have upSame : (Direction.up != Direction.up) = false := by
    native_decide
  have noStage := outputStorageAfter_noStageHead circuit data n
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data n) noStage
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, historyTailState,
    atRootExact, atBodyExact, atContinuationExact, lookupExact,
    preparationRoot_succ, prepBlock, prepContinuationPath,
    occurrenceReturn, upSame, finishNone,
    composedStep, readbackStep, delegateStep, cnotStepToken,
    kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge, kernelDeterministic,
    nfDeterministic, finishCStage?, deliverPort, closeVirtualPort,
    returnContinuation, boundHeadStep?, binderIndex,
    firstRB, rbAfterOutputBullets, treeAt?, returnSuccessor?,
    rb, appBullet, bullet, entry, Entries.ofList, entryBEq,
    isBullet, isAppBullet, asLP?, asRB?, asRBL?,
    List.head!,
    edgeCoefficient, powDw, QalcFiniteGram.one, QalcFiniteGram.mul,
    List.append_assoc]

theorem compiled_history_subterms (positiveWidth : 0 < n)
    (circuit : Circuit n) (rank : Nat)
    (within : rank < n + circuit.length) :
    (∃ code,
      subterm? (compiledTerm circuit) (preparationRoot (rank + 1)) =
        some code) ∧
    (∃ code,
      subterm? (compiledTerm circuit)
          (prepContinuationPath rank ++ [.body]) = some code) ∧
    (∃ code,
      subterm? (compiledTerm circuit) (prepContinuationPath rank) =
        some code) := by
  by_cases preparation : rank < n
  · obtain ⟨remaining, sum⟩ : ∃ remaining, n = rank + 1 + remaining := by
      exact ⟨n - (rank + 1), by omega⟩
    let tail := lowerTotal (compileGatesWith n 0 wireName circuit)
      (preparedEnvironment n)
    have compiledEq : compiledTerm circuit = prepProgram n tail := by
      simpa [tail] using compiledTerm_eq_prepProgram positiveWidth circuit
    have root := subterm_prepProgram_at (rank + 1) remaining tail
    have atRank := subterm_prepProgram_at rank (remaining + 1) tail
    have continuation :
        subterm? (prepProgram (rank + (remaining + 1)) tail)
            (prepContinuationPath rank) =
          some (.lam (.lam (prepChain (rank + 1) remaining tail))) := by
      rw [show prepContinuationPath rank =
          preparationRoot rank ++ [.arg] by rfl,
        subterm_append, atRank]
      simp [prepChain, prepNode, subterm?]
    have body :
        subterm? (prepProgram (rank + (remaining + 1)) tail)
            (prepContinuationPath rank ++ [.body]) =
          some (.lam (prepChain (rank + 1) remaining tail)) := by
      rw [subterm_append, continuation]
      simp [subterm?]
    subst n
    rw [compiledEq]
    exact ⟨⟨_, by simpa [Nat.add_assoc, Nat.add_comm,
      Nat.add_left_comm] using root⟩,
      ⟨_, by simpa [Nat.add_assoc, Nat.add_comm,
        Nat.add_left_comm] using body⟩,
      ⟨_, by simpa [Nat.add_assoc, Nat.add_comm,
        Nat.add_left_comm] using continuation⟩⟩
  · have gateRank : n ≤ rank := by omega
    let gateIndex := rank - n
    have gateBefore : gateIndex < circuit.length := by
      dsimp [gateIndex]
      omega
    let prior := circuit.take gateIndex
    let gate := circuit[gateIndex]
    let rest := circuit.drop (gateIndex + 1)
    have split : circuit = prior ++ gate :: rest := by
      calc
        circuit = circuit.take gateIndex ++ circuit.drop gateIndex :=
          (List.take_append_drop gateIndex circuit).symm
        _ = prior ++ gate :: rest := by
          rw [List.drop_eq_getElem_cons gateBefore]
    have priorLength : prior.length = gateIndex := by
      simp [prior, Nat.le_of_lt gateBefore]
    have rankEq : rank = n + prior.length := by
      simp [priorLength, gateIndex]
      omega
    have continuation :=
      subterm_compiledTerm_current_continuation positiveWidth prior gate rest
    have body :=
      subterm_compiledTerm_current_continuation_body positiveWidth prior gate
        rest
    have root :=
      compiledTerm_at_gateRoot positiveWidth (prior ++ [gate]) rest
    have assembled : (prior ++ [gate]) ++ rest = circuit := by
      rw [split]
      simp [List.append_assoc]
    exact ⟨⟨_, by
        rw [← assembled]
        simpa [rankEq, gateRoot_eq_preparationRoot,
          List.length_append, priorLength, Nat.add_assoc] using root⟩,
      ⟨_, by
        rw [split]
        simpa [rankEq, gateContinuation_eq_prepContinuation] using body⟩,
      ⟨_, by
        rw [split]
        simpa [rankEq, gateContinuation_eq_prepContinuation] using
          continuation⟩⟩

theorem compiled_history_unwind_from (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (remaining : Nat)
    (bounded : remaining ≤ n + circuit.length) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data)
    (lookup : ∀ rank, rank < remaining →
      storedReturnOccurrences (prepContinuationPath rank)
          (outputStorageAfter circuit data n) =
        [preparationOccurrence rank]) :
    evolve (compiledTerm circuit) certificate (3 * remaining)
        [⟨historyTailState circuit data remaining, amplitude⟩] =
      [⟨historyTailState circuit data 0, amplitude⟩] := by
  induction remaining with
  | zero => simp [evolve]
  | succ rank ih =>
      have within : rank < n + circuit.length := by omega
      rcases compiled_history_subterms positiveWidth circuit rank within with
        ⟨atRoot, atBody, atContinuation⟩
      have first := historyTail_return circuit certificate data rank amplitude
        wf atRoot atBody atContinuation (lookup rank (by omega))
      rw [show 3 * (rank + 1) = 3 + 3 * rank by omega,
        evolve_add, first]
      exact ih (by omega) (fun prior before => lookup prior (by omega))

theorem compiled_history_unwind (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data)
    (storageExact : data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit) :
    evolve (compiledTerm circuit) certificate (3 * (n + circuit.length))
        [⟨historyTailState circuit data (n + circuit.length), amplitude⟩] =
      [⟨historyTailState circuit data 0, amplitude⟩] := by
  apply compiled_history_unwind_from positiveWidth circuit certificate data
    (n + circuit.length) (by omega) amplitude wf
  intro rank before
  rw [storedReturnOccurrences_outputStorageAfter, storageExact,
    compiledStorage_return_rank, if_pos before]

theorem outputPrefix_width_app (positiveWidth : 0 < n)
    (data : BoundaryData n) :
    ∃ fn argument, outputPrefix data n = .app fn argument := by
  obtain ⟨width, rfl⟩ := Nat.exists_eq_succ_of_ne_zero
    (Nat.ne_of_gt positiveWidth)
  exact ⟨outputPrefix data width,
    encodedBoolean (data.word ⟨width, by omega⟩), by
      simp [outputPrefix]⟩

def outputTerminalGarbage (circuit : Circuit n)
    (data : BoundaryData n) : TerminalGarbage :=
  ⟨none, outputFramesAfter data n, outputStorageAfter circuit data n,
    [outputRootBinder circuit], outputResiduesAfter circuit data n⟩

def outputHaltedState (circuit : Circuit n)
    (data : BoundaryData n) : NFState :=
  .done .halt (some (outputTreeAfter data n))
    (outputTerminalGarbage circuit data) 0

set_option maxHeartbeats 0 in
theorem historyTail_to_outputHalt (positiveWidth : 0 < n)
    (circuit : Circuit n) (certificate : Certificate)
    (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data) :
    evolve (compiledTerm circuit) certificate 8
        [⟨historyTailState circuit data 0, amplitude⟩] =
      [⟨outputHaltedState circuit data, amplitude⟩] := by
  let tail := lowerTotal (compileGatesWith n 0 wireName circuit)
    (preparedEnvironment n)
  have compiledEq : compiledTerm circuit = prepProgram n tail := by
    simpa [tail] using compiledTerm_eq_prepProgram positiveWidth circuit
  rcases outputPrefix_width_app positiveWidth data with
    ⟨outputFn, outputArgument, outputShape⟩
  have outputClosed : holes (outputTreeAfter data n) [] = [] := by
    simp [holes_outputTreeAfter]
  have outputClosedExact :
      holes outputFn [.body, .fn] ++
          holes outputArgument [.body, .arg] = [] := by
    simpa [outputTreeAfter, outputShape, spine, holes] using outputClosed
  have noStage := outputStorageAfter_noStageHead circuit data n
    wf.storage.noStageHead
  have finishNone := finishCStage_none_of_noStageHead
    (outputStorageAfter circuit data n) noStage
  rw [compiledEq]
  simp (config := { maxSteps := 1000000 })
    [evolve, stepColumn, stepBasis, historyTailState,
    outputHaltedState, outputTerminalGarbage, outputTreeAfter,
    outputShape, outputClosedExact, outputRootBinder,
    preparationRoot, shellBodyPath,
    prepProgram, subterm?, finishNone, composedStep, readbackStep, delegateStep,
    cnotStepToken, kernelStepToken, kernelToken, composedToken, tokenWith,
    kernelEntry, composedEntry, mapKernelEdge, kernelDeterministic,
    nfDeterministic, finishCStage?, deliverPort, closeVirtualPort,
    returnContinuation, boundHeadStep?, binderIndex,
    firstRB, rbAfterOutputBullets, treeAt?, returnSuccessor?,
    terminalGarbage, virtualPrefixCode, canonicalBoolean?,
    spine, holes, leadingLambdas, rb, appBullet, bullet, entry, Entries.ofList,
    entryBEq, isBullet, isAppBullet, asLP?, asRB?, asRBL?,
    List.head!, edgeCoefficient, powDw, QalcFiniteGram.one,
    QalcFiniteGram.mul, List.append_assoc]

def physicalOutputTime (circuit : Circuit n) : Nat :=
  13 * n + 3 * circuit.length + 15

theorem compiled_output_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) (data : BoundaryData n) (amplitude : Dw)
    (wf : CompiledBoundaryWFAt circuit data)
    (storageExact : data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (physicalOutputTime circuit)
        [⟨boundaryState n circuit.length data, amplitude⟩] =
      [⟨outputHaltedState circuit data, amplitude⟩] := by
  rw [show physicalOutputTime circuit =
      (n + 6) + (9 * n + (1 +
        (3 * (n + circuit.length) + 8))) by
    simp [physicalOutputTime]
    omega]
  rw [evolve_add, compiled_output_head_setup positiveWidth circuit
    (compilerCertificate circuit) data amplitude wf]
  rw [evolve_add, compiled_output_wires positiveWidth circuit
    (compilerCertificate circuit) data amplitude wf]
  rw [evolve_add, outputBoundary_to_historyTail positiveWidth circuit
    (compilerCertificate circuit) data amplitude wf]
  rw [evolve_add, compiled_history_unwind positiveWidth circuit
    (compilerCertificate circuit) data amplitude wf storageExact]
  exact historyTail_to_outputHalt positiveWidth circuit
    (compilerCertificate circuit) data amplitude wf

def haltedBoundaryColumn (circuit : Circuit n)
    (branches : List (WeightedBoundaryData n)) : PhysicalColumn :=
  branches.map fun branch =>
    ⟨outputHaltedState circuit branch.data, branch.amplitude⟩

theorem compiled_output_column (positiveWidth : 0 < n)
    (circuit : Circuit n) (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches,
      CompiledBoundaryWFAt circuit branch.data)
    (storageExact : ∀ branch ∈ branches, branch.data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (physicalOutputTime circuit)
        (boundaryColumn circuit.length branches) =
      haltedBoundaryColumn circuit branches := by
  induction branches with
  | nil => simp [boundaryColumn, haltedBoundaryColumn]
  | cons branch rest ih =>
      have branchWF := wf branch (by simp)
      have branchStorage := storageExact branch (by simp)
      have restWF : ∀ item ∈ rest,
          CompiledBoundaryWFAt circuit item.data := by
        intro item membership
        exact wf item (by simp [membership])
      have restStorage : ∀ item ∈ rest, item.data.storage =
          boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n)
            circuit := by
        intro item membership
        exact storageExact item (by simp [membership])
      rw [show boundaryColumn circuit.length (branch :: rest) =
          ⟨boundaryState n circuit.length branch.data, branch.amplitude⟩ ::
            boundaryColumn circuit.length rest by rfl,
        evolve_cons,
        compiled_output_physical positiveWidth circuit branch.data
          branch.amplitude branchWF branchStorage,
        ih restWF restStorage]
      rfl

def preparedBoundaryBranches (n : Nat) :
    List (WeightedBoundaryData n) :=
  (preparationBranches n).map fun branch =>
    ⟨initialBoundaryData branch.word, branch.amplitude⟩

theorem preparationBoundaryColumn_eq_boundaryColumn
    (positiveWidth : 0 < n) :
    preparationBoundaryColumn n =
      boundaryColumn 0 (preparedBoundaryBranches n) := by
  obtain ⟨width, rfl⟩ := Nat.exists_eq_succ_of_ne_zero
    (Nat.ne_of_gt positiveWidth)
  simp [preparationBoundaryColumn, preparedBoundaryBranches,
    preparedPrefixColumn, boundaryColumn, initial_boundary_state]

theorem preparedBoundaryBranches_fullWF
    (branch : WeightedBoundaryData n)
    (membership : branch ∈ preparedBoundaryBranches n) :
    CompiledBoundaryWFAt ([] : Circuit n) branch.data := by
  simp only [preparedBoundaryBranches, List.mem_map] at membership
  rcases membership with ⟨source, sourceMember, rfl⟩
  constructor
  · exact initialBoundaryWF source.word
  · exact initialBoundaryStorageWF

theorem boundaryPathsFrom_compiled_fullWF
    (prior remaining : Circuit n)
    (branches : List (WeightedBoundaryData n))
    (wf : ∀ branch ∈ branches,
      CompiledBoundaryWFAt prior branch.data) :
    ∀ output ∈ boundaryPathsFrom prior.length remaining branches,
      CompiledBoundaryWFAt (prior ++ remaining) output.data := by
  induction remaining generalizing prior branches with
  | nil =>
      intro output membership
      simpa [boundaryPathsFrom] using wf output membership
  | cons gate rest ih =>
      have nextWF := flatMap_scatterBoundary_compiled_wf prior gate branches wf
      have result := ih (prior := prior ++ [gate])
        (branches := branches.flatMap (scatterBoundary prior.length gate))
        nextWF
      simpa [boundaryPathsFrom, List.append_assoc] using result

def compiledPreparedBoundaryBranches (circuit : Circuit n) :
    List (WeightedBoundaryData n) :=
  boundaryPathsFrom 0 circuit (preparedBoundaryBranches n)

theorem compiledPreparedBoundaryBranches_fullWF
    (circuit : Circuit n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    CompiledBoundaryWFAt circuit output.data := by
  simpa [compiledPreparedBoundaryBranches] using
    boundaryPathsFrom_compiled_fullWF ([] : Circuit n) circuit
      (preparedBoundaryBranches n) preparedBoundaryBranches_fullWF
      output membership

theorem compiledPreparedBoundaryBranches_storage
    (circuit : Circuit n) (output : WeightedBoundaryData n)
    (membership : output ∈ compiledPreparedBoundaryBranches circuit) :
    output.data.storage =
      boundaryStorageFrom 0 (initialWireKeys n) (prepStorage n) circuit := by
  apply boundaryPathsFrom_storage 0 circuit (preparedBoundaryBranches n)
    (initialWireKeys n) (prepStorage n)
  · intro branch member
    simp only [preparedBoundaryBranches, List.mem_map] at member
    rcases member with ⟨source, sourceMember, rfl⟩
    exact ⟨rfl, rfl⟩
  · exact membership

theorem compiled_circuit_prepared_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    evolve (compiledTerm circuit) (compilerCertificate circuit)
        (physicalCircuitTime circuit) (preparationBoundaryColumn n) =
      boundaryColumn circuit.length
        (compiledPreparedBoundaryBranches circuit) := by
  rw [preparationBoundaryColumn_eq_boundaryColumn positiveWidth]
  simpa [compiledPreparedBoundaryBranches] using
    contextual_circuit_physical_from positiveWidth ([] : Circuit n) circuit
      (preparedBoundaryBranches n) preparedBoundaryBranches_fullWF

def fullPhysicalTime (circuit : Circuit n) : Nat :=
  preparedAt n + physicalCircuitTime circuit + physicalOutputTime circuit

theorem compiled_full_nf_physical (positiveWidth : 0 < n)
    (circuit : Circuit n) :
    compiledEvolve circuit (fullPhysicalTime circuit)
        [⟨QalcComposedMachine.initial, one⟩] =
      haltedBoundaryColumn circuit
        (compiledPreparedBoundaryBranches circuit) := by
  have preparation := compiled_preparation_physical positiveWidth circuit
  unfold compiledEvolve at preparation
  unfold compiledEvolve fullPhysicalTime
  rw [show preparedAt n + physicalCircuitTime circuit +
      physicalOutputTime circuit = preparedAt n +
        (physicalCircuitTime circuit + physicalOutputTime circuit) by omega,
    evolve_add, preparation,
    evolve_add, compiled_circuit_prepared_physical positiveWidth circuit]
  exact compiled_output_column positiveWidth circuit
    (compiledPreparedBoundaryBranches circuit)
    (compiledPreparedBoundaryBranches_fullWF circuit)
    (compiledPreparedBoundaryBranches_storage circuit)

end QalcGate2ContextualOutput
