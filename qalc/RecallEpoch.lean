import Std
import PredecessorFiber

/-!
# A structural repair for qALC recall injectivity

The v1.42 `recall` row inserts an agreeing replay frame idempotently.  On the
raw well-formed carrier, a frame-absent and a frame-present source can
therefore have the same target.  Reachability excludes every known instance,
but making that global lifecycle fact load-bearing is unnecessary.

This file checks a stronger repair than a bare natural-number increment.  An
answer ticket and replay frame carry an unbounded `Epoch`.  A recall target
stores the exact predecessor-fibre coordinate `(ticket epoch, old frame)` in
one new epoch node.  This also covers the certified-fire rider case, where a
ticket may survive after its matching frame was popped: a riding ticket with
no frame and the same ticket with a frame still receive different targets.

The tree is only a proof presentation.  Any computable bijective coding of
`Epoch` by naturals gives the compact runtime representation.  The point is
that the coordinate is unbounded and injective; a finite phase tag cannot
encode arbitrarily many recall predecessors.
-/

namespace QalcRecallEpoch

/-- `fresh` is minted by `vvar`.  Every recall wraps exactly the information
that the old idempotent rule discarded. -/
inductive Epoch where
  | fresh
  | recalledAbsent (ticket : Epoch)
  | recalledPresent (ticket oldFrame : Epoch)

structure RecallSource (Payload Key Bit : Type) where
  payload : Payload
  key : Key
  bit : Bit
  ticketEpoch : Epoch
  frameEpoch : Option Epoch

structure RecallTarget (Payload Key Bit : Type) where
  payload : Payload
  key : Key
  bit : Bit
  frameEpoch : Epoch

/-- The repaired recall row.  All non-frame coordinates are the row's
ordinary injective transport; the new frame is the predecessor-fibre code. -/
def recallTarget (source : RecallSource Payload Key Bit) :
    RecallTarget Payload Key Bit :=
  { payload := source.payload
    key := source.key
    bit := source.bit
    frameEpoch := match source.frameEpoch with
      | none => .recalledAbsent source.ticketEpoch
      | some oldFrame => .recalledPresent source.ticketEpoch oldFrame }

/-- The recall target determines the complete source, without a reachability
hypothesis and without a no-rider premise. -/
theorem recallTarget_injective :
    Function.Injective (@recallTarget Payload Key Bit) := by
  intro left right same
  cases left with
  | mk leftPayload leftKey leftBit leftTicket leftFrame =>
      cases right with
      | mk rightPayload rightKey rightBit rightTicket rightFrame =>
          cases leftFrame <;> cases rightFrame <;>
            simp_all [recallTarget]

/-- The inverse on the epoch coordinate.  `fresh` is outside the recall
range; `recalled` exposes exactly the predecessor pair. -/
def decodeRecallEpoch : Epoch → Option (Epoch × Option Epoch)
  | .fresh => none
  | .recalledAbsent ticket => some (ticket, none)
  | .recalledPresent ticket oldFrame => some (ticket, some oldFrame)

theorem decode_recall_epoch (source : RecallSource Payload Key Bit) :
    decodeRecallEpoch (recallTarget source).frameEpoch =
      some (source.ticketEpoch, source.frameEpoch) := by
  cases source with
  | mk payload key bit ticket frame =>
      cases frame <;> rfl

def recallLogical (source : RecallSource Payload Key Bit) :
    Payload × Key × Bit :=
  ⟨source.payload, source.key, source.bit⟩

def recallResidue (source : RecallSource Payload Key Bit) :
    Epoch × Option Epoch :=
  ⟨source.ticketEpoch, source.frameEpoch⟩

def recallRebuild (target : Payload × Key × Bit)
    (garbage : Epoch × Option Epoch) : RecallSource Payload Key Bit :=
  ⟨target.1, target.2.1, target.2.2, garbage.1, garbage.2⟩

theorem recallRebuild_projects (target : Payload × Key × Bit)
    (garbage : Epoch × Option Epoch) :
    recallLogical (recallRebuild target garbage) = target := by
  cases target
  rfl

theorem recallRebuild_residue (target : Payload × Key × Bit)
    (garbage : Epoch × Option Epoch) :
    recallResidue (recallRebuild target garbage) = garbage := by
  rfl

