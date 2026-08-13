import QalcConcreteKernel
import RRIDirectCertificate

/-!
# Kernel-checked complete-carrier RRI certificates for concrete qALC

An untrusted producer may list a candidate finite carrier.  `certificateBool`
recomputes every qALC row with `QalcConcrete.step`, checks initial membership,
terminal-covered closure, singleton recall dispatch and both projection/target
factorizations, and checks RRI on every pair.  The theorems below lift a true
Boolean result to inductive reachability.
-/

namespace QalcConcrete

def eqBool {α : Type} [DecidableEq α] (left right : α) : Bool :=
  decide (left = right)

theorem eqBool_comm {α : Type} [DecidableEq α] (left right : α) :
    eqBool left right = eqBool right left := by
  by_cases equal : left = right
  · subst right
    rfl
  · have reverse : ¬right = left := fun other => equal other.symm
    simp [eqBool, equal, reverse]

def memBool {α : Type} [DecidableEq α] (value : α) (items : List α) : Bool :=
  decide (value ∈ items)

structure RecallKey where
  gate : GateName
  inst : Entry
  bit : Bool
  deriving Repr, DecidableEq, BEq

structure RecallProjection where
  path : Path
  direction : Direction
  log : List Entry
  tape : List Entry
  vb : Option VirtualBoolean
  frames : List Frame
  storage : List Store
  deriving Repr, DecidableEq, BEq

structure RecallDatum where
  key : RecallKey
  phase : Bool
  projection : RecallProjection
  deriving Repr, DecidableEq, BEq

structure RecallSummary where
  source : State
  key : RecallKey
  phase : Bool
  projection : RecallProjection
  fingerprint : UInt64
  deriving Repr, DecidableEq, BEq

structure RecallTargetSummary extends RecallSummary where
  target : State
  targetFingerprint : UInt64
  deriving Repr, DecidableEq, BEq

def hashMix (left right : UInt64) : UInt64 :=
  left * 1099511628211 + right + 1469598103934665603

def hashGate : GateName → UInt64
  | .h => 11
  | .t => 13

def hashPathStep : PathStep → UInt64
  | .fn => 17
  | .arg => 19
  | .body => 23

def hashBool (bit : Bool) : UInt64 := if bit then 29 else 31

def hashEpoch : Epoch → UInt64
  | .fresh => 107
  | .recalledAbsent ticket => hashMix 109 (hashEpoch ticket)
  | .recalledPresent ticket oldFrame =>
      hashMix 113 (hashMix (hashEpoch ticket) (hashEpoch oldFrame))

def hashList {α : Type} (hash : α → UInt64) (items : List α) : UInt64 :=
  items.foldl (fun out item => hashMix out (hash item)) 37

def hashPath (path : Path) : UInt64 := hashList hashPathStep path

mutual
  def hashEntry : Entry → UInt64
    | .bullet => 41
    | .lp path slice => hashMix 43 (hashMix (hashPath path) (hashEntries slice))
    | .gam gate => hashMix 47 (hashGate gate)
    | .mu gate => hashMix 53 (hashGate gate)
    | .ans gate bit => hashMix 59 (hashMix (hashGate gate) (hashBool bit))
    | .alpha gate inst bit epoch =>
        hashMix 61 (hashMix (hashGate gate)
          (hashMix (hashEntry inst) (hashMix (hashBool bit) (hashEpoch epoch))))
    | .rho => 67

  def hashEntries : Entries → UInt64
    | .nil => 71
    | .cons head tail => hashMix (hashEntry head) (hashEntries tail)
end

def hashKey (key : Key) : UInt64 :=
  hashMix (hashGate key.gate) (hashEntry key.inst)

def hashFrame (frame : Frame) : UInt64 :=
  hashMix (hashKey frame.key)
    (hashMix (hashBool frame.bit) (hashEpoch frame.epoch))

def hashStore : Store → UInt64
  | .decoded key => hashMix 73 (hashKey key)
  | .bundle keys => hashMix 79 (hashList hashKey keys)
  | .burial cargo => hashMix 83 (hashEntry cargo)
  | .suppressed key => hashMix 89 (hashKey key)

def hashDirection : Direction → UInt64
  | .down => 97
  | .up => 101

