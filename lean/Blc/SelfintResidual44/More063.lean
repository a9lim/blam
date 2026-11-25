import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846359266926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))))
theorem cert_e4846359266926 : ¬ IsSelfInterpreter e4846359266926 := by
  have hp : replay [] e4846359266926 = some te4846359266926 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359266926) (by decide) (by decide) h
#print axioms cert_e4846359266926

private def te4846359266938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))))
theorem cert_e4846359266938 : ¬ IsSelfInterpreter e4846359266938 := by
  have hp : replay [] e4846359266938 = some te4846359266938 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359266938) (by decide) (by decide) h
#print axioms cert_e4846359266938

private def te4846359269146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))))
theorem cert_e4846359269146 : ¬ IsSelfInterpreter e4846359269146 := by
  have hp : replay [] e4846359269146 = some te4846359269146 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359269146) (by decide) (by decide) h
#print axioms cert_e4846359269146

private def te4846359274294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))))
theorem cert_e4846359274294 : ¬ IsSelfInterpreter e4846359274294 := by
  have hp : replay [] e4846359274294 = some te4846359274294 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359274294) (by decide) (by decide) h
#print axioms cert_e4846359274294
end Blc.Floor44.Additional
