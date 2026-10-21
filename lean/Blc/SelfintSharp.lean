/-
The two-nonlinear-binder lower bound is sharp.

A direct affine translation of the 165-bit self-interpreter, using one shared
Delta, has exactly two nonlinear binders. Both nonlinear lambda subterms are
closed, so neither captures an enclosing variable. A kernel-replayed finite
beta trace reduces it to the literal intL165.

Normalizing the affine code with Delta left neutral and gating it on the
first zero produces a beta-normal 742-bit witness with the same structure.
Its all-source contract is proved as beta joinability by confluence.

Generated term and trace: tools/self-interpreter/theory/affine_basis.py.
-/
import Blc.Selfint165
import Blc.SelfintLowerBound

namespace Blc.SelfintSharp
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

inductive Direction where
  | under | left | right
  deriving DecidableEq

/-- Contract the unique redex selected by an explicit syntax path. -/
def atPath : List Direction → Term → Option Term
  | [], .app (.lam b) a => some (contract b a)
  | .under :: ps, .lam b => (atPath ps b).map Term.lam
  | .left :: ps, .app f a => (atPath ps f).map (fun g => .app g a)
  | .right :: ps, .app f a => (atPath ps a).map (fun b => .app f b)
  | _, _ => none

theorem atPath_sound {p : List Direction} {t u : Term}
    (h : atPath p t = some u) : Beta t u := by
  induction p generalizing t u with
  | nil =>
      cases t with
      | var n => simp [atPath] at h
      | lam b => simp [atPath] at h
      | app f a =>
          cases f with
          | var n => simp [atPath] at h
          | app g b => simp [atPath] at h
          | lam b =>
              simp only [atPath, Option.some.injEq] at h
              subst u
              exact .beta b a
  | cons k p ih =>
      cases k <;> cases t <;> simp only [atPath] at h
      all_goals try contradiction
      all_goals
        obtain ⟨v, hv, rfl⟩ := Option.map_eq_some_iff.mp h
      · exact .lam (ih hv)
      · exact .appL _ (ih hv)
      · exact .appR _ (ih hv)

def replay : List (List Direction) → Term → Option Term
  | [], t => some t
  | p :: ps, t => (atPath p t).bind (replay ps)

theorem replay_sound {ps : List (List Direction)} {t u : Term}
    (h : replay ps t = some u) : Betas t u := by
  induction ps generalizing t with
  | nil =>
      simp only [replay, Option.some.injEq] at h
      subst u
      exact .refl _
  | cons p ps ih =>
      cases he : atPath p t with
      | none => simp [replay, he] at h
      | some v =>
          have hr : replay ps v = some u := by simpa [replay, he] using h
          exact .head (atPath_sound he) (ih hr)

/-- Every nonlinear lambda subterm is closed in isolation. -/
def NonlinearClosed : Term → Prop
  | .var _ => True
  | .lam b => NonlinearClosed b ∧
      (1 < occ 0 b → Closed (.lam b))
  | .app f a => NonlinearClosed f ∧ NonlinearClosed a

def decNonlinearClosed : (t : Term) → Decidable (NonlinearClosed t)
  | .var _ => isTrue trivial
  | .lam b =>
      let _ := decNonlinearClosed b
      inferInstanceAs (Decidable (_ ∧ _))
  | .app f a =>
      let _ := decNonlinearClosed f
      let _ := decNonlinearClosed a
      inferInstanceAs (Decidable (_ ∧ _))

instance (t : Term) : Decidable (NonlinearClosed t) := decNonlinearClosed t

def intL584 : Term := (.app (.lam (.app (.app (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.var 4) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.lam (.lam (.app (.var 6) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.lam (.lam (.app (.var 7) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.lam (.app (.lam (.lam (.app (.var 10) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.lam (.lam (.app (.var 11) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.lam (.lam (.app (.var 12) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.app (.var 3) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 7))))) (.var 8)))) (.app (.app (.var 2) (.var 1)) (.var 0))))))))))) (.lam (.app (.var 5) (.app (.lam (.lam (.app (.var 10) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.app (.var 2) (.app (.var 4) (.lam (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 6) (.lam (.app (.var 4) (.app (.lam (.lam (.app (.var 13) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 2) (.var 0)))))))))))))))))))))))) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))

