import Std

/-!
# Canonical predecessor-fibre residue

Gate 1 asks for local minimal garbage, not an append-only execution history.
For a deterministic logical row `f : Source → Target`, the only information
that an injective physical realization must add at target `t` is a coordinate
inside the predecessor fibre `{s // f s = t}`.  The construction below uses
that fibre itself as the residue type.

The lower-bound theorem is the useful part: every other injective realization
with the same logical projection induces an injection from each predecessor
fibre into its garbage coordinates.  Thus the fibre construction carries no
information beyond what injectivity forces, up to recoding of the coordinate.

Quantum blocks such as Hadamard are not compiled through this deterministic
construction: their source columns are already orthogonal in amplitude and
share one clean spectator landing intentionally.
-/

namespace QalcPredecessorFiber

universe u v w

variable {Source : Type u} {Target : Type v}

/-- The exact local collision class over one logical target. -/
def Fiber (logical : Source → Target) (target : Target) :=
  { source : Source // logical source = target }

/-- A physical target consists of the logical target and exactly one
coordinate in its predecessor fibre. -/
def PhysicalTarget (logical : Source → Target) :=
  Σ target, Fiber logical target

def compile (logical : Source → Target) (source : Source) :
    PhysicalTarget logical :=
  ⟨logical source, ⟨source, rfl⟩⟩

theorem compile_injective (logical : Source → Target) :
    Function.Injective (compile logical) := by
  intro left right same
  have sourceSame := congrArg (fun physical => physical.2.1) same
  exact sourceSame

theorem compile_projects (logical : Source → Target) (source : Source) :
    (compile logical source).1 = logical source := by
  rfl

/-! Compare with an arbitrary nondependent garbage representation.  A
dependent implementation can always be flattened to a tagged sum before
applying this theorem. -/

variable {Garbage : Type w}

def fiberCode (logical : Source → Target)
    (encode : Source → Target × Garbage)
    (target : Target) : Fiber logical target → Garbage :=
  fun source => (encode source.1).2

/-- Any injective implementation with the same logical projection must
distinguish every pair in each predecessor fibre. -/
theorem fiberCode_injective
    (logical : Source → Target)
    (encode : Source → Target × Garbage)
    (projects : ∀ source, (encode source).1 = logical source)
    (injective : Function.Injective encode)
    (target : Target) :
    Function.Injective (fiberCode logical encode target) := by
  intro left right sameCode
  apply Subtype.ext
  apply injective
  apply Prod.ext
  · exact (projects left.1).trans <|
      left.2.trans <| right.2.symm.trans <| (projects right.1).symm
  · exact sameCode

/-- The fibre coordinate is sufficient and, by `fiberCode_injective`, every
other correct encoding needs at least an injective recoding of it. -/
theorem local_minimality
    (logical : Source → Target)
    (encode : Source → Target × Garbage)
    (projects : ∀ source, (encode source).1 = logical source)
    (injective : Function.Injective encode) :
    ∀ target, ∃ code : Fiber logical target → Garbage,
      Function.Injective code := by
  intro target
  exact ⟨fiberCode logical encode target,
    fiberCode_injective logical encode projects injective target⟩

/-! The theorem above is only the forced lower bound.  It is satisfied by an
append-only history and therefore does **not** establish exactness of a
particular realization.  Exact predecessor-fibre residue additionally needs a
reconstruction of a source in the fibre from every garbage coordinate. -/

def garbageCode (logical : Source → Target)
    (rebuild : Target → Garbage → Source)
    (rebuildProjects : ∀ target garbage,
      logical (rebuild target garbage) = target)
    (target : Target) : Garbage → Fiber logical target :=
  fun garbage => ⟨rebuild target garbage,
    rebuildProjects target garbage⟩

/-- The missing upper bound: if each garbage coordinate reconstructs a source
in the requested predecessor fibre and the realization recovers that same
garbage, then the machine's garbage injects into the fibre.  Together with
`fiberCode_injective`, this is the two-sided local exactness obligation. -/
theorem garbageCode_injective
    (logical : Source → Target)
    (residue : Source → Garbage)
    (rebuild : Target → Garbage → Source)
    (rebuildProjects : ∀ target garbage,
      logical (rebuild target garbage) = target)
    (rebuildResidue : ∀ target garbage,
      residue (rebuild target garbage) = garbage)
    (target : Target) :
    Function.Injective (garbageCode logical rebuild rebuildProjects target) := by
  intro left right same
  have sourcesSame := congrArg Subtype.val same
  have residuesSame := congrArg residue sourcesSame
  simpa [garbageCode, rebuildResidue] using residuesSame

/-- A two-sided coding between one predecessor fibre and the concrete garbage
coordinate. -/
structure FibreExact (logical : Source → Target) (target : Target)
    (Garbage : Type w) where
  toGarbage : Fiber logical target → Garbage
  toFiber : Garbage → Fiber logical target
  fiber_roundtrip : ∀ source, toFiber (toGarbage source) = source
  garbage_roundtrip : ∀ garbage, toGarbage (toFiber garbage) = garbage

/-- A concrete realization is fibre-exact when reconstruction is also a left
inverse on sources.  The resulting two-sided coding rules out every garbage
coordinate not forced by the logical predecessor fibre. -/
def fibreExact
    (logical : Source → Target)
    (residue : Source → Garbage)
    (rebuild : Target → Garbage → Source)
    (rebuildProjects : ∀ target garbage,
      logical (rebuild target garbage) = target)
    (rebuildResidue : ∀ target garbage,
      residue (rebuild target garbage) = garbage)
    (sourceRebuild : ∀ source,
      rebuild (logical source) (residue source) = source)
    (target : Target) :
    FibreExact logical target Garbage where
  toGarbage source := residue source.1
  toFiber garbage := garbageCode logical rebuild rebuildProjects target garbage
  fiber_roundtrip source := by
    apply Subtype.ext
    change rebuild target (residue source.1) = source.1
    calc
      rebuild target (residue source.1) =
          rebuild (logical source.1) (residue source.1) := by
            exact congrArg (fun selected =>
              rebuild selected (residue source.1)) source.2.symm
      _ = source.1 := sourceRebuild source.1
  garbage_roundtrip garbage := rebuildResidue target garbage

end QalcPredecessorFiber
