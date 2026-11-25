import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra013
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9573684201078 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9573684201078 : ¬ IsSelfInterpreter e9573684201078 := by
  intro he
  have hp := replay_sound (t := (.app e9573684201078 diag)) (u := t_e9573684201078) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573684201078) (by decide) (by decide) hj
#print axioms ex_e9573684201078



private def t_e9573687129030 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem ex_e9573687129030 : ¬ IsSelfInterpreter e9573687129030 := by
  intro he
  have hp := replay_sound (t := e9573687129030) (u := t_e9573687129030) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573687129030) (by decide) (by decide) hj
#print axioms ex_e9573687129030



private def t_e9573687130510 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
theorem ex_e9573687130510 : ¬ IsSelfInterpreter e9573687130510 := by
  intro he
  have hp := replay_sound (t := e9573687130510) (u := t_e9573687130510) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573687130510) (by decide) (by decide) hj
#print axioms ex_e9573687130510



private def t_e9573687130566 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
theorem ex_e9573687130566 : ¬ IsSelfInterpreter e9573687130566 := by
  intro he
  have hp := replay_sound (t := e9573687130566) (u := t_e9573687130566) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573687130566) (by decide) (by decide) hj
#print axioms ex_e9573687130566


end Blc.Floor45.Extra013
