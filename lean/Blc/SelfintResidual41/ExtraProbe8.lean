import Blc.SelfintCompact41.Base
import Blc.SelfintResidual41.Extra41

set_option Elab.async false
namespace Blc.Floor41
open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38 SelfintSingleObject
set_option maxRecDepth 32000
set_option maxHeartbeats 5000000






namespace Witness605795393338
private def u0 := Term.var 1
private def u1 := Term.var 0
private def u2 := Term.lam u1
private def u3 := Term.var 3
private def u4 := Term.app u0 u1
private def u5 := Term.app u3 u4
private def u6 := Term.lam u5
private def u7 := Term.lam u6
private def u8 := Term.app u0 u7
private def u9 := Term.lam u8
private def u10 := Term.app u1 u9
private def u11 := Term.lam u10
private def u12 := Term.app u11 u4
private def u13 := Term.lam u12
private def u14 := Term.lam u13
private def u15 := Term.app u14 u4
private def u16 := Term.lam u15
private def u17 := Term.lam u16
private def u18 := Term.app u14 u17
private def u19 := Term.app u11 u18
private def u20 := Term.lam u0
private def u21 := Term.lam u20
private def u22 := Term.app u1 u21
private def u23 := Term.lam u2
private def u24 := Term.app u1 u23
private def u25 := Term.var 4
private def u26 := Term.app u22 u25
private def u27 := Term.lam u26
private def u28 := Term.app u24 u27
private def u29 := Term.lam u28
private def u30 := Term.app u22 u29
private def u31 := Term.lam u30
private def u32 := Term.app u22 u31
private def u33 := Term.lam u32
private def u34 := Term.app u19 u33
private def u35 := Term.app u0 u23
private def u36 := Term.app u35 u1
theorem nege605795393338 : ¬ IsSelfInterpreter e605795393338 := by
  intro he
  have hv : NFt u36 := by decide
  have reach : Betas (Floor40.call e605795393338 u0 u2 u1 []) u36 := reachesNF [] he (by decide) (by decide) hv
  have hr : replay [[.left,.left],[.left,.left],[.left,.left],[.left,.left],[.left,.left],[.left,.left],[.left],[.left,.right]] (Floor40.call e605795393338 u0 u2 u1 []) = some u34 := by decide
  exact scopeMismatch hv reach hr 1 (by decide) (by decide)
#print axioms nege605795393338
end Witness605795393338

end Blc.Floor41
