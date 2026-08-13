import Gate2PhysicalSchedule
import QalcRule

/-!
# Executable composed qALC machine

This is the Lean twin of `kernel.py` + `readback.py` +
`gate2_cnot_shadow.py`.  Unlike the compiler schedule theorem, the transition
function below is defined on the complete raw state language; compiler proofs
may specialize it, but no compiler row is postulated.

The Python/Lean fidelity boundary is differential execution over complete
exported carriers.  All semantic theorems after that boundary are about this
executable function.
-/

namespace QalcComposedMachine

open QalcFiniteGram

inductive GateName where
  | h | t | c
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive Port where
  | first | second
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive PathStep where
  -- Constructor order matches Python's lexical `repr` order a < b < f.
  | arg | body | fn
  deriving Repr, DecidableEq, Ord, Inhabited

instance : BEq PathStep where
  beq
    | .arg, .arg | .body, .body | .fn, .fn => true
    | _, _ => false

instance : ReflBEq PathStep where
  rfl := by intro step; cases step <;> rfl

instance : LawfulBEq PathStep where
  eq_of_beq := by
    intro left right equal
    cases left <;> cases right <;> simp_all [BEq.beq]

abbrev Path := List PathStep

inductive Direction where
  | down | up
  deriving Repr, DecidableEq, BEq, Inhabited

inductive Epoch where
  | fresh
  | recalledAbsent (ticket : Epoch)
  | recalledPresent (ticket oldFrame : Epoch)
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive CStageKind where
  | park | fire | deliver | answerPort
  deriving Repr, DecidableEq, BEq, Ord, Inhabited

inductive EntryTag where
  | bullet | appBullet | lp | gam | cgam | mu | cmu | ans | alpha | rho
  | rb | rbl | sourceIdentity | virtualIdentity
  deriving Repr, DecidableEq, BEq, Inhabited

/-! `Entry` is a typed S-expression rather than one constructor per Python
tuple.  This keeps equality executable for arbitrarily nested logged-position
slices while smart constructors/destructors below retain the exact raw tuple
grammar. -/
mutual
  inductive Entry where
    | mk (tag : EntryTag) (nats : List Nat) (bools : List Bool)
        (gates : List GateName) (ports : List (Option Port))
        (paths : List Path) (epochs : List Epoch) (children : Entries)
        (pathLists : List (List Path))
    deriving Repr

  inductive Entries where
    | nil
    | cons (head : Entry) (tail : Entries)
    deriving Repr
end

inductive Term where
  | var (index : Nat)
  | lam (body : Term)
  | app (fn arg : Term)
  | gate (name : GateName)
  deriving Repr, DecidableEq, Inhabited

mutual
  def entryBEq : Entry → Entry → Bool
    | .mk tag nats bools gates ports paths epochs children pathLists,
      .mk otherTag otherNats otherBools otherGates otherPorts otherPaths
        otherEpochs otherChildren otherPathLists =>
      decide (tag = otherTag) && decide (nats = otherNats) &&
        decide (bools = otherBools) && decide (gates = otherGates) &&
        decide (ports = otherPorts) && decide (paths = otherPaths) &&
        decide (epochs = otherEpochs) && entriesBEq children otherChildren &&
        decide (pathLists = otherPathLists)

  def entriesBEq : Entries → Entries → Bool
    | .nil, .nil => true
    | .cons head tail, .cons otherHead otherTail =>
        entryBEq head otherHead && entriesBEq tail otherTail
    | _, _ => false
end


mutual
  theorem entryBEq_refl : (entry : Entry) → entryBEq entry entry = true
    | .mk tag nats bools gates ports paths epochs children pathLists => by
        simp [entryBEq, entriesBEq_refl children]

  theorem entriesBEq_refl : (entries : Entries) →
      entriesBEq entries entries = true
    | .nil => rfl
    | .cons head tail => by
        simp [entriesBEq, entryBEq_refl head, entriesBEq_refl tail]
end

mutual
  theorem entry_eq_of_beq : {left right : Entry} →
      entryBEq left right = true → left = right
    | .mk tag nats bools gates ports paths epochs children pathLists,
      .mk otherTag otherNats otherBools otherGates otherPorts otherPaths
        otherEpochs otherChildren otherPathLists, h => by
      simp [entryBEq] at h
      rcases h with ⟨⟨⟨⟨⟨⟨⟨⟨sameTag, sameNats⟩, sameBools⟩,
        sameGates⟩, samePorts⟩, samePaths⟩, sameEpochs⟩, sameChildren⟩,
        samePathLists⟩
      subst otherTag; subst otherNats; subst otherBools; subst otherGates
      subst otherPorts; subst otherPaths; subst otherEpochs
      subst otherPathLists
      cases entries_eq_of_beq sameChildren
      rfl

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
  if h : entryBEq left right then
    isTrue (entry_eq_of_beq h)
  else
    isFalse fun same => h (by subst right; exact entryBEq_refl left)

def entriesDecEq (left right : Entries) : Decidable (left = right) :=
  if h : entriesBEq left right then
    isTrue (entries_eq_of_beq h)
  else
    isFalse fun same => h (by subst right; exact entriesBEq_refl left)

instance : DecidableEq Entry := entryDecEq
instance : BEq Entry where beq := entryBEq
instance : ReflBEq Entry where
  rfl := by
    intro value
    exact entryBEq_refl value
instance : LawfulBEq Entry where
  eq_of_beq := entry_eq_of_beq
instance : DecidableEq Entries := entriesDecEq
instance : BEq Entries where beq := entriesBEq
instance : ReflBEq Entries where
  rfl := by
    intro value
    exact entriesBEq_refl value
instance : LawfulBEq Entries where
  eq_of_beq := entries_eq_of_beq
instance : Inhabited Entry :=
  ⟨.mk .bullet [] [] [] [] [] [] .nil []⟩
instance : Inhabited Entries := ⟨.nil⟩

namespace Entries

def toList : Entries → List Entry
  | .nil => []
  | .cons head tail => head :: toList tail

def ofList : List Entry → Entries
  | [] => .nil
  | head :: tail => .cons head (ofList tail)

@[simp] theorem toList_ofList (entries : List Entry) :
    toList (ofList entries) = entries := by
  induction entries with
  | nil => rfl
  | cons head tail ih => simp [ofList, toList, ih]

end Entries

def entry (tag : EntryTag) (nats : List Nat := [])
    (bools : List Bool := []) (gates : List GateName := [])
    (ports : List (Option Port) := []) (paths : List Path := [])
    (epochs : List Epoch := []) (children : List Entry := [])
    (pathLists : List (List Path) := []) : Entry :=
  .mk tag nats bools gates ports paths epochs (Entries.ofList children)
    pathLists

def bullet : Entry := entry .bullet
def appBullet : Entry := entry .appBullet
def lp (occurrence : Path) (slice : List Entry) : Entry :=
  entry .lp (paths := [occurrence]) (children := slice)
def gam (gate : GateName) : Entry := entry .gam (gates := [gate])
def cgam (port : Port) (invoked : Entry) (occurrence first second
    continuation : Path) : Entry :=
  entry .cgam (ports := [some port])
    (paths := [occurrence, first, second, continuation])
    (children := [invoked])
def mu (gate : GateName) : Entry := entry .mu (gates := [gate])
def cmu (port : Port) (invoked : Entry) : Entry :=
  entry .cmu (ports := [some port]) (children := [invoked])
def ans (gate : GateName) (bit : Bool) : Entry :=
  entry .ans (bools := [bit]) (gates := [gate])
def alpha (gate : GateName) (port : Option Port) (inst : Entry)
    (bit : Bool) (epoch : Epoch) : Entry :=
  entry .alpha (bools := [bit]) (gates := [gate]) (ports := [port])
    (epochs := [epoch]) (children := [inst])
def rho : Entry := entry .rho
def rb (depth : Nat) (outputPath codePath : Path)
    (pending : List Path := []) : Entry :=
  entry .rb (nats := [depth]) (paths := [outputPath, codePath])
    (pathLists := [pending])
def rbl (parentFunctionPath outputPath codePath : Path) : Entry :=
  entry .rbl (paths := [parentFunctionPath, outputPath, codePath])
def sourceIdentity (binderPath : Path) (binderLog : List Entry) : Entry :=
  entry .sourceIdentity (paths := [binderPath]) (children := binderLog)
def virtualIdentity (gate : GateName) (port : Option Port) (inst : Entry)
    (phase : Nat) (codePath : Path) : Entry :=
  entry .virtualIdentity (nats := [phase]) (gates := [gate])
    (ports := [port]) (paths := [codePath]) (children := [inst])

