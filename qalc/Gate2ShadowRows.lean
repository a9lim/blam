import Gate2CnotDelta

/-!
# Abstract coordinate lemmas for the native-CNOT shadow rows

The Python shadow stores these coordinates as tuples.  This typed abstraction
makes the intended information flow explicit: the two-bit image is inverted
by CNOT itself, delivery retains its erased log split, and abstract controller
constructors have disjoint tags.  It is not a refinement theorem for the
physical `NFRun` rows by itself. Their literal inverses and physical range
checks are `custom_predecessor` plus generated finite-machine certificates;
the unbounded actual-machine refinement is proved separately by the contextual
and clean-compilation modules recorded in `GATE2.md`.
-/

namespace QalcGate2ShadowRows

open QalcGate2CnotDelta

inductive Port where | first | second
  deriving DecidableEq, Repr

inductive GateTag where | h | t | c1 | c2
  deriving DecidableEq, Repr

inductive Descriptor (Instance Epoch Logged : Type) where
  | alpha (gate : GateTag) (inst : Instance) (epoch : Epoch)
  | logged (value : Logged)
  deriving DecidableEq, Repr

structure FrameDescriptor (Instance Epoch : Type) where
  gate : GateTag
  inst : Instance
  epoch : Epoch
  deriving DecidableEq, Repr

structure CallSource (Instance Occurrence Path Residue : Type) where
  invoked : Instance
  occurrence : Occurrence
  first : Path
  second : Path
  continuation : Path
  residue : Residue
  deriving DecidableEq, Repr

structure CallTarget (Instance Occurrence Path Residue : Type) where
  invoked : Instance
  occurrence : Occurrence
  first : Path
  second : Path
  continuation : Path
  residue : Residue
  deriving DecidableEq, Repr

def call (source : CallSource I O P R) : CallTarget I O P R :=
  ⟨source.invoked, source.occurrence, source.first, source.second,
   source.continuation, source.residue⟩

def uncall (target : CallTarget I O P R) : CallSource I O P R :=
  ⟨target.invoked, target.occurrence, target.first, target.second,
   target.continuation, target.residue⟩

theorem uncall_call (source : CallSource I O P R) :
    uncall (call source) = source := by cases source; rfl

theorem call_injective : Function.Injective (@call I O P R) := by
  intro left right same
  rw [← uncall_call left, ← uncall_call right, same]

structure ParkSource (Instance Occurrence Path Epoch Logged Residue : Type)
    where
  invoked : Instance
  occurrence : Occurrence
  first : Path
  second : Path
  continuation : Path
  bit : Bit
  descriptor : Descriptor Instance Epoch Logged
  frames : List (FrameDescriptor Instance Epoch)
  residue : Residue
  deriving DecidableEq, Repr

structure Parked (Instance Occurrence Path Epoch Logged Residue : Type) where
  invoked : Instance
  occurrence : Occurrence
  first : Path
  second : Path
  continuation : Path
  bit : Bit
  descriptor : Descriptor Instance Epoch Logged
  frames : List (FrameDescriptor Instance Epoch)
  residue : Residue
  deriving DecidableEq, Repr

def park (source : ParkSource I O P E L R) : Parked I O P E L R :=
  ⟨source.invoked, source.occurrence, source.first, source.second,
   source.continuation, source.bit, source.descriptor, source.frames,
   source.residue⟩

def unpark (target : Parked I O P E L R) : ParkSource I O P E L R :=
  ⟨target.invoked, target.occurrence, target.first, target.second,
   target.continuation, target.bit, target.descriptor, target.frames,
   target.residue⟩

theorem unpark_park (source : ParkSource I O P E L R) :
    unpark (park source) = source := by cases source; rfl

theorem park_injective : Function.Injective (@park I O P E L R) := by
  intro left right same
  rw [← unpark_park left, ← unpark_park right, same]

structure FireSource (Instance Occurrence Path Epoch Logged Residue : Type)
    where
  invoked : Instance
  occurrence : Occurrence
  continuation : Path
  input : Pair
  firstDescriptor : Descriptor Instance Epoch Logged
  firstFrames : List (FrameDescriptor Instance Epoch)
  secondDescriptor : Descriptor Instance Epoch Logged
  secondFrames : List (FrameDescriptor Instance Epoch)
  residue : Residue
  deriving DecidableEq, Repr

structure Fired (Instance Occurrence Path Epoch Logged Residue : Type) where
  invoked : Instance
  occurrence : Occurrence
  continuation : Path
  output : Pair
  firstDescriptor : Descriptor Instance Epoch Logged
  firstFrames : List (FrameDescriptor Instance Epoch)
  secondDescriptor : Descriptor Instance Epoch Logged
  secondFrames : List (FrameDescriptor Instance Epoch)
  residue : Residue
  deriving DecidableEq, Repr

def fire (source : FireSource I O P E L R) : Fired I O P E L R :=
  ⟨source.invoked, source.occurrence, source.continuation,
   cnot source.input, source.firstDescriptor, source.firstFrames,
   source.secondDescriptor, source.secondFrames, source.residue⟩

def unfire (target : Fired I O P E L R) : FireSource I O P E L R :=
  ⟨target.invoked, target.occurrence, target.continuation,
   cnot target.output, target.firstDescriptor, target.firstFrames,
   target.secondDescriptor, target.secondFrames, target.residue⟩

