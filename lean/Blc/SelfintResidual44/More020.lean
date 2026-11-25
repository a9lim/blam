import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4786843317190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem cert_e4786843317190 : ¬ IsSelfInterpreter e4786843317190 := by
  have hp : replay [] e4786843317190 = some te4786843317190 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786843317190) (by decide) (by decide) h
#print axioms cert_e4786843317190

private def te4786843318726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4786843318726 : ¬ IsSelfInterpreter e4786843318726 := by
  have hp : replay [] e4786843318726 = some te4786843318726 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786843318726) (by decide) (by decide) h
#print axioms cert_e4786843318726

private def te4786848037318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4786848037318 : ¬ IsSelfInterpreter e4786848037318 := by
  have hp : replay [] e4786848037318 = some te4786848037318 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786848037318) (by decide) (by decide) h
#print axioms cert_e4786848037318

end Blc.Floor44.Additional
