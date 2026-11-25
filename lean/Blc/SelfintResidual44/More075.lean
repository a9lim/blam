import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846440701038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
theorem cert_e4846440701038 : ¬ IsSelfInterpreter e4846440701038 := by
  have hp : replay [] e4846440701038 = some te4846440701038 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846440701038) (by decide) (by decide) h
#print axioms cert_e4846440701038

private def te4846440708550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
theorem cert_e4846440708550 : ¬ IsSelfInterpreter e4846440708550 := by
  have hp : replay [] e4846440708550 = some te4846440708550 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846440708550) (by decide) (by decide) h
#print axioms cert_e4846440708550

end Blc.Floor44.Additional
