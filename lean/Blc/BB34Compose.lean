/-
The 34-bit composition exclusion
`0100011010000001110000111001111010`.

With A x y = x (y ∘ x), the term (λx.x x) A produces an infinite
normal-form prefix. The family below includes A and arbitrary finite
compositions of a free variable with another family member. Every pair
of family members exposes a rigid head whose argument contains another
such pair. Variable shifts are explicit: the family is not closed-term
only, and the proof never identifies distinct binder levels.
This formalizes the composition argument in ref/AIT/BB/BB.txt.
-/
import Blc.NormalOrder
import Blc.Wire

namespace Blc.BB34Compose
open Term

def A : Term := .lam (.lam (.app (.var 1)
  (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))

def compose (i : Nat) (c : Term) : Term :=
  .lam (.app (.var (i + 1)) (.app (shift 1 0 c) (.var 0)))

def target : Term := .app (.lam (.app (.var 0) (.var 0))) A

inductive Comp : Term → Prop where
  | base : Comp A
  | wrap (i : Nat) {c : Term} : Comp c → Comp (compose i c)

theorem A_closed : Closed A := by decide

theorem shift_A : shift 1 0 A = A := shift_closed 1 0 A_closed

theorem shift_compose (i : Nat) (c : Term) :
    shift 1 0 (compose i c) = compose (i + 1) (shift 1 0 c) := by
  simp only [compose, shift]
  rw [shift_shift c 0 0 (Nat.le_refl 0)]
  simp

theorem comp_shift {c : Term} (hc : Comp c) : Comp (shift 1 0 c) := by
  induction hc with
  | base => rw [shift_A]; exact .base
  | wrap i hc ih => rw [shift_compose]; exact .wrap (i + 1) ih

theorem compose_step (i : Nat) (c d : Term) :
    headStep (.app (compose i c) d) = some (.app (.var i) (.app c d)) := by
  simp only [compose, headStep, contract, substDec]
  rw [substDec_shift c d 0]
  simp

theorem A_step (d : Term) : headStep (.app A d) =
    some (.lam (.app (shift 1 0 d) (compose 0 (shift 1 0 d)))) := by rfl

theorem pair_landing {c d : Term} (hc : Comp c) (hd : Comp d) :
    ∃ k s a b, headSteps k (.app c d) = some s ∧ headStep s = none ∧
      NfChild (.app a b) s ∧ Comp a ∧ Comp b := by
  cases hc with
  | wrap i hc =>
      rename_i c
      refine ⟨1, .app (.var i) (.app c d), c, d, ?_, rfl,
        .arg (.var i) _, hc, hd⟩
      simp [headSteps, compose_step]
  | base =>
      cases hd with
      | wrap i hd =>
          rename_i d
          let b := compose 0 (shift 1 0 (compose i d))
          refine ⟨2, .lam (.app (.var (i + 1)) (.app (shift 1 0 d) b)),
            shift 1 0 d, b, ?_, rfl,
            .trans (.arg (.var (i + 1)) _) (.lam _),
            comp_shift hd, .wrap 0 (comp_shift (.wrap i hd))⟩
          rw [headSteps, A_step]
          simp only [Option.bind_some]
          have hs : headStep (.lam (.app (shift 1 0 (compose i d)) b)) =
              some (.lam (.app (.var (i + 1)) (.app (shift 1 0 d) b))) := by
            change (headStep (.app (shift 1 0 (compose i d)) b)).map Term.lam = _
            rw [shift_compose, compose_step]
            rfl
          change headSteps 1 (.lam (.app (shift 1 0 (compose i d)) b)) = _
          simp [headSteps, hs]
      | base =>
          refine ⟨3, .lam (.lam (.app (.var 1)
            (.app A (compose 0 (compose 1 A))))),
            A, compose 0 (compose 1 A), ?_, rfl,
            .trans (.trans (.arg (.var 1) _) (.lam _)) (.lam _),
            .base, .wrap 0 (.wrap 1 .base)⟩
          decide

theorem target_landing : headSteps 4 target =
    some (.lam (.lam (.app (.var 1)
      (.app A (compose 0 (compose 1 A)))))) := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ c d, Comp c ∧ Comp d ∧ t = .app c d

theorem advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨c, d, hc, hd, rfl⟩
  · exact ⟨4, _, _, target_landing, rfl,
      .trans (.trans (.arg (.var 1) _) (.lam _)) (.lam _),
      Or.inr ⟨A, compose 0 (compose 1 A), .base, .wrap 0 (.wrap 1 .base), rfl⟩⟩
  · obtain ⟨k, s, a, b, hs, hsn, hchild, ha, hb⟩ := pair_landing hc hd
    exact ⟨k, s, _, hs, hsn, hchild, Or.inr ⟨a, b, ha, hb, rfl⟩⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive advance (Or.inl rfl)

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, true, true, false, false,
     false, false, true, true, true, false, false, true, true, true,
     true, false, true, false] := by decide

end Blc.BB34Compose
