import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4785411504762 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))) (.var 0)))))))
theorem cert_e4785411504762 : ¬ IsSelfInterpreter e4785411504762 := by
  have hp : replay [[],[.left],[.left],[.left],[],[.left],[],[.left],[],[.left],[]] e4785411504762 = some te4785411504762 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4785411504762) (by decide) (by decide) h
#print axioms cert_e4785411504762

private def te4785411505466 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 0)) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 0)))))
theorem cert_e4785411505466 : ¬ IsSelfInterpreter e4785411505466 := by
  have hp : replay [[],[.left],[.left,.right,.under,.under,.left],[.left],[.left],[.left,.under,.right],[.left,.under,.right,.under,.left],[],[.left],[.right,.under,.right],[],[],[.left,.under,.right],[.left,.under,.right,.under,.left],[]] e4785411505466 = some te4785411505466 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4785411505466) (by decide) (by decide) h
#print axioms cert_e4785411505466

end Blc.Floor44.Additional
