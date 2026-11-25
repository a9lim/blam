import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra040
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692726589838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))))
theorem ex_e9692726589838 : ¬ IsSelfInterpreter e9692726589838 := by
  intro he
  have hp := replay_sound (t := e9692726589838) (u := t_e9692726589838) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726589838) (by decide) (by decide) hj
#print axioms ex_e9692726589838



private def t_e9692726636314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))))
theorem ex_e9692726636314 : ¬ IsSelfInterpreter e9692726636314 := by
  intro he
  have hp := replay_sound (t := e9692726636314) (u := t_e9692726636314) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726636314) (by decide) (by decide) hj
#print axioms ex_e9692726636314



private def t_e9692726662710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692726662710 : ¬ IsSelfInterpreter e9692726662710 := by
  intro he
  have hp := replay_sound (t := e9692726662710) (u := t_e9692726662710) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726662710) (by decide) (by decide) hj
#print axioms ex_e9692726662710



private def t_e9692726662714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))))
theorem ex_e9692726662714 : ¬ IsSelfInterpreter e9692726662714 := by
  intro he
  have hp := replay_sound (t := e9692726662714) (u := t_e9692726662714) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726662714) (by decide) (by decide) hj
#print axioms ex_e9692726662714



private def t_e9692726662938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))))
theorem ex_e9692726662938 : ¬ IsSelfInterpreter e9692726662938 := by
  intro he
  have hp := replay_sound (t := e9692726662938) (u := t_e9692726662938) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726662938) (by decide) (by decide) hj
#print axioms ex_e9692726662938



private def t_e9692726663566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))
theorem ex_e9692726663566 : ¬ IsSelfInterpreter e9692726663566 := by
  intro he
  have hp := replay_sound (t := e9692726663566) (u := t_e9692726663566) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726663566) (by decide) (by decide) hj
#print axioms ex_e9692726663566


end Blc.Floor45.Extra040
