import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra012
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9573529842630 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
theorem ex_e9573529842630 : ¬ IsSelfInterpreter e9573529842630 := by
  intro he
  have hp := replay_sound (t := e9573529842630) (u := t_e9573529842630) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9573529842630) (by decide) (by decide) hj
#print axioms ex_e9573529842630



private def t_e9573530455834 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9573530455834 : ¬ IsSelfInterpreter e9573530455834 := by
  intro he
  have hp := replay_sound (t := (.app e9573530455834 diag)) (u := t_e9573530455834) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573530455834) (by decide) (by decide) hj
#print axioms ex_e9573530455834



private def t_e9573530461754 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9573530461754 : ¬ IsSelfInterpreter e9573530461754 := by
  intro he
  have hp := replay_sound (t := (.app e9573530461754 diag)) (u := t_e9573530461754) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573530461754) (by decide) (by decide) hj
#print axioms ex_e9573530461754



private def t_e9573530461978 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9573530461978 : ¬ IsSelfInterpreter e9573530461978 := by
  intro he
  have hp := replay_sound (t := (.app e9573530461978 diag)) (u := t_e9573530461978) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573530461978) (by decide) (by decide) hj
#print axioms ex_e9573530461978



private def t_e9573530891206 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9573530891206 : ¬ IsSelfInterpreter e9573530891206 := by
  intro he
  have hp := replay_sound (t := (.app e9573530891206 diag)) (u := t_e9573530891206) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9573530891206) (by decide) (by decide) hj
#print axioms ex_e9573530891206


end Blc.Floor45.Extra012
