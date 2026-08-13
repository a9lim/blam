import Std

/-!
# Executable qALC epoch-bearing transition kernel

This is a concrete Lean mirror of the transition surface in `kernel.py`.
Recall stores an injective code of its exact predecessor fibre in an unbounded
epoch coordinate, so the transition table itself is injective on recall rows;
no finite-carrier RRI side condition is part of the machine definition.

The representation is typed enough to make every constructor unambiguous but
still admits the raw structural states on which the Python kernel is defined.
Nested logged-position slices use a mutually inductive list solely so Lean can
derive executable equality and ordering without an axiom.
-/

namespace QalcConcrete

inductive GateName where
  | h
  | t
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive PathStep where
  | fn
  | arg
  | body
  deriving Repr, DecidableEq, BEq, Ord

abbrev Path := List PathStep

inductive Direction where
  | down
  | up
  deriving Repr, DecidableEq, BEq, Ord

inductive Term where
  | var (index : Nat)
  | lam (body : Term)
  | app (fn arg : Term)
  | gate (name : GateName)
  deriving Repr, DecidableEq, BEq

/-- Unbounded recall provenance.  Every node is exactly the predecessor
fibre coordinate discarded by the old idempotent frame insertion. -/
inductive Epoch where
  | fresh
  | recalledAbsent (ticket : Epoch)
  | recalledPresent (ticket oldFrame : Epoch)
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

mutual
  inductive Entry where
    | bullet
    | lp (occurrence : Path) (slice : Entries)
    | gam (gate : GateName)
    | mu (gate : GateName)
    | ans (gate : GateName) (bit : Bool)
    | alpha (gate : GateName) (inst : Entry) (bit : Bool) (epoch : Epoch)
    | rho
    deriving Repr, Inhabited

  inductive Entries where
    | nil
    | cons (head : Entry) (tail : Entries)
    deriving Repr, Inhabited
end

def compareThen (first : Ordering) (rest : Unit → Ordering) : Ordering :=
  match first with
  | .eq => rest ()
  | other => other

mutual
  def entryBEq : Entry → Entry → Bool
    | .bullet, .bullet => true
    | .lp path slice, .lp otherPath otherSlice =>
        decide (path = otherPath) && entriesBEq slice otherSlice
    | .gam gate, .gam other => decide (gate = other)
    | .mu gate, .mu other => decide (gate = other)
    | .ans gate bit, .ans otherGate otherBit =>
        decide (gate = otherGate) && decide (bit = otherBit)
    | .alpha gate inst bit epoch,
        .alpha otherGate otherInst otherBit otherEpoch =>
        decide (gate = otherGate) && entryBEq inst otherInst &&
          decide (bit = otherBit) && decide (epoch = otherEpoch)
    | .rho, .rho => true
    | _, _ => false

  def entriesBEq : Entries → Entries → Bool
    | .nil, .nil => true
    | .cons head tail, .cons otherHead otherTail =>
        entryBEq head otherHead && entriesBEq tail otherTail
    | _, _ => false
end

mutual
  theorem entryBEq_refl : (entry : Entry) → entryBEq entry entry = true
    | .bullet => rfl
    | .lp path slice => by simp [entryBEq, entriesBEq_refl slice]
    | .gam gate => by simp [entryBEq]
    | .mu gate => by simp [entryBEq]
    | .ans gate bit => by simp [entryBEq]
    | .alpha gate inst bit epoch => by
        simp [entryBEq, entryBEq_refl inst]
    | .rho => rfl

  theorem entriesBEq_refl : (entries : Entries) →
      entriesBEq entries entries = true
    | .nil => rfl
    | .cons head tail => by
        simp [entriesBEq, entryBEq_refl head, entriesBEq_refl tail]
end

