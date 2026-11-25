import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000






namespace Witness605792472890
private def u0 := Term.var 1
private def u1 := Term.var 0
private def u2 := Term.lam u1
private def u3 := Term.var 3
private def u4 := Term.lam u3
private def u5 := Term.app u0 u4
private def u6 := Term.app u0 u1
private def u7 := Term.app u5 u6
private def u8 := Term.lam u7
private def u9 := Term.lam u8
private def u10 := Term.app u1 u9
private def u11 := Term.lam u10
private def u12 := Term.lam u11
private def u13 := Term.app u0 u12
private def u14 := Term.app u13 u6
private def u15 := Term.lam u14
private def u16 := Term.lam u15
private def u17 := Term.lam u16
private def u18 := Term.app u0 u17
private def u19 := Term.app u18 u6
private def u20 := Term.lam u19
private def u21 := Term.lam u20
private def u22 := Term.var 9
private def u23 := Term.app u21 u22
private def u24 := Term.app u12 u23
private def u25 := Term.lam u24
private def u26 := Term.var 14
private def u27 := Term.app u21 u26
private def u28 := Term.app u12 u27
private def u29 := Term.lam u28
private def u30 := Term.app u0 u29
private def u31 := Term.app u30 u6
private def u32 := Term.lam u31
private def u33 := Term.lam u32
private def u34 := Term.lam u33
private def u35 := Term.app u0 u34
private def u36 := Term.app u35 u6
private def u37 := Term.lam u36
private def u38 := Term.lam u37
private def u39 := Term.lam u0
private def u40 := Term.lam u39
private def u41 := Term.app u1 u40
private def u42 := Term.lam u2
private def u43 := Term.app u1 u42
private def u44 := Term.var 11
private def u45 := Term.app u41 u44
private def u46 := Term.lam u45
private def u47 := Term.app u43 u46
private def u48 := Term.lam u47
private def u49 := Term.app u41 u48
private def u50 := Term.lam u49
private def u51 := Term.app u41 u50
private def u52 := Term.lam u51
private def u53 := Term.app u38 u52
private def u54 := Term.app u25 u53
private def u55 := Term.lam u54
private def u56 := Term.app u0 u55
private def u57 := Term.app u56 u6
private def u58 := Term.lam u57
private def u59 := Term.lam u58
private def u60 := Term.lam u59
private def u61 := Term.app u0 u60
private def u62 := Term.app u61 u6
private def u63 := Term.lam u62
private def u64 := Term.lam u63
private def u65 := Term.var 4
private def u66 := Term.app u21 u65
private def u67 := Term.app u12 u66
private def u68 := Term.lam u67
private def u69 := Term.app u0 u25
private def u70 := Term.app u69 u6
private def u71 := Term.lam u70
private def u72 := Term.lam u71
private def u73 := Term.lam u72
private def u74 := Term.app u0 u73
private def u75 := Term.app u74 u6
private def u76 := Term.lam u75
private def u77 := Term.lam u76
private def u78 := Term.var 6
private def u79 := Term.app u41 u78
private def u80 := Term.lam u79
private def u81 := Term.app u43 u80
private def u82 := Term.lam u81
private def u83 := Term.app u41 u82
private def u84 := Term.lam u83
private def u85 := Term.app u41 u84
private def u86 := Term.lam u85
private def u87 := Term.app u77 u86
private def u88 := Term.app u68 u87
private def u89 := Term.lam u88
private def u90 := Term.app u64 u89
private def u91 := Term.app u64 u1
private def u92 := Term.app u90 u91
private def u93 := Term.lam u92
private def u94 := Term.app u0 u42
private def u95 := Term.app u94 u1
theorem nege605792472890 : ¬ IsSelfInterpreter e605792472890 := by
  intro he
  have hv : NFt u95 := by decide
  have reach : Betas (Floor40.call e605792472890 u0 u2 u1 []) u95 := reachesNF [] he (by decide) (by decide) hv
  have hr : replay [[.left,.left],[.left,.left],[.left,.left],[.left,.left],[.left],[.left,.left],[.left],[.left,.left],[.left],[.left,.left],[.left],[.left],[],[.left],[],[.left],[.left],[],[.left],[.left],[],[]] (Floor40.call e605792472890 u0 u2 u1 []) = some u93 := by decide
  exact mismatches hv reach hr 1 (by decide)
#print axioms nege605792472890
end Witness605792472890

end Blc.Floor41
