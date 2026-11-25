import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra039
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692726543994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))))
theorem ex_e9692726543994 : ¬ IsSelfInterpreter e9692726543994 := by
  intro he
  have hp := replay_sound (t := e9692726543994) (u := t_e9692726543994) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726543994) (by decide) (by decide) hj
#print axioms ex_e9692726543994



private def t_e9692726551350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))))
theorem ex_e9692726551350 : ¬ IsSelfInterpreter e9692726551350 := by
  intro he
  have hp := replay_sound (t := e9692726551350) (u := t_e9692726551350) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726551350) (by decide) (by decide) hj
#print axioms ex_e9692726551350



private def t_e9692726551354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))))
theorem ex_e9692726551354 : ¬ IsSelfInterpreter e9692726551354 := by
  intro he
  have hp := replay_sound (t := e9692726551354) (u := t_e9692726551354) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726551354) (by decide) (by decide) hj
#print axioms ex_e9692726551354



private def t_e9692726552118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))))
theorem ex_e9692726552118 : ¬ IsSelfInterpreter e9692726552118 := by
  intro he
  have hp := replay_sound (t := e9692726552118) (u := t_e9692726552118) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726552118) (by decide) (by decide) hj
#print axioms ex_e9692726552118



private def t_e9692726581486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))))
theorem ex_e9692726581486 : ¬ IsSelfInterpreter e9692726581486 := by
  intro he
  have hp := replay_sound (t := e9692726581486) (u := t_e9692726581486) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726581486) (by decide) (by decide) hj
#print axioms ex_e9692726581486



private def t_e9692726581494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))))
theorem ex_e9692726581494 : ¬ IsSelfInterpreter e9692726581494 := by
  intro he
  have hp := replay_sound (t := e9692726581494) (u := t_e9692726581494) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726581494) (by decide) (by decide) hj
#print axioms ex_e9692726581494



private def t_e9692726582838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692726582838 : ¬ IsSelfInterpreter e9692726582838 := by
  intro he
  have hp := replay_sound (t := e9692726582838) (u := t_e9692726582838) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726582838) (by decide) (by decide) hj
#print axioms ex_e9692726582838


end Blc.Floor45.Extra039