mutual
  theorem entry_eq_of_beq : {left right : Entry} →
      entryBEq left right = true → left = right
    | .bullet, .bullet, _ => rfl
    | .bullet, .lp _ _, h => by simp [entryBEq] at h
    | .bullet, .gam _, h => by simp [entryBEq] at h
    | .bullet, .mu _, h => by simp [entryBEq] at h
    | .bullet, .ans _ _, h => by simp [entryBEq] at h
    | .bullet, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .bullet, .rho, h => by simp [entryBEq] at h
    | .lp _ _, .bullet, h => by simp [entryBEq] at h
    | .lp path slice, .lp otherPath otherSlice, h => by
        simp [entryBEq] at h
        rcases h with ⟨samePath, sameSlice⟩
        cases samePath
        cases entries_eq_of_beq sameSlice
        rfl
    | .lp _ _, .gam _, h => by simp [entryBEq] at h
    | .lp _ _, .mu _, h => by simp [entryBEq] at h
    | .lp _ _, .ans _ _, h => by simp [entryBEq] at h
    | .lp _ _, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .lp _ _, .rho, h => by simp [entryBEq] at h
    | .gam _, .bullet, h => by simp [entryBEq] at h
    | .gam _, .lp _ _, h => by simp [entryBEq] at h
    | .gam gate, .gam other, h => by simp [entryBEq] at h; cases h; rfl
    | .gam _, .mu _, h => by simp [entryBEq] at h
    | .gam _, .ans _ _, h => by simp [entryBEq] at h
    | .gam _, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .gam _, .rho, h => by simp [entryBEq] at h
    | .mu _, .bullet, h => by simp [entryBEq] at h
    | .mu _, .lp _ _, h => by simp [entryBEq] at h
    | .mu _, .gam _, h => by simp [entryBEq] at h
    | .mu gate, .mu other, h => by simp [entryBEq] at h; cases h; rfl
    | .mu _, .ans _ _, h => by simp [entryBEq] at h
    | .mu _, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .mu _, .rho, h => by simp [entryBEq] at h
    | .ans _ _, .bullet, h => by simp [entryBEq] at h
    | .ans _ _, .lp _ _, h => by simp [entryBEq] at h
    | .ans _ _, .gam _, h => by simp [entryBEq] at h
    | .ans _ _, .mu _, h => by simp [entryBEq] at h
    | .ans gate bit, .ans otherGate otherBit, h => by
        simp [entryBEq] at h
        rcases h with ⟨sameGate, sameBit⟩
        cases sameGate; cases sameBit; rfl
    | .ans _ _, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .ans _ _, .rho, h => by simp [entryBEq] at h
    | .alpha _ _ _ _, .bullet, h => by simp [entryBEq] at h
    | .alpha _ _ _ _, .lp _ _, h => by simp [entryBEq] at h
    | .alpha _ _ _ _, .gam _, h => by simp [entryBEq] at h
    | .alpha _ _ _ _, .mu _, h => by simp [entryBEq] at h
    | .alpha _ _ _ _, .ans _ _, h => by simp [entryBEq] at h
    | .alpha gate inst bit epoch,
        .alpha otherGate otherInst otherBit otherEpoch, h => by
        simp [entryBEq] at h
        rcases h with ⟨⟨⟨sameGate, sameInst⟩, sameBit⟩, sameEpoch⟩
        subst otherGate
        have sameInstEq := entry_eq_of_beq sameInst
        subst otherInst
        subst otherBit
        subst otherEpoch
        rfl
    | .alpha _ _ _ _, .rho, h => by simp [entryBEq] at h
    | .rho, .bullet, h => by simp [entryBEq] at h
    | .rho, .lp _ _, h => by simp [entryBEq] at h
    | .rho, .gam _, h => by simp [entryBEq] at h
    | .rho, .mu _, h => by simp [entryBEq] at h
    | .rho, .ans _ _, h => by simp [entryBEq] at h
    | .rho, .alpha _ _ _ _, h => by simp [entryBEq] at h
    | .rho, .rho, _ => rfl

  theorem entries_eq_of_beq : {left right : Entries} →
      entriesBEq left right = true → left = right
    | .nil, .nil, _ => rfl
    | .nil, .cons _ _, h => by simp [entriesBEq] at h
    | .cons _ _, .nil, h => by simp [entriesBEq] at h
    | .cons head tail, .cons otherHead otherTail, h => by
        simp [entriesBEq] at h
        rcases h with ⟨sameHead, sameTail⟩
        cases entry_eq_of_beq sameHead
        cases entries_eq_of_beq sameTail
        rfl