def asLP? : Entry → Option (Path × List Entry)
  | .mk .lp [] [] [] [] [occurrence] [] slice [] =>
      some (occurrence, Entries.toList slice)
  | _ => none

def asGam? : Entry → Option GateName
  | .mk .gam [] [] [gate] [] [] [] .nil [] => some gate
  | _ => none

def asCGam? : Entry →
    Option (Port × Entry × Path × Path × Path × Path)
  | .mk .cgam [] [] [] [some port]
      [occurrence, first, second, continuation] []
      (.cons invoked .nil) [] =>
    some (port, invoked, occurrence, first, second, continuation)
  | _ => none

def asMu? : Entry → Option GateName
  | .mk .mu [] [] [gate] [] [] [] .nil [] => some gate
  | _ => none

def asCMu? : Entry → Option (Port × Entry)
  | .mk .cmu [] [] [] [some port] [] [] (.cons invoked .nil) [] =>
      some (port, invoked)
  | _ => none

def asAns? : Entry → Option (GateName × Bool)
  | .mk .ans [] [bit] [gate] [] [] [] .nil [] => some (gate, bit)
  | _ => none

def asAlpha? : Entry → Option (GateName × Option Port × Entry × Bool × Epoch)
  | .mk .alpha [] [bit] [gate] [port] [] [epoch]
      (.cons inst .nil) [] => some (gate, port, inst, bit, epoch)
  | _ => none

def asRB? : Entry → Option (Nat × Path × Path × List Path)
  | .mk .rb [depth] [] [] [] [outputPath, codePath] [] .nil [pending] =>
      some (depth, outputPath, codePath, pending)
  | _ => none

def asRBL? : Entry → Option (Path × Path × Path)
  | .mk .rbl [] [] [] [] [parentFunctionPath, outputPath, codePath]
      [] .nil [] => some (parentFunctionPath, outputPath, codePath)
  | _ => none

def isBullet (value : Entry) : Bool := value == bullet
def isAppBullet (value : Entry) : Bool := value == appBullet
def isRho (value : Entry) : Bool := value == rho
def isLP (value : Entry) : Bool := (asLP? value).isSome
def isGam (value : Entry) : Bool := (asGam? value).isSome
def isCGam (value : Entry) : Bool := (asCGam? value).isSome
def isMu (value : Entry) : Bool := (asMu? value).isSome
def isCMu (value : Entry) : Bool := (asCMu? value).isSome
def isAns (value : Entry) : Bool := (asAns? value).isSome
def isAlpha (value : Entry) : Bool := (asAlpha? value).isSome

def lpLike (value : Entry) : Bool :=
  isLP value || isGam value || isCGam value || isAlpha value

def arrivalLP (value : Entry) : Bool := isLP value || isAlpha value

def portGate (port : Port) : GateName × Option Port := (.c, some port)

def subterm? : Term → Path → Option Term
  | term, [] => some term
  | .app fn _, .fn :: rest => subterm? fn rest
  | .app _ argument, .arg :: rest => subterm? argument rest
  | .lam body, .body :: rest => subterm? body rest
  | _, _ => none

def level (path : Path) : Nat := path.countP (· == .arg)

def binderCandidates (term : Term) (occurrence : Path) : List Path :=
  (List.range occurrence.length).reverse.filterMap fun length =>
    let parent := occurrence.take length
    match occurrence[length]?, subterm? term parent with
    | some .body, some (.lam _) => some parent
    | _, _ => none

/-! Structural implementation of the same 1-indexed de Bruijn lookup as
`binderCandidates`.  The running binder stack is nearest-first.  This avoids
constructing and filtering every path prefix and, crucially for compiler
proofs, recurses in lockstep with the immutable term and occurrence path. -/
def binderPathGo : Term → Path → Path → List Path → Option Path
  | .var index, [], _, binders =>
      if index == 0 then none else binders[index - 1]?
  | .lam body, .body :: rest, here, binders =>
      binderPathGo body rest (here ++ [.body]) (here :: binders)
  | .app fn _, .fn :: rest, here, binders =>
      binderPathGo fn rest (here ++ [.fn]) binders
  | .app _ argument, .arg :: rest, here, binders =>
      binderPathGo argument rest (here ++ [.arg]) binders
  | _, _, _, _ => none

def binderPath? (term : Term) (occurrence : Path) : Option Path :=
  binderPathGo term occurrence [] []

structure Key where
  gate : GateName
  port : Option Port
  inst : Entry
  deriving Repr, DecidableEq, BEq, Inhabited

structure Frame where
  key : Key
  bit : Bool
  epoch : Epoch
  deriving Repr, DecidableEq, BEq, Inhabited

inductive Descriptor where
  | alpha (gate : GateName) (port : Option Port) (inst : Entry)
      (epoch : Epoch)
  | logged (value : Entry)
  deriving Repr, DecidableEq

structure FrameDescriptor where
  gate : GateName
  port : Option Port
  inst : Entry
  epoch : Epoch
  deriving Repr, DecidableEq

inductive Store where
  | decoded (key : Key)
  | bundle (keys : List Key)
  | burial (cargo : Entry)
  | suppressed (key : Key)
  | cpark (invoked : Entry) (bit : Bool) (descriptor : Descriptor)
      (frames : List FrameDescriptor) (occurrence continuation : Path)
  | chistory (invoked : Entry)
      (firstDescriptor : Descriptor) (firstFrames : List FrameDescriptor)
      (secondDescriptor : Descriptor) (secondFrames : List FrameDescriptor)
      (occurrence continuation : Path)
  | cdead (port : Port) (invoked : Entry) (epoch : Epoch)
      (logged : Entry) (answered : Bool)
  | cquery (port : Port) (invoked logged : Entry)
  | cstage (kind : CStageKind)
  deriving Repr, DecidableEq

structure VirtualBoolean where
  gate : GateName
  port : Option Port
  bit : Bool
  phase : Nat
  deriving Repr, DecidableEq

structure Token where
  path : Path
  direction : Direction
  log : List Entry
  tape : List Entry
  vb : Option VirtualBoolean := none
  frames : List Frame := []
  storage : List Store := []
  deriving Repr, DecidableEq

inductive NFTree where
  | hole (armed : Bool)
  | var (index : Nat)
  | lam (body : NFTree)
  | app (fn arg : NFTree)
  | gate (name : GateName)
  deriving Repr, DecidableEq

structure BinderMark where
  outputPath : Path
  identity : Entry
  deriving Repr, DecidableEq

inductive Residue where
  | exactScope (outputPath : Path) (savedPrefix : List Entry)
  | virtualScope (outputPath : Path) (gate : GateName)
      (port : Option Port) (inst : Entry) (epoch : Epoch)
  | neutralProbe (binderPath : Path) (binderLog : List Entry)
      (loggedArgument : Entry)
  | pureScope (outputPath : Path)
  | entry (value : Entry)
  deriving Repr, DecidableEq

structure Zipper where
  tree : NFTree := .hole false
  cursor : Option Path := some []
  binders : List BinderMark := []
  residues : List Residue := []
  deriving Repr, DecidableEq

structure TerminalGarbage where
  carrier : Option Residue
  frames : List Frame
  storage : List Store
  binders : List BinderMark
  residues : List Residue
  deriving Repr, DecidableEq

inductive DoneKind where
  | halt | error (rule : String)
  deriving Repr, DecidableEq

inductive NFState where
  | run (token : Token) (zipper : Zipper)
  | runDone (kind : DoneKind) (output : Option NFTree)
      (garbage : TerminalGarbage)
  | done (kind : DoneKind) (output : Option NFTree)
      (garbage : TerminalGarbage) (tick : Nat)
  deriving Repr, DecidableEq

abbrev Rule := QalcRule.Rule

structure Edge where
  sign : Int
  denominatorPower : Nat
  omegaPower : Fin 8
  rule : Rule
  target : NFState
  deriving Repr, DecidableEq

abbrev Certificate := List (Path × List Key)

def treeAt? : NFTree → Path → Option NFTree
  | tree, [] => some tree
  | .lam body, .body :: rest => treeAt? body rest
  | .app fn _, .fn :: rest => treeAt? fn rest
  | .app _ argument, .arg :: rest => treeAt? argument rest
  | _, _ => none

