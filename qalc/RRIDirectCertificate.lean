import Std

/-!
# Direct finite certificates for reachable-recall injectivity

This file isolates a proof-by-reflection route which does not use a Gram
matrix.  A finite carrier containing the initial state and closed under every
machine successor is an over-approximation of the inductively reachable
states.  Checking RRI on that carrier therefore proves RRI on reachability.

The concrete qALC checker still has to compute the *complete* successor list
from `kernel.step`; this abstract theorem does not certify Python or a capped
search.  A cap is rejection, never a positive certificate.
-/

namespace QalcRRIDirectCertificate

universe u v w

variable {State : Type u} {Key : Type v} {Projection : Type w}

/-! The concrete Python evaluator's terminal fragment is exactly this map.
Mirroring it here proves the two local facts used by `TerminalCarrier`: the
sector is forward-invariant, and the tick transition itself is injective.  A
full qALC reflection artifact must still connect the Python `Done` constructor
to this mirror (or mirror the whole evaluator). -/

structure DoneStamp (Kind : Type u) (Residue : Type v) where
  kind : Kind
  residue : Residue
  tick : Nat
  deriving DecidableEq

def doneAdvance {Kind : Type u} {Residue : Type v}
    (state : DoneStamp Kind Residue) : DoneStamp Kind Residue :=
  { state with tick := state.tick + 1 }

def DoneStep {Kind : Type u} {Residue : Type v}
    (source target : DoneStamp Kind Residue) : Prop :=
  target = doneAdvance source

theorem doneStep_forward
    {Kind : Type u} {Residue : Type v}
    {source target : DoneStamp Kind Residue}
    (edge : DoneStep source target) :
    target.kind = source.kind ∧
    target.residue = source.residue ∧
    target.tick = source.tick + 1 := by
  subst target
  exact ⟨rfl, rfl, rfl⟩

theorem doneAdvance_injective
    {Kind : Type u} {Residue : Type v} :
    Function.Injective (@doneAdvance Kind Residue) := by
  intro left right same
  cases left with
  | mk leftKind leftResidue leftTick =>
      cases right with
      | mk rightKind rightResidue rightTick =>
          simp [doneAdvance] at same
          rcases same with ⟨sameKind, sameResidue, sameTick⟩
          cases sameKind
          cases sameResidue
          cases sameTick
          rfl

inductive Reachable (Step : State → State → Prop) (initial : State) :
    State → Prop where
  | initial : Reachable Step initial initial
  | step : Reachable Step initial source → Step source target →
      Reachable Step initial target

structure RecallView (State : Type u) (Key : Type v)
    (Projection : Type w) where
  isRecall : State → Prop
  key : State → Key
  framePresent : State → Bool
  projection : State → Projection

def RRIOn (view : RecallView State Key Projection)
    (domain : State → Prop) : Prop :=
  ∀ left right,
    domain left → domain right →
    view.isRecall left → view.isRecall right →
    view.key left = view.key right →
    view.projection left = view.projection right →
    view.framePresent left = view.framePresent right

structure ClosedCarrier (Step : State → State → Prop)
    (initial : State) where
  carrier : State → Prop
  initial_mem : carrier initial
  successor_mem : ∀ {source target},
    carrier source → Step source target → carrier target

theorem reachable_mem_closedCarrier
    {Step : State → State → Prop} {initial state : State}
    (certificate : ClosedCarrier Step initial)
    (reachable : Reachable Step initial state) :
    certificate.carrier state := by
  induction reachable with
  | initial => exact certificate.initial_mem
  | step _ edge ih => exact certificate.successor_mem ih edge

theorem rri_of_directCertificate
    {Step : State → State → Prop} {initial : State}
    (view : RecallView State Key Projection)
    (certificate : ClosedCarrier Step initial)
    (checked : RRIOn view certificate.carrier) :
    RRIOn view (Reachable Step initial) := by
  intro left right leftReachable rightReachable
    leftRecall rightRecall sameKey sameProjection
  exact checked left right
    (reachable_mem_closedCarrier certificate leftReachable)
    (reachable_mem_closedCarrier certificate rightReachable)
    leftRecall rightRecall sameKey sameProjection

/-! The concrete reference kernel has an infinite `Done.tick` tail.  A finite
certificate may quotient that tail provided it proves that the omitted sector
is forward-invariant and contains no recall source. -/

structure TerminalCarrier (Step : State → State → Prop)
    (initial : State) where
  carrier : State → Prop
  terminal : State → Prop
  initial_mem : carrier initial
  successor_covered : ∀ {source target},
    carrier source → Step source target → carrier target ∨ terminal target
  terminal_forward : ∀ {source target},
    terminal source → Step source target → terminal target

