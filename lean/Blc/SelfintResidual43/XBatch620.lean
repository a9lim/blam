import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
private def te2423100749882 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))) (.var 0))))
theorem ex_e2423100749882 : ¬ IsSelfInterpreter e2423100749882 := by
  have hp : replay [[]] e2423100749882 = some te2423100749882 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te2423100749882) (by decide) (by decide) hc
#print axioms ex_e2423100749882
end Blc.Floor43