end

def entryDecEq (left right : Entry) : Decidable (left = right) :=
  if h : entryBEq left right = true then .isTrue (entry_eq_of_beq h)
  else .isFalse fun same => h (same ▸ entryBEq_refl left)

def entriesDecEq (left right : Entries) : Decidable (left = right) :=
  if h : entriesBEq left right = true then .isTrue (entries_eq_of_beq h)
  else .isFalse fun same => h (same ▸ entriesBEq_refl left)

instance : BEq Entry := ⟨entryBEq⟩
instance : BEq Entries := ⟨entriesBEq⟩
instance : ReflBEq Entry := ⟨entryBEq_refl _⟩
instance : LawfulBEq Entry := ⟨entry_eq_of_beq⟩
instance : ReflBEq Entries := ⟨entriesBEq_refl _⟩
instance : LawfulBEq Entries := ⟨entries_eq_of_beq⟩
instance : DecidableEq Entry := entryDecEq
instance : DecidableEq Entries := entriesDecEq

mutual
  def entryCompare : Entry → Entry → Ordering
    | .bullet, .bullet => .eq
    | .bullet, _ => .lt
    | _, .bullet => .gt
    | .lp path slice, .lp otherPath otherSlice =>
        compareThen (compare path otherPath)
          (fun _ => entriesCompare slice otherSlice)
    | .lp _ _, _ => .lt
    | _, .lp _ _ => .gt
    | .gam gate, .gam other => compare gate other
    | .gam _, _ => .lt
    | _, .gam _ => .gt
    | .mu gate, .mu other => compare gate other
    | .mu _, _ => .lt
    | _, .mu _ => .gt
    | .ans gate bit, .ans otherGate otherBit =>
        compareThen (compare gate otherGate) (fun _ => compare bit otherBit)
    | .ans _ _, _ => .lt
    | _, .ans _ _ => .gt
    | .alpha gate inst bit epoch,
        .alpha otherGate otherInst otherBit otherEpoch =>
        compareThen (compare gate otherGate) (fun _ =>
          compareThen (entryCompare inst otherInst)
            (fun _ => compareThen (compare bit otherBit)
              (fun _ => compare epoch otherEpoch)))
    | .alpha _ _ _ _, _ => .lt
    | _, .alpha _ _ _ _ => .gt
    | .rho, .rho => .eq

  def entriesCompare : Entries → Entries → Ordering
    | .nil, .nil => .eq
    | .nil, .cons _ _ => .lt
    | .cons _ _, .nil => .gt
    | .cons head tail, .cons otherHead otherTail =>
        compareThen (entryCompare head otherHead)
          (fun _ => entriesCompare tail otherTail)
end

instance : Ord Entry := ⟨entryCompare⟩
instance : Ord Entries := ⟨entriesCompare⟩

namespace Entries

def toList : Entries → List Entry
  | .nil => []
  | .cons head tail => head :: toList tail

def ofList : List Entry → Entries
  | [] => .nil
  | head :: tail => .cons head (ofList tail)

@[simp] theorem toList_ofList (xs : List Entry) :
    toList (ofList xs) = xs := by
  induction xs with
  | nil => rfl
  | cons head tail ih => simp [ofList, toList, ih]

end Entries

structure Key where
  gate : GateName
  inst : Entry
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

structure Frame where
  key : Key
  bit : Bool
  epoch : Epoch
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive Store where
  | decoded (key : Key)
  | bundle (keys : List Key)
  | burial (cargo : Entry)
  | suppressed (key : Key)
  deriving Repr, DecidableEq, BEq

structure VirtualBoolean where
  gate : GateName
  bit : Bool
  phase : Nat
  deriving Repr, DecidableEq, BEq

structure Run where
  path : Path
  direction : Direction
  log : List Entry
  tape : List Entry
  vb : Option VirtualBoolean := none
  frames : List Frame := []
  storage : List Store := []
  deriving Repr, DecidableEq, BEq

