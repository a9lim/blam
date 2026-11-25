import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4838382924742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem cert_e4838382924742 : ¬ IsSelfInterpreter e4838382924742 := by
  have hp : replay [] e4838382924742 = some te4838382924742 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838382924742) (by decide) (by decide) h
#print axioms cert_e4838382924742

private def te4838382926278 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4838382926278 : ¬ IsSelfInterpreter e4838382926278 := by
  have hp : replay [] e4838382926278 = some te4838382926278 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838382926278) (by decide) (by decide) h
#print axioms cert_e4838382926278

private def te4838387644870 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4838387644870 : ¬ IsSelfInterpreter e4838387644870 := by
  have hp : replay [] e4838387644870 = some te4838387644870 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838387644870) (by decide) (by decide) h
#print axioms cert_e4838387644870
end Blc.Floor44.Additional
