import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4823437064682 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))) (.var 0)))))
theorem cert_e4823437064682 : ¬ IsSelfInterpreter e4823437064682 := by
  have hp : replay [[],[],[.left],[.right,.under,.under,.left,.right]] e4823437064682 = some te4823437064682 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4823437064682

private def te4823437064826 : Term := (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0)) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
theorem cert_e4823437064826 : ¬ IsSelfInterpreter e4823437064826 := by
  have hp : replay [[],[],[.left],[.right,.under,.under,.right],[],[.left],[],[.left],[],[.left]] e4823437064826 = some te4823437064826 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4823437064826

end Blc.Floor44.Additional