def replaceTree? : NFTree → Path → NFTree → Option NFTree
  | _, [], value => some value
  | .lam body, .body :: rest, value =>
      return .lam (← replaceTree? body rest value)
  | .app fn argument, .fn :: rest, value =>
      return .app (← replaceTree? fn rest value) argument
  | .app fn argument, .arg :: rest, value =>
      return .app fn (← replaceTree? argument rest value)
  | _, _, _ => none

def holes : NFTree → Path → List Path
  | .hole _, path => [path]
  | .lam body, path => holes body (path ++ [.body])
  | .app fn argument, path =>
      holes fn (path ++ [.fn]) ++ holes argument (path ++ [.arg])
  | _, _ => []

def leadingLambdas : NFTree → Nat
  | .lam body => leadingLambdas body + 1
  | _ => 0

def canonicalBoolean? : NFTree → Option Bool
  | .lam (.lam (.var 2)) => some false
  | .lam (.lam (.var 1)) => some true
  | _ => none

def nextCursor (tree : NFTree) : Option Path := (holes tree []).head?

def fill? (zipper : Zipper) (value : NFTree) : Option Zipper := do
  let cursor ← zipper.cursor
  let .hole _ ← treeAt? zipper.tree cursor | none
  let tree ← replaceTree? zipper.tree cursor value
  return { zipper with tree := tree, cursor := nextCursor tree }

def disarm? (zipper : Zipper) : Option Zipper := do
  let cursor ← zipper.cursor
  let .hole true ← treeAt? zipper.tree cursor | none
  let tree ← replaceTree? zipper.tree cursor (.hole false)
  return { zipper with tree := tree }

def arm? (zipper : Zipper) : Option Zipper := do
  let cursor ← zipper.cursor
  let .hole false ← treeAt? zipper.tree cursor | none
  let tree ← replaceTree? zipper.tree cursor (.hole true)
  return { zipper with tree := tree }

def emitLambda? (zipper : Zipper) (identity : Entry) : Option Zipper := do
  let cursor ← zipper.cursor
  let updated ← fill? zipper (.lam (.hole false))
  return { updated with
    cursor := some (cursor ++ [.body])
    binders := updated.binders ++ [⟨cursor, identity⟩] }

def spine : NFTree → Nat → NFTree
  | head, 0 => head
  | head, arity + 1 => .app (spine head arity) (.hole true)

def spineSchedule (outputRoot : Path) (arity : Nat) : List Path :=
  (holes (spine (.var 1) arity) []).map (outputRoot ++ ·)

def replaceFirst (entries : List Entry) (old new : Entry) : Option (List Entry) :=
  match entries with
  | [] => none
  | head :: tail =>
    if head == old then some (new :: tail)
    else return head :: (← replaceFirst tail old new)

def binderIndex (zipper : Zipper) (identity : Entry) : Option Nat := do
  let cursor ← zipper.cursor
  let enclosing := zipper.binders.filter fun mark =>
    mark.outputPath.length < cursor.length &&
      cursor.take mark.outputPath.length == mark.outputPath &&
      cursor[mark.outputPath.length]? == some .body
  let found ← enclosing.reverse.findIdx? (fun mark => mark.identity == identity)
  return found + 1

def firstRB : List Entry → Option (List Entry × Entry × List Entry)
  | [] => none
  | head :: tail =>
    match asRB? head with
    | some _ => some ([], head, tail)
    | none =>
      match firstRB tail with
      | some (saved, delimiter, suffix) =>
        some (head :: saved, delimiter, suffix)
      | none => none

def rbAfterOutputBullets (tape : List Entry) :
    Option (Nat × Entry × List Entry) :=
  let count := tape.takeWhile isAppBullet |>.length
  match tape[count]? with
  | some delimiter =>
    if (asRB? delimiter).isSome then
      some (count, delimiter, tape.drop (count + 1))
    else none
  | none => none

def binderPathRank : PathStep → Nat
  | .body => 0
  | .fn => 1
  | .arg => 2

def binderPathLT : Path → Path → Bool
  | [], [] => false
  | [], _ :: _ => true
  | _ :: _, [] => false
  | left :: leftRest, right :: rightRest =>
    if binderPathRank left < binderPathRank right then true
    else if binderPathRank left > binderPathRank right then false
    else binderPathLT leftRest rightRest

def bindersCanonical : List BinderMark → Bool
  | [] | [_] => true
  | first :: second :: rest =>
    binderPathLT first.outputPath second.outputPath &&
      bindersCanonical (second :: rest)

def virtualPrefixCode (saved : List Entry) (output : NFTree)
    (outputPath codePath : Path) (binders : List BinderMark) :
    Option (GateName × Option Port × Entry × Epoch × BinderMark × BinderMark) := do
  let bit ← canonicalBoolean? output
  let answer ←
    if !bit then
      match saved with
      | [answer] => some answer
      | _ => none
    else
      match saved with
      | marker :: answer :: [] => if isAppBullet marker then some answer else none
      | _ => none
  let (gate, port, inst, answerBit, answerEpoch) ← asAlpha? answer
  if answerBit != bit then none else pure ()
  let outer : BinderMark :=
    ⟨outputPath, virtualIdentity gate port inst 0 codePath⟩
  let inner : BinderMark :=
    ⟨outputPath ++ [.body], virtualIdentity gate port inst 1 codePath⟩
  if !(binders.contains outer && binders.contains inner) then none else pure ()
  return (gate, port, inst, answerEpoch, outer, inner)

def scopeResidue (saved : List Entry) (delimiter : Entry)
    (zipper : Zipper) : Residue × List BinderMark :=
  match asRB? delimiter with
  | none => (.exactScope [] saved, zipper.binders)
  | some (_, outputPath, codePath, _) =>
    match treeAt? zipper.tree outputPath with
    | some output =>
      if saved.all isAppBullet && saved.length == leadingLambdas output then
        (.pureScope outputPath, zipper.binders)
      else
        match virtualPrefixCode saved output outputPath codePath zipper.binders with
        | some (gate, port, inst, answerEpoch, outer, inner) =>
          if bindersCanonical zipper.binders then
            (.virtualScope outputPath gate port inst answerEpoch,
              zipper.binders.filter fun mark => mark != outer && mark != inner)
          else (.exactScope outputPath saved, zipper.binders)
        | none => (.exactScope outputPath saved, zipper.binders)
    | none => (.exactScope outputPath saved, zipper.binders)

def terminalGarbage (token : Token) (delimiter : Entry) (saved : List Entry)
    (zipper : Zipper) : TerminalGarbage :=
  match asRB? delimiter with
  | none =>
    ⟨some (.exactScope [] saved), token.frames, token.storage,
      zipper.binders, zipper.residues⟩
  | some (_, outputPath, codePath, _) =>
    match virtualPrefixCode saved zipper.tree outputPath codePath zipper.binders with
    | some (gate, port, inst, answerEpoch, outer, inner) =>
      if bindersCanonical zipper.binders then
        ⟨some (.virtualScope [] gate port inst answerEpoch),
          token.frames, token.storage,
          zipper.binders.filter fun mark => mark != outer && mark != inner,
          zipper.residues⟩
      else
        ⟨some (.exactScope [] saved), token.frames, token.storage,
          zipper.binders, zipper.residues⟩
    | none =>
      let carrier :=
        if saved.all isAppBullet && saved.length == leadingLambdas zipper.tree
        then none else some (.exactScope [] saved)
      ⟨carrier, token.frames, token.storage, zipper.binders, zipper.residues⟩

def returnSuccessor? (token : Token) (zipper : Zipper) :
    Option (Token × Zipper) := do
  let (saved, delimiter, tail) ← firstRB token.tape
  let (_, outputPath, codePath, _) ← asRB? delimiter
  let subtree ← treeAt? zipper.tree outputPath
  let subtreeClosed := (holes subtree []).isEmpty
  let lambdasMatch := !(saved.all isAppBullet) ||
    leadingLambdas subtree == saved.length
  guard (token.direction == .up && token.path == codePath && subtreeClosed &&
    lambdasMatch)
  let address ← token.log.head?
  let (parentFunction, addressOutput, addressCode) ← asRBL? address
  guard (addressOutput == outputPath && addressCode == codePath &&
    !parentFunction.isEmpty && parentFunction.getLast? == some .fn &&
    !tail.isEmpty && isAppBullet tail.head!)
  let (residue, binders) := scopeResidue saved delimiter zipper
  return (
    { token with
      path := parentFunction.dropLast
      log := token.log.drop 1
      tape := tail.drop 1 },
    { zipper with
      binders := binders
      residues := zipper.residues ++ [residue] })