inductive TerminalKind where
  | halt0
  | halt1
  | haltI
  | err
  deriving Repr, DecidableEq, BEq

inductive State where
  | run (state : Run)
  | runDone (kind : TerminalKind) (residue : Run)
  | done (kind : TerminalKind) (residue : Run) (tick : Nat)
  deriving Repr, DecidableEq, BEq

structure Edge where
  sign : Int
  denominatorPower : Nat
  omegaPower : Fin 8
  rule : String
  target : State
  deriving Repr, DecidableEq, BEq

/-! A missing path is uncertified; a present path with an empty key list is a
certified cargo-only fibre.  This is the dictionary-shaped certificate used by
every admitted v1.42 sector. -/
abbrev Certificate := List (Path × List Key)

def certificateLookup (certificate : Certificate) (path : Path) :
    Option (List Key) :=
  match certificate.find? (fun entry => entry.1 == path) with
  | some entry => some entry.2
  | none => none

def subterm? : Term → Path → Option Term
  | term, [] => some term
  | .app fn _, .fn :: rest => subterm? fn rest
  | .app _ arg, .arg :: rest => subterm? arg rest
  | .lam body, .body :: rest => subterm? body rest
  | _, _ => none

def level (path : Path) : Nat :=
  path.countP (· == .arg)

def binderCandidates (term : Term) (occurrence : Path) : List Path :=
  (List.range occurrence.length).reverse.filterMap fun n =>
    let parent := occurrence.take n
    match occurrence[n]?, subterm? term parent with
    | some .body, some (.lam _) => some parent
    | _, _ => none

def binderPath? (term : Term) (occurrence : Path) : Option Path := do
  let .var index ← subterm? term occurrence | none
  if index == 0 then none else (binderCandidates term occurrence)[index - 1]?

def isLP : Entry → Bool
  | .lp _ _ => true
  | _ => false

def isGam : Entry → Bool
  | .gam _ => true
  | _ => false

def isMu : Entry → Bool
  | .mu _ => true
  | _ => false

def isAns : Entry → Bool
  | .ans _ _ => true
  | _ => false

def isAlpha : Entry → Bool
  | .alpha _ _ _ _ => true
  | _ => false

def isRho : Entry → Bool
  | .rho => true
  | _ => false

def lpLike (entry : Entry) : Bool :=
  isLP entry || isGam entry || isAlpha entry

def arrivalLP (entry : Entry) : Bool :=
  isLP entry || isAlpha entry

def instance? (state : Run) : Option Entry :=
  match state.log with
  | (.lp occurrence slice) :: _ => some (.lp occurrence slice)
  | _ => none

def insertFrame (frame : Frame) : List Frame → List Frame
  | [] => [frame]
  | head :: tail =>
      match compare frame head with
      | .lt => frame :: head :: tail
      | .eq => head :: tail
      | .gt => head :: insertFrame frame tail

def canonicalFrames (frames : List Frame) : List Frame :=
  frames.foldl (fun out frame => insertFrame frame out) []

def insertKey (key : Key) : List Key → List Key
  | [] => [key]
  | head :: tail =>
      match compare key head with
      | .lt => key :: head :: tail
      | .eq => head :: tail
      | .gt => head :: insertKey key tail

def canonicalKeys (keys : List Key) : List Key :=
  keys.foldl (fun out key => insertKey key out) []

def unionKeys (left right : List Key) : List Key :=
  right.foldl (fun out key => insertKey key out) (canonicalKeys left)

def eraseKeys (keys removed : List Key) : List Key :=
  (canonicalKeys keys).filter (fun key => !(removed.contains key))

mutual
  def alphaKeysLiveWork (entry : Entry) : List Key :=
    match entry with
    | .alpha gate inst _ _ => [⟨gate, inst⟩]
    | .lp _ slice => alphaKeysLiveEntries slice
    | _ => []

  def alphaKeysLiveEntries (entries : Entries) : List Key :=
    match entries with
    | .nil => []
    | .cons head tail =>
        unionKeys (alphaKeysLiveWork head) (alphaKeysLiveEntries tail)
