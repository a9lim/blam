import Blc.SelfintProbe
import Blc.SelfintSharp
import Blc.WeakHeadClock

set_option Elab.async false
namespace Blc.H45
open Term SelfintSharp SelfintControl SelfintProbe SelfintLowerBound WeakHeadClock
def tApps (t : Term) : List Term → Term
  | [] => t
  | a::as => tApps (.app t a) as
theorem joinArgs {t u : Term} (h : BetaJoin t u) (args : List Term) :
    BetaJoin (tApps t args) (tApps u args) := by
  induction args generalizing t u with
  | nil => exact h
  | cons a xs ih => exact ih (join_appL a h)
def call (e c m r : Term) (args : List Term) := tApps (.app (.app e c) (streamOf (blcCode m) r)) args
def want (c m r : Term) (args : List Term) := tApps (.app (.app c (.lam m)) r) args
theorem probeJoin {e c m r u v : Term} {ps qs : List (List Direction)} {args : List Term}
    (hm : Closed m) (hp : replay ps (call e c m r args) = some u)
    (hq : replay qs (want c m r args) = some v) (he : IsSelfInterpreter e) : BetaJoin u v :=
  join_symm (join_after_betas (replay_sound hq) (join_symm
    (join_after_betas (replay_sound hp) (joinArgs (contract_join he hm c r) args))))
theorem transfer {e t : Term} (h : Betas e t) (he : IsSelfInterpreter e) : IsSelfInterpreter t := by
  induction h with
  | refl => exact he
  | head h _ ih => exact ih (SelfintWireCost.selfInterpreter_beta he h)
end Blc.H45