theorem unfire_fire (source : FireSource I O P E L R) :
    unfire (fire source) = source := by
  cases source
  simp [fire, unfire, cnot_involutive]

theorem fire_injective : Function.Injective (@fire I O P E L R) := by
  intro left right same
  rw [← unfire_fire left, ← unfire_fire right, same]

theorem fire_output_clean
    (left right : FireSource I O P E L R)
    (sameResidue : left.residue = right.residue) :
    (fire left).residue = (fire right).residue := by
  simpa [fire] using sameResidue

structure DeliverySource (Instance Epoch Logged Residue : Type) where
  port : Port
  invoked : Instance
  bit : Bit
  epoch : Epoch
  logged : Logged
  residue : Residue
  deriving DecidableEq, Repr

structure Delivered (Instance Epoch Logged Residue : Type) where
  port : Port
  invoked : Instance
  alphaBit : Bit
  epoch : Epoch
  queryLogged : Logged
  residue : Residue
  deriving DecidableEq, Repr

def deliver (source : DeliverySource I E L R) : Delivered I E L R :=
  ⟨source.port, source.invoked, source.bit, source.epoch,
   source.logged, source.residue⟩

def undeliver (target : Delivered I E L R) : DeliverySource I E L R :=
  ⟨target.port, target.invoked, target.alphaBit, target.epoch,
   target.queryLogged, target.residue⟩

theorem undeliver_deliver (source : DeliverySource I E L R) :
    undeliver (deliver source) = source := by cases source; rfl

theorem deliver_injective : Function.Injective (@deliver I E L R) := by
  intro left right same
  rw [← undeliver_deliver left, ← undeliver_deliver right, same]

inductive DeadPhase where | open | answered
  deriving DecidableEq, Repr

structure DeadPort (Instance Epoch Logged Residue : Type) where
  port : Port
  invoked : Instance
  epoch : Epoch
  logged : Logged
  phase : DeadPhase
  residue : Residue
  deriving DecidableEq, Repr

def answer : DeadPort I E L R → Option (DeadPort I E L R)
  | ⟨port, invoked, epoch, logged, .open, residue⟩ =>
      some ⟨port, invoked, epoch, logged, .answered, residue⟩
  | ⟨_, _, _, _, .answered, _⟩ => none

def unanswer : DeadPort I E L R → Option (DeadPort I E L R)
  | ⟨port, invoked, epoch, logged, .answered, residue⟩ =>
      some ⟨port, invoked, epoch, logged, .open, residue⟩
  | ⟨_, _, _, _, .open, _⟩ => none

theorem unanswer_answer (source : DeadPort I E L R)
    (openPhase : source.phase = .open) :
    (answer source).bind unanswer = some source := by
  cases source with
  | mk port invoked epoch logged phase residue =>
      cases phase <;> simp_all [answer, unanswer]

/-! Constructor tags are the target-side range classifier; no two custom
deterministic rows can share a physical landing of this typed extension. -/
inductive Landing (I O P E L R : Type) where
  | called (value : CallTarget I O P R)
  | parkStage (value : Parked I O P E L R)
  | parked (value : Parked I O P E L R)
  | fireStage (value : Fired I O P E L R)
  | fired (value : Fired I O P E L R)
  | deliveryStage (value : Delivered I E L R)
  | delivered (value : Delivered I E L R)
  | answered (value : DeadPort I E L R)
  | returned (occurrence : O) (residue : R)
  deriving DecidableEq, Repr

inductive RowTag where
  | call | park1 | park2 | fire1 | fire2 | deliver1 | deliver2
  | answer1 | answer2 | ret
  deriving DecidableEq, Repr

def rangeTag : Landing I O P E L R → RowTag
  | .called _ => .call
  | .parkStage _ => .park1
  | .parked _ => .park2
  | .fireStage _ => .fire1
  | .fired _ => .fire2
  | .deliveryStage _ => .deliver1
  | .delivered _ => .deliver2
  | .answered value =>
      if value.phase = .open then .answer1 else .answer2
  | .returned _ _ => .ret

theorem different_tags_disjoint {left right : Landing I O P E L R}
    (different : rangeTag left ≠ rangeTag right) : left ≠ right := by
  intro same
  exact different (congrArg rangeTag same)

/-! Every macro row is split by an odd transient stage. -/
def stageColor : Landing I O P E L R → Bool
  | .parkStage _ | .fireStage _ | .deliveryStage _ => true
  | _ => false

theorem park_stage_flips (value : Parked I O P E L R) :
    @stageColor I O P E L R (.parkStage value) ≠
      @stageColor I O P E L R (.parked value) := by
  simp [stageColor]

theorem fire_stage_flips (value : Fired I O P E L R) :
    @stageColor I O P E L R (.fireStage value) ≠
      @stageColor I O P E L R (.fired value) := by
  simp [stageColor]

theorem delivery_stage_flips (O P : Type) (value : Delivered I E L R) :
    @stageColor I O P E L R (.deliveryStage value) ≠
      @stageColor I O P E L R (.delivered value) := by
  simp [stageColor]

end QalcGate2ShadowRows
