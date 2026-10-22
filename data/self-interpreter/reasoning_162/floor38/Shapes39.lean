/- Exact rigid shape obstructions and the two-atom literal interface. -/
import Payload38
namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound

theorem three_or_more_not_identity {f a b c : Term} (hf : Rigid f) :
    ¬ Betas (.app (.app (.app f a) b) c) identityTarget := by
  intro h
  obtain ⟨g, v, he, hg, _⟩ := rigid_betas_shape
    (Rigid.app _ (Rigid.app _ hf)) h
  simp only [identityTarget, Term.app.injEq] at he
  obtain ⟨he1, _⟩ := he
  rw [← he1] at hg
  obtain ⟨g', v', he', hg', _⟩ := rigid_betas_shape (Rigid.app _ hf) hg
  simp only [Term.app.injEq] at he'
  obtain ⟨he2, _⟩ := he'
  rw [← he2] at hg'
  obtain ⟨_, _, bad, _, _⟩ := rigid_betas_shape hf hg'
  cases bad

theorem not_selfint_bad_identity {e t : Term}
    (hp : Betas (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))) t)
    (hm : ¬ Betas t identityTarget) : ¬ IsSelfInterpreter e := by
  intro he
  exact hm (same_normal_target (identity_reduces he) hp identityTarget_normal)

theorem literal_constant_not_selfint (p : Term) (hc : Closed p) :
    ¬ IsSelfInterpreter (.lam (.app (.var 0) p)) := by
  have hs : Beta (.app (.lam (.app (.var 0) p)) (.var 1)) (.app (.var 1) p) := by
    simpa [contract, substDec, substDec_closed _ _ hc] using
      (Beta.beta (.app (.var 0) p) (.var 1))
  apply not_selfint_bad_identity (.head (.appL _ hs) (.refl _))
  intro h
  obtain ⟨g, v, he, _, hv⟩ := rigid_betas_shape (Rigid.app _ (Rigid.var 1)) h
  simp only [identityTarget, Term.app.injEq] at he
  obtain ⟨_, he2⟩ := he
  rw [← he2] at hv
  obtain ⟨u, hu, _⟩ := lam_betas_shape hv
  cases hu

theorem selfint_of_literal_eta (p : Term) (hc : Closed p)
    (he : IsSelfInterpreter (.lam (.app p (.var 0)))) : IsSelfInterpreter p := by
  refine ⟨hc, ?_⟩
  intro m hm
  have hs : Beta (.app (.lam (.app p (.var 0))) (.var 0)) (.app p (.var 0)) := by
    simpa [contract, substDec, substDec_closed _ _ hc] using
      (Beta.beta (.app p (.var 0)) (.var 0))
  exact SelfintControl.join_trans
    (SelfintControl.join_symm (SelfintControl.join_of_betas
      (.head (.appL _ hs) (.refl _)))) (he.2 m hm)

#print axioms literal_constant_not_selfint
#print axioms selfint_of_literal_eta
end Blc.Round3Floor38
