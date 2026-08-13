import Std
import PredecessorFiber

/-!
# qALC forward full-normal-form readback controller

This file isolates the structural proof surface implemented by
`readback.py`.  The controller is internal to the one-step machine and uses
only forward token transport.  Its dynamic binder name is `(code position,
log)`, not code position alone: one immutable lambda may be revisited in two
exponential contexts and contribute two distinct binders to one normal form.

The records below omit coordinates which are transported identically and
collect them in `Payload`.  Consequently the injectivity results are
parametric in the complete ordinary token state; they do not prove a finite
test. `ControllerLanding` is the canonical range classifier implemented by
the delimiter, armed-hole, output-zipper, and terminal shapes.
-/

namespace QalcReadbackController

universe u v w x y

structure BinderIdentity (Path : Type u) (Log : Type v) where
  path : Path
  log : Log
  deriving DecidableEq, Repr

/-- Equal source paths do not alias two dynamic binder copies when their
exponential logs differ. -/
theorem same_path_different_log_distinct
    [DecidableEq Path] [DecidableEq Log]
    (path : Path) {leftLog rightLog : Log}
    (different : leftLog ≠ rightLog) :
    (⟨path, leftLog⟩ : BinderIdentity Path Log) ≠ ⟨path, rightLog⟩ := by
  intro same
  exact different (congrArg BinderIdentity.log same)

inductive BulletTag where
  | plain
  | application
  deriving DecidableEq, Repr

theorem application_ne_plain : BulletTag.application ≠ BulletTag.plain := by
  decide

structure Scope (Path : Type u) (OutputPath : Type v) where
  code : Path
  output : OutputPath
  depth : Nat
  deriving DecidableEq, Repr

structure ReturnAddress (Path : Type u) (OutputPath : Type v) where
  parentFunction : Path
  scope : Scope Path OutputPath
  deriving DecidableEq, Repr

/-! ## Lambda and head formation

`BinderIdentity` remains in the controller coordinate while the observable
normal form stores only a de Bruijn index.  This is both the inverse witness
for virtual-lambda formation and the lookup key for HEAD.
-/

structure VLamSource (Path : Type u) (Log : Type v)
    (OutputPath : Type w) (Payload : Type x) where
  payload : Payload
  binder : BinderIdentity Path Log
  output : OutputPath
  depth : Nat

structure VLamTarget (Path : Type u) (Log : Type v)
    (OutputPath : Type w) (Payload : Type x) where
  payload : Payload
  binderMark : BinderIdentity Path Log
  output : OutputPath
  depth : Nat

def vlamTarget
    (source : VLamSource Path Log OutputPath Payload) :
    VLamTarget Path Log OutputPath Payload :=
  ⟨source.payload, source.binder, source.output, source.depth + 1⟩

theorem vlamTarget_injective :
    Function.Injective (@vlamTarget Path Log OutputPath Payload) := by
  intro left right same
  cases left
  cases right
  simp [vlamTarget] at same
  simp_all

structure HeadSource (Binder : Type u) (Payload : Type v) where
  payload : Payload
  binder : Binder
  index : Nat
  arity : Nat

structure HeadTarget (Binder : Type u) (Payload : Type v) where
  payload : Payload
  binderMark : Binder
  index : Nat
  arity : Nat

def headTarget (source : HeadSource Binder Payload) :
    HeadTarget Binder Payload :=
  ⟨source.payload, source.binder, source.index, source.arity⟩