def hashVirtual (virtual : VirtualBoolean) : UInt64 :=
  hashMix (hashGate virtual.gate)
    (hashMix (hashBool virtual.bit) (UInt64.ofNat virtual.phase))

def hashOption {α : Type} (hash : α → UInt64) : Option α → UInt64
  | none => 103
  | some value => hashMix 107 (hash value)

def hashRun (state : Run) : UInt64 :=
  hashMix (hashPath state.path)
    (hashMix (hashDirection state.direction)
      (hashMix (hashList hashEntry state.log)
        (hashMix (hashList hashEntry state.tape)
          (hashMix (hashOption hashVirtual state.vb)
            (hashMix (hashList hashFrame state.frames)
              (hashList hashStore state.storage))))))

def hashTerminalKind : TerminalKind → UInt64
  | .halt0 => 109
  | .halt1 => 113
  | .haltI => 127
  | .err => 131

def hashState : State → UInt64
  | .run state => hashMix 137 (hashRun state)
  | .runDone kind residue =>
      hashMix 139 (hashMix (hashTerminalKind kind) (hashRun residue))
  | .done kind residue tick =>
      hashMix 149 (hashMix (hashTerminalKind kind)
        (hashMix (hashRun residue) (UInt64.ofNat tick)))

def hashRecallKey (key : RecallKey) : UInt64 :=
  hashMix (hashGate key.gate)
    (hashMix (hashEntry key.inst) (hashBool key.bit))

def hashProjection (projection : RecallProjection) : UInt64 :=
  hashMix (hashPath projection.path)
    (hashMix (hashDirection projection.direction)
      (hashMix (hashList hashEntry projection.log)
        (hashMix (hashList hashEntry projection.tape)
          (hashMix (hashOption hashVirtual projection.vb)
            (hashMix (hashList hashFrame projection.frames)
              (hashList hashStore projection.storage))))))

def stateMemBool (value : State) (items : List State) : Bool :=
  let fingerprint := hashState value
  items.any fun candidate =>
    eqBool fingerprint (hashState candidate) && eqBool value candidate

theorem stateMemBool_iff {value : State} {items : List State} :
    stateMemBool value items = true ↔ value ∈ items := by
  simp [stateMemBool, eqBool]

theorem all_flatten_eq {α : Type} (chunks : List (List α))
    (predicate : α → Bool) :
    chunks.flatten.all predicate =
      chunks.all (fun chunk => chunk.all predicate) := by
  induction chunks with
  | nil => rfl
  | cons head tail ih => simp [ih]

structure StateSlot where
  fingerprint : UInt64
  state : State
  deriving Repr, DecidableEq, BEq

def indexedStateMemBool (value : State) (index : List StateSlot) : Bool :=
  let fingerprint := hashState value
  index.any fun candidate =>
    eqBool fingerprint candidate.fingerprint && eqBool value candidate.state

theorem indexedStateMemBool_sound {value : State} {index : List StateSlot}
    (checked : indexedStateMemBool value index = true) :
    value ∈ index.map (·.state) := by
  simp [indexedStateMemBool, eqBool] at checked
  rcases checked with ⟨candidate, candidateMem, _, equal⟩
  exact List.mem_map.mpr ⟨candidate, candidateMem, equal.symm⟩

def recallView? : State → Option RecallDatum
  | .run source =>
      if source.vb.isSome then none
      else
        let bulletCount := countBullets source.tape
        match source.tape[bulletCount]? with
        | some (.alpha gate inst bit _) =>
            let key : Key := ⟨gate, inst⟩
            let matching := sameKeyFrames source.frames key |>.filter
              (fun frame => eqBool frame.bit bit)
            let foreign := sameKeyFrames source.frames key |>.filter
              (fun frame => frame.bit != bit)
            if !foreign.isEmpty || 1 < matching.length then none
            else
              let phase := !matching.isEmpty
              let erased := if phase then
                  source.frames.filter
                    (fun frame => !(eqBool frame.key key && eqBool frame.bit bit))
                else source.frames
              some {
                key := ⟨gate, inst, bit⟩
                phase := phase
                projection := {
                  path := source.path
                  direction := source.direction
                  log := source.log
                  tape := source.tape
                  vb := source.vb
                  frames := erased
                  storage := source.storage } }
        | _ => none
  | _ => none

