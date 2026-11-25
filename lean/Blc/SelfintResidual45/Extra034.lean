import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra034
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692715804218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))) (.var 0))))))
theorem ex_e9692715804218 : ¬ IsSelfInterpreter e9692715804218 := by
  intro he
  have hp := replay_sound (t := e9692715804218) (u := t_e9692715804218) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715804218) (by decide) (by decide) hj
#print axioms ex_e9692715804218



private def t_e9692715804442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))) (.var 0))))))
theorem ex_e9692715804442 : ¬ IsSelfInterpreter e9692715804442 := by
  intro he
  have hp := replay_sound (t := e9692715804442) (u := t_e9692715804442) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715804442) (by decide) (by decide) hj
#print axioms ex_e9692715804442



private def t_e9692715880046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
theorem ex_e9692715880046 : ¬ IsSelfInterpreter e9692715880046 := by
  intro he
  have hp := replay_sound (t := e9692715880046) (u := t_e9692715880046) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715880046) (by decide) (by decide) hj
#print axioms ex_e9692715880046



private def t_e9692715880058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem ex_e9692715880058 : ¬ IsSelfInterpreter e9692715880058 := by
  intro he
  have hp := replay_sound (t := e9692715880058) (u := t_e9692715880058) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715880058) (by decide) (by decide) hj
#print axioms ex_e9692715880058



private def t_e9692715880246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
theorem ex_e9692715880246 : ¬ IsSelfInterpreter e9692715880246 := by
  intro he
  have hp := replay_sound (t := e9692715880246) (u := t_e9692715880246) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715880246) (by decide) (by decide) hj
#print axioms ex_e9692715880246



private def t_e9692715880250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
theorem ex_e9692715880250 : ¬ IsSelfInterpreter e9692715880250 := by
  intro he
  have hp := replay_sound (t := e9692715880250) (u := t_e9692715880250) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715880250) (by decide) (by decide) hj
#print axioms ex_e9692715880250



private def t_e9692718533870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))))
theorem ex_e9692718533870 : ¬ IsSelfInterpreter e9692718533870 := by
  intro he
  have hp := replay_sound (t := e9692718533870) (u := t_e9692718533870) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718533870) (by decide) (by decide) hj
#print axioms ex_e9692718533870



private def t_e9692718533878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))))
theorem ex_e9692718533878 : ¬ IsSelfInterpreter e9692718533878 := by
  intro he
  have hp := replay_sound (t := e9692718533878) (u := t_e9692718533878) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718533878) (by decide) (by decide) hj
#print axioms ex_e9692718533878

end Blc.Floor45.Extra034