theorem recall_source_rebuild (source : RecallSource Payload Key Bit) :
    recallRebuild (recallLogical source) (recallResidue source) = source := by
  cases source
  rfl

/-- The repaired epoch is the exact predecessor-fibre coordinate, not merely
an injectivity witness. -/
def recall_epoch_fibre_exact (target : Payload × Key × Bit) :
    QalcPredecessorFiber.FibreExact
      (@recallLogical Payload Key Bit) target (Epoch × Option Epoch) :=
  QalcPredecessorFiber.fibreExact
    (@recallLogical Payload Key Bit)
    (@recallResidue Payload Key Bit)
    (@recallRebuild Payload Key Bit)
    (@recallRebuild_projects Payload Key Bit)
    (@recallRebuild_residue Payload Key Bit)
    (@recall_source_rebuild Payload Key Bit)
    target

/-- Both epoch coordinates are forced by a concrete logical recall collision;
they are not arbitrary auxiliary history. -/
theorem ticket_epoch_forced (payload : Payload) (key : Key) (bit : Bit)
    (frame : Option Epoch) {left right : Epoch} (different : left ≠ right) :
    recallLogical
        (⟨payload, key, bit, left, frame⟩ : RecallSource Payload Key Bit) =
      recallLogical ⟨payload, key, bit, right, frame⟩ ∧
    (⟨payload, key, bit, left, frame⟩ : RecallSource Payload Key Bit) ≠
      ⟨payload, key, bit, right, frame⟩ := by
  exact ⟨rfl, fun same => different
    (congrArg RecallSource.ticketEpoch same)⟩

theorem old_frame_epoch_forced (payload : Payload) (key : Key) (bit : Bit)
    (ticket : Epoch) {left right : Option Epoch} (different : left ≠ right) :
    recallLogical
        (⟨payload, key, bit, ticket, left⟩ : RecallSource Payload Key Bit) =
      recallLogical ⟨payload, key, bit, ticket, right⟩ ∧
    (⟨payload, key, bit, ticket, left⟩ : RecallSource Payload Key Bit) ≠
      ⟨payload, key, bit, ticket, right⟩ := by
  exact ⟨rfl, fun same => different
    (congrArg RecallSource.frameEpoch same)⟩

structure ReplaySource (Payload Key Bit : Type) where
  payload : Payload
  key : Key
  bit : Bit
  frameEpoch : Epoch

structure TicketLanding (Payload Key Bit : Type) where
  payload : Payload
  key : Key
  bit : Bit
  ticketEpoch : Epoch
  frameEpoch : Option Epoch

/-- Replay preserves the frame epoch in the re-emitted ticket. -/
def replayTarget (source : ReplaySource Payload Key Bit) :
    TicketLanding Payload Key Bit :=
  { payload := source.payload
    key := source.key
    bit := source.bit
    ticketEpoch := source.frameEpoch
    frameEpoch := some source.frameEpoch }

theorem replayTarget_injective :
    Function.Injective (@replayTarget Payload Key Bit) := by
  intro left right same
  cases left
  cases right
  simp_all [replayTarget]

/-- A new virtual answer has the distinguished fresh epoch and no frame. -/
def vvarTarget (payload : Payload) (key : Key) (bit : Bit) :
    TicketLanding Payload Key Bit :=
  { payload := payload
    key := key
    bit := bit
    ticketEpoch := .fresh
    frameEpoch := none }

/-- `vvar` and replay landings cannot collide, even when every ordinary
control coordinate agrees. -/
theorem vvar_replay_ranges_disjoint
    (payload : Payload) (key : Key) (bit : Bit)
    (source : ReplaySource Payload Key Bit) :
    vvarTarget payload key bit ≠ replayTarget source := by
  intro same
  have impossible := congrArg TicketLanding.frameEpoch same
  simp [vvarTarget, replayTarget] at impossible

/-- The registered rider shape is harmless: equal ticket epochs with and
without a matching frame produce distinct recall targets. -/
theorem rider_and_framed_targets_disjoint
    (payload : Payload) (key : Key) (bit : Bit) (epoch : Epoch) :
    recallTarget
        (⟨payload, key, bit, epoch, none⟩ : RecallSource Payload Key Bit) ≠
      recallTarget ⟨payload, key, bit, epoch, some epoch⟩ := by
  intro same
  have sourcesSame := recallTarget_injective same
  simp at sourcesSame

end QalcRecallEpoch
