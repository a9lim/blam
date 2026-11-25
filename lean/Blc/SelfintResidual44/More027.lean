import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4823436233686 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.var 1)))))
theorem cert_e4823436233686 : ¬ IsSelfInterpreter e4823436233686 := by
  have hp : replay [[],[],[.left],[.right,.under,.under,.left]] e4823436233686 = some te4823436233686 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4823436233686

private def te4823436234362 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
theorem cert_e4823436234362 : ¬ IsSelfInterpreter e4823436234362 := by
  have hp : replay [[],[],[.left],[.right,.under,.under,.right]] e4823436234362 = some te4823436234362 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4823436234362

end Blc.Floor44.Additional