def instance? (token : Token) : Option Entry := do
  let logged ← token.log.head?
  if isLP logged then some logged else none

def classifyArrival : List Entry → Option (Bool × Entry × List Entry)
  | first :: second :: third :: tail =>
      if isBullet first && arrivalLP second && (isMu third || isCMu third) then
        some (true, second, tail)
      else if arrivalLP first && (isMu second || isCMu second) then
        some (false, first, third :: tail)
      else none
  | cargo :: probe :: tail =>
      if arrivalLP cargo && (isMu probe || isCMu probe) then
        some (false, cargo, tail)
      else none
  | _ => none

def classifyRoot : List Entry → Option Bool
  | first :: second :: third :: tail =>
      if isBullet first && arrivalLP second && isRho third then some true
      else if arrivalLP first && isRho second then some false
      else none
  | cargo :: root :: _ =>
      if arrivalLP cargo && isRho root then some false else none
  | _ => none

def certificateLookup (certificate : Certificate) (path : Path) :
    Option (List Key) :=
  match certificate.find? (fun item => item.1 == path) with
  | some item => some item.2
  | none => none

def bitNat : Bool → Nat
  | false => 0
  | true => 1

def countBullets : List Entry → Nat
  | head :: tail => if isBullet head then countBullets tail + 1 else 0
  | [] => 0

def recallEpoch (ticketEpoch : Epoch) (oldFrameEpoch : Option Epoch) : Epoch :=
  match oldFrameEpoch with
  | none => .recalledAbsent ticketEpoch
  | some old => .recalledPresent ticketEpoch old

def insertKey (key : Key) : List Key → List Key
  | [] => [key]
  | head :: tail =>
      if head == key then head :: tail else head :: insertKey key tail

def canonicalKeys (keys : List Key) : List Key :=
  keys.foldl (fun out key => insertKey key out) []

def unionKeys (left right : List Key) : List Key :=
  right.foldl (fun out key => insertKey key out) (canonicalKeys left)

def eraseKeys (keys removed : List Key) : List Key :=
  (canonicalKeys keys).filter (fun key => !(removed.contains key))

def frameGateRank (key : Key) : Nat :=
  match key.gate, key.port with
  | .c, some .first => 0
  | .c, some .second => 1
  | .c, none => 2
  | .h, _ => 3
  | .t, _ => 4

def frameLT (left right : Frame) : Bool :=
  if frameGateRank left.key < frameGateRank right.key then true
  else if frameGateRank left.key > frameGateRank right.key then false
  else
    match asLP? left.key.inst, asLP? right.key.inst with
    | some (leftPath, _), some (rightPath, _) =>
      if compare leftPath rightPath == Ordering.lt then true
      else if compare leftPath rightPath == Ordering.gt then false
      else if left.key.inst != right.key.inst then
        compare (reprStr left.key.inst) (reprStr right.key.inst) == Ordering.lt
      else if left.bit != right.bit then !left.bit && right.bit
      else compare left.epoch right.epoch == Ordering.lt
    | _, _ =>
      if left.key.inst != right.key.inst then
        compare (reprStr left.key.inst) (reprStr right.key.inst) == Ordering.lt
      else if left.bit != right.bit then !left.bit && right.bit
      else compare left.epoch right.epoch == Ordering.lt

def insertFrame (frame : Frame) : List Frame → List Frame
  | [] => [frame]
  | head :: tail =>
    if head == frame then head :: tail
    else if frameLT frame head then frame :: head :: tail
    else head :: insertFrame frame tail

def canonicalFrames (frames : List Frame) : List Frame :=
  frames.foldl (fun out frame => insertFrame frame out) []

mutual
  def alphaKeysLive : Entry → List Key
    | .mk .alpha [] [_] [gate] [port] [] [_]
        (.cons inst .nil) [] => [⟨gate, port, inst⟩]
    | .mk .lp [] [] [] [] [_] [] slice [] => alphaKeysEntries slice
    | _ => []

  def alphaKeysEntries : Entries → List Key
    | .nil => []
    | .cons head tail =>
        unionKeys (alphaKeysLive head) (alphaKeysEntries tail)
end

mutual
  def alphaBitPairs : Entry → List (Key × Bool)
    | .mk .alpha [] [bit] [gate] [port] [] [_]
        (.cons inst .nil) [] => [(⟨gate, port, inst⟩, bit)]
    | .mk .lp [] [] [] [] [_] [] slice [] => alphaBitPairsEntries slice
    | _ => []

  def alphaBitPairsEntries : Entries → List (Key × Bool)
    | .nil => []
    | .cons head tail => alphaBitPairs head ++ alphaBitPairsEntries tail
end

def alphaKeysLiveList (entries : List Entry) : List Key :=
  alphaKeysEntries (Entries.ofList entries)

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
    | .burial cargo => unionKeys out (alphaKeysLive cargo)
    | _ => out) []

def hasBitConflict (pairs : List (Key × Bool)) : Bool :=
  pairs.any fun left =>
    pairs.any fun right => left.1 == right.1 && left.2 != right.2

def entryKeys (entries : List Entry) : List Key :=
  entries.foldl (fun out value => unionKeys out (alphaKeysLive value)) []

def frameBitPairs (frames : List Frame) : List (Key × Bool) :=
  frames.map fun frame => (frame.key, frame.bit)

def sameKeyFrames (frames : List Frame) (key : Key) : List Frame :=
  frames.filter (fun frame => frame.key == key)

def hasBurial (storage : List Store) (key : Key) : Bool :=
  storage.any fun item =>
    match item with
    | .burial cargo => (alphaKeysLive cargo).contains key
    | _ => false

inductive KernelKind where
  | halt0 | halt1 | haltI | error (rule : String)
  deriving Repr, DecidableEq

inductive KernelState where
  | run (token : Token)
  | runDone (kind : KernelKind) (residue : Token)
  | done (kind : KernelKind) (residue : Token) (tick : Nat)
  deriving Repr, DecidableEq

structure KernelEdge where
  sign : Int
  denominatorPower : Nat
  omegaPower : Fin 8
  rule : Rule
  target : KernelState
  deriving Repr, DecidableEq

def kernelDeterministic (row : QalcRule.Row) (target : KernelState) :
    List KernelEdge :=
  [⟨1, 0, 0, .row row, target⟩]

def kernelError (source : Token) (name : String) : List KernelEdge :=
  [⟨1, 0, 0, .error name, .runDone (.error name) source⟩]

def tokenWith (source : Token) (path : Path) (direction : Direction)
    (log tape : List Entry) (vb : Option VirtualBoolean := none) : Token :=
  { path := path, direction := direction, log := log, tape := tape, vb := vb
    frames := source.frames, storage := source.storage }

def cargoBitMatches (cargo : Entry) (slot : Bool) : Bool :=
  match asAlpha? cargo with
  | some (_, _, _, bit, _) => bit == slot
  | none => false

def fireTargets (source : Token) (gate : GateName) (slot : Bool)
    (tail : List Entry) (frames : List Frame) (storage : List Store) :
    List KernelEdge :=
  let answer (bit : Bool) : KernelState :=
    .run { source with
      direction := .up
      tape := ans gate bit :: tail
      vb := none
      frames := frames
      storage := storage }
  match gate with
  | .t =>
      if slot then
        [⟨1, 0, 1, .row (.fireT true), answer true⟩]
      else
        [⟨1, 0, 0, .row (.fireT false), answer false⟩]
  | .h =>
      if slot then
        [⟨1, 1, 0, .row .fireH, answer false⟩,
         ⟨-1, 1, 0, .row .fireH, answer true⟩]
      else
        [⟨1, 1, 0, .row .fireH, answer false⟩,
         ⟨1, 1, 0, .row .fireH, answer true⟩]
  | .c => kernelError source "unintercepted-c-fire"

