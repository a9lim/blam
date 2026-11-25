import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846434883354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))))
theorem cert_e4846434883354 : ¬ IsSelfInterpreter e4846434883354 := by
  have hp : replay [] e4846434883354 = some te4846434883354 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434883354) (by decide) (by decide) h
#print axioms cert_e4846434883354

private def te4846434883398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))))
theorem cert_e4846434883398 : ¬ IsSelfInterpreter e4846434883398 := by
  have hp : replay [] e4846434883398 = some te4846434883398 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434883398) (by decide) (by decide) h
#print axioms cert_e4846434883398

end Blc.Floor44.Additional