def defaultRecallKey : RecallKey := ⟨.h, .bullet, false⟩

def defaultRecallProjection : RecallProjection :=
  { path := [], direction := .down, log := [], tape := [], vb := none,
    frames := [], storage := [] }

def recallKey (state : State) : RecallKey :=
  (recallView? state).map (·.key) |>.getD defaultRecallKey

def recallPhase (state : State) : Bool :=
  (recallView? state).map (·.phase) |>.getD false

def recallProjection (state : State) : RecallProjection :=
  (recallView? state).map (·.projection) |>.getD defaultRecallProjection

def recallEdges (term : Term) (certificate : Certificate)
    (state : State) : List Edge :=
  (step term state certificate).filter (fun edge => edge.rule == "recall")

def actualRecall (term : Term) (certificate : Certificate)
    (state : State) : Bool :=
  !(recallEdges term certificate state).isEmpty

def recallRowWellFormed (term : Term) (certificate : Certificate)
    (state : State) : Bool :=
  let rows := step term state certificate
  let recalls := rows.filter (fun edge => edge.rule == "recall")
  recalls.isEmpty ||
    (rows.length == 1 && recalls.length == 1 && (recallView? state).isSome)

def targetCovered (carrier : List State) (edge : Edge) : Bool :=
  isTerminal edge.target || stateMemBool edge.target carrier

def indexedTargetCovered (index : List StateSlot) (edge : Edge) : Bool :=
  isTerminal edge.target || indexedStateMemBool edge.target index

def carrierIndexedClosed (term : Term) (certificate : Certificate)
    (carrier : List State) (index : List StateSlot) : Bool :=
  memBool initial carrier &&
  eqBool (index.map (·.state)) carrier &&
  carrier.all (fun state =>
    (step term state certificate).all (indexedTargetCovered index))

def carrierClosed (term : Term) (certificate : Certificate)
    (carrier : List State) : Bool :=
  memBool initial carrier &&
    carrier.all (fun state =>
      (step term state certificate).all (targetCovered carrier))

def pairRRI (term : Term) (certificate : Certificate)
    (left right : State) : Bool :=
  if actualRecall term certificate left &&
      actualRecall term certificate right &&
      eqBool (recallKey left) (recallKey right) &&
      eqBool (recallProjection left) (recallProjection right) then
    eqBool (recallPhase left) (recallPhase right)
  else true

def recallSummary (state : State) : RecallSummary :=
  let key := recallKey state
  let projection := recallProjection state
  { source := state
    key := key
    phase := recallPhase state
    projection := projection
    fingerprint := hashMix (hashRecallKey key) (hashProjection projection) }

def recallSummaries (term : Term) (certificate : Certificate)
    (carrier : List State) : List RecallSummary :=
  (carrier.filter (actualRecall term certificate)).map recallSummary

def pairSummaryRRI (left right : RecallSummary) : Bool :=
  if eqBool left.fingerprint right.fingerprint then
    if eqBool left.key right.key && eqBool left.projection right.projection then
      eqBool left.phase right.phase
    else true
  else true

theorem pairSummaryRRI_comm (left right : RecallSummary) :
    pairSummaryRRI left right = pairSummaryRRI right left := by
  unfold pairSummaryRRI
  rw [eqBool_comm right.fingerprint left.fingerprint,
    eqBool_comm right.key left.key,
    eqBool_comm right.projection left.projection,
    eqBool_comm right.phase left.phase]

def summariesRRI : List RecallSummary → Bool
  | [] => true
  | left :: rest =>
      rest.all (pairSummaryRRI left) && summariesRRI rest

def carrierRRI (term : Term) (certificate : Certificate)
    (carrier : List State) : Bool :=
  summariesRRI (recallSummaries term certificate carrier)

def uniqueRecallTarget? (term : Term) (certificate : Certificate)
    (state : State) : Option State :=
  match recallEdges term certificate state with
  | [edge] => some edge.target
  | _ => none

