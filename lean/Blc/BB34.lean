/-
Productive normal-form descent for the guarded 34-bit survivors.

These are not head-divergent: reduction exposes rigid variable heads,
but normalizing their arguments always demands another member of the
same family. The proof descends strictly through a hypothetical finite
normal form, using Blc.NormalOrder.

The recurrences are already described informally in Tromp's BB/BB.txt;
this file supplies exact wire identities and kernel-checked proofs under
arbitrary β reduction.
-/
import Blc.NormalOrder
import Blc.Wire

namespace Blc.BB34
open Term

theorem rigid_headNormal {u : Term} (hu : Rigid u) : headStep u = none := by
  induction hu with
  | var n => rfl
  | app a hu ih =>
      rename_i f
      cases f with
      | var n => rfl
      | app f a' =>
          change (headStep (.app f a')).map (Term.app · a) = none
          rw [ih]
          rfl
      | lam b => cases hu

namespace Duplicate

/-- A a b = b ((a a) (b b)). -/
def A : Term := .lam (.lam (.app (.var 0)
  (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))
def P : Term := .app A A
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A
def state (u : Term) : Term := .app P u
def next (u : Term) : Term := .app u u

theorem cycle (u : Term) :
    headSteps 2 (state u) = some (.app u (state (next u))) := by rfl

theorem init : headSteps 2 target =
    some (.lam (.app (.var 0) (state (next (.var 0))))) := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ u, Rigid u ∧ t = state u

theorem advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨u, hu, rfl⟩
  · refine ⟨2, _, state (next (.var 0)), init, rfl, ?_,
      Or.inr ⟨next (.var 0), Rigid.app _ (.var 0), rfl⟩⟩
    exact .trans (.arg (.var 0) _) (.lam _)
  · exact ⟨2, _, state (next u), cycle u,
      rigid_headNormal (Rigid.app _ hu), .arg hu _,
      Or.inr ⟨next u, Rigid.app _ hu, rfl⟩⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive advance (Or.inl rfl)

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, true, false, false, true,
     false, true, true, true, false, true, true, false, false, true,
     true, false, true, false] := by decide

end Duplicate

namespace SelfArgument

/-- A a b = (b b) ((a b) a). -/
def A : Term := .lam (.lam (.app (.app (.var 0) (.var 0))
  (.app (.app (.var 1) (.var 0)) (.var 1))))
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A
def state (u : Term) : Term := .app (.app A u) A
def next (u : Term) : Term := .app (.app u A) u

theorem cycle (u : Term) : headSteps 4 (state u) =
    some (.app (.app (next u) (next u)) (state (next u))) := by
  simp [state, next, A, headSteps, headStep, contract, substDec,
    substDec_shift]

theorem init : headSteps 2 target =
    some (.lam (.app (.app (.var 0) (.var 0)) (state (.var 0)))) := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ u, Rigid u ∧ t = state u

theorem advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨u, hu, rfl⟩
  · refine ⟨2, _, state (.var 0), init, rfl, ?_,
      Or.inr ⟨.var 0, .var 0, rfl⟩⟩
    exact .trans (.arg (.app _ (.var 0)) _) (.lam _)
  · have hn : Rigid (next u) := .app _ (.app _ hu)
    exact ⟨4, _, state (next u), cycle u,
      rigid_headNormal (.app _ (.app _ hn)), .arg (.app _ hn) _,
      Or.inr ⟨next u, hn, rfl⟩⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive advance (Or.inl rfl)

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, false, true, true, false,
     true, false, false, true, false, true, true, true, false, true,
     false, true, true, false] := by decide

end SelfArgument
end Blc.BB34