def kernelStepToken (term : Term) (source : Token)
    (certificate : Certificate) : List KernelEdge :=
  let run := fun path direction log tape vb =>
    KernelState.run (tokenWith source path direction log tape vb)
  let row := fun name target => kernelDeterministic name target
  let err := fun name => kernelError source name

  match source.vb with
  | some virtual =>
      if virtual.phase < 2 then
        match source.tape with
        | head :: tail =>
          if isBullet head then
            row .vb2 (run source.path .down source.log tail
              (some { virtual with phase := virtual.phase + 1 }))
          else if isRho head then
            [⟨1, 0, 0, .row .rootval,
              .runDone (if virtual.bit then .halt1 else .halt0) source⟩]
          else if isMu head || isCMu head then err "verr"
          else err "stuck-vb"
        | [] => err "stuck-vb"
      else
        match instance? source with
        | none => err "no-instance"
        | some inst =>
          let emitted := List.replicate (bitNat virtual.bit + 1) bullet ++
            [alpha virtual.gate virtual.port inst virtual.bit .fresh]
          row .vvar (run source.path .up source.log
            (emitted ++ source.tape) none)
  | none =>
    match subterm? term source.path with
    | none => err "bad-path"
    | some current =>
      match current, source.direction with
      | .gate .c, .down => err "unintercepted-c-leaf"
      | .gate leaf, .down =>
        match source.tape with
        | [] => err "empty-gate-tape"
        | first :: _ =>
          if isBullet first then
            match instance? source with
            | none => err "no-instance"
            | some inst =>
              let bulletCount := countBullets source.tape
              let next := source.tape[bulletCount]?
              let key : Key := ⟨leaf, none, inst⟩
              let bitfree := bitfreeKeys source.storage
              let dead := deadKeys source.storage
              let replayOrCall :=
                let matching := sameKeyFrames source.frames key
                if !matching.isEmpty && bitfree.contains key then
                  err "key-alias"
                else if !matching.isEmpty then
                  if matching.any (fun left =>
                      matching.any (fun right => left.bit != right.bit)) then
                    err "frame-conflict"
                  else if 3 ≤ bulletCount then
                    let replayBit := matching.head!.bit
                    let emitted := List.replicate (bitNat replayBit + 1)
                      bullet ++ [alpha leaf none inst replayBit
                        matching.head!.epoch]
                    row .replay (run source.path .up source.log
                      (emitted ++ source.tape.drop 3) none)
                  else err "replay-err"
                else if dead.contains key then err "refire"
                else row .call (run source.path .up source.log
                  ([gam leaf, bullet, bullet, mu leaf] ++
                    source.tape.drop 1) none)
              match next.bind asAlpha? with
              | some (ticketGate, ticketPort, ticketInst, ticketBit,
                  ticketEpoch) =>
                if ticketGate == leaf && ticketPort.isNone then
                  if ticketInst != inst then err "alien-ticket"
                  else if bitfree.contains key then err "key-alias"
                  else if bulletCount == bitNat ticketBit + 1 then
                    let matching := sameKeyFrames source.frames key
                    if matching.any (fun frame => frame.bit != ticketBit) ||
                        1 < matching.length then err "frame-conflict"
                    else
                      let oldEpoch := matching.head?.map (·.epoch)
                      let frame : Frame :=
                        ⟨key, ticketBit, recallEpoch ticketEpoch oldEpoch⟩
                      let frames := insertFrame frame
                        (source.frames.filter
                          (fun existing => existing.key != key))
                      row .recall (.run { source with
                        direction := .up
                        tape := [bullet, bullet, bullet] ++
                          source.tape.drop (bulletCount + 1)
                        frames := frames })
                  else err "recall-err"
                else replayOrCall
              | none => replayOrCall
          else
            match asGam? first, source.tape[1]?.bind asAns? with
            | some gamma, some (answer, answerBit) =>
              if gamma == answer && answer == leaf then
                row .anshead (run source.path .down source.log
                  (source.tape.drop 2)
                  (some ⟨answer, none, answerBit, 0⟩))
              else err "species-ans"
            | _, _ =>
              if isRho first then err "rootneutral"
              else if isMu first || isCMu first then err "species-neutral"
              else err "species-leaf"

      | _, .up =>
        let ordinaryGate := source.log.head?.bind asGam?
        if source.path.getLast? == some .arg && ordinaryGate.isSome then
          let gate := ordinaryGate.get!
          match classifyArrival source.tape with
          | none =>
            match source.tape.head?.bind asAns? with
            | some _ =>
              row .bt1g (run (source.path.dropLast ++ [.fn]) .down
                source.log.tail! (source.log.head! :: source.tape) none)
            | none => err "species"
          | some (slot, cargo, tail) =>
            let muIndex := if slot then 2 else 1
            match source.tape[muIndex]?.bind asMu? with
            | none => err "species-mu"
            | some probeGate =>
              if probeGate != gate then err "species-mu"
              else
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
                      let initialDead := unionKeys (alphaKeysLive cargo)
                        (popped.map (·.key))
                      let buried := source.storage.foldl (fun out item =>
                        match item with
                        | .burial buried =>
                          unionKeys out (alphaKeysLive buried)
                        | _ => out) []
                      let survive := unionKeys (retained.map (·.key))
                        (unionKeys buried
                          (unionKeys (entryKeys tail)
                            (entryKeys source.log)))
                      fireTargets source gate slot tail retained
                        (.bundle (eraseKeys initialDead survive) ::
                          source.storage)
                  | none =>
                    match asAlpha? cargo with
                    | some (cargoGate, cargoPort, cargoInst, _, _) =>
                      let key : Key := ⟨cargoGate, cargoPort, cargoInst⟩
                      let storage :=
                        if cargoBitMatches cargo slot then
                          if !(sameKeyFrames source.frames key).isEmpty ||
                              hasBurial source.storage key then
                            .suppressed key :: source.storage
                          else .decoded key :: source.storage
                        else .burial cargo :: source.storage
                      fireTargets source gate slot tail source.frames storage
                    | none => fireTargets source gate slot tail source.frames
                        (.burial cargo :: source.storage)
        else if source.path.isEmpty then
          match classifyRoot source.tape with
          | some bit => [⟨1, 0, 0, .row .rootdone,
              .runDone (if bit then .halt1 else .halt0) source⟩]
          | none =>
            match source.tape with
            | cargo :: middle :: root :: _ =>
              if arrivalLP cargo && isBullet middle && isRho root then
                [⟨1, 0, 0, .row .rootdone, .runDone .haltI source⟩]
              else err "rooterr"
            | _ => err "rooterr"
        else
          match source.path.getLast? with
          | some .fn =>
            match source.tape with
            | [] => err "empty-up-fn"
            | head :: tail =>
              if isBullet head then row .b3
                (run source.path.dropLast .up source.log tail none)
              else if lpLike head then row .arg
                (run (source.path.dropLast ++ [.arg]) .down
                  (head :: source.log) tail none)
              else err "species-transport"
          | some .body => row .b4
              (run source.path.dropLast .up source.log
                (bullet :: source.tape) none)
          | some .arg =>
            if source.log.head?.bind asGam? |>.isSome then
              err "unintercepted-gate-boundary"
            else
              match source.log with
              | head :: tail => row .bt1
                  (run (source.path.dropLast ++ [.fn]) .down tail
                    (head :: source.tape) none)
              | [] => err "empty-arg-log"
          | none => err "empty-path"

      | .app _ _, .down => row .b1
          (run (source.path ++ [.fn]) .down source.log
            (bullet :: source.tape) none)
      | .lam _, .down =>
        match source.tape with
        | [] => err "empty-lambda-tape"
        | head :: tail =>
          if isBullet head then row .b2
            (run (source.path ++ [.body]) .down source.log tail none)
          else
            match asLP? head with
            | some (occurrence, slice) =>
              if binderPath? term occurrence == some source.path then
                row .bt2 (run occurrence .up (slice ++ source.log) tail none)
              else err "binder-mismatch"
            | none =>
              if isMu head || isRho head then err "shape-err"
              else if isGam head || isCGam head || isAns head ||
                  isAlpha head then err "species-binder"
              else err "lambda-shape"
      | .var _, .down =>
        match binderPath? term source.path with
        | none => err "free-variable"
        | some binder =>
          let depth := level source.path - level binder
          let logged := lp source.path (source.log.take depth)
          row .var (run binder .up (source.log.drop depth)
            (logged :: source.tape) none)

def kernelStep (term : Term) (state : KernelState)
    (certificate : Certificate) : List KernelEdge :=
  match state with
  | .done kind residue tick => kernelDeterministic .tick
      (.done kind residue (tick + 1))
  | .runDone kind residue => kernelDeterministic .halt
      (.done kind residue 0)
  | .run source => kernelStepToken term source certificate

def cArguments? (term : Term) (occurrence : Path) :
    Option (Path × Path × Path) := do
  guard (3 ≤ occurrence.length && occurrence.drop (occurrence.length - 3) ==
    [.fn, .fn, .fn])
  let root := occurrence.take (occurrence.length - 3)
  let first := root ++ [.fn, .fn, .arg]
  let second := root ++ [.fn, .arg]
  let continuation := root ++ [.arg]
  let .app _ _ ← subterm? term root | none
  let .app _ _ ← subterm? term (root ++ [.fn]) | none
  let .app _ _ ← subterm? term (root ++ [.fn, .fn]) | none
  return (first, second, continuation)

