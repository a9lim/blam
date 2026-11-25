import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra028
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692413808410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))) (.var 0))))
theorem ex_e9692413808410 : ¬ IsSelfInterpreter e9692413808410 := by
  intro he
  have hp := replay_sound (t := e9692413808410) (u := t_e9692413808410) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692413808410) (by decide) (by decide) hj
#print axioms ex_e9692413808410



private def t_e9692413814330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))) (.var 0))))
theorem ex_e9692413814330 : ¬ IsSelfInterpreter e9692413814330 := by
  intro he
  have hp := replay_sound (t := e9692413814330) (u := t_e9692413814330) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692413814330) (by decide) (by decide) hj
#print axioms ex_e9692413814330



private def t_e9692413814554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))) (.var 0))))
theorem ex_e9692413814554 : ¬ IsSelfInterpreter e9692413814554 := by
  intro he
  have hp := replay_sound (t := e9692413814554) (u := t_e9692413814554) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692413814554) (by decide) (by decide) hj
#print axioms ex_e9692413814554



private def t_e9692424271482 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9692424271482 : ¬ IsSelfInterpreter e9692424271482 := by
  intro he
  have hp := replay_sound (t := (.app e9692424271482 diag)) (u := t_e9692424271482) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692424271482) (by decide) (by decide) hj
#print axioms ex_e9692424271482


end Blc.Floor45.Extra028
