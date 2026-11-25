import Blc.SelfintResidual42.Weighted
import Blc.SelfintRound6BoundLiteral
import Blc.SelfintSingleObject
import Blc.SelfintSingleObjectChecks

set_option Elab.async false
namespace Blc.Floor42
open SelfintControl Round3Floor38 Term SelfintSingleObject SelfintSharp SelfintLowerBound WeakHeadClock SelfintProbe
theorem reductSI {e t} (h : Betas e t) (he : IsSelfInterpreter e) : IsSelfInterpreter t := by
  induction h with
  | refl => exact he
  | head h _ ih => exact ih (SelfintWireCost.selfInterpreter_beta he h)

def diag := Term.lam (.app (.var 0) (.var 0))
theorem deltaCount {e : Term} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := diag) (m := SelfintControl.identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩

def projPair (e : Term) := call e churchTrue SelfintSingleObject.pairCombinator SelfintControl.identity [SelfintControl.identity]
theorem pair_not_so {e t} (he : IsSelfInterpreter e) (hr : Betas (projPair e) t) : ¬ SO t := by
  intro ht
  apply not_join_pair ht
  apply join_after_betas hr
  apply join_trans (joinArgs (contract_join he (M := SelfintSingleObject.pairCombinator) (by decide) churchTrue SelfintControl.identity) [SelfintControl.identity])
  exact join_of_betas (betas_of_spineReds (spineReds_of_spineSteps 3 (by decide)))
theorem expected {e c m r t u : Term} {aa : List Term} (he : IsSelfInterpreter e) (hm : Closed m)
    (hp : Betas (call e c m r aa) t) (hq : Betas (want c m r aa) u) (hn : NFt u) : Betas t u := by
  have h := join_after_betas hp (join_trans (joinArgs (contract_join he hm c r) aa) (join_of_betas hq))
  obtain ⟨v, hv, hv'⟩ := h
  exact normalForm_betas_eq (fun _ => nft_no_beta hn) hv' ▸ hv
end Blc.Floor42