def pairTargetFacts (term : Term) (certificate : Certificate)
    (left right : State) : Bool :=
  if actualRecall term certificate left &&
      actualRecall term certificate right &&
      eqBool (recallKey left) (recallKey right) then
    match uniqueRecallTarget? term certificate left,
        uniqueRecallTarget? term certificate right with
    | some leftTarget, some rightTarget =>
        -- Both directions are checked: target equality iff erased-source
        -- projection equality, and a common target cannot mix phases.
        let sameTarget := eqBool leftTarget rightTarget
        let sameProjection := eqBool (recallProjection left) (recallProjection right)
        eqBool sameTarget sameProjection &&
          (!sameTarget || eqBool (recallPhase left) (recallPhase right))
    | _, _ => false
  else true

def recallTargetSummary? (term : Term) (certificate : Certificate)
    (state : State) : Option RecallTargetSummary := do
  if actualRecall term certificate state then pure () else none
  let target ← uniqueRecallTarget? term certificate state
  let summary := recallSummary state
  pure { summary with
    target := target
    targetFingerprint := hashMix (hashRecallKey summary.key) (hashState target) }

def recallTargetSummaries (term : Term) (certificate : Certificate)
    (carrier : List State) : List RecallTargetSummary :=
  carrier.filterMap (recallTargetSummary? term certificate)

def pairTargetSummary (left right : RecallTargetSummary) : Bool :=
  if eqBool left.targetFingerprint right.targetFingerprint then
    if eqBool left.key right.key then
      let sameTarget := eqBool left.target right.target
      let sameProjection := eqBool left.projection right.projection
      eqBool sameTarget sameProjection &&
        (!sameTarget || eqBool left.phase right.phase)
    else true
  else true

theorem pairTargetSummary_comm (left right : RecallTargetSummary) :
    pairTargetSummary left right = pairTargetSummary right left := by
  unfold pairTargetSummary
  rw [eqBool_comm right.targetFingerprint left.targetFingerprint,
    eqBool_comm right.key left.key,
    eqBool_comm right.target left.target,
    eqBool_comm right.projection left.projection,
    eqBool_comm right.phase left.phase]

def summariesTargetFacts : List RecallTargetSummary → Bool
  | [] => true
  | left :: rest =>
      rest.all (pairTargetSummary left) && summariesTargetFacts rest

def carrierTargetFacts (term : Term) (certificate : Certificate)
    (carrier : List State) : Bool :=
  summariesTargetFacts (recallTargetSummaries term certificate carrier)

def certificateBool (term : Term) (certificate : Certificate)
    (carrier : List State) : Bool :=
  carrierClosed term certificate carrier &&
  carrier.all (recallRowWellFormed term certificate) &&
  carrierRRI term certificate carrier &&
  carrierTargetFacts term certificate carrier

def ConcreteStep (term : Term) (certificate : Certificate)
    (source target : State) : Prop :=
  ∃ edge ∈ step term source certificate, edge.target = target

abbrev Reachable (term : Term) (certificate : Certificate) :=
  QalcRRIDirectCertificate.Reachable (ConcreteStep term certificate) initial

def RRIOn (term : Term) (certificate : Certificate)
    (domain : State → Prop) : Prop :=
  ∀ left right,
    domain left → domain right →
    actualRecall term certificate left = true →
    actualRecall term certificate right = true →
    recallKey left = recallKey right →
    recallProjection left = recallProjection right →
    recallPhase left = recallPhase right

def RecallTargetRRIOn (term : Term) (certificate : Certificate)
    (domain : State → Prop) : Prop :=
  ∀ left right target,
    domain left → domain right →
    actualRecall term certificate left = true →
    actualRecall term certificate right = true →
    recallKey left = recallKey right →
    uniqueRecallTarget? term certificate left = some target →
    uniqueRecallTarget? term certificate right = some target →
    recallProjection left = recallProjection right ∧
      recallPhase left = recallPhase right

theorem pairRRI_sound
    {term : Term} {certificate : Certificate} {left right : State}
    (checked : pairRRI term certificate left right = true)
    (leftRecall : actualRecall term certificate left = true)
    (rightRecall : actualRecall term certificate right = true)
    (sameKey : recallKey left = recallKey right)
    (sameProjection : recallProjection left = recallProjection right) :
    recallPhase left = recallPhase right := by
  have keyBool : eqBool (recallKey left) (recallKey right) = true := by
    simp [eqBool, sameKey]
  have projectionBool :
      eqBool (recallProjection left) (recallProjection right) = true := by
    simp [eqBool, sameProjection]
  simp [pairRRI, leftRecall, rightRecall, keyBool, projectionBool] at checked
  simpa [eqBool] using checked

