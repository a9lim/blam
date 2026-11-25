import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra043
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692869532782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))))
theorem ex_e9692869532782 : ¬ IsSelfInterpreter e9692869532782 := by
  intro he
  have hp := replay_sound (t := e9692869532782) (u := t_e9692869532782) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869532782) (by decide) (by decide) hj
#print axioms ex_e9692869532782



private def t_e9692869543542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))))
theorem ex_e9692869543542 : ¬ IsSelfInterpreter e9692869543542 := by
  intro he
  have hp := replay_sound (t := e9692869543542) (u := t_e9692869543542) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869543542) (by decide) (by decide) hj
#print axioms ex_e9692869543542



private def t_e9692869758198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
theorem ex_e9692869758198 : ¬ IsSelfInterpreter e9692869758198 := by
  intro he
  have hp := replay_sound (t := e9692869758198) (u := t_e9692869758198) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869758198) (by decide) (by decide) hj
#print axioms ex_e9692869758198



private def t_e9692869758586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
theorem ex_e9692869758586 : ¬ IsSelfInterpreter e9692869758586 := by
  intro he
  have hp := replay_sound (t := e9692869758586) (u := t_e9692869758586) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869758586) (by decide) (by decide) hj
#print axioms ex_e9692869758586


end Blc.Floor45.Extra043