theorem headTarget_injective :
    Function.Injective (@headTarget Binder Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [headTarget]

/-! ## Delimited child entry and forward return -/

structure EnterSource (Path : Type u) (OutputPath : Type v)
    (Payload : Type w) where
  payload : Payload
  parentFunction : Path
  child : Path
  output : OutputPath
  depth : Nat

structure EnterTarget (Path : Type u) (OutputPath : Type v)
    (Payload : Type w) where
  payload : Payload
  child : Path
  delimiter : Scope Path OutputPath
  address : ReturnAddress Path OutputPath
  retainedSlot : BulletTag
  holeArmed : Bool

def enterTarget (source : EnterSource Path OutputPath Payload) :
    EnterTarget Path OutputPath Payload :=
  { payload := source.payload
    child := source.child
    delimiter := ⟨source.child, source.output, source.depth⟩
    address := ⟨source.parentFunction,
      ⟨source.child, source.output, source.depth⟩⟩
    retainedSlot := .application
    holeArmed := false }

theorem enterTarget_injective :
    Function.Injective (@enterTarget Path OutputPath Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [enterTarget]

/-! ENTER does not guess from the marker alone.  On the physical tape it is
enabled exactly when the BA prefix above the nearest RB equals the number of
remaining armed holes in that RB's output subtree.  Beta transport makes the
prefix strictly larger and therefore takes ordinary b3 first.  The current
controller additionally stores those output holes in preorder.  It compares
the schedule head with the zipper cursor but derives the code argument from
the *dynamically reached* function position; a static occurrence path is
wrong after exponential transport. -/

def enterReady (markerCount remainingArmed : Nat) : Bool :=
  markerCount == remainingArmed

theorem enterReady_iff (markerCount remainingArmed : Nat) :
    enterReady markerCount remainingArmed = true ↔
      markerCount = remainingArmed := by
  simp [enterReady]

theorem beta_excess_not_enter_ready (remainingArmed extra : Nat)
    (positive : 0 < extra) :
    enterReady (remainingArmed + extra) remainingArmed = false := by
  have nonzero : extra ≠ 0 := Nat.ne_of_gt positive
  simp [enterReady, nonzero]

structure OutputSchedule (OutputPath : Type u) where
  pending : List OutputPath
  deriving DecidableEq, Repr

def scheduledCursorReady [DecidableEq OutputPath]
    (cursor : OutputPath) (schedule : OutputSchedule OutputPath) : Bool :=
  schedule.pending.head? == some cursor

theorem scheduledCursorReady_iff [DecidableEq OutputPath]
    (cursor : OutputPath) (schedule : OutputSchedule OutputPath) :
    scheduledCursorReady cursor schedule = true ↔
      schedule.pending.head? = some cursor := by
  simp [scheduledCursorReady]

inductive CodeDirection where
  | body
  | function
  | argument
  deriving DecidableEq, Repr

abbrev CodePath := List CodeDirection

def reachedFunction (parent : CodePath) : CodePath :=
  parent ++ [.function]

def reachedArgument (parent : CodePath) : CodePath :=
  parent ++ [.argument]

/-- ENTER's child address is the sibling of the function position reached by
the token, not a path remembered when HEAD first formed the output spine. -/
theorem dynamic_enter_sibling (parent : CodePath) :
    (reachedFunction parent).dropLast =
        (reachedArgument parent).dropLast ∧
      (reachedFunction parent).getLast? = some .function ∧
      (reachedArgument parent).getLast? = some .argument := by
  simp [reachedFunction, reachedArgument]

/-- Neutralization of `g x` where the interrogation discovers that `x` is an
emitted rigid binder.  The removed gamma/mu scaffold and logged argument are
one controller residue; the target launches the ordinary child query for x
and exposes gate g as the rigid output head. -/
structure NeutralProbeSource
    (Gate Binder Logged ScopeState Payload : Type) where
  payload : Payload
  gate : Gate
  binder : Binder
  loggedArgument : Logged
  scope : ScopeState
  extraArity : Nat

structure NeutralProbeTarget
    (Gate Binder Logged ScopeState Payload : Type) where
  payload : Payload
  outputGate : Gate
  residueBinder : Binder
  residueLoggedArgument : Logged
  childScope : ScopeState
  outputArity : Nat

def neutralProbeTarget
    (source : NeutralProbeSource Gate Binder Logged ScopeState Payload) :
    NeutralProbeTarget Gate Binder Logged ScopeState Payload :=
  ⟨source.payload, source.gate, source.binder, source.loggedArgument,
    source.scope, source.extraArity + 1⟩

theorem neutralProbeTarget_injective :
    Function.Injective
      (@neutralProbeTarget Gate Binder Logged ScopeState Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [neutralProbeTarget]

/-! The target already carries the emitted gate, child scope, and output
arity.  The erased gamma/mu scaffold therefore has exactly the dynamic binder
identity and logged LP argument as its independent residue. -/

def neutralProbeLogical
    (source : NeutralProbeSource Gate Binder Logged ScopeState Payload) :
    Payload × Gate × ScopeState × Nat :=
  ⟨source.payload, source.gate, source.scope, source.extraArity⟩

def neutralProbeResidue
    (source : NeutralProbeSource Gate Binder Logged ScopeState Payload) :
    Binder × Logged :=
  ⟨source.binder, source.loggedArgument⟩

def neutralProbeRebuild
    (target : Payload × Gate × ScopeState × Nat)
    (residue : Binder × Logged) :
    NeutralProbeSource Gate Binder Logged ScopeState Payload :=
  ⟨target.1, target.2.1, residue.1, residue.2,
    target.2.2.1, target.2.2.2⟩

theorem neutralProbeRebuild_projects
    (target : Payload × Gate × ScopeState × Nat)
    (residue : Binder × Logged) :
    neutralProbeLogical (neutralProbeRebuild target residue) = target := by
  cases target
  rfl

theorem neutralProbeRebuild_residue
    (target : Payload × Gate × ScopeState × Nat)
    (residue : Binder × Logged) :
    neutralProbeResidue (neutralProbeRebuild target residue) = residue := by
  rfl

theorem neutralProbe_source_rebuild
    (source : NeutralProbeSource Gate Binder Logged ScopeState Payload) :
    neutralProbeRebuild (neutralProbeLogical source)
      (neutralProbeResidue source) = source := by
  cases source
  rfl

def neutral_probe_residue_is_exact_fibre
    (target : Payload × Gate × ScopeState × Nat) :
    QalcPredecessorFiber.FibreExact
      (@neutralProbeLogical Gate Binder Logged ScopeState Payload)
      target (Binder × Logged) :=
  QalcPredecessorFiber.fibreExact
    neutralProbeLogical
    neutralProbeResidue
    neutralProbeRebuild
    neutralProbeRebuild_projects
    neutralProbeRebuild_residue
    neutralProbe_source_rebuild
    target

/-- Erasing either neutral-probe coordinate really merges distinct physical
predecessors whenever that coordinate varies.  Thus the pair is not an
arbitrary product hidden in the residue type. -/
theorem neutral_probe_binder_forced
    (payload : Payload) (gate : Gate) (logged : Logged)
    (scope : ScopeState) (arity : Nat) {left right : Binder}
    (different : left ≠ right) :
    neutralProbeLogical
        (⟨payload, gate, left, logged, scope, arity⟩ :
          NeutralProbeSource Gate Binder Logged ScopeState Payload) =
      neutralProbeLogical ⟨payload, gate, right, logged, scope, arity⟩ ∧
    (⟨payload, gate, left, logged, scope, arity⟩ :
      NeutralProbeSource Gate Binder Logged ScopeState Payload) ≠
      ⟨payload, gate, right, logged, scope, arity⟩ := by
  exact ⟨rfl, fun same => different (congrArg NeutralProbeSource.binder same)⟩

theorem neutral_probe_logged_argument_forced
    (payload : Payload) (gate : Gate) (binder : Binder)
    (scope : ScopeState) (arity : Nat) {left right : Logged}
    (different : left ≠ right) :
    neutralProbeLogical
        (⟨payload, gate, binder, left, scope, arity⟩ :
          NeutralProbeSource Gate Binder Logged ScopeState Payload) =
      neutralProbeLogical ⟨payload, gate, binder, right, scope, arity⟩ ∧
    (⟨payload, gate, binder, left, scope, arity⟩ :
      NeutralProbeSource Gate Binder Logged ScopeState Payload) ≠
      ⟨payload, gate, binder, right, scope, arity⟩ := by
  exact ⟨rfl, fun same => different
    (congrArg NeutralProbeSource.loggedArgument same)⟩

/-- A scope's child coordinate and depth are functions of the retained
parent/output control.  They are therefore encoded-fibre coordinates, not
independent garbage. -/
structure ReturnSource (Parent : Type u) (OutputPath : Type v)
    (Prefix : Type w) (Payload : Type x) where
  payload : Payload
  parent : Parent
  output : OutputPath
  carriedPrefix : Prefix

structure ReturnTarget (Parent : Type u) (OutputPath : Type v)
    (Prefix : Type w) (Payload : Type x) where
  payload : Payload
  parent : Parent
  output : OutputPath
  movedPrefix : Prefix

def returnTarget
    (source : ReturnSource Parent OutputPath Prefix Payload) :
    ReturnTarget Parent OutputPath Prefix Payload :=
  ⟨source.payload, source.parent, source.output, source.carriedPrefix⟩

theorem returnTarget_injective :
    Function.Injective
      (@returnTarget Parent OutputPath Prefix Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [returnTarget]

/-- The generic forced lower bound for RETURN.  This theorem alone does not
establish exactness; the two-sided concrete coding follows below. -/
theorem return_prefix_forced_lower_bound
    (logical : ReturnSource Parent OutputPath Prefix Payload →
      Parent × OutputPath × Payload)
    (encode : ReturnSource Parent OutputPath Prefix Payload →
      (Parent × OutputPath × Payload) × Prefix)
    (projects : ∀ source, (encode source).1 = logical source)
    (injective : Function.Injective encode) :
    ∀ target, ∃ code : QalcPredecessorFiber.Fiber logical target → Prefix,
      Function.Injective code := by
  exact QalcPredecessorFiber.local_minimality
    logical encode projects injective

def returnLogical
    (source : ReturnSource Parent OutputPath Prefix Payload) :
    Parent × OutputPath × Payload :=
  ⟨source.parent, source.output, source.payload⟩

def returnResidue
    (source : ReturnSource Parent OutputPath Prefix Payload) : Prefix :=
  source.carriedPrefix

def returnRebuild
    (target : Parent × OutputPath × Payload) (carried : Prefix) :
    ReturnSource Parent OutputPath Prefix Payload :=
  ⟨target.2.2, target.1, target.2.1, carried⟩

theorem returnRebuild_projects (target : Parent × OutputPath × Payload)
    (carried : Prefix) :
    returnLogical (returnRebuild target carried) = target := by
  cases target
  rfl

theorem returnRebuild_residue (target : Parent × OutputPath × Payload)
    (carried : Prefix) :
    returnResidue (returnRebuild target carried) = carried := by
  rfl

theorem return_source_rebuild
    (source : ReturnSource Parent OutputPath Prefix Payload) :
    returnRebuild (returnLogical source) (returnResidue source) = source := by
  cases source
  rfl

/-- On the exact-prefix fallback branch, RETURN's moved prefix is not merely
sufficient.  For every logical target it is in a two-sided coding with that
target's concrete predecessor fibre. -/
def return_prefix_is_exact_fibre
    (target : Parent × OutputPath × Payload) :
    QalcPredecessorFiber.FibreExact
      (@returnLogical Parent OutputPath Prefix Payload) target Prefix :=
  QalcPredecessorFiber.fibreExact
    returnLogical
    returnResidue
    returnRebuild
    returnRebuild_projects
    returnRebuild_residue
    return_source_rebuild
    target

/-! Pure lambda returns use the smaller branch implemented by
`PureScopeResidue`.  The returned output determines one BA per leading lambda,
so the prefix is not retained.  The completed output path is not used by the
forward machine after RETURN and is therefore honestly classified as the
remaining predecessor-fibre residue, rather than relabelled live control. -/

structure PureReturnSource
    (OutputPath : Type u) (Output : Type v) (Payload : Type w)
    (leading : Output → Nat) where
  outputPath : OutputPath
  output : Output
  payload : Payload
  carried : List BulletTag
  canonical : carried =
    List.replicate (leading output) BulletTag.application

structure PureReturnLogicalTarget (Output : Type v) (Payload : Type w) where
  output : Output
  payload : Payload

def pureReturnLogical
    (source : PureReturnSource OutputPath Output Payload leading) :
    PureReturnLogicalTarget Output Payload :=
  ⟨source.output, source.payload⟩

def pureReturnResidue
    (source : PureReturnSource OutputPath Output Payload leading) :
    OutputPath := source.outputPath

def pureReturnRebuild
    (target : PureReturnLogicalTarget Output Payload)
    (outputPath : OutputPath) :
    PureReturnSource OutputPath Output Payload leading :=
  ⟨outputPath, target.output, target.payload,
    List.replicate (leading target.output) BulletTag.application, rfl⟩

theorem pureReturnRebuild_projects
    (target : PureReturnLogicalTarget Output Payload)
    (garbage : OutputPath) :
    pureReturnLogical (pureReturnRebuild (leading := leading)
      target garbage) = target := by
  cases target
  rfl

theorem pureReturnRebuild_residue
    (target : PureReturnLogicalTarget Output Payload)
    (garbage : OutputPath) :
    pureReturnResidue (pureReturnRebuild (leading := leading)
      target garbage) = garbage := by
  rfl

theorem pureReturn_source_rebuild
    (source : PureReturnSource OutputPath Output Payload leading) :
    pureReturnRebuild (leading := leading) (pureReturnLogical source)
      (pureReturnResidue source) = source := by
  cases source with
  | mk outputPath output payload carried canonical =>
      subst carried
      rfl

def pure_return_path_is_exact_fibre
    (target : PureReturnLogicalTarget Output Payload) :
    QalcPredecessorFiber.FibreExact
      (@pureReturnLogical OutputPath Output Payload leading) target OutputPath :=
  QalcPredecessorFiber.fibreExact
    pureReturnLogical
    pureReturnResidue
    pureReturnRebuild
    pureReturnRebuild_projects
    pureReturnRebuild_residue
    pureReturn_source_rebuild
    target

/-- The stored output path is forced, not decorative history: stripping it
identifies two accepted pure RETURN predecessors over the same output and
unchanged payload. -/
theorem pure_return_path_forced
    (output : Output) (payload : Payload) {left right : OutputPath}
    (different : left ≠ right) :
    pureReturnLogical
        (⟨left, output, payload,
          List.replicate (leading output) BulletTag.application, rfl⟩ :
          PureReturnSource OutputPath Output Payload leading) =
      pureReturnLogical
        ⟨right, output, payload,
          List.replicate (leading output) BulletTag.application, rfl⟩ ∧
    (⟨left, output, payload,
        List.replicate (leading output) BulletTag.application, rfl⟩ :
      PureReturnSource OutputPath Output Payload leading) ≠
      ⟨right, output, payload,
        List.replicate (leading output) BulletTag.application, rfl⟩ := by
  exact ⟨rfl, fun same => different
    (congrArg PureReturnSource.outputPath same)⟩

/-! A completed virtual Church boolean leaves either `alpha` or
`BA · alpha` before the delimiter. The observable normal form determines
that bit and hence the carrier shape.  Keeping the bit-bearing carrier in
terminal garbage would be injective but nonminimal and would dephase a lone
Hadamard.  The decoder below retains only the independent gate/instance/epoch
coordinate. -/

structure VirtualCarrierSource (Independent : Type u) where
  bit : Bool
  independent : Independent

structure VirtualCarrierTarget (Independent : Type u) where
  outputBit : Bool
  garbage : Independent

def decodeVirtualCarrier
    (source : VirtualCarrierSource Independent) :
    VirtualCarrierTarget Independent :=
  ⟨source.bit, source.independent⟩

theorem decodeVirtualCarrier_injective :
    Function.Injective (@decodeVirtualCarrier Independent) := by
  intro left right same
  cases left
  cases right
  simp_all [decodeVirtualCarrier]

theorem virtual_carrier_clean_garbage
    (independent : Independent) (left right : Bool) :
    (decodeVirtualCarrier
      (⟨left, independent⟩ : VirtualCarrierSource Independent)).garbage =
    (decodeVirtualCarrier
      (⟨right, independent⟩ : VirtualCarrierSource Independent)).garbage := by
  rfl

theorem virtual_carrier_outputs_distinct
    (independent : Independent) :
    decodeVirtualCarrier
        (⟨false, independent⟩ : VirtualCarrierSource Independent) ≠
      decodeVirtualCarrier ⟨true, independent⟩ := by
  intro same
  have bitSame := congrArg VirtualCarrierTarget.outputBit same
  simp [decodeVirtualCarrier] at bitSame

/-! ## Canonical controller range normal forms

The constructors below are the normal forms of the controller's intended
range classifier.  They prove the algebra once a concrete common-state
classifier supplies the required equations; they do not manufacture
disjointness for the Python state.  Gate 1 instead checks literal target ids
over each complete exported carrier in `FiniteMachine.lean` and packages the
result in `Gate1Assembly.lean`.
-/

inductive ControllerSource
    (VLam Head Neutral Enter Return : Type) where
  | vlam (source : VLam)
  | head (source : Head)
  | neutral (source : Neutral)
  | enter (source : Enter)
  | returnFromChild (source : Return)

inductive ControllerLanding
    (VLam Head Neutral Enter Return : Type) where
  | lambdaOpen (target : VLam)
  | headSpine (target : Head)
  | neutralHead (target : Neutral)
  | entered (target : Enter)
  | returned (target : Return)

def controllerTarget
    (vlam : VLamSource Path Log OutputPath Payload → VLamT)
    (head : HeadSource Binder HeadPayload → HeadT)
    (neutral : NeutralProbeSource Gate NeutralBinder Logged NeutralScope
      NeutralPayload → NeutralT)
    (enter : EnterSource EnterPath EnterOutput EnterPayload → EnterT)
    (ret : ReturnSource Parent ReturnOutput Prefix ReturnPayload → ReturnT) :
    ControllerSource
      (VLamSource Path Log OutputPath Payload)
      (HeadSource Binder HeadPayload)
      (NeutralProbeSource Gate NeutralBinder Logged NeutralScope NeutralPayload)
      (EnterSource EnterPath EnterOutput EnterPayload)
      (ReturnSource Parent ReturnOutput Prefix ReturnPayload) →
    ControllerLanding VLamT HeadT NeutralT EnterT ReturnT
  | .vlam source => .lambdaOpen (vlam source)
  | .head source => .headSpine (head source)
  | .neutral source => .neutralHead (neutral source)
  | .enter source => .entered (enter source)
  | .returnFromChild source => .returned (ret source)

theorem controllerTarget_injective
    (vlam : VLamSource Path Log OutputPath Payload → VLamT)
    (head : HeadSource Binder HeadPayload → HeadT)
    (neutral : NeutralProbeSource Gate NeutralBinder Logged NeutralScope
      NeutralPayload → NeutralT)
    (enter : EnterSource EnterPath EnterOutput EnterPayload → EnterT)
    (ret : ReturnSource Parent ReturnOutput Prefix ReturnPayload → ReturnT)
    (vlamInjective : Function.Injective vlam)
    (headInjective : Function.Injective head)
    (neutralInjective : Function.Injective neutral)
    (enterInjective : Function.Injective enter)
    (returnInjective : Function.Injective ret) :
    Function.Injective
      (controllerTarget vlam head neutral enter ret) := by
  intro left right same
  cases left <;> cases right <;>
    simp_all [controllerTarget, Function.Injective]
  all_goals
    first
    | exact vlamInjective same
    | exact headInjective same
    | exact neutralInjective same
    | exact enterInjective same
    | exact returnInjective same

end QalcReadbackController