theorem summariesRRI_pair
    {summaries : List RecallSummary}
    (checked : summariesRRI summaries = true)
    {left right : RecallSummary}
    (leftMem : left ∈ summaries) (rightMem : right ∈ summaries) :
    pairSummaryRRI left right = true := by
  induction summaries with
  | nil => simp at leftMem
  | cons head rest ih =>
      have split : rest.all (pairSummaryRRI head) = true ∧
          summariesRRI rest = true := by
        simpa [summariesRRI] using checked
      rcases List.mem_cons.mp leftMem with rfl | leftTail
      · rcases List.mem_cons.mp rightMem with rfl | rightTail
        · simp [pairSummaryRRI, eqBool]
        · exact (List.all_eq_true.mp split.1) right rightTail
      · rcases List.mem_cons.mp rightMem with rfl | rightTail
        · have pair := (List.all_eq_true.mp split.1) left leftTail
          rw [pairSummaryRRI_comm]
          exact pair
        · exact ih split.2 leftTail rightTail

theorem carrierRRI_sound
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : carrierRRI term certificate carrier = true) :
    RRIOn term certificate (fun state => state ∈ carrier) := by
  intro left right leftMem rightMem leftRecall rightRecall sameKey sameProjection
  let leftSummary := recallSummary left
  let rightSummary := recallSummary right
  have leftFiltered : left ∈ carrier.filter (actualRecall term certificate) :=
    List.mem_filter.mpr ⟨leftMem, leftRecall⟩
  have rightFiltered : right ∈ carrier.filter (actualRecall term certificate) :=
    List.mem_filter.mpr ⟨rightMem, rightRecall⟩
  have leftMemSummary : leftSummary ∈ recallSummaries term certificate carrier :=
    List.mem_map.mpr ⟨left, leftFiltered, rfl⟩
  have rightMemSummary : rightSummary ∈ recallSummaries term certificate carrier :=
    List.mem_map.mpr ⟨right, rightFiltered, rfl⟩
  have pair := summariesRRI_pair checked leftMemSummary rightMemSummary
  simp [pairSummaryRRI, leftSummary, rightSummary, recallSummary, eqBool,
    sameKey, sameProjection] at pair
  exact pair

theorem pairTargetFacts_sound
    {term : Term} {certificate : Certificate} {left right target : State}
    (checked : pairTargetFacts term certificate left right = true)
    (leftRecall : actualRecall term certificate left = true)
    (rightRecall : actualRecall term certificate right = true)
    (sameKey : recallKey left = recallKey right)
    (leftTarget : uniqueRecallTarget? term certificate left = some target)
    (rightTarget : uniqueRecallTarget? term certificate right = some target) :
    recallProjection left = recallProjection right ∧
      recallPhase left = recallPhase right := by
  simp [pairTargetFacts, leftRecall, rightRecall, sameKey,
    leftTarget, rightTarget, eqBool] at checked
  exact checked

theorem summariesTargetFacts_pair
    {summaries : List RecallTargetSummary}
    (checked : summariesTargetFacts summaries = true)
    {left right : RecallTargetSummary}
    (leftMem : left ∈ summaries) (rightMem : right ∈ summaries) :
    pairTargetSummary left right = true := by
  induction summaries with
  | nil => simp at leftMem
  | cons head rest ih =>
      have split : rest.all (pairTargetSummary head) = true ∧
          summariesTargetFacts rest = true := by
        simpa [summariesTargetFacts] using checked
      rcases List.mem_cons.mp leftMem with rfl | leftTail
      · rcases List.mem_cons.mp rightMem with rfl | rightTail
        · simp [pairTargetSummary, eqBool]
        · exact (List.all_eq_true.mp split.1) right rightTail
      · rcases List.mem_cons.mp rightMem with rfl | rightTail
        · have pair := (List.all_eq_true.mp split.1) left leftTail
          rw [pairTargetSummary_comm]
          exact pair
        · exact ih split.2 leftTail rightTail

