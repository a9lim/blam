import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te1196601576366 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
theorem cert_e1196601576366 : ¬ IsSelfInterpreter e1196601576366 := by
  have hp : replay [[.under],[.under,.left],[.under,.right]] e1196601576366 = some te1196601576366 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e1196601576366

private def te1197440437166 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))))
theorem cert_e1197440437166 : ¬ IsSelfInterpreter e1197440437166 := by
  have hp : replay [[.under],[.under,.left],[.under,.right]] e1197440437166 = some te1197440437166 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e1197440437166

end Blc.Floor44.Additional