def trace584 : List (List Direction) := [[], [.left], [.left, .under], [.left, .under], [.left, .under, .left], [.left, .under, .left, .left], [.left, .under, .left], [.left, .under], [.right], [.right, .under], [.right, .under], [.right, .under, .left], [.right, .under, .left, .left], [.right, .under, .left], [.right, .under], [.right, .under, .left], [.right, .under, .left, .under], [.right, .under, .left, .under], [.right, .under, .left, .under, .left], [.right, .under, .left, .under, .left, .left], [.right, .under, .left, .under, .left], [.right, .under, .left, .under], [.right, .under, .left, .under], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .left], [.right, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .left], [.right, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left, .left], [.right, .under, .left, .under, .under, .left, .under, .under, .left], [.right, .under, .left, .under, .under, .left, .under, .under], [.right, .under, .left, .under, .under, .right, .under, .right], [.right, .under, .left, .under, .under, .right, .under, .right, .under], [.right, .under, .left, .under, .under, .right, .under, .right, .under], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .left, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .left, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under, .left], [.right, .under, .left, .under, .under, .right, .under, .right, .under, .right, .right, .under, .right, .under]]

theorem intL584_closed : Closed intL584 := by decide

theorem intL584_length : (blcCode intL584).length = 584 := by decide

theorem intL584_two_nonlinear : SelfintLowerBound.nonlinear intL584 = 2 := by decide

theorem intL584_nonlinear_closed : NonlinearClosed intL584 := by decide

theorem run584 : replay trace584 intL584 = some intL165 := by decide

theorem reduces584 : Betas intL584 intL165 := replay_sound run584

theorem selfint_contract584 (M : Term) (hM : Closed M) (C N : Term) :
    Betas (.app (.app intL584 C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) :=
  betas_trans (betas_appL _ (betas_appL _ reduces584))
    (selfint_contract165 M hM C N)

theorem isSelfInterpreter_intL584 : IsSelfInterpreter intL584 :=
  ⟨intL584_closed, fun M hM =>
    ⟨_, selfint_contract584 M hM (.var 0) (.var 1), .refl _⟩⟩

/-- Exactly two nonlinear binders suffice, even when both are closed. -/
theorem two_nonlinear_sharp : ∃ E, IsSelfInterpreter E ∧
    SelfintLowerBound.nonlinear E = 2 ∧ NonlinearClosed E :=
  ⟨intL584, isSelfInterpreter_intL584, intL584_two_nonlinear,
    intL584_nonlinear_closed⟩




/-- The affine code normalized with its shared duplicator left neutral. -/
def code742 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 6) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 11) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 15) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 20) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 24) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 28) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 9) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 27) (.lam (.app (.var 37) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 5) (.app (.var 23) (.lam (.lam (.app (.var 3) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 31) (.lam (.app (.var 23) (.lam (.app (.var 43) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 6) (.var 1)) (.app (.var 5) (.var 0))))))) (.var 1))))))))))))) (.var 1))))))))))) (.var 19)))) (.app (.app (.var 5) (.var 1)) (.var 0))))))) (.var 1)))))))) (.var 1)))))))) (.var 1))))))))) (.var 1)))))))) (.var 1))))))))) (.app (.var 2) (.var 1))))))))) (.var 1)))))))))

def delta742 : Term := .lam (.app (.var 0) (.var 0))

def core742 : Term := .app code742 delta742

/-- The first known zero activates the shared duplicator without a source redex. -/
def intL742 : Term := (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.app (.app (.var 1) code742) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)))))))))