theorem carrierTargetFacts_sound
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : carrierTargetFacts term certificate carrier = true) :
    RecallTargetRRIOn term certificate (fun state => state ∈ carrier) := by
  intro left right target leftMem rightMem leftRecall rightRecall sameKey
    leftTarget rightTarget
  let leftBase := recallSummary left
  let rightBase := recallSummary right
  let leftSummary : RecallTargetSummary :=
    { leftBase with
      target := target
      targetFingerprint := hashMix (hashRecallKey leftBase.key) (hashState target) }
  let rightSummary : RecallTargetSummary :=
    { rightBase with
      target := target
      targetFingerprint := hashMix (hashRecallKey rightBase.key) (hashState target) }
  have leftOption : recallTargetSummary? term certificate left =
      some leftSummary := by
    simp [recallTargetSummary?, leftRecall, leftTarget, leftSummary, leftBase]
  have rightOption : recallTargetSummary? term certificate right =
      some rightSummary := by
    simp [recallTargetSummary?, rightRecall, rightTarget, rightSummary, rightBase]
  have leftMemSummary :
      leftSummary ∈ recallTargetSummaries term certificate carrier :=
    List.mem_filterMap.mpr ⟨left, leftMem, leftOption⟩
  have rightMemSummary :
      rightSummary ∈ recallTargetSummaries term certificate carrier :=
    List.mem_filterMap.mpr ⟨right, rightMem, rightOption⟩
  have pair := summariesTargetFacts_pair checked leftMemSummary rightMemSummary
  simp [pairTargetSummary, leftSummary, rightSummary, eqBool,
    leftBase, rightBase, recallSummary, sameKey] at pair
  exact pair

theorem carrierClosed_initial
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : carrierClosed term certificate carrier = true) :
    initial ∈ carrier := by
  have split : memBool initial carrier = true ∧
      carrier.all (fun state =>
        (step term state certificate).all (targetCovered carrier)) = true := by
    simpa [carrierClosed] using checked
  simpa [memBool] using split.1

theorem carrierClosed_successor
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : carrierClosed term certificate carrier = true)
    {source target : State}
    (sourceMem : source ∈ carrier)
    (edge : ConcreteStep term certificate source target) :
    target ∈ carrier ∨ isTerminal target = true := by
  rcases edge with ⟨row, rowMem, rfl⟩
  have split : memBool initial carrier = true ∧
      carrier.all (fun state =>
        (step term state certificate).all (targetCovered carrier)) = true := by
    simpa [carrierClosed] using checked
  have outer : carrier.all (fun state =>
      (step term state certificate).all (targetCovered carrier)) = true := by
    exact split.2
  have sourceChecked := (List.all_eq_true.mp outer) source sourceMem
  have rowChecked := (List.all_eq_true.mp sourceChecked) row rowMem
  unfold targetCovered at rowChecked
  cases terminal : isTerminal row.target with
  | false =>
      simp [terminal] at rowChecked
      exact .inl (stateMemBool_iff.mp rowChecked)
  | true => exact .inr rfl

theorem carrierIndexedClosed_sound
    {term : Term} {certificate : Certificate} {carrier : List State}
    {index : List StateSlot}
    (checked : carrierIndexedClosed term certificate carrier index = true) :
    carrierClosed term certificate carrier = true := by
  simp [carrierIndexedClosed, eqBool] at checked
  rcases checked with ⟨⟨initialMem, aligned⟩, indexedClosed⟩
  have ordinaryClosed : carrier.all (fun state =>
      (step term state certificate).all (targetCovered carrier)) = true := by
    apply List.all_eq_true.mpr
    intro source sourceMem
    apply List.all_eq_true.mpr
    intro edge edgeMem
    have edgeChecked := indexedClosed source sourceMem edge edgeMem
    unfold indexedTargetCovered at edgeChecked
    unfold targetCovered
    cases terminal : isTerminal edge.target with
    | true => simp
    | false =>
        simp [terminal] at edgeChecked ⊢
        have indexedMem := indexedStateMemBool_sound edgeChecked
        apply stateMemBool_iff.mpr
        simpa [aligned] using indexedMem
  simp [carrierClosed, initialMem, ordinaryClosed]

theorem terminal_forward
    {term : Term} {certificate : Certificate} {source target : State}
    (terminal : isTerminal source = true)
    (edge : ConcreteStep term certificate source target) :
    isTerminal target = true := by
  rcases edge with ⟨row, rowMem, rfl⟩
  cases source with
  | run run => simp [isTerminal] at terminal
  | runDone kind residue =>
      simp [step, deterministic] at rowMem
      rcases rowMem with rfl
      rfl
  | done kind residue tick =>
      simp [step, deterministic] at rowMem
      rcases rowMem with rfl
      rfl

