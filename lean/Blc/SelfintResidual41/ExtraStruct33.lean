import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000
namespace Witness605804360406
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 2
private def u4 := Term.var 1
private def u5 := Term.app u1 u4
private def u6 := Term.app u3 u5
private def u7 := Term.lam u6
private def u8 := Term.lam u7
private def u9 := Term.app u0 u8
private def u10 := Term.app u0 u9
private def u11 := Term.lam u10
private def u12 := Term.app u2 u11
theorem nege605804360406 : ¬ IsSelfInterpreter e605804360406 := by
  intro he
  have h : replay [] e605804360406 = some u12 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u12) (by decide) (by decide) hj
#print axioms nege605804360406
end Witness605804360406
namespace Witness605804360410
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 2
private def u4 := Term.var 1
private def u5 := Term.app u0 u4
private def u6 := Term.app u5 u0
private def u7 := Term.app u3 u6
private def u8 := Term.lam u7
private def u9 := Term.lam u8
private def u10 := Term.app u0 u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605804360410 : ¬ IsSelfInterpreter e605804360410 := by
  intro he
  have h : replay [] e605804360410 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605804360410
end Witness605804360410


namespace Witness605804360506
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 2
private def u4 := Term.var 1
private def u5 := Term.app u4 u0
private def u6 := Term.app u0 u5
private def u7 := Term.app u3 u6
private def u8 := Term.lam u7
private def u9 := Term.lam u8
private def u10 := Term.app u0 u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605804360506 : ¬ IsSelfInterpreter e605804360506 := by
  intro he
  have h : replay [] e605804360506 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605804360506
end Witness605804360506



end Blc.Floor41