def trace742 : List (List Direction) := [[.left, .under, .left], [.left, .under], [.left, .under, .right, .under, .right], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .left], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .left, .right, .under, .left, .right, .under, .under, .right, .under, .right], [.left, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .right, .under, .left, .right, .under, .under, .under, .left, .right, .under, .left, .right, .under, .under, .right, .under, .right, .under, .right, .under, .left, .right, .under, .under, .under, .right, .right, .under, .right]]

theorem code742_closed : Closed code742 := by decide

theorem core742_closed : Closed core742 := by decide

theorem intL742_closed : Closed intL742 := by decide

theorem intL742_length : (blcCode intL742).length = 742 := by decide

theorem intL742_two_nonlinear : SelfintLowerBound.nonlinear intL742 = 2 := by decide

theorem intL742_nonlinear_closed : NonlinearClosed intL742 := by decide

theorem intL742_nft : NFt intL742 := by decide

theorem intL742_normal : NormalForm intL742 := fun _ h => nft_no_beta intL742_nft h

theorem run_affine_normal742 : replay trace742 intL584 = some core742 := by decide

theorem reduces_affine_normal742 : Betas intL584 core742 :=
  replay_sound run_affine_normal742

theorem run_root742 :
    spineSteps 7 (.app (.app intL742 (.var 0)) (pairT churchTrue (.var 1)))
      = some (.app (.app core742 (.var 0)) (pairT churchTrue (.var 1))) := by decide

theorem substDec_intL742 (j : Nat) (s : Term) : substDec j s intL742 = intL742 :=
  substDec_closed j s intL742_closed

theorem substDec_core742 (j : Nat) (s : Term) : substDec j s core742 = core742 :=
  substDec_closed j s core742_closed

theorem spine_root742 (C R : Term) :
    SpineReds (.app (.app intL742 C) (pairT churchTrue R))
      (.app (.app core742 C) (pairT churchTrue R)) := by
  have h := spineReds_instN [C, R] 0 (spineReds_of_spineSteps _ run_root742)
  simpa [instN, pairT, substDec, shift, substDec_intL742, substDec_core742,
    shift_churchTrue, substDec_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

/-- The beta-normal witness satisfies the contract by beta joinability. -/
theorem selfint_join742 (M : Term) (hM : Closed M) (C N : Term) :
    BetaJoin (.app (.app intL742 C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) := by
  have hzero : ∃ R, streamOf (blcCode M) N = pairT churchTrue R := by
    cases M with
    | var i => simp [Closed, FreeUnder] at hM
    | lam M => exact ⟨_, rfl⟩
    | app M P => exact ⟨_, rfl⟩
  obtain ⟨R, hR⟩ := hzero
  have hroot : Betas (.app (.app intL742 C) (streamOf (blcCode M) N))
      (.app (.app core742 C) (streamOf (blcCode M) N)) := by
    rw [hR]
    exact betas_of_spineReds (spine_root742 C R)
  have hcore := betas_appL (streamOf (blcCode M) N)
    (betas_appL C reduces_affine_normal742)
  obtain ⟨w, hwcore, hwtarget⟩ := betas_confluent hcore (selfint_contract584 M hM C N)
  exact ⟨w, betas_trans hroot hwcore, hwtarget⟩

theorem isSelfInterpreter_intL742 : IsSelfInterpreter intL742 :=
  ⟨intL742_closed, fun M hM => selfint_join742 M hM (.var 0) (.var 1)⟩

/-- Two nonlinear binders suffice even for a beta-normal self-interpreter,
and both nonlinear lambda subterms can still be closed. -/
theorem two_nonlinear_normal_sharp : ∃ E, IsSelfInterpreter E ∧ NormalForm E ∧
    SelfintLowerBound.nonlinear E = 2 ∧ NonlinearClosed E :=
  ⟨intL742, isSelfInterpreter_intL742, intL742_normal, intL742_two_nonlinear,
    intL742_nonlinear_closed⟩

end Blc.SelfintSharp
