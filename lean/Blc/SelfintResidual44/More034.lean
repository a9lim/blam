import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4838381679034 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4838381679034 : ¬ IsSelfInterpreter e4838381679034 := by
  have hp : replay [] (.app e4838381679034 diag) = some te4838381679034 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838381679034) (by decide) (by decide) h
#print axioms cert_e4838381679034

private def te4838381704134 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4838381704134 : ¬ IsSelfInterpreter e4838381704134 := by
  have hp : replay [] (.app e4838381704134 diag) = some te4838381704134 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838381704134) (by decide) (by decide) h
#print axioms cert_e4838381704134

private def te4838381709082 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4838381709082 : ¬ IsSelfInterpreter e4838381709082 := by
  have hp : replay [] (.app e4838381709082 diag) = some te4838381709082 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838381709082) (by decide) (by decide) h
#print axioms cert_e4838381709082

private def te4838381709766 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4838381709766 : ¬ IsSelfInterpreter e4838381709766 := by
  have hp : replay [] (.app e4838381709766 diag) = some te4838381709766 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4838381709766) (by decide) (by decide) h
#print axioms cert_e4838381709766

end Blc.Floor44.Additional