end

def bitfreeKeys (storage : List Store) : List Key :=
  storage.foldl (fun out item =>
    match item with
    | .decoded key => insertKey key out
    | .bundle keys => unionKeys out keys
    | _ => out) []

def deadKeys (storage : List Store) : List Key :=
  storage.foldl (fun out item =>
    match item with
    | .decoded key => insertKey key out
    | .bundle keys => unionKeys out keys
    | .burial cargo => unionKeys out (alphaKeysLiveWork cargo)
    | .suppressed _ => out) []

mutual
  def alphaBitPairs (entry : Entry) : List (Key × Bool) :=
    match entry with
    | .alpha gate inst bit _ => [(⟨gate, inst⟩, bit)]
    | .lp _ slice => alphaBitPairsEntries slice
    | _ => []

  def alphaBitPairsEntries (entries : Entries) : List (Key × Bool) :=
    match entries with
    | .nil => []
    | .cons head tail => alphaBitPairs head ++ alphaBitPairsEntries tail
end

def hasBitConflict (pairs : List (Key × Bool)) : Bool :=
  pairs.any fun left =>
    pairs.any fun right => left.1 == right.1 && left.2 != right.2

def classifyArrival : List Entry → Option (Bool × Entry × List Entry)
  | cargo :: .mu _ :: tail =>
      if arrivalLP cargo then some (false, cargo, tail) else none
  | .bullet :: cargo :: .mu _ :: tail =>
      if arrivalLP cargo then some (true, cargo, tail) else none
  | _ => none

def classifyRoot : List Entry → Option Bool
  | cargo :: .rho :: _ => if arrivalLP cargo then some false else none
  | .bullet :: cargo :: .rho :: _ =>
      if arrivalLP cargo then some true else none
  | _ => none

def snapshot (state : Run) (kind : TerminalKind) : State :=
  .runDone kind state

def deterministic (rule : String) (target : State) : List Edge :=
  [⟨1, 0, 0, rule, target⟩]

def runWith (source : Run) (path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean := none) : Run :=
  { path := path
    direction := direction
    log := log
    tape := tape
    vb := vb
    frames := source.frames
    storage := source.storage }

def gateOfGam? : Entry → Option GateName
  | .gam gate => some gate
  | _ => none

def gateOfMu? : Entry → Option GateName
  | .mu gate => some gate
  | _ => none

def countBullets : List Entry → Nat
  | .bullet :: tail => countBullets tail + 1
  | _ => 0

def bitNat : Bool → Nat
  | false => 0
  | true => 1

def recallEpoch (ticketEpoch : Epoch) (oldFrameEpoch : Option Epoch) : Epoch :=
  match oldFrameEpoch with
  | none => .recalledAbsent ticketEpoch
  | some oldFrame => .recalledPresent ticketEpoch oldFrame

def terminalRule (source : Run) (rule : String) (kind : TerminalKind) :
    List Edge :=
  deterministic rule (snapshot source kind)

def entryKeys (entries : List Entry) : List Key :=
  entries.foldl (fun out entry => unionKeys out (alphaKeysLiveWork entry)) []

def frameBitPairs (frames : List Frame) : List (Key × Bool) :=
  frames.map fun frame => (frame.key, frame.bit)

def sameKeyFrames (frames : List Frame) (key : Key) : List Frame :=
  frames.filter (fun frame => frame.key == key)

def hasBurial (storage : List Store) (key : Key) : Bool :=
  storage.any fun item =>
    match item with
    | .burial cargo => (alphaKeysLiveWork cargo).contains key
    | _ => false

def fireTargets (source : Run) (gate : GateName) (slot : Bool)
    (tail : List Entry) (frames : List Frame) (storage : List Store) :
    List Edge :=
  let answer (bit : Bool) : State :=
    .run { path := source.path
           direction := .up
           log := source.log
           tape := .ans gate bit :: tail
           vb := none
           frames := frames
           storage := storage }
  match gate with
  | .t =>
      if slot then
        [⟨1, 0, 1, "fire-t1", answer true⟩]
      else
        [⟨1, 0, 0, "fire-t0", answer false⟩]
  | .h =>
      if slot then
        [⟨1, 1, 0, "fire-h", answer false⟩,
         ⟨-1, 1, 0, "fire-h", answer true⟩]
      else
        [⟨1, 1, 0, "fire-h", answer false⟩,
         ⟨1, 1, 0, "fire-h", answer true⟩]