def decodeInput (bit : Bool) (logged : Entry) (frames : List Frame) :
    Option (Descriptor × List FrameDescriptor × List Frame) :=
  match asAlpha? logged with
  | some (gate, port, inst, loggedBit, epoch) =>
    if loggedBit != bit then none
    else
      let key : Key := ⟨gate, port, inst⟩
      let popped := frames.filter (fun frame => frame.key == key)
      if popped.any (fun frame => frame.bit != bit) then none
      else
        let descriptors := popped.map fun frame =>
          ⟨frame.key.gate, frame.key.port, frame.key.inst, frame.epoch⟩
        let retained := frames.filter (fun frame => !(popped.contains frame))
        some (.alpha gate port inst epoch, descriptors, retained)
  | none => some (.logged logged, [], frames)

def replaceStoreAt? : List Store → Nat → Store → Option (List Store)
  | [], _, _ => none
  | _ :: tail, 0, value => some (value :: tail)
  | head :: tail, index + 1, value =>
      return head :: (← replaceStoreAt? tail index value)

def cError (source : Token) (name : String) : List KernelEdge :=
  kernelError source name

def stageRow : CStageKind → QalcRule.Row
  | .park => .parkC1
  | .fire => .fireC1
  | .deliver => .deliverC1
  | .answerPort => .answerCPort1

def finishStageRow : CStageKind → QalcRule.Row
  | .park => .parkC2
  | .fire => .fireC2
  | .deliver => .deliverC2
  | .answerPort => .answerCPort2

def splitCustom (kind : CStageKind) (edges : List KernelEdge) :
    List KernelEdge :=
  edges.map fun edge =>
    match edge.target with
    | .run target =>
      { edge with
        rule := .row (stageRow kind)
        target := .run { target with
          storage := .cstage kind :: target.storage } }
    | _ => edge

def finishCStage? (source : Token) : Option (List KernelEdge) :=
  match source.storage with
  | .cstage kind :: tail => some (kernelDeterministic (finishStageRow kind)
      (.run { source with storage := tail }))
  | _ => none

def hasPriorCInvocation (invoked : Entry) (storage : List Store) : Bool :=
  storage.any fun item =>
    match item with
    | .cpark other _ _ _ _ _ => other == invoked
    | .chistory other _ _ _ _ _ _ => other == invoked
    | _ => false

def freshCCall (term : Term) (source : Token) : List KernelEdge :=
  match instance? source with
  | none => cError source "c-no-instance"
  | some invoked =>
    match asLP? invoked with
    | none => cError source "c-no-instance"
    | some (occurrence, _) =>
      match cArguments? term occurrence with
      | none => cError source "c-arity"
      | some (first, second, continuation) =>
        if hasPriorCInvocation invoked source.storage
        then cError source "c-refire"
        else kernelDeterministic .callC (.run { source with
          direction := .up
          tape := [cgam .first invoked occurrence first second continuation,
            bullet, bullet, cmu .first invoked] ++ source.tape.drop 1
          vb := none })

def parkFirst (source : Token) (arrival : Bool × Entry × List Entry) :
    List KernelEdge :=
  let (bit, logged, tail) := arrival
  match source.log.head?.bind asCGam? with
  | none => cError source "c-marker1"
  | some (port, invoked, occurrence, first, second, continuation) =>
    if port != .first then cError source "c-marker1"
    else
      let probe := source.tape[if bit then 2 else 1]?.bind asCMu?
      if probe != some (.first, invoked) then cError source "c-species-mu1"
      else if tail.isEmpty || !isBullet tail.head! then
        cError source "c-missing-second"
      else
        match decodeInput bit logged source.frames with
        | none => cError source "c-input1-conflict"
        | some (descriptor, descriptors, retained) =>
          let parked := Store.cpark invoked bit descriptor descriptors
            occurrence continuation
          splitCustom .park (kernelDeterministic .parkC1 (.run {
            source with
            path := second
            direction := .down
            log := cgam .second invoked occurrence first second continuation ::
              source.log.drop 1
            tape := [bullet, bullet, cmu .second invoked] ++ tail.drop 1
            vb := none
            frames := retained
            storage := parked :: source.storage }))

def cparkMatches (invoked : Entry) (storage : List Store) :=
  storage.zipIdx.filterMap fun (item, index) =>
    match item with
    | .cpark other bit descriptor descriptors cpOccurrence cpContinuation =>
      if other == invoked then
        some (index, bit, descriptor, descriptors, cpOccurrence,
          cpContinuation)
      else none
    | _ => none

def fireSecond (term : Term) (source : Token)
    (arrival : Bool × Entry × List Entry) : List KernelEdge :=
  let (bit2, logged2, tail) := arrival
  match source.log.head?.bind asCGam? with
  | none => cError source "c-marker2"
  | some (port, invoked, occurrence, _first, _second, continuation) =>
    if port != .second then cError source "c-marker2"
    else
      let probe := source.tape[if bit2 then 2 else 1]?.bind asCMu?
      if probe != some (.second, invoked) then cError source "c-species-mu2"
      else
      let parked := cparkMatches invoked source.storage
        if parked.length != 1 then cError source "c-missing-park"
        else if tail.isEmpty || !isBullet tail.head! then
          cError source "c-missing-continuation"
        else
          match parked.head? with
          | none => cError source "c-missing-park"
          | some (parkedIndex, bit1, descriptor1, descriptors1,
              cpOccurrence, cpContinuation) =>
            if cpOccurrence != occurrence || cpContinuation != continuation then
              cError source "c-park-conflict"
            else
              match decodeInput bit2 logged2 source.frames with
              | none => cError source "c-input2-conflict"
              | some (descriptor2, descriptors2, retained) =>
                match subterm? term continuation,
                    subterm? term (continuation ++ [PathStep.body]) with
                | some (.lam _), some (.lam _) =>
                  let key1 : Key := ⟨.c, some .first, invoked⟩
                  let key2 : Key := ⟨.c, some .second, invoked⟩
                  let records := insertFrame
                    ⟨key2, xor bit2 bit1, .recalledAbsent .fresh⟩
                    (insertFrame ⟨key1, bit1, .recalledAbsent .fresh⟩ retained)
                  let history := Store.chistory invoked descriptor1 descriptors1
                    descriptor2 descriptors2 occurrence continuation
                  match replaceStoreAt? source.storage parkedIndex history with
                  | none => cError source "c-missing-park"
                  | some storage => splitCustom .fire
                      (kernelDeterministic .fireC1 (.run { source with
                        path := continuation
                        direction := .down
                        log := source.log.drop 1
                        tape := [bullet, bullet] ++ tail.drop 1
                        vb := none
                        frames := records
                        storage := storage }))
                | _, _ => cError source "c-continuation-shape"

def storedPortBindings (path : Path) (storage : List Store) :
    List (Entry × Port) :=
  storage.filterMap fun item =>
    match item with
    | .chistory invoked _ _ _ _ _ continuation =>
      if path == continuation then some (invoked, Port.first)
      else if path == continuation ++ [.body] then
        some (invoked, Port.second)
      else none
    | _ => none

def deliverPort (term : Term) (source : Token) :
    Option (List KernelEdge) :=
  if source.direction != .up then none
  else
    match source.tape.head?.bind asLP? with
    | none => none
    | some (occurrence, slice) =>
      if binderPath? term occurrence != some source.path then none
      else
        let bindings := storedPortBindings source.path source.storage
        if bindings.isEmpty then none
        else if bindings.length != 1 then some (cError source "c-port-conflict")
        else
          let (invoked, port) := bindings.head!
          let key : Key := ⟨.c, some port, invoked⟩
          let candidates := sameKeyFrames source.frames key
          if candidates.length != 1 then some (cError source "c-port-record")
          else
            let frame := candidates.head!
            if 3 ≤ source.tape.length && isBullet source.tape[1]! &&
                isBullet source.tape[2]! then
              let emitted := List.replicate (bitNat frame.bit) bullet ++
                [alpha .c (some port) invoked frame.bit frame.epoch]
              some (splitCustom .deliver
                (kernelDeterministic .deliverC1 (.run { source with
                  path := occurrence
                  log := slice ++ source.log
                  tape := emitted ++ source.tape.drop 3
                  vb := none
                  storage := .cquery port invoked source.tape.head! ::
                    source.storage })))
            else
              match source.tape[1]?.bind asRB? with
              | none => some (cError source "c-port-arity")
              | some _ =>
                let retained := source.frames.filter (· != frame)
                some (kernelDeterministic .deliverCOutput (.run { source with
                  path := occurrence
                  direction := .down
                  log := invoked :: slice ++ source.log
                  tape := source.tape.drop 1
                  vb := some ⟨.c, some port, frame.bit, 0⟩
                  frames := retained
                  storage := .cdead port invoked frame.epoch
                    source.tape.head! false :: source.storage }))