theorem terminal_not_recall
    {term : Term} {certificate : Certificate} {state : State}
    (terminal : isTerminal state = true) :
    actualRecall term certificate state = false := by
  cases state with
  | run run => simp [isTerminal] at terminal
  | runDone kind residue => simp [actualRecall, recallEdges, step, deterministic]
  | done kind residue tick => simp [actualRecall, recallEdges, step, deterministic]

theorem reachable_recall_mem
    {term : Term} {certificate : Certificate} {carrier : List State}
    (closed : carrierClosed term certificate carrier = true)
    {state : State}
    (reachable : Reachable term certificate state)
    (recall : actualRecall term certificate state = true) :
    state ∈ carrier := by
  let terminalCertificate : QalcRRIDirectCertificate.TerminalCarrier
      (ConcreteStep term certificate) initial := {
    carrier := fun state => state ∈ carrier
    terminal := fun state => isTerminal state = true
    initial_mem := carrierClosed_initial closed
    successor_covered := fun sourceMem edge =>
      carrierClosed_successor closed sourceMem edge
    terminal_forward := fun terminal edge =>
      terminal_forward terminal edge }
  have covered := QalcRRIDirectCertificate.reachable_mem_or_terminal
    terminalCertificate reachable
  cases covered with
  | inl member => exact member
  | inr terminal =>
      have impossible := terminal_not_recall
        (term := term) (certificate := certificate) terminal
      simp [impossible] at recall

theorem certificate_sound
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : certificateBool term certificate carrier = true) :
    RRIOn term certificate (Reachable term certificate) := by
  have closed : carrierClosed term certificate carrier = true := by
    simp [certificateBool] at checked
    exact checked.1.1.1
  have finiteRRI : carrierRRI term certificate carrier = true := by
    simp [certificateBool] at checked
    exact checked.1.2
  intro left right leftReachable rightReachable
    leftRecall rightRecall sameKey sameProjection
  let terminalCertificate : QalcRRIDirectCertificate.TerminalCarrier
      (ConcreteStep term certificate) initial := {
    carrier := fun state => state ∈ carrier
    terminal := fun state => isTerminal state = true
    initial_mem := carrierClosed_initial closed
    successor_covered := fun sourceMem edge =>
      carrierClosed_successor closed sourceMem edge
    terminal_forward := fun terminal edge =>
      terminal_forward terminal edge }
  have leftCovered := QalcRRIDirectCertificate.reachable_mem_or_terminal
    terminalCertificate leftReachable
  have rightCovered := QalcRRIDirectCertificate.reachable_mem_or_terminal
    terminalCertificate rightReachable
  have checkedCarrier := carrierRRI_sound finiteRRI
  cases leftCovered with
  | inl leftMem =>
      cases rightCovered with
      | inl rightMem =>
          exact checkedCarrier left right leftMem rightMem leftRecall
            rightRecall sameKey sameProjection
      | inr rightTerminal =>
          have impossible := terminal_not_recall
            (term := term) (certificate := certificate) rightTerminal
          simp [impossible] at rightRecall
  | inr leftTerminal =>
      have impossible := terminal_not_recall
        (term := term) (certificate := certificate) leftTerminal
      simp [impossible] at leftRecall

theorem certificate_target_sound
    {term : Term} {certificate : Certificate} {carrier : List State}
    (checked : certificateBool term certificate carrier = true) :
    RecallTargetRRIOn term certificate (Reachable term certificate) := by
  simp [certificateBool] at checked
  have closed : carrierClosed term certificate carrier = true :=
    checked.1.1.1
  have targets : carrierTargetFacts term certificate carrier = true :=
    checked.2
  have finiteTargets := carrierTargetFacts_sound targets
  intro left right target leftReachable rightReachable leftRecall rightRecall
    sameKey leftTarget rightTarget
  exact finiteTargets left right target
    (reachable_recall_mem closed leftReachable leftRecall)
    (reachable_recall_mem closed rightReachable rightRecall)
    leftRecall rightRecall sameKey leftTarget rightTarget

end QalcConcrete
