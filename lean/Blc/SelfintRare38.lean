import Blc.SelfintSourceRefutations

/- Fixed case 723 from floor38/Size38Pumps.lean. -/
namespace Blc.SelfintSingleObject.Rows38
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38
def e723 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))

def core723 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)))

def first723 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)))

theorem scopeCore723 : FreeUnder 2 core723 := by decide

theorem scopeFirst723 : FreeUnder 2 first723 := by decide

theorem step723 : weakStep core723 = some first723 := by decide

theorem cycle723 : replay [[.left], []] (.app first723 (.var 2)) =
  some (.app core723 (.app (.var 1) (.var 2))) := by decide

theorem cycle723_all (x : Term) : Betas (.app first723 x) (.app core723 (.app (.var 1) x)) := by
  have h := SelfintControl.betas_subst (replay_sound cycle723) 2 x
  change Betas (substDec 2 x (.app first723 (.var 2)))
    (substDec 2 x (.app core723 (.app (.var 1) (.var 2)))) at h
  simpa only [substDec, if_pos rfl, ite_true, if_false, Nat.reduceEqDiff, Nat.reduceGT,
    substDec_of_freeUnder _ _ _ scopeCore723, substDec_of_freeUnder _ _ _ scopeFirst723] using h

theorem prefix723 : replay [[.left, .left], [.left, .left, .left], [.left, .left], [.left], [.left, .left], [.left], []]
  (.app (.app e723 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app core723 (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))) := by decide

theorem e723_excluded : ¬ IsSelfInterpreter e723 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix723) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact family_no_count core723 first723 (Term.app (.var 1)) step723 cycle723_all k _ hk

theorem rare38 : ¬ SelfintWireCost.MinimalInterpreter e723 := fun h => e723_excluded h.1

end Blc.SelfintSingleObject.Rows38
