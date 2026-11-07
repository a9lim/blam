/-
Capture-bearing source binders need not lie on a source-copy cycle.

Let Q = lambda a b. a b and F = lambda f s. s I
  (lambda t z. z Q (f f t)). On affine Scott numerals N_n, F F N_n
terminates at the normal captureProgram n. Every nonlinear contraction in
the chosen trace has the closed, noncapturing outer-f copier shape F F.
The two initial F occurrences have distinct source origins; both outer f
binders are noncapturing. All capture-bearing source binders contract
affinely or survive in output.

This is a counterexample to deriving a capturing-origin cycle from affine
input and unbounded normal capture output alone. It is not a BLC
self-interpreter or a refutation of a theorem using its full contract.
-/
import Blc.SelfintRound5BoundCapture
import Blc.SelfintFloorArg

namespace Blc.SelfintRound5BoundSink
open Term SelfintCapture SelfintLowerBound SelfintRound5BoundCapture SelfintFloor

def identity : Term := .lam (.var 0)

def generatorBody : Term :=
  .lam (.app (.app (.var 0) identity)
    (.lam (.lam (.app (.app (.var 0) mixed)
      (.app (.app (.var 3) (.var 3)) (.var 1))))))

def generator : Term := .lam generatorBody
def knot : Term := .app generator generator

def next : Term :=
  .lam (.lam (.app (.app (.var 0) mixed) (.app knot (.var 1))))

def scott : Nat → Term
  | 0 => .lam (.lam (.var 1))
  | n + 1 => .lam (.lam (.app (.var 0) (scott n)))

def input (n : Nat) : Term := .app knot (scott n)

theorem generator_closed : Closed generator := by decide
theorem knot_closed : Closed knot := by decide
theorem next_closed : Closed next := by decide
theorem identity_closed : Closed identity := by decide
theorem mixed_closed : Closed mixed := by decide

theorem scott_closed (n : Nat) : Closed (scott n) := by
  induction n with
  | zero => decide
  | succ n ih => exact ⟨by decide, closed_freeUnder ih 2⟩

theorem scott_occ (n j : Nat) : occ j (scott n) = 0 :=
  occ_of_freeUnder _ 0 j (scott_closed n) (by omega)

theorem scott_normal (n : Nat) : NFt (scott n) := by
  induction n with
  | zero => decide
  | succ n ih => exact ⟨by decide, trivial, ih⟩

theorem scott_affine (n : Nat) : nonlinear (scott n) = 0 := by
  induction n with
  | zero => decide
  | succ n ih =>
      simp only [scott, nonlinear, occ, scott_occ, ih]
      decide

theorem scott_separated (n d : Nat) : Separated d (scott n) := by
  induction n generalizing d with
  | zero =>
      refine ⟨⟨trivial, ?_⟩, ?_⟩
      · intro h; change 0 < 0 at h; omega
      · intro _ i _; simp only [occ]; split <;> omega
  | succ n ih =>
      refine ⟨⟨⟨trivial, ih (d + 2)⟩, ?_⟩, ?_⟩
      · intro _ i _
        simp only [occ, scott_occ, Nat.add_zero]
        split <;> omega
      · intro h
        have hz : occ 0 (.lam (.app (.var 0) (scott n))) = 0 := by
          simp only [occ, scott_occ]; decide
        omega

theorem scott_captures (n d : Nat) : captures d (scott n) = 0 :=
  captures_zero_of_separated _ _ (scott_separated n d)

/-- The only nonlinear binder in the fixed generator is its outer f. -/
theorem generator_nonlinear : nonlinear generator = 1 := by decide
theorem generator_occ : occ 0 generatorBody = 2 := by decide

/-- The copier has no local capture at any depth. -/
theorem generator_quiet (d : Nat) : Quiet d generatorBody := by
  intro _ i _
  exact occ_of_freeUnder _ 1 (i + 1) generator_closed (by omega)

theorem generator_capture_flag (d : Nat) : captureFlag d generatorBody = 0 := by
  exact if_pos (generator_quiet d)

/-- Each primitive contraction is either affine or contracts exactly the
closed outer f of F. The constructors retain that restriction in context. -/
inductive Step : Nat → Term → Term → Prop
  | affine {d : Nat} (b a : Term) : occ 0 b ≤ 1 →
      Step d (.app (.lam b) a) (contract b a)
  | copy (d : Nat) : Step d knot (contract generatorBody generator)
  | appL {d : Nat} {f g : Term} (a : Term) :
      Step d f g → Step d (.app f a) (.app g a)
  | appR {d : Nat} {a b : Term} (f : Term) :
      Step d a b → Step d (.app f a) (.app f b)
  | lam {d : Nat} {b c : Term} :
      Step (d + 1) b c → Step d (.lam b) (.lam c)

inductive Steps (d : Nat) : Term → Term → Prop
  | refl (t : Term) : Steps d t t
  | head {t u v : Term} : Step d t u → Steps d u v → Steps d t v

theorem Step.beta {d : Nat} {t u : Term} (h : Step d t u) : Beta t u := by
  induction h with
  | affine b a _ => exact .beta b a
  | copy => exact .beta _ _
  | appL a _ ih => exact .appL a ih
  | appR f _ ih => exact .appR f ih
  | lam _ ih => exact .lam ih

theorem Steps.betas {d : Nat} {t u : Term} (h : Steps d t u) : Betas t u := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head hb.beta ih

theorem Steps.trans {d : Nat} {t u v : Term} (h : Steps d t u)
    (g : Steps d u v) : Steps d t v := by
  induction h with
  | refl => exact g
  | head hb _ ih => exact .head hb (ih g)

