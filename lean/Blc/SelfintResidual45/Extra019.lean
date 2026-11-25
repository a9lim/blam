import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra019
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9676766344134 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem ex_e9676766344134 : ¬ IsSelfInterpreter e9676766344134 := by
  intro he
  have hp := replay_sound (t := e9676766344134) (u := t_e9676766344134) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9676766344134) (by decide) (by decide) hj
#print axioms ex_e9676766344134



private def t_e9676766345614 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
theorem ex_e9676766345614 : ¬ IsSelfInterpreter e9676766345614 := by
  intro he
  have hp := replay_sound (t := e9676766345614) (u := t_e9676766345614) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9676766345614) (by decide) (by decide) hj
#print axioms ex_e9676766345614



private def t_e9676766345670 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem ex_e9676766345670 : ¬ IsSelfInterpreter e9676766345670 := by
  intro he
  have hp := replay_sound (t := e9676766345670) (u := t_e9676766345670) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9676766345670) (by decide) (by decide) hj
#print axioms ex_e9676766345670


end Blc.Floor45.Extra019
