/-
A Boolean-preserving recursive generator.

  H_A = lambda u v g. A g (g g),
  B_A = lambda z. z H_A F,
  G_A = lambda x. x I B_A x.

It fixes the two Church Booleans, exposes H_A F on identity, and satisfies

  G_A G_A ->* A G_A (G_A G_A).

The core absorbs two pending operands and uses the final supplied g;
it does not capture the first x. This is a construction lead, not a
qualified self-interpreter or a bit improvement. The generator has
48 bits of overhead for closed A.
-/
import Blc.SelfintClass

namespace Blc.SelfintArchitecture8BooleanKnot
open Term SelfintControl SelfintClass SelfintWireCost

set_option maxRecDepth 8192

/-- The core has two unused operands followed by its actual generator. -/
def coreTemplate : Term :=
  .lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 0)))))
def core (A : Term) : Term := substDec 0 A coreTemplate

/-- A is the only free parameter, at index zero. The core is nested below
x,z, so A is at index five and its supplied generator g is at index zero. -/
def template : Term :=
  .lam (.app (.app (.app (.var 0) idT)
    (.lam (.app (.app (.var 0)
      (.lam (.lam (.lam (.app (.app (.var 5) (.var 0))
        (.app (.var 0) (.var 0))))))) churchFalse))) (.var 0))

def generator (A : Term) : Term := substDec 0 A template

theorem template_scope : FreeUnder 1 template := by decide

theorem generator_closed {A : Term} (hA : Closed A) : Closed (generator A) :=
  subst_scope template A 0 0 (by omega) template_scope hA

private theorem run_true : spineSteps 4 (.app template churchTrue) = some churchTrue := by decide
private theorem run_false : spineSteps 6 (.app template churchFalse) = some churchFalse := by decide
private theorem run_identity : spineSteps 5 (.app template idT) = some (.app coreTemplate churchFalse) := by decide
private theorem run_diagonal : spineSteps 9 (.app template template) =
    some (.app (.app (.var 0) template) (.app template template)) := by decide

/-- The first Boolean service, for arbitrary possibly open A. -/
theorem generator_true (A : Term) :
    SpineReds (.app (generator A) churchTrue) churchTrue := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ run_true) 0 A
  simpa only [generator,substDec,substDec_churchTrue] using h

/-- The second Boolean service. Neither Boolean service inspects A. -/
theorem generator_false (A : Term) :
    SpineReds (.app (generator A) churchFalse) churchFalse := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ run_false) 0 A
  simpa only [generator,substDec,substDec_churchFalse] using h

/-- Identity exposes the core already seeded by F, the semantic closed-I
closure used by applicative accumulators. The other two arguments remain. -/
theorem generator_identity (A : Term) :
    SpineReds (.app (generator A) idT) (.app (core A) churchFalse) := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ run_identity) 0 A
  simpa only [generator,core,substDec,substDec_idT,substDec_churchFalse] using h

/-- The exact recursive equation, retaining the generator as a separate
argument of A so its Boolean services are available to the constructed body. -/
theorem generator_diagonal (A : Term) :
    SpineReds (.app (generator A) (generator A))
      (.app (.app A (generator A)) (.app (generator A) (generator A))) := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ run_diagonal) 0 A
  simpa only [generator,substDec,if_true] using h

def diagonal : Term := .lam (.app (.var 0) (.var 0))
def knot (A : Term) : Term := .app diagonal (generator A)

theorem knot_closed {A : Term} (hA : Closed A) : Closed (knot A) :=
  ⟨by decide, generator_closed hA⟩

theorem knot_entry (A : Term) :
    SpineReds (knot A) (.app (generator A) (generator A)) := by
  exact spine_beta (.app (.var 0) (.var 0)) (generator A)

/-- A finite source containing G once is beta-equal to the same recursive
right side with that source used for the recursion argument. -/
theorem knot_equation (A : Term) :
    BetaJoin (knot A) (.app (.app A (generator A)) (knot A)) := by
  refine ⟨.app (.app A (generator A)) (.app (generator A) (generator A)), ?_, ?_⟩
  · exact betas_of_spineReds (spineReds_trans (knot_entry A) (generator_diagonal A))
  · exact betas_appR _ (betas_of_spineReds (knot_entry A))

/-- Exact size for a closed body parameter. This generic interface is
expensive; inlining and specializing A can change the complete source price. -/
theorem generator_wire (A : Term) (hA : Closed A) : wire (generator A) = 48 + wire A := by
  simp [generator,template,substDec,shift_closed _ _ hA,wire_app,wire_lam,wire_var,
    churchFalse,idT]
  omega

theorem knot_wire (A : Term) (hA : Closed A) : wire (knot A) = 58 + wire A := by
  rw [knot,wire_app,generator_wire A hA]
  simp [diagonal,wire_lam,wire_app,wire_var]
  omega

/-- The canonical parser functional with its reader's I replaced by the
supplied Boolean-preserving generator g, free at index zero outside p,c,s. -/
def canonicalBody : Term :=
  .lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) varArm162) nextT162)))

/-- A hand-specialized core retaining the sharing let p=g g. -/
def canonicalCore : Term :=
  .lam (.lam (.lam (.app canonicalBody (.app (.var 0) (.var 0)))))

def canonicalGenerator : Term :=
  .lam (.app (.app (.app (.var 0) idT)
    (.lam (.app (.app (.var 0) canonicalCore) churchFalse))) (.var 0))

/-- Durable source of the current 197-bit sketch. Only closedness and
wire size are asserted here: this is not a battery-qualified interpreter
and no IsSelfInterpreter theorem is claimed for this specialization. -/
def canonicalSketch : Term := .app diagonal canonicalGenerator

theorem canonicalSketch_closed : Closed canonicalSketch := by decide
theorem canonicalSketch_wire : wire canonicalSketch = 197 := by decide

#print axioms generator_true
#print axioms generator_false
#print axioms generator_identity
#print axioms generator_diagonal
#print axioms knot_equation
#print axioms generator_wire
#print axioms canonicalSketch_wire
end Blc.SelfintArchitecture8BooleanKnot
