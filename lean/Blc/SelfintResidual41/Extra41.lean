import Blc.Selfint40Evidence.Weighted
import Blc.SelfintResidual41.Floor41
import Blc.SelfintSingleObjectChecks

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintControl SelfintClass SelfintLowerBound SelfintProbe WeakHeadClock Round3Floor38
open SelfintSingleObject
theorem reductSI {e t} (h : Betas e t) (he : IsSelfInterpreter e) : IsSelfInterpreter t := by
  induction h with
  | refl => exact he
  | head h _ ih => exact ih (SelfintWireCost.selfInterpreter_beta he h)
theorem rawSO {e t} (ps : List (List Direction)) (hr : replay ps e = some t)
    (hs : SO t) : ¬ IsSelfInterpreter e := fun he =>
  selfInterpreter_not_so (reductSI (replay_sound hr) he) hs
theorem kSO {e t} (ps : List (List Direction)) (hr : replay ps (.app e churchTrue) = some t)
    (hs : SO t) : ¬ IsSelfInterpreter e := fun he =>
  specialized_not_so he (replay_sound hr) hs
def diag := Term.lam (.app (.var 0) (.var 0))
theorem deltaCount {e : Term} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := Floor40.inputCount (e := e) (c := diag) (m := SelfintControl.identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩
theorem reachesNF {e c m r v} {as : List Term} (ps : List (List Direction))
    (he : IsSelfInterpreter e) (hm : Closed m)
    (ht : replay ps (Floor40.want c m r as) = some v) (hv : NFt v) :
    Betas (Floor40.call e c m r as) v := by
  have hj := join_trans (Floor40.joinArgs (contract_join he hm c r) as) (join_of_betas (replay_sound ht))
  obtain ⟨z,ha,hb⟩ := hj
  have eq := normalForm_betas_eq (fun _ => nft_no_beta hv) hb
  subst z
  exact ha
theorem mismatches {t u v : Term} {ps : List (List Direction)} (hv : NFt v)
    (h : Betas t v) (ht : replay ps t = some u) (n : Nat)
    (bad : Layouts.mismatch n u v = true) : False := by
  have hc := betas_preserve_nf (replay_sound ht) h (fun _ => nft_no_beta hv)
  simp [Layouts.mismatch_sound n hc hv] at bad
theorem scopeMismatch {t u v : Term} {ps : List (List Direction)} (hv : NFt v)
    (h : Betas t v) (ht : replay ps t = some u) (n : Nat)
    (good : FreeUnder n u) (bad : ¬ FreeUnder n v) : False :=
  bad (SelfintProbe.betas_scope (betas_preserve_nf (replay_sound ht) h (fun _ => nft_no_beta hv)) n good)
theorem clockNF {t v : Term} (h : Betas t v) (hv : NFt v) : ∃ n, Count t n :=
  hasNormalForm_count ⟨v,h,fun _ => nft_no_beta hv⟩
end Blc.Floor41
