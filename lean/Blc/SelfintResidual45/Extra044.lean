import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra044
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692869766710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692869766710 : ¬ IsSelfInterpreter e9692869766710 := by
  intro he
  have hp := replay_sound (t := e9692869766710) (u := t_e9692869766710) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869766710) (by decide) (by decide) hj
#print axioms ex_e9692869766710



private def t_e9692869769670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692869769670 : ¬ IsSelfInterpreter e9692869769670 := by
  intro he
  have hp := replay_sound (t := e9692869769670) (u := t_e9692869769670) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869769670) (by decide) (by decide) hj
#print axioms ex_e9692869769670



private def t_e9692872464622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))))
theorem ex_e9692872464622 : ¬ IsSelfInterpreter e9692872464622 := by
  intro he
  have hp := replay_sound (t := e9692872464622) (u := t_e9692872464622) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872464622) (by decide) (by decide) hj
#print axioms ex_e9692872464622

end Blc.Floor45.Extra044