def stepRun (term : Term) (source : Run)
    (certificate : Certificate) : List Edge :=
  let run := fun path direction log tape vb =>
    State.run (runWith source path direction log tape vb)
  let err := fun rule => terminalRule source rule .err

  -- Virtual-boolean answer transport is disjoint from every syntax row.
  match source.vb with
  | some virtual =>
      if virtual.phase < 2 then
        match source.tape with
        | .bullet :: tail =>
            deterministic "vb2"
              (run source.path .down source.log tail
                (some { virtual with phase := virtual.phase + 1 }))
        | .rho :: _ =>
            terminalRule source "rootval"
              (if virtual.bit then .halt1 else .halt0)
        | .mu _ :: _ => err "verr"
        | _ => err "stuck-vb"
      else
        match instance? source with
        | none => err "no-instance"
        | some inst =>
            let emitted :=
              List.replicate (bitNat virtual.bit + 1) Entry.bullet ++
                [.alpha virtual.gate inst virtual.bit .fresh]
            deterministic "vvar"
              (run source.path .up source.log (emitted ++ source.tape) none)
  | none =>
    match subterm? term source.path with
    | none => []
    | some current =>

      -- Gate leaf rows.
      match current, source.direction with
      | .gate leaf, .down =>
        match source.tape with
        | [] => []
        | .bullet :: _ =>
          match instance? source with
          | none => err "no-instance"
          | some inst =>
            let bulletCount := countBullets source.tape
            let next := source.tape[bulletCount]?
            let key : Key := ⟨leaf, inst⟩
            let bitfree := bitfreeKeys source.storage
            let dead := deadKeys source.storage
            match next with
            | some (.alpha ticketGate ticketInst ticketBit ticketEpoch) =>
              if ticketGate == leaf then
                if ticketInst != inst then err "alien-ticket"
                else if bitfree.contains key then err "key-alias"
                else if bulletCount == bitNat ticketBit + 1 then
                  let matching := sameKeyFrames source.frames key
                  if matching.any (fun frame => frame.bit != ticketBit) ||
                      1 < matching.length then
                    err "frame-conflict"
                  else
                    let oldEpoch := matching.head?.map (·.epoch)
                    let frame : Frame :=
                      ⟨key, ticketBit, recallEpoch ticketEpoch oldEpoch⟩
                    let frames := insertFrame frame
                      (source.frames.filter (fun existing => existing.key != key))
                    deterministic "recall"
                      (.run { path := source.path
                              direction := .up
                              log := source.log
                              tape := [.bullet, .bullet, .bullet] ++
                                source.tape.drop (bulletCount + 1)
                              vb := none
                              frames := frames
                              storage := source.storage })
                else err "recall-err"
              else
                let matching := sameKeyFrames source.frames key
                if !matching.isEmpty && bitfree.contains key then err "key-alias"
                else if !matching.isEmpty then
                  if matching.any (fun left =>
                      matching.any (fun right => left.bit != right.bit)) then
                    err "frame-conflict"
                  else if 3 ≤ bulletCount then
                    let replayBit := matching.head!.bit
                    let emitted :=
                      List.replicate (bitNat replayBit + 1) Entry.bullet ++
                        [.alpha leaf inst replayBit matching.head!.epoch]
                    deterministic "replay"
                      (run source.path .up source.log
                        (emitted ++ source.tape.drop 3) none)
                  else err "replay-err"
                else if dead.contains key then err "refire"
                else deterministic "call"
                  (run source.path .up source.log
                    ([.gam leaf, .bullet, .bullet, .mu leaf] ++
                      source.tape.drop 1) none)
            | _ =>
              let matching := sameKeyFrames source.frames key
              if !matching.isEmpty && bitfree.contains key then err "key-alias"
              else if !matching.isEmpty then
                if matching.any (fun left =>
                    matching.any (fun right => left.bit != right.bit)) then
                  err "frame-conflict"
                else if 3 ≤ bulletCount then
                  let replayBit := matching.head!.bit
                  let emitted :=
                    List.replicate (bitNat replayBit + 1) Entry.bullet ++
                      [.alpha leaf inst replayBit matching.head!.epoch]
                  deterministic "replay"
                    (run source.path .up source.log
                      (emitted ++ source.tape.drop 3) none)
                else err "replay-err"
              else if dead.contains key then err "refire"
              else deterministic "call"
                (run source.path .up source.log
                  ([.gam leaf, .bullet, .bullet, .mu leaf] ++
                    source.tape.drop 1) none)
        | .gam gamma :: .ans answer answerBit :: tail =>
            if gamma == answer && answer == leaf then
              deterministic "anshead"
                (run source.path .down source.log tail
                  (some ⟨answer, answerBit, 0⟩))
            else err "species-ans"
        | .rho :: _ => err "rootneutral"
        | .mu _ :: _ => err "species-neutral"
        | _ => err "species-leaf"

      -- Gate firing boundary, including certified erasure and Hadamard signs.
      | _, .up =>
        if source.path.getLast? == some .arg &&
            (source.log.head?.bind gateOfGam?).isSome then
          let gate := (source.log.head?.bind gateOfGam?).get!
          match classifyArrival source.tape with
          | some (slot, cargo, tail) =>
            let muIndex := if slot then 2 else 1
            match source.tape[muIndex]?.bind gateOfMu? with
            | some probeGate =>
              if probeGate != gate then err "species-mu"
              else
                match cargo with
                | .alpha cargoGate _ _ _ =>
                    let pairs := alphaBitPairs cargo ++
                      frameBitPairs source.frames
                    if hasBitConflict pairs then err "key-alias"
                    else
                      match certificateLookup certificate source.path with
                      | some popKeys =>
                        let popped := source.frames.filter
                          (fun frame => popKeys.contains frame.key)
                        let retained := source.frames.filter
                          (fun frame => !(popKeys.contains frame.key))
                        if popped.any (fun frame => frame.bit != slot) then
                          err "pop-err"
                        else
                          let initialDead := unionKeys
                            (alphaKeysLiveWork cargo)
                            (popped.map (·.key))
                          let survive := unionKeys
                            (retained.map (·.key))
                            (unionKeys
                              (source.storage.foldl (fun out item =>
                                match item with
                                | .burial buried =>
                                    unionKeys out (alphaKeysLiveWork buried)
                                | _ => out) [])
                              (unionKeys (entryKeys tail)
                                (entryKeys source.log)))
                          let deadBundle := eraseKeys initialDead survive
                          fireTargets source gate slot tail retained
                            (.bundle deadBundle :: source.storage)
                      | none =>
                        let key : Key := ⟨cargoGate,
                          match cargo with
                          | .alpha _ inst _ _ => inst
                          | _ => cargo⟩
                        let storage :=
                          if cargoBitMatches cargo slot then
                            if !(sameKeyFrames source.frames key).isEmpty ||
                                hasBurial source.storage key then
                              Store.suppressed key :: source.storage
                            else Store.decoded key :: source.storage
                          else Store.burial cargo :: source.storage
                        fireTargets source gate slot tail source.frames storage
                | _ =>
                  let pairs := alphaBitPairs cargo ++ frameBitPairs source.frames
                  if hasBitConflict pairs then err "key-alias"
                  else
                    match certificateLookup certificate source.path with
                    | some popKeys =>
                      let popped := source.frames.filter
                        (fun frame => popKeys.contains frame.key)
                      let retained := source.frames.filter
                        (fun frame => !(popKeys.contains frame.key))
                      if popped.any (fun frame => frame.bit != slot) then
                        err "pop-err"
                      else
                        let initialDead := unionKeys
                          (alphaKeysLiveWork cargo) (popped.map (·.key))
                        let survive := unionKeys
                          (retained.map (·.key))
                          (unionKeys
                            (source.storage.foldl (fun out item =>
                              match item with
                              | .burial buried =>
                                  unionKeys out (alphaKeysLiveWork buried)
                              | _ => out) [])
                            (unionKeys (entryKeys tail) (entryKeys source.log)))
                        fireTargets source gate slot tail retained
                          (.bundle (eraseKeys initialDead survive) ::
                            source.storage)
                    | none => fireTargets source gate slot tail source.frames
                        (.burial cargo :: source.storage)
            | none => err "species-mu"
          | none =>
            match source.tape with
            | .ans _ _ :: _ =>
                let gamma := source.log.head!
                deterministic "bt1g"
                  (run (source.path.dropLast ++ [.fn]) .down
                    source.log.tail! (gamma :: source.tape) none)
            | _ => err "species"
        else if source.path.isEmpty then
          match classifyRoot source.tape with
          | some bit => terminalRule source "rootdone"
              (if bit then .halt1 else .halt0)
          | none =>
            match source.tape with
            | cargo :: .bullet :: .rho :: _ =>
                if arrivalLP cargo then terminalRule source "rootdone" .haltI
                else err "rooterr"
            | _ => err "rooterr"
        else
          match source.path.getLast? with
          | some .fn =>
            match source.tape with
            | .bullet :: tail => deterministic "b3"
                (run source.path.dropLast .up source.log tail none)
            | head :: tail =>
                if lpLike head then deterministic "arg"
                  (run (source.path.dropLast ++ [.arg]) .down
                    (head :: source.log) tail none)
                else err "species-transport"
            | [] => []
          | some .body => deterministic "b4"
              (run source.path.dropLast .up source.log
                (.bullet :: source.tape) none)
          | some .arg =>
            match source.log with
            | .gam _ :: _ => []
            | head :: tail => deterministic "bt1"
                (run (source.path.dropLast ++ [.fn]) .down tail
                  (head :: source.tape) none)
            | [] => []
          | none => []

      -- Ordinary downward λIAM rows.
      | .app _ _, .down => deterministic "b1"
          (run (source.path ++ [.fn]) .down source.log
            (.bullet :: source.tape) none)
      | .lam _, .down =>
          match source.tape with
          | .bullet :: tail => deterministic "b2"
              (run (source.path ++ [.body]) .down source.log tail none)
          | .lp occurrence slice :: tail =>
              if binderPath? term occurrence == some source.path then
                deterministic "bt2"
                  (run occurrence .up (slice.toList ++ source.log) tail none)
              else []
          | .mu _ :: _ => err "shape-err"
          | .rho :: _ => err "shape-err"
          | .gam _ :: _ => err "species-binder"
          | .ans _ _ :: _ => err "species-binder"
          | .alpha _ _ _ _ :: _ => err "species-binder"
          | _ => []
      | .var _, .down =>
          match binderPath? term source.path with
          | none => []
          | some binder =>
              let depth := level source.path - level binder
              let logged := Entry.lp source.path
                (Entries.ofList (source.log.take depth))
              deterministic "var"
                (run binder .up (source.log.drop depth)
                  (logged :: source.tape) none)

where
  cargoBitMatches (cargo : Entry) (slot : Bool) : Bool :=
    match cargo with
    | .alpha _ _ bit _ => bit == slot
    | _ => false

def step (term : Term) (state : State)
    (certificate : Certificate) : List Edge :=
  match state with
  | .done kind residue tick =>
      deterministic "tick" (.done kind residue (tick + 1))
  | .runDone kind residue => deterministic "halt" (.done kind residue 0)
  | .run source => stepRun term source certificate

def initial : State :=
  .run { path := [], direction := .down, log := [],
         tape := [.bullet, .bullet, .rho] }

def isTerminal : State → Bool
  | .run _ => false
  | _ => true

def isRecallSource (term : Term) (certificate : Certificate)
    (state : State) : Bool :=
  (step term state certificate).any (fun edge => edge.rule == "recall")

end QalcConcrete
