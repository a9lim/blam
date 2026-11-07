/-
An attempted replacement of the reader's direct continuation exit by a
query through NEXT. The assembled source costs 180 bits. Its off-domain
identity query does not return the continuation: it recurs on identity
with a new continuation and more arguments. This supplies an infinite
head reduction, already on the closed source I.
-/
import Blc.SelfintArchitecture5BundleCost
import Blc.BB35Spine

namespace Blc.SelfintArchitecture6NextService
open Term SelfintControl SelfintClass SelfintLowerBound SelfintWireCost
set_option maxRecDepth 8192

/-- Under p,c,s: lambda u. s (lambda b. u b I b I) (s s u). -/
def variableArm : Term :=
  .lam (.app (.app (.var 1)
    (.lam (.app (.app (.app (.app (.var 1) (.var 0)) idT) (.var 0)) idT)))
    (.app (.app (.var 1) (.var 1)) (.var 0)))

def body : Term :=
  .lam (.lam (.lam (.app (.app (.app (.var 0) idT) variableArm) nextT162)))
def generator : Term := .lam (.app body (.app (.var 0) (.var 0)))
def parser : Term := .app generator generator
def attempted180 : Term := .app (.lam (.app (.var 0) (.var 0))) generator

/-- Exact source wire, also checked by architecture6_control.py. -/
def attempted180Wire : List Bool := [false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, true, false, true, true, true, false, false, false, false, true, false, true, false, true, false, true, true, true, false, true, false, false, false, true, false, true, false, false, false, true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, false, true, true, false, true, true, true, true, false, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, true, true, false, true, false]

theorem source_wire : blcCode attempted180 = attempted180Wire := by decide

theorem source_closed : Closed attempted180 := by decide
theorem source_price : wire attempted180 = 180 := by decide
theorem parser_closed : Closed parser := by decide

/-- NEXT with the continuation free at index zero. -/
def nextc : Term :=
  .lam (.app parser (.lam (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app parser (.lam (.app (.var 3) appVt))))))
def next (C : Term) : Term := substDec 0 C nextc
def delayedc : Term := .app (.app idT idT) nextc
def delayed (C : Term) : Term := .app (.app idT idT) (next C)

/-- The actual new continuation retains the off-head I I NEXT delay. -/
def updatec : Term :=
  .lam (.app (.app (shift 1 0 delayedc) (.app (.var 1) absVt))
    (.app parser (.lam (.app (.var 2) appVt))))
def update (C : Term) : Term := substDec 0 C updatec
def core (C : Term) : Term := .app (.app parser C) idT

theorem run_identity :
    spineSteps 10 (core (.var 0)) =
      some (apps (core updatec) [delayedc, idT]) := by decide

/-- A counted version of the existing substitution-stable spine chain. -/
private theorem lifted_of_spineSteps : ∀ n {t u : Term},
    spineSteps n t = some u → LiftReds n t u := by
  intro n
  induction n with
  | zero => intro t u h; cases h; exact .refl _
  | succ n ih =>
      intro t u h
      simp only [spineSteps] at h
      split at h
      · cases h
      · rename_i hl
        simp only [Option.bind_eq_some_iff] at h
        obtain ⟨v, hv, hu⟩ := h
        exact .head (notLam_ne hl) (headStep_sound hv) (ih hu)

private theorem lifted_subst {n : Nat} {t u : Term} (h : LiftReds n t u)
    (j : Nat) (s : Term) : LiftReds n (substDec j s t) (substDec j s u) := by
  induction h with
  | refl => exact .refl _
  | head nl hh ht ih =>
      exact .head (notLam_ne (not_isLam_substDec (not_isLam_of_ne nl) hh j s))
        (headStep_substDec hh j s) ih

theorem identity_advance (C : Term) :
    LiftReds 10 (core C) (apps (core (update C)) [delayed C, idT]) := by
  have h := lifted_subst (lifted_of_spineSteps _ run_identity) 0 C
  simpa only [core, apps, delayedc, delayed, next, update, substDec,
    substDec_closed _ _ parser_closed, substDec_idT, if_true] using h

theorem identity_head_diverges (C : Term) (args : List Term) :
    HeadDiverges (apps (core C) args) := by
  apply BB35Spine.family_headDiverges
    (fun t => ∃ C args, t = apps (core C) args)
  · rintro t ⟨K, tail, rfl⟩
    refine ⟨10, apps (core (update K)) ([delayed K, idT] ++ tail), by decide, ?_,
      update K, [delayed K, idT] ++ tail, rfl⟩
    simpa only [BB35Spine.apps_append] using
      liftReds_headReds (liftReds_apps tail (identity_advance K))
  · exact ⟨C, args, rfl⟩

/-- The first recursive continuation for source I. -/
def firstContinuation : Term :=
  .lam (.app (.app churchTrue (.app churchFalse absVt))
    (.app parser (.lam (.app churchFalse appVt))))
def entryContinuation : Term :=
  .lam (.app (.app churchFalse (.app (shift 1 0 firstContinuation) absVt))
    (.app parser (.lam (.app (shift 2 0 firstContinuation) appVt))))
def entryArgs : List Term :=
  [churchFalse, idT, streamOf [false] idT,
    .app (.app (streamOf [true, false] idT) (streamOf [true, false] idT))
      (next firstContinuation)]
def probe : Term := .app (.app attempted180 churchFalse) (streamOf (blcCode idT) idT)

theorem run_probe :
    headSteps 23 probe = some (apps (core entryContinuation) entryArgs) := by decide

theorem probe_no_normal_form : ¬ HasNormalForm probe := by
  exact betas_noNormalForm (BB35Spine.headSteps_betas run_probe)
    (headDiverges_not_hasNormalForm (identity_head_diverges entryContinuation entryArgs))

theorem attempted180_not_self_interpreter : ¬ IsSelfInterpreter attempted180 := by
  intro hE
  have hc := contract_join hE (by decide : Closed idT) churchFalse idT
  have he := betas_of_spineReds (spine_false2 (.lam idT) idT)
  have hI : NormalForm idT := fun _ hb => nft_no_beta (by decide) hb
  have hn := join_normal (join_trans hc (join_of_betas he)) hI
  exact probe_no_normal_form ⟨idT, hn, hI⟩

#print axioms identity_head_diverges
#print axioms attempted180_not_self_interpreter

end Blc.SelfintArchitecture6NextService
