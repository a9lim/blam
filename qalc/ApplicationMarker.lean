import Std
import ReadbackController

/-!
# qALC typed application transport

The composed machine uses `BA` for every lambda-IAM bullet, including gate
transport and observable emitted-lambda prefixes.  The audited kernel's plain
bullet exists only across the bijective adapter boundary. Consequently every
persistent b3 has one source schema: append `f` and restore BA. There is no
erased plain/skip/done phase and no reachable classifier premise.

The small records below are the literal changed coordinates; `Payload` is the
complete untouched token/zipper state.  No reachability or classifier
hypothesis occurs in `appPopTarget_injective`.
-/

namespace QalcApplicationMarker

universe u v w

inductive Direction where
  | down
  | up
  deriving DecidableEq, Repr

inductive CodeKind where
  | application
  | lambda
  | other
  deriving DecidableEq, Repr

abbrev Marker := QalcReadbackController.BulletTag

structure AppPopSource (Program : Type u) (Path : Type v)
    (Payload : Type w) where
  program : Program
  parent : Path
  payload : Payload

structure AppPopLanding (Program : Type u) (Path : Type v)
    (Payload : Type w) where
  program : Program
  parent : Path
  payload : Payload

def appPopTarget
    (source : AppPopSource Program Path Payload) :
    AppPopLanding Program Path Payload :=
  ⟨source.program, source.parent, source.payload⟩

def appPopPredecessor
    (landing : AppPopLanding Program Path Payload) :
    AppPopSource Program Path Payload :=
  ⟨landing.program, landing.parent, landing.payload⟩

theorem appPop_left_inverse (source : AppPopSource Program Path Payload) :
    appPopPredecessor (appPopTarget source) = source := by
  cases source
  rfl

theorem appPopTarget_injective :
    Function.Injective (@appPopTarget Program Path Payload) :=
  Function.LeftInverse.injective appPop_left_inverse

/-! The physical push ranges use actual direction/code/tape coordinates.
b1 lands downward; beta b4 lands upward at a lambda; b3 lands upward at the
parent application.  These are the structural discriminants used by the
composed dispatch, rather than invented sum constructors. -/

structure PhysicalLanding (Payload : Type u) where
  direction : Direction
  code : CodeKind
  tapeHead : Marker
  payload : Payload
  deriving DecidableEq, Repr

structure B1Source (Payload : Type u) where
  landingCode : CodeKind
  payload : Payload

structure B4Source (Payload : Type u) where
  payload : Payload

structure B3Source (Payload : Type u) where
  tailHead : Marker
  payload : Payload

def b1Landing (source : B1Source Payload) : PhysicalLanding Payload :=
  ⟨.down, source.landingCode, .application, source.payload⟩

def b4Landing (source : B4Source Payload) : PhysicalLanding Payload :=
  ⟨.up, .lambda, .application, source.payload⟩

def b3Landing (source : B3Source Payload) : PhysicalLanding Payload :=
  ⟨.up, .application, source.tailHead, source.payload⟩

theorem b1Landing_injective : Function.Injective (@b1Landing Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [b1Landing]

theorem b4Landing_injective : Function.Injective (@b4Landing Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [b4Landing]

theorem b3Landing_injective : Function.Injective (@b3Landing Payload) := by
  intro left right same
  cases left
  cases right
  simp_all [b3Landing]

theorem b1_range_disjoint_b4
    (left : B1Source Payload) (right : B4Source Payload) :
    b1Landing left ≠ b4Landing right := by
  intro same
  have directionSame := congrArg PhysicalLanding.direction same
  simp [b1Landing, b4Landing] at directionSame

theorem b1_range_disjoint_b3
    (left : B1Source Payload) (right : B3Source Payload) :
    b1Landing left ≠ b3Landing right := by
  intro same
  have directionSame := congrArg PhysicalLanding.direction same
  simp [b1Landing, b3Landing] at directionSame

theorem b4_range_disjoint_b3
    (left : B4Source Payload) (right : B3Source Payload) :
    b4Landing left ≠ b3Landing right := by
  intro same
  have codeSame := congrArg PhysicalLanding.code same
  simp [b4Landing, b3Landing] at codeSame

inductive KernelMarker where
  | plain
  deriving DecidableEq, Repr

inductive ComposedMarker where
  | application
  deriving DecidableEq, Repr

def toKernel : ComposedMarker → KernelMarker
  | .application => .plain

def fromKernel : KernelMarker → ComposedMarker
  | .plain => .application

theorem marker_to_from (marker : KernelMarker) :
    toKernel (fromKernel marker) = marker := by
  cases marker
  rfl

theorem marker_from_to (marker : ComposedMarker) :
    fromKernel (toKernel marker) = marker := by
  cases marker
  rfl

end QalcApplicationMarker
