import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4778587420282 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 0))))))
theorem cert_e4778587420282 : ¬ IsSelfInterpreter e4778587420282 := by
  have hp : replay [[],[.left],[.left,.under,.under,.right],[.right]] e4778587420282 = some te4778587420282 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4778587420282

private def te4779443162030 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))))
theorem cert_e4779443162030 : ¬ IsSelfInterpreter e4779443162030 := by
  have hp : replay [[],[.left],[.right]] e4779443162030 = some te4779443162030 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4779443162030

end Blc.Floor44.Additional
