import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000





namespace Witness605649495606
private def u0 := Term.var 1
private def u1 := Term.var 0
private def u2 := Term.lam u1
private def u3 := Term.var 2
private def u4 := Term.lam u0
private def u5 := Term.app u1 u4
private def u6 := Term.app u3 u5
private def u7 := Term.app u6 u0
private def u8 := Term.lam u7
private def u9 := Term.app u0 u8
private def u10 := Term.lam u9
private def u11 := Term.lam u10
private def u12 := Term.app u11 u5
private def u13 := Term.app u12 u3
private def u14 := Term.lam u13
private def u15 := Term.var 3
private def u16 := Term.app u12 u15
private def u17 := Term.lam u16
private def u18 := Term.app u17 u5
private def u19 := Term.lam u4
private def u20 := Term.app u1 u19
private def u21 := Term.lam u2
private def u22 := Term.app u1 u21
private def u23 := Term.var 5
private def u24 := Term.app u20 u23
private def u25 := Term.lam u24
private def u26 := Term.app u22 u25
private def u27 := Term.lam u26
private def u28 := Term.app u20 u27
private def u29 := Term.lam u28
private def u30 := Term.app u20 u29
private def u31 := Term.lam u30
private def u32 := Term.app u18 u31
private def u33 := Term.lam u32
private def u34 := Term.app u14 u33
private def u35 := Term.app u0 u21
private def u36 := Term.app u35 u1
private def u37 := Term.var 4
private def u38 := Term.app u20 u37
private def u39 := Term.lam u38
private def u40 := Term.app u22 u39
private def u41 := Term.lam u40
private def u42 := Term.app u20 u41
private def u43 := Term.lam u42
private def u44 := Term.app u20 u43
private def u45 := Term.lam u44
private def u46 := Term.app u12 u37
private def u47 := Term.lam u46
private def u48 := Term.app u47 u5
private def u49 := Term.var 6
private def u50 := Term.app u20 u49
private def u51 := Term.lam u50
private def u52 := Term.app u22 u51
private def u53 := Term.lam u52
private def u54 := Term.app u20 u53
private def u55 := Term.lam u54
private def u56 := Term.app u20 u55
private def u57 := Term.lam u56
private def u58 := Term.app u48 u57
private def u59 := Term.lam u58
private def u60 := Term.app u12 u23
private def u61 := Term.lam u60
private def u62 := Term.app u61 u5
private def u63 := Term.var 7
private def u64 := Term.app u20 u63
private def u65 := Term.lam u64
private def u66 := Term.app u22 u65
private def u67 := Term.lam u66
private def u68 := Term.app u20 u67
private def u69 := Term.lam u68
private def u70 := Term.app u20 u69
private def u71 := Term.lam u70
private def u72 := Term.app u62 u71
private def u73 := Term.lam u72
private def u74 := Term.lam u73
private def u75 := Term.app u59 u74
private def u76 := Term.app u75 u5
private def u77 := Term.app u76 u3
private def u78 := Term.lam u77
private def u79 := Term.lam u59
private def u80 := Term.app u33 u79
private def u81 := Term.app u11 u80
private def u82 := Term.app u81 u0
theorem nege605649495606 : ¬ IsSelfInterpreter e605649495606 := by
  intro he
  have hv : NFt u36 := by decide
  have reach : Betas (Floor40.call e605649495606 u0 u2 u1 []) u36 := reachesNF [] he (by decide) (by decide) hv
  have hr : replay [[.left,.left],[.left,.left],[.left],[.left],[]] (Floor40.call e605649495606 u0 u2 u1 []) = some u34 := by decide
  obtain ⟨j,hj⟩ := Floor40.clocks_replay (clockNF reach hv) hr
  exact pump_no_count (t := u34) (u := u82) [u45,u78] (by decide) (replay_sound (ps := [[.left],[],[.left],[.left,.left,.right]]) (by decide)) j hj
#print axioms nege605649495606
end Witness605649495606


end Blc.Floor41