def matchingHistoryInvocations (invoked : Entry)
    (storage : List Store) : List Entry :=
  storage.filterMap fun item =>
    match item with
    | .chistory other _ _ _ _ _ _ =>
      if invoked == other then some other else none
    | _ => none

theorem matchingHistoryInvocations_append (invoked : Entry)
    (left right : List Store) :
    matchingHistoryInvocations invoked (left ++ right) =
      matchingHistoryInvocations invoked left ++
        matchingHistoryInvocations invoked right := by
  simp [matchingHistoryInvocations, List.filterMap_append]

theorem matchingHistoryInvocations_head?_eq_findSome (invoked : Entry)
    (storage : List Store) :
    (matchingHistoryInvocations invoked storage).head? =
      List.findSome? (fun item =>
        match item with
        | .chistory other _ _ _ _ _ _ =>
          if invoked = other then some other else none
        | _ => none) storage := by
  simp [matchingHistoryInvocations]

@[simp] theorem matchingHistoryInvocations_cdead (invoked deadInvoked : Entry)
    (port : Port)
    (epoch : Epoch) (logged : Entry) (answered : Bool) (storage : List Store) :
    matchingHistoryInvocations invoked
        (.cdead port deadInvoked epoch logged answered :: storage) =
      matchingHistoryInvocations invoked storage := by
  rfl

@[simp] theorem matchingHistoryInvocations_bundle (invoked : Entry)
    (keys : List Key) (storage : List Store) :
    matchingHistoryInvocations invoked (.bundle keys :: storage) =
      matchingHistoryInvocations invoked storage := by
  rfl

@[simp] theorem matchingHistoryInvocations_cpark (invoked parked : Entry)
    (bit : Bool) (descriptor : Descriptor)
    (frames : List FrameDescriptor) (occurrence continuation : Path)
    (storage : List Store) :
    matchingHistoryInvocations invoked
        (.cpark parked bit descriptor frames occurrence continuation ::
          storage) =
      matchingHistoryInvocations invoked storage := by
  rfl

@[simp] theorem matchingHistoryInvocations_cquery (invoked queried logged : Entry)
    (port : Port) (storage : List Store) :
    matchingHistoryInvocations invoked
        (.cquery port queried logged :: storage) =
      matchingHistoryInvocations invoked storage := by
  rfl

def unansweredCDeadRecords (port : Port) (invoked : Entry)
    (storage : List Store) (start : Nat := 0) :
    List (Nat × Epoch × Entry) :=
  storage.zipIdx start |>.filterMap fun (item, index) =>
    match item with
    | .cdead deadPort deadInvoked epoch logged false =>
      if (deadPort == port) = true ∧ deadInvoked = invoked then
        some (index, epoch, logged)
      else none
    | _ => none

def closeVirtualPort (source : Token) : Option (List KernelEdge) :=
  if source.direction != .up || source.vb.isSome || source.log.isEmpty ||
      source.tape.isEmpty || !isBullet source.tape.head! then none
  else
    let matchingInvocations :=
      matchingHistoryInvocations source.log.head! source.storage
    match matchingInvocations.head? with
    | none => none
    | some invoked =>
      let alphaIndex := ((source.tape.drop 1).takeWhile isBullet).length + 1
      match source.tape[alphaIndex]?.bind asAlpha? with
      | some (.c, some port, alphaInvoked, bit, _) =>
        if alphaInvoked != invoked || bitNat bit != alphaIndex - 1 then none
        else
          let dead := unansweredCDeadRecords port invoked source.storage
          if dead.length != 1 then some (cError source "c-answer-record")
          else
            let (index, epoch, logged) := dead.head!
            match replaceStoreAt? source.storage index
                (.cdead port invoked epoch logged true) with
            | none => some (cError source "c-answer-record")
            | some storage => some (splitCustom .answerPort
                (kernelDeterministic .answerCPort1 (.run { source with
                  log := source.log.drop 1
                  tape := source.tape.drop 1
                  storage := storage })))
      | _ => none

def storedReturnOccurrences (path : Path) (storage : List Store) :
    List Path :=
  storage.filterMap fun item =>
    match item with
    | .chistory _ _ _ _ _ occurrence continuation =>
      if continuation == path then some occurrence else none
    | _ => none

theorem storedReturnOccurrences_append (path : Path)
    (left right : List Store) :
    storedReturnOccurrences path (left ++ right) =
      storedReturnOccurrences path left ++
        storedReturnOccurrences path right := by
  simp [storedReturnOccurrences, List.filterMap_append]

def returnContinuation (source : Token) : Option (List KernelEdge) :=
  if source.direction != .up || source.tape.length < 2 ||
      !isBullet source.tape[0]! || !isBullet source.tape[1]! then none
  else
    let histories := storedReturnOccurrences source.path source.storage
    if histories.isEmpty then none
    else if histories.length != 1 then some (cError source "c-return-conflict")
    else
      let occurrence := histories.head!
      some (kernelDeterministic .returnC (.run { source with
        path := occurrence.take (occurrence.length - 3)
        tape := source.tape.drop 2 }))

def cnotStepToken (term : Term) (source : Token)
    (certificate : Certificate) : List KernelEdge :=
  match finishCStage? source with
  | some edges => edges
  | none =>
    match closeVirtualPort source with
    | some edges => edges
    | none =>
      match deliverPort term source with
      | some edges => edges
      | none =>
        match returnContinuation source with
        | some edges => edges
        | none =>
          match subterm? term source.path with
          | some (.gate .c) =>
            if source.direction == .down then
              if source.tape.head?.any isBullet then freshCCall term source
              else cError source "c-leaf-shape"
            else kernelStepToken term source certificate
          | _ =>
            if source.direction == .up &&
                source.path.getLast? == some .arg then
              match source.log.head?.bind asCGam? with
              | some (.first, _, _, _, _, _) =>
                match classifyArrival source.tape with
                | some arrival => parkFirst source arrival
                | none => cError source "c-arrival-shape"
              | some (.second, _, _, _, _, _) =>
                match classifyArrival source.tape with
                | some arrival => fireSecond term source arrival
                | none => cError source "c-arrival-shape"
              | none => kernelStepToken term source certificate
            else kernelStepToken term source certificate

def kernelEntry (value : Entry) : Entry :=
  if isAppBullet value then bullet else value

def composedEntry (value : Entry) : Entry :=
  if isBullet value then appBullet else value

def kernelToken (token : Token) : Token :=
  { token with tape := token.tape.map kernelEntry }

def composedToken (token : Token) : Token :=
  { token with tape := token.tape.map composedEntry }

def mapKernelEdge (zipper : Zipper) (edge : KernelEdge) : Edge :=
  let target :=
    match edge.target with
    | .run token => NFState.run (composedToken token) zipper
    | .runDone (.error name) _ =>
      NFState.runDone (.error name) none
        ⟨none, [], [], zipper.binders, zipper.residues⟩
    | .runDone kind token =>
      let name := reprStr kind
      NFState.runDone (.error ("unexpected-kernel-" ++ name)) none
        ⟨some (.entry (lp token.path token.log)), token.frames, token.storage,
          zipper.binders, zipper.residues⟩
    | .done kind token _ =>
      let name := reprStr kind
      NFState.runDone (.error ("unexpected-kernel-done-" ++ name)) none
        ⟨some (.entry (lp token.path token.log)), token.frames, token.storage,
          zipper.binders, zipper.residues⟩
  ⟨edge.sign, edge.denominatorPower, edge.omegaPower, edge.rule, target⟩

def errorEdge (name : String) (token : Token) (zipper : Zipper) : Edge :=
  ⟨1, 0, 0, .error name,
    .runDone (.error name) none
      ⟨some (.entry (lp token.path (token.log ++ token.tape))),
        token.frames, token.storage, zipper.binders, zipper.residues⟩⟩

def nfDeterministic (row : QalcRule.Row) (target : NFState) : List Edge :=
  [⟨1, 0, 0, .row row, target⟩]

