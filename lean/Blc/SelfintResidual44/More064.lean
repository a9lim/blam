import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846359274298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))))
theorem cert_e4846359274298 : ¬ IsSelfInterpreter e4846359274298 := by
  have hp : replay [] e4846359274298 = some te4846359274298 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359274298) (by decide) (by decide) h
#print axioms cert_e4846359274298

private def te4846359275290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))))
theorem cert_e4846359275290 : ¬ IsSelfInterpreter e4846359275290 := by
  have hp : replay [] e4846359275290 = some te4846359275290 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359275290) (by decide) (by decide) h
#print axioms cert_e4846359275290

private def te4846359359258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))))
theorem cert_e4846359359258 : ¬ IsSelfInterpreter e4846359359258 := by
  have hp : replay [] e4846359359258 = some te4846359359258 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846359359258) (by decide) (by decide) h
#print axioms cert_e4846359359258

end Blc.Floor44.Additional