theorem Steps.one {d : Nat} {t u : Term} (h : Step d t u) : Steps d t u :=
  .head h (.refl _)

theorem Steps.appL {d : Nat} {f g : Term} (a : Term) (h : Steps d f g) :
    Steps d (.app f a) (.app g a) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head (.appL a hb) ih

theorem Steps.appR {d : Nat} {a b : Term} (f : Term) (h : Steps d a b) :
    Steps d (.app f a) (.app f b) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head (.appR f hb) ih

theorem Steps.lam {d : Nat} {b c : Term} (h : Steps (d + 1) b c) :
    Steps d (.lam b) (.lam c) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head (.lam hb) ih

theorem generator_contract : contract generatorBody generator =
    .lam (.app (.app (.var 0) identity) next) := by
  simp only [generatorBody, contract, substDec,
    substDec_closed _ _ identity_closed, substDec_closed _ _ mixed_closed,
    shift_closed _ _ generator_closed]
  rfl

theorem next_contract (n : Nat) : contract
    (.lam (.app (.app (.var 0) mixed) (.app knot (.var 1)))) (scott n) =
    .lam (.app (.app (.var 0) mixed) (input n)) := by
  simp only [contract, substDec, substDec_closed _ _ mixed_closed,
    substDec_closed _ _ knot_closed, shift_closed _ _ (scott_closed n)]
  rfl

theorem run_entry (n d : Nat) :
    Steps d (input n) (.app (.app (scott n) identity) next) := by
  have hcopy := (Steps.one (Step.copy d)).appL (scott n)
  rw [generator_contract] at hcopy
  have hbody : occ 0 (.app (.app (.var 0) identity) next) ≤ 1 := by decide
  have h := Step.affine (d := d) (.app (.app (.var 0) identity) next) (scott n) hbody
  have he : contract (.app (.app (.var 0) identity) next) (scott n) =
      .app (.app (scott n) identity) next := by
    simp only [contract, substDec, substDec_closed _ _ identity_closed,
      substDec_closed _ _ next_closed]
    rfl
  rw [he] at h
  exact hcopy.trans (.one h)

theorem run_zero (d : Nat) : Steps d (input 0) identity := by
  have h := run_entry 0 d
  have h1 : Step d (.app (.app (scott 0) identity) next)
      (.app (.lam identity) next) := by
    exact .appL next (.affine _ _ (by decide))
  have h2 : Step d (.app (.lam identity) next) identity := by
    exact .affine _ _ (by decide)
  exact h.trans (.head h1 (.one h2))

theorem run_succ (n d : Nat) : Steps d (input (n + 1))
    (.lam (.app (.app (.var 0) mixed) (input n))) := by
  have h := run_entry (n + 1) d
  have h1 : Step d (.app (.app (scott (n + 1)) identity) next)
      (.app (.lam (.app (.var 0) (scott n))) next) := by
    have hocc : occ 0 (.lam (.app (.var 0) (scott n))) ≤ 1 := by
      simp only [occ, scott_occ]; decide
    have he : contract (.lam (.app (.var 0) (scott n))) identity =
        .lam (.app (.var 0) (scott n)) := by
      simp only [contract, substDec, substDec_closed _ _ (scott_closed n)]
      rfl
    rw [← he]
    exact .appL next (.affine _ _ hocc)
  have h2 : Step d (.app (.lam (.app (.var 0) (scott n))) next)
      (.app next (scott n)) := by
    have hocc : occ 0 (.app (.var 0) (scott n)) ≤ 1 := by
      simp only [occ, scott_occ]; decide
    have he : contract (.app (.var 0) (scott n)) next =
        .app next (scott n) := by
      simp only [contract, substDec, substDec_closed _ _ (scott_closed n)]
      rfl
    rw [← he]
    exact .affine _ _ hocc
  have h3 : Step d (.app next (scott n))
      (.lam (.app (.app (.var 0) mixed) (input n))) := by
    rw [← next_contract]
    exact .affine _ _ (by decide)
  exact h.trans (.head h1 (.head h2 (.one h3)))

/-- Uniform terminating traces; no copying contraction uses a capturing
source binder. Capturing templates are passengers of the closed copier. -/
theorem run (n d : Nat) : Steps d (input n) (captureProgram n) := by
  induction n generalizing d with
  | zero => exact run_zero d
  | succ n ih =>
      exact (run_succ n d).trans ((ih (d + 1)).appR (.app (.var 0) mixed) |>.lam)

theorem input_captures (n : Nat) : captures 0 (input n) = 8 := by
  change captures 0 knot + captures 0 (scott n) = 8
  rw [scott_captures, Nat.add_zero]
  decide

/-- Arbitrarily large normal capture output from uniformly bounded source
capture count and closed normal affine, capture-free data. -/
theorem unbounded_capture_sinks (n : Nat) :
    Closed (scott n) ∧ NFt (scott n) ∧ nonlinear (scott n) = 0 ∧
    captures 0 (scott n) = 0 ∧ captures 0 (input n) = 8 ∧
    Steps 0 (input n) (captureProgram n) ∧ NFt (captureProgram n) ∧
    captures 0 (captureProgram n) = n :=
  ⟨scott_closed n, scott_normal n, scott_affine n, scott_captures n 0,
    input_captures n, run n 0, captureProgram_normal n, captures_captureProgram n 0⟩

#print axioms run
#print axioms unbounded_capture_sinks
end Blc.SelfintRound5BoundSink
