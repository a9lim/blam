import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4823429691882 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))))
theorem cert_e4823429691882 : ¬ IsSelfInterpreter e4823429691882 := by
  have hp : replay [[],[],[.left,.left],[.left,.right,.under,.under,.right]] e4823429691882 = some te4823429691882 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4823429691882

end Blc.Floor44.Additional
