/- Rigid-head payload mismatches need no normalization of their arguments. -/
import Families38
import Blc.NormalOrder
namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound

def identityTarget : Term := .app (.app (.var 1) churchFalse) (.var 0)
theorem identityTarget_normal : NormalForm identityTarget :=
  fun _ hb => nft_no_beta (by decide) hb
theorem false_normal : NormalForm churchFalse := fun _ hb => nft_no_beta (by decide) hb
theorem identity_reduces {e : Term} (he : IsSelfInterpreter e) :
    Betas (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))) identityTarget := by
  obtain ⟨u, hu, ht⟩ := SelfintControl.identity_contract he (.var 1) (.var 0)
  have h := normalForm_betas_eq identityTarget_normal ht
  subst u
  exact hu
theorem same_normal_target {t u nf : Term} (ht : Betas t nf) (hu : Betas t u)
    (hn : NormalForm nf) : Betas u nf := by
  obtain ⟨v, hv, hu⟩ := betas_confluent ht hu
  have he := normalForm_betas_eq hn hv
  subst v
  exact hu
theorem first_payload {p r : Term}
    (h : Betas (.app (.app (.var 1) p) r) identityTarget) : Betas p churchFalse := by
  obtain ⟨g, b, he, hg, hb⟩ := rigid_betas_shape (Rigid.app _ (Rigid.var 1)) h
  simp only [identityTarget, Term.app.injEq] at he
  obtain ⟨he1, _⟩ := he
  rw [← he1] at hg
  obtain ⟨g', b', he', hg', hb'⟩ := rigid_betas_shape (Rigid.var 1) hg
  simp only [Term.app.injEq] at he'
  obtain ⟨_, heq⟩ := he'
  subst b'
  exact hb'
theorem rigid_betas {t u : Term} (ht : Rigid t) (h : Betas t u) : Rigid u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (rigid_beta ht hb)
theorem one_lam_false_mismatch {b : Term} (hb : Rigid b) :
    ¬ Betas (.lam b) churchFalse := by
  intro h
  obtain ⟨u, he, hu⟩ := lam_betas_shape h
  change Term.lam (.lam (.var 0)) = Term.lam u at he
  have heq := Term.lam.inj he
  rw [← heq] at hu
  have hr := rigid_betas hb hu
  cases hr
theorem two_lam_false_mismatch {f a : Term} (hf : Rigid f) :
    ¬ Betas (.lam (.lam (.app f a))) churchFalse := by
  intro h
  obtain ⟨u, he, hu⟩ := lam_betas_shape h
  change Term.lam (.lam (.var 0)) = Term.lam u at he
  have heq := Term.lam.inj he
  rw [← heq] at hu
  obtain ⟨v, he', hv⟩ := lam_betas_shape hu
  have heq' := Term.lam.inj he'
  rw [← heq'] at hv
  obtain ⟨g, b, bad, _⟩ := rigid_betas_shape hf hv
  cases bad
theorem not_selfint_wrong_first {e p r u : Term}
    (hp : Betas (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0)))
      (.app (.app (.var 1) p) r))
    (hq : Betas p u) (hm : ¬ Betas u churchFalse) : ¬ IsSelfInterpreter e := by
  intro he
  have ht := same_normal_target (identity_reduces he) hp identityTarget_normal
  exact hm (same_normal_target (first_payload ht) hq false_normal)

end Blc.Round3Floor38
