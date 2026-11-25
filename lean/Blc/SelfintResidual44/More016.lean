import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4786764675526 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 7))))) (.app (.var 1) (.lam (.var 1))))))) (.app (.var 1) (.lam (.var 1)))))))))))) (.app (.var 1) (.lam (.var 1))))))) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 4)))) (.app (.var 1) (.lam (.var 1))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 8)))))) (.app (.var 1) (.lam (.var 1))))))) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4786764675526 : ¬ IsSelfInterpreter e4786764675526 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under],[],[.left],[.left,.under,.right,.under],[.right,.under,.under,.right,.under,.left],[.right,.under,.under,.right,.under,.left,.under,.right,.under],[],[.left],[.right,.under,.under,.right,.under,.left],[],[.left],[.right,.under,.right]] e4786764675526 = some te4786764675526 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786764675526

end Blc.Floor44.Additional
