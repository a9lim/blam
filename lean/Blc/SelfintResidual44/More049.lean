import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846201018858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))) (.var 0))))
theorem cert_e4846201018858 : ¬ IsSelfInterpreter e4846201018858 := by
  have hp : replay [] e4846201018858 = some te4846201018858 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201018858) (by decide) (by decide) h
#print axioms cert_e4846201018858

private def te4846201019290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))) (.app (.var 0) (.var 0)))))
theorem cert_e4846201019290 : ¬ IsSelfInterpreter e4846201019290 := by
  have hp : replay [] e4846201019290 = some te4846201019290 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201019290) (by decide) (by decide) h
#print axioms cert_e4846201019290

private def te4846201032474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))) (.var 0))))
theorem cert_e4846201032474 : ¬ IsSelfInterpreter e4846201032474 := by
  have hp : replay [] e4846201032474 = some te4846201032474 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201032474) (by decide) (by decide) h
#print axioms cert_e4846201032474

private def te4846201048282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))) (.var 0))))
theorem cert_e4846201048282 : ¬ IsSelfInterpreter e4846201048282 := by
  have hp : replay [] e4846201048282 = some te4846201048282 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201048282) (by decide) (by decide) h
#print axioms cert_e4846201048282

private def te4846201048298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))) (.var 0))))
theorem cert_e4846201048298 : ¬ IsSelfInterpreter e4846201048298 := by
  have hp : replay [] e4846201048298 = some te4846201048298 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201048298) (by decide) (by decide) h
#print axioms cert_e4846201048298

private def te4846201052266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))) (.var 0))))
theorem cert_e4846201052266 : ¬ IsSelfInterpreter e4846201052266 := by
  have hp : replay [] e4846201052266 = some te4846201052266 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846201052266) (by decide) (by decide) h
#print axioms cert_e4846201052266

end Blc.Floor44.Additional
