import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846199886826 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4846199886826 : ¬ IsSelfInterpreter e4846199886826 := by
  have hp : replay [] (.app e4846199886826 diag) = some te4846199886826 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846199886826) (by decide) (by decide) h
#print axioms cert_e4846199886826

end Blc.Floor44.Additional
