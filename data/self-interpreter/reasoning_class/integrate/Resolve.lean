import Lean
import Blc.SelfintProbeSlots
open Lean Elab Command
namespace Blc.SelfintProbe
open Term SelfintControl SelfintProjections QuoteOrigins SelfintLowerBound SelfintWireCost
#eval show CommandElabM Unit from do
  for n in [`A', `BetaJoin, `Betas, `Blind, `Nat.zero_add, `Prod.mk.injEq, `Prod.snd, `Term, `as, `as.length, `betas_appR, `betas_trans, `congrArg, `hA', `ha, `hb, `he, `heq, `hi, `hj, `hj', `hk, `hn, `hnj, `hq, `hs, `htq, `hv, `hv1, `hv2, `join_of_betas, `lemmaA_context, `lemmaA_context_k, `lemmaA_two_slots, `reflect_remainder_k, `reflect_rigid, `rigid_app_join, `rigid_join_shape, `rigid_view, `shape, `shape_apps, `substDec, `subst_apps, `v1, `v2] do
    let r ← Lean.resolveGlobalName n
    IO.println s!"{n} -> {(r.filter (·.2.isEmpty)).map (·.1)}"
end Blc.SelfintProbe
#eval IO.println "====="
namespace Blc.SelfintProbeSlots
open Term SelfintControl SelfintProjections QuoteOrigins SelfintLowerBound SelfintWireCost SelfintProbe
#eval show CommandElabM Unit from do
  for n in [`A', `BetaJoin, `Betas, `Blind, `Nat.zero_add, `Prod.mk.injEq, `Prod.snd, `Term, `as, `as.length, `betas_appR, `betas_trans, `congrArg, `hA', `ha, `hb, `he, `heq, `hi, `hj, `hj', `hk, `hn, `hnj, `hq, `hs, `htq, `hv, `hv1, `hv2, `join_of_betas, `lemmaA_context, `lemmaA_context_k, `lemmaA_two_slots, `reflect_remainder_k, `reflect_rigid, `rigid_app_join, `rigid_join_shape, `rigid_view, `shape, `shape_apps, `substDec, `subst_apps, `v1, `v2] do
    let r ← Lean.resolveGlobalName n
    IO.println s!"{n} -> {(r.filter (·.2.isEmpty)).map (·.1)}"
end Blc.SelfintProbeSlots
