import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4779496192490 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
theorem cert_e4779496192490 : ¬ IsSelfInterpreter e4779496192490 := by
  have hp : replay [] e4779496192490 = some te4779496192490 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4779496192490) (by decide) (by decide) h
#print axioms cert_e4779496192490

private def te4779496193258 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))))
theorem cert_e4779496193258 : ¬ IsSelfInterpreter e4779496193258 := by
  have hp : replay [] e4779496193258 = some te4779496193258 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4779496193258) (by decide) (by decide) h
#print axioms cert_e4779496193258

end Blc.Floor44.Additional
