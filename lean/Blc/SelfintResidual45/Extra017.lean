import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra017
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9676609676858 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9676609676858 : ¬ IsSelfInterpreter e9676609676858 := by
  intro he
  have hp := replay_sound (t := (.app e9676609676858 diag)) (u := t_e9676609676858) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9676609676858) (by decide) (by decide) hj
#print axioms ex_e9676609676858


end Blc.Floor45.Extra017
