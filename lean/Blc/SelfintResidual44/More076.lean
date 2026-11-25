import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te5594733307810 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.lam (.var 0)) (.var 0))))))
theorem cert_e5594733307810 : ¬ IsSelfInterpreter e5594733307810 := by
  have hp : replay [[.left],[.left,.left],[.left,.left,.under,.under,.right],[.left],[],[.left]] e5594733307810 = some te5594733307810 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e5594733307810

end Blc.Floor44.Additional