def boundHeadStep? (term : Term) (token : Token)
    (zipper : Zipper) : Option (List Edge) := do
  if token.direction != .up then none else pure ()
  let outputRoot ← zipper.cursor
  let index ← binderIndex zipper (sourceIdentity token.path token.log)
  let leading := token.tape.takeWhile isAppBullet |>.length
  let loggedPosition ← token.tape[leading]?
  let (occurrence, _) ← asLP? loggedPosition
  if binderPath? term occurrence != some token.path then none else pure ()
  let afterPosition := token.tape.drop (leading + 1)
  let arity := afterPosition.takeWhile isAppBullet |>.length
  let delimiter ← afterPosition[arity]?
  let (depth, outputPath, codePath, _) ← asRB? delimiter
  let zipper2 ← fill? zipper (spine (.var index) arity)
  let schedule := spineSchedule outputRoot arity
  let delimiter2 := rb depth outputPath codePath schedule
  let tape2 ← replaceFirst token.tape delimiter delimiter2
  return nfDeterministic .head (.run { token with
    direction := .down
    tape := tape2 } zipper2)

def delegateStep (term : Term) (token : Token) (zipper : Zipper)
    (certificate : Certificate) : List Edge :=
  (cnotStepToken term (kernelToken token) certificate).map
    (mapKernelEdge zipper)

def readbackStep (term : Term) (state : NFState)
    (certificate : Certificate) : List Edge :=
  match state with
  | .done kind output garbage tick =>
    nfDeterministic .tick (.done kind output garbage (tick + 1))
  | .runDone kind output garbage =>
    nfDeterministic .halt (.done kind output garbage 0)
  | .run token zipper =>
    match subterm? term token.path with
    | none => [errorEdge "bad-path" token zipper]
    | some code =>
      -- Virtual binders are emitted only when readback is asking for an NF.
      match token.vb, token.tape.head?.bind asRB?, zipper.cursor with
      | some virtual, some (depth, outputPath, codePath, pending),
          some cursor =>
        if virtual.phase < 2 then
          match emitLambda? zipper
              (virtualIdentity virtual.gate virtual.port
                ((instance? (kernelToken token)).getD bullet) virtual.phase
                codePath) with
          | none => [errorEdge "readback-lambda" token zipper]
          | some zipper2 => nfDeterministic .vlam
              (.run { token with
                tape := rb (depth + 1) outputPath codePath pending ::
                  token.tape.drop 1
                vb := some { virtual with phase := virtual.phase + 1 }} zipper2)
        else
          let selected := virtualIdentity virtual.gate virtual.port
            ((instance? (kernelToken token)).getD bullet) (bitNat virtual.bit)
            codePath
          match binderIndex zipper selected with
          | some index =>
            match fill? zipper (.var index) with
            | none => [errorEdge "readback-variable" token zipper]
            | some zipper2 =>
              let inst := (instance? (kernelToken token)).getD bullet
              let emitted := List.replicate (bitNat virtual.bit + 1)
                appBullet ++
                [alpha virtual.gate virtual.port inst virtual.bit .fresh]
              nfDeterministic .vvar (.run { token with
                direction := .up
                tape := emitted ++ token.tape
                vb := none } zipper2)
          | none => delegateStep term token zipper certificate
      | _, _, _ =>
        match code, token.direction with
        | .lam _, .down =>
          match token.tape.head?.bind asRB?, zipper.cursor with
          | some (depth, outputPath, codePath, pending), some _ =>
            match emitLambda? zipper (sourceIdentity token.path token.log) with
            | none => [errorEdge "readback-lambda" token zipper]
            | some zipper2 => nfDeterministic .vlam
                (.run { token with
                  path := token.path ++ [.body]
                  tape := rb (depth + 1) outputPath codePath pending ::
                    token.tape.drop 1 } zipper2)
          | _, _ =>
            if token.tape.head?.any isAppBullet then
              nfDeterministic .b2 (.run { token with
                path := token.path ++ [.body]
                tape := token.tape.drop 1 } zipper)
            else delegateStep term token zipper certificate
        | .gate gate, .down =>
          if (token.tape.head?.bind asRB?).isSome && zipper.cursor.isSome then
            match fill? zipper (.gate gate) with
            | some zipper2 => nfDeterministic .headGate
                (.run { token with direction := .up } zipper2)
            | none => [errorEdge "readback-gate" token zipper]
          else delegateStep term token zipper certificate
        | .app _ _, .down => nfDeterministic .b1
            (.run { token with
              path := token.path ++ [.fn]
              tape := appBullet :: token.tape } zipper)
        | _, .up =>
          match boundHeadStep? term token zipper with
          | some edges => edges
          | none =>
           -- ENTER has priority over ordinary b3.
           if token.path.getLast? == some .fn &&
              token.tape.head?.any isAppBullet && zipper.cursor.isSome then
            match rbAfterOutputBullets token.tape with
            | some (markerCount, parentDelimiter, parentTail) =>
              match asRB? parentDelimiter, zipper.cursor with
              | some (depth, parentOutput, parentCode, pending), some cursor =>
                if pending.isEmpty || markerCount != pending.length ||
                    cursor != pending.head! then
                  delegateStep term token zipper certificate
                else
                  match treeAt? zipper.tree cursor, disarm? zipper with
                  | some (.hole true), some zipper2 =>
                    let argumentPath := token.path.dropLast ++ [.arg]
                    let parentDelimiter2 :=
                      rb depth parentOutput parentCode pending.tail!
                    nfDeterministic .enter (.run { token with
                      path := argumentPath
                      direction := .down
                      log := rbl token.path cursor argumentPath :: token.log
                      tape := [rb depth cursor argumentPath, appBullet] ++
                        token.tape.take (markerCount - 1) ++ [parentDelimiter2] ++
                        parentTail } zipper2)
                  | _, _ => delegateStep term token zipper certificate
              | _, _ => delegateStep term token zipper certificate
            | none => delegateStep term token zipper certificate
           else if token.path.getLast? == some .body then
            nfDeterministic .b4 (.run { token with
              path := token.path.dropLast
              tape := appBullet :: token.tape } zipper)
           else if token.path.getLast? == some .fn &&
              token.tape.head?.any isAppBullet then
            nfDeterministic .b3 (.run { token with
              path := token.path.dropLast
              tape := token.tape.drop 1 } zipper)
           else
            match firstRB token.tape with
            | some (saved, delimiter, tail) =>
              match asRB? delimiter with
              | some (depth, outputPath, codePath, pending) =>
                match treeAt? zipper.tree outputPath with
                | some subtree =>
                  let closed := (holes subtree []).isEmpty
                  let lambdasMatch := !(saved.all isAppBullet) ||
                    leadingLambdas subtree == saved.length
                  if token.path == codePath && closed && lambdasMatch &&
                      pending.isEmpty then
                    if codePath.isEmpty && token.log.isEmpty && tail.isEmpty &&
                        token.vb.isNone && depth == leadingLambdas zipper.tree
                    then
                      nfDeterministic .rootdone
                        (.runDone .halt (some zipper.tree)
                          (terminalGarbage token delimiter saved zipper))
                    else
                      match returnSuccessor? token zipper with
                      | some (token2, zipper2) =>
                        nfDeterministic .ret (.run token2 zipper2)
                      | none => delegateStep term token zipper certificate
                  else delegateStep term token zipper certificate
                | none => delegateStep term token zipper certificate
              | none => delegateStep term token zipper certificate
            | none => delegateStep term token zipper certificate
        | _, .down => delegateStep term token zipper certificate

def composedStep (term : Term) (state : NFState)
    (certificate : Certificate) : List Edge :=
  match state with
  | .run token zipper =>
    -- CNOT staging and port delivery precede generic readback b4 exactly as
    -- in the Python dispatcher.
    match finishCStage? (kernelToken token) with
    | some edges => edges.map (mapKernelEdge zipper)
    | none =>
      match deliverPort term (kernelToken token) with
      | some edges => edges.map (mapKernelEdge zipper)
      | none => readbackStep term state certificate
  | _ => readbackStep term state certificate

def initial : NFState :=
  .run ⟨[], .down, [], [rb 0 [] []], none, [], []⟩
    ⟨.hole false, some [], [], []⟩

def deterministic (rule : Rule) (target : NFState) : List Edge :=
  [⟨1, 0, 0, rule, target⟩]

def weighted (sign : Int) (denominatorPower : Nat) (omegaPower : Fin 8)
    (rule : Rule) (target : NFState) : Edge :=
  ⟨sign, denominatorPower, omegaPower, rule, target⟩

end QalcComposedMachine
