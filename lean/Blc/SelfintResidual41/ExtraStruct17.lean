import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000


namespace Witness605770806122
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 2
private def u4 := Term.var 1
private def u5 := Term.app u0 u4
private def u6 := Term.app u3 u5
private def u7 := Term.lam u6
private def u8 := Term.lam u7
private def u9 := Term.app u0 u8
private def u10 := Term.app u9 u0
private def u11 := Term.app u10 u0
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605770806122 : ¬ IsSelfInterpreter e605770806122 := by
  intro he
  have h : replay [] e605770806122 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605770806122
end Witness605770806122





end Blc.Floor41
