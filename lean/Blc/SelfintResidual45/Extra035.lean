import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra035
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692718537838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))))
theorem ex_e9692718537838 : ¬ IsSelfInterpreter e9692718537838 := by
  intro he
  have hp := replay_sound (t := e9692718537838) (u := t_e9692718537838) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718537838) (by decide) (by decide) hj
#print axioms ex_e9692718537838



private def t_e9692718538294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))))
theorem ex_e9692718538294 : ¬ IsSelfInterpreter e9692718538294 := by
  intro he
  have hp := replay_sound (t := e9692718538294) (u := t_e9692718538294) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718538294) (by decide) (by decide) hj
#print axioms ex_e9692718538294



private def t_e9692718548598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))))
theorem ex_e9692718548598 : ¬ IsSelfInterpreter e9692718548598 := by
  intro he
  have hp := replay_sound (t := e9692718548598) (u := t_e9692718548598) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718548598) (by decide) (by decide) hj
#print axioms ex_e9692718548598



private def t_e9692718548794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0)))))))))
theorem ex_e9692718548794 : ¬ IsSelfInterpreter e9692718548794 := by
  intro he
  have hp := replay_sound (t := e9692718548794) (u := t_e9692718548794) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718548794) (by decide) (by decide) hj
#print axioms ex_e9692718548794



private def t_e9692718550582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))))))
theorem ex_e9692718550582 : ¬ IsSelfInterpreter e9692718550582 := by
  intro he
  have hp := replay_sound (t := e9692718550582) (u := t_e9692718550582) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718550582) (by decide) (by decide) hj
#print axioms ex_e9692718550582


end Blc.Floor45.Extra035
