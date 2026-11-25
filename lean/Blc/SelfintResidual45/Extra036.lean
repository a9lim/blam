import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra036
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692718718062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
theorem ex_e9692718718062 : ¬ IsSelfInterpreter e9692718718062 := by
  intro he
  have hp := replay_sound (t := e9692718718062) (u := t_e9692718718062) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718718062) (by decide) (by decide) hj
#print axioms ex_e9692718718062



private def t_e9692718718518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692718718518 : ¬ IsSelfInterpreter e9692718718518 := by
  intro he
  have hp := replay_sound (t := e9692718718518) (u := t_e9692718718518) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718718518) (by decide) (by decide) hj
#print axioms ex_e9692718718518



private def t_e9692718718522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))))
theorem ex_e9692718718522 : ¬ IsSelfInterpreter e9692718718522 := by
  intro he
  have hp := replay_sound (t := e9692718718522) (u := t_e9692718718522) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718718522) (by decide) (by decide) hj
#print axioms ex_e9692718718522



private def t_e9692718724038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
theorem ex_e9692718724038 : ¬ IsSelfInterpreter e9692718724038 := by
  intro he
  have hp := replay_sound (t := e9692718724038) (u := t_e9692718724038) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718724038) (by decide) (by decide) hj
#print axioms ex_e9692718724038



private def t_e9692718725574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692718725574 : ¬ IsSelfInterpreter e9692718725574 := by
  intro he
  have hp := replay_sound (t := e9692718725574) (u := t_e9692718725574) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718725574) (by decide) (by decide) hj
#print axioms ex_e9692718725574


end Blc.Floor45.Extra036
