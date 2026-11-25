import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846212135402 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4846212135402 : ¬ IsSelfInterpreter e4846212135402 := by
  have hp : replay [] (.app e4846212135402 diag) = some te4846212135402 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846212135402) (by decide) (by decide) h
#print axioms cert_e4846212135402

private def te4846212135546 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))))) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))))))
theorem cert_e4846212135546 : ¬ IsSelfInterpreter e4846212135546 := by
  have hp : replay [[],[],[.left],[.left,.left],[.left],[.left,.left],[.left],[.left,.left],[.left],[],[.left,.left],[.left],[.left,.left],[.left],[.left,.left],[.left],[]] e4846212135546 = some te4846212135546 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846212135546) (by decide) (by decide) h
#print axioms cert_e4846212135546

private def te4846212136250 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
theorem cert_e4846212136250 : ¬ IsSelfInterpreter e4846212136250 := by
  have hp : replay [[]] e4846212136250 = some te4846212136250 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4846212136250) (by decide) (by decide) h
#print axioms cert_e4846212136250
end Blc.Floor44.Additional
