import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te1211541612374 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e1211541612374 : ¬ IsSelfInterpreter e1211541612374 := by
  have hp : replay [] (.app e1211541612374 diag) = some te1211541612374 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te1211541612374) (by decide) (by decide) h
#print axioms cert_e1211541612374

end Blc.Floor44.Additional
