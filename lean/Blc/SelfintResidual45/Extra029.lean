import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra029
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692424272502 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
theorem ex_e9692424272502 : ¬ IsSelfInterpreter e9692424272502 := by
  intro he
  have hp := replay_sound (t := e9692424272502) (u := t_e9692424272502) (ps := [[]]) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9692424272502) (by decide) (by decide) hj
#print axioms ex_e9692424272502


end Blc.Floor45.Extra029
