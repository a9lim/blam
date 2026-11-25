import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000
namespace Witness605795414814
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 1
private def u4 := Term.var 3
private def u5 := Term.lam u4
private def u6 := Term.app u0 u5
private def u7 := Term.app u3 u6
private def u8 := Term.lam u7
private def u9 := Term.app u3 u8
private def u10 := Term.lam u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605795414814 : ¬ IsSelfInterpreter e605795414814 := by
  intro he
  have h : replay [] e605795414814 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605795414814
end Witness605795414814
namespace Witness605795414982
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 1
private def u4 := Term.var 2
private def u5 := Term.lam u3
private def u6 := Term.app u4 u5
private def u7 := Term.app u3 u6
private def u8 := Term.lam u7
private def u9 := Term.app u3 u8
private def u10 := Term.lam u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605795414982 : ¬ IsSelfInterpreter e605795414982 := by
  intro he
  have h : replay [] e605795414982 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605795414982
end Witness605795414982
namespace Witness605795416462
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 1
private def u4 := Term.var 2
private def u5 := Term.lam u4
private def u6 := Term.app u0 u5
private def u7 := Term.app u4 u6
private def u8 := Term.lam u7
private def u9 := Term.app u3 u8
private def u10 := Term.lam u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605795416462 : ¬ IsSelfInterpreter e605795416462 := by
  intro he
  have h : replay [] e605795416462 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605795416462
end Witness605795416462
namespace Witness605795416518
private def u0 := Term.var 0
private def u1 := Term.app u0 u0
private def u2 := Term.lam u1
private def u3 := Term.var 1
private def u4 := Term.var 2
private def u5 := Term.lam u3
private def u6 := Term.app u3 u5
private def u7 := Term.app u4 u6
private def u8 := Term.lam u7
private def u9 := Term.app u3 u8
private def u10 := Term.lam u9
private def u11 := Term.app u0 u10
private def u12 := Term.lam u11
private def u13 := Term.app u2 u12
theorem nege605795416518 : ¬ IsSelfInterpreter e605795416518 := by
  intro he
  have h : replay [] e605795416518 = some u13 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (Floor40.rawCount he) h
  exact Floor40.Weighted.no_clock 1 (by decide : Closed u13) (by decide) (by decide) hj
#print axioms nege605795416518
end Witness605795416518




end Blc.Floor41