theorem reachable_mem_or_terminal
    {Step : State → State → Prop} {initial state : State}
    (certificate : TerminalCarrier Step initial)
    (reachable : Reachable Step initial state) :
    certificate.carrier state ∨ certificate.terminal state := by
  induction reachable with
  | initial => exact .inl certificate.initial_mem
  | step _ edge ih =>
      cases ih with
      | inl inCarrier => exact certificate.successor_covered inCarrier edge
      | inr inTerminal =>
          exact Or.inr (certificate.terminal_forward inTerminal edge)

theorem rri_of_terminalCertificate
    {Step : State → State → Prop} {initial : State}
    (view : RecallView State Key Projection)
    (certificate : TerminalCarrier Step initial)
    (terminalNotRecall : ∀ {state},
      certificate.terminal state → ¬ view.isRecall state)
    (checked : RRIOn view certificate.carrier) :
    RRIOn view (Reachable Step initial) := by
  intro left right leftReachable rightReachable
    leftRecall rightRecall sameKey sameProjection
  have leftCovered := reachable_mem_or_terminal certificate leftReachable
  have rightCovered := reachable_mem_or_terminal certificate rightReachable
  cases leftCovered with
  | inl leftMem =>
      cases rightCovered with
      | inl rightMem =>
          exact checked left right leftMem rightMem leftRecall rightRecall
            sameKey sameProjection
      | inr rightTerminal =>
          exact False.elim (terminalNotRecall rightTerminal rightRecall)
  | inr leftTerminal =>
      exact False.elim (terminalNotRecall leftTerminal leftRecall)

/-! On a generated finite encoding (normally `Fin stateCount`) the local RRI
premise may itself be discharged by kernel evaluation of `decide`. -/

theorem checkedRRI_of_decide
    (view : RecallView State Key Projection) (domain : State → Prop)
    [Decidable (RRIOn view domain)]
    (checked : decide (RRIOn view domain) = true) :
    RRIOn view domain := by
  exact of_decide_eq_true checked

theorem rri_of_decided_terminalCertificate
    {Step : State → State → Prop} {initial : State}
    (view : RecallView State Key Projection)
    (certificate : TerminalCarrier Step initial)
    (terminalNotRecall : ∀ {state},
      certificate.terminal state → ¬ view.isRecall state)
    [Decidable (RRIOn view certificate.carrier)]
    (checked : decide (RRIOn view certificate.carrier) = true) :
    RRIOn view (Reachable Step initial) := by
  exact rri_of_terminalCertificate view certificate terminalNotRecall
    (checkedRRI_of_decide view certificate.carrier checked)
/-! If recall targets factor through the frame-erased projection, the direct
RRI certificate also gives injectivity of recall targets on the reachable
domain. -/

theorem recallTarget_injective_of_directCertificate
    {Step : State → State → Prop} {initial : State}
    (view : RecallView State Key Projection)
    (certificate : ClosedCarrier Step initial)
    (checked : RRIOn view certificate.carrier)
    (targetOf : State → State)
    (targetFactors : ∀ {left right},
      view.isRecall left → view.isRecall right →
      view.key left = view.key right →
      targetOf left = targetOf right →
      view.projection left = view.projection right)
    {left right : State}
    (leftReachable : Reachable Step initial left)
    (rightReachable : Reachable Step initial right)
    (leftRecall : view.isRecall left)
    (rightRecall : view.isRecall right)
    (sameKey : view.key left = view.key right)
    (sameTarget : targetOf left = targetOf right) :
    view.framePresent left = view.framePresent right := by
  exact rri_of_directCertificate view certificate checked
    left right leftReachable rightReachable leftRecall rightRecall sameKey
    (targetFactors leftRecall rightRecall sameKey sameTarget)

theorem recallTarget_injective_of_terminalCertificate
    {Step : State → State → Prop} {initial : State}
    (view : RecallView State Key Projection)
    (certificate : TerminalCarrier Step initial)
    (terminalNotRecall : ∀ {state},
      certificate.terminal state → ¬ view.isRecall state)
    (checked : RRIOn view certificate.carrier)
    (targetOf : State → State)
    (targetFactors : ∀ {left right},
      view.isRecall left → view.isRecall right →
      view.key left = view.key right →
      targetOf left = targetOf right →
      view.projection left = view.projection right)
    {left right : State}
    (leftReachable : Reachable Step initial left)
    (rightReachable : Reachable Step initial right)
    (leftRecall : view.isRecall left)
    (rightRecall : view.isRecall right)
    (sameKey : view.key left = view.key right)
    (sameTarget : targetOf left = targetOf right) :
    view.framePresent left = view.framePresent right := by
  exact rri_of_terminalCertificate view certificate terminalNotRecall checked
    left right leftReachable rightReachable leftRecall rightRecall sameKey
    (targetFactors leftRecall rightRecall sameKey sameTarget)

end QalcRRIDirectCertificate
