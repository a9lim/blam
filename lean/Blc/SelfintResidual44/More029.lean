import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4823437065530 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
theorem cert_e4823437065530 : ¬ IsSelfInterpreter e4823437065530 := by
  have hp : replay [[]] e4823437065530 = some te4823437065530 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4823437065530) (by decide) (by decide) h
#print axioms cert_e4823437065530

end Blc.Floor44.Additional
