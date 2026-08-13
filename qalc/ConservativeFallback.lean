import Std
import PredecessorFiber

/-!
# Total conservative sector fallback

If finite-core certification rejects, the static selector uses a second
representation in which every landing appends the prior live state.  This is
the specified nontransparent fallback required by the architecture contract:
it makes all distinct source columns orthogonal without pretending that
rejected programs were certified.  Two H outcomes from the same source append
the same coordinate, so the local H superposition itself remains coherent.

Crucially, the residue is *not* the whole unconstrained `Live` type.  For a
fixed logical landing it is the subtype of live states that actually have a
machine edge to that landing.  This is the concrete predecessor fibre, and
the theorem below gives a two-sided equivalence with it.
-/

namespace QalcConservativeFallback

universe u

structure EdgeSource (Live : Type u) (Steps : Live → Live → Prop) where
  priorLive : Live
  priorHistory : List Live
  targetLive : Live
  valid : Steps priorLive targetLive

structure Landing (Live : Type u) where
  live : Live
  history : List Live
  deriving DecidableEq, Repr

def step (source : EdgeSource Live Steps) : Landing Live :=
  ⟨source.targetLive, source.priorHistory ++ [source.priorLive]⟩

def predecessor (target : Landing Live) : Option (Live × List Live) :=
  match target.history.getLast? with
  | none => none
  | some prior => some (prior, target.history.dropLast)

theorem predecessor_left_inverse (source : EdgeSource Live Steps) :
    predecessor (step source) =
      some (source.priorLive, source.priorHistory) := by
  simp [predecessor, step]

/-- Distinct prior live sources can never share a conservative landing, even
if their unlogged target live states coincide. -/
theorem source_range_separated
    {left right : EdgeSource Live Steps} (sameTarget : step left = step right) :
    left.priorLive = right.priorLive ∧
      left.priorHistory = right.priorHistory ∧
      left.targetLive = right.targetLive := by
  have predSame := congrArg predecessor sameTarget
  rw [predecessor_left_inverse left, predecessor_left_inverse right] at predSame
  have pairSame := Option.some.inj predSame
  exact ⟨congrArg Prod.fst pairSame,
    congrArg Prod.snd pairSame,
    congrArg Landing.live sameTarget⟩

def LogicalTarget (Live : Type u) := Live × List Live

def logical (source : EdgeSource Live Steps) : LogicalTarget Live :=
  (source.targetLive, source.priorHistory)

/-- The only valid residue values over a fixed landing are actual one-step
predecessors of that landing's live state. -/
def Residue (Steps : Live → Live → Prop) (target : LogicalTarget Live) :=
  { prior : Live // Steps prior target.1 }

def residue (source : EdgeSource Live Steps) :
    Residue Steps (logical source) :=
  ⟨source.priorLive, source.valid⟩

def rebuild (target : LogicalTarget Live) (prior : Residue Steps target) :
    EdgeSource Live Steps :=
  ⟨prior.1, target.2, target.1, prior.2⟩

theorem rebuild_projects (target : LogicalTarget Live)
    (prior : Residue Steps target) :
    logical (rebuild target prior) = target := by
  cases target
  rfl

theorem rebuild_residue (target : LogicalTarget Live)
    (prior : Residue Steps target) :
    residue (rebuild target prior) = prior := by
  rfl

theorem source_rebuild (source : EdgeSource Live Steps) :
    rebuild (logical source) (residue source) = source := by
  cases source
  rfl

def fiberToResidue (target : LogicalTarget Live)
    (source : QalcPredecessorFiber.Fiber (@logical Live Steps) target) :
    Residue Steps target :=
  source.2 ▸ residue source.1

def residueToFiber (target : LogicalTarget Live)
    (prior : Residue Steps target) :
    QalcPredecessorFiber.Fiber (@logical Live Steps) target :=
  ⟨rebuild target prior, rebuild_projects target prior⟩

theorem fiber_residue_roundtrip (target : LogicalTarget Live)
    (source : QalcPredecessorFiber.Fiber (@logical Live Steps) target) :
    residueToFiber target (fiberToResidue target source) = source := by
  cases source with
  | mk source same =>
      subst target
      apply Subtype.ext
      cases source
      rfl

theorem residue_fiber_roundtrip (target : LogicalTarget Live)
    (prior : Residue Steps target) :
    fiberToResidue target (residueToFiber target prior) = prior := by
  apply Subtype.ext
  rfl

def actual_predecessor_is_exact_fibre (target : LogicalTarget Live) :
    QalcPredecessorFiber.FibreExact (@logical Live Steps) target
      (Residue Steps target) where
  toGarbage := fiberToResidue target
  toFiber := residueToFiber target
  fiber_roundtrip := fiber_residue_roundtrip target
  garbage_roundtrip := residue_fiber_roundtrip target

end QalcConservativeFallback
