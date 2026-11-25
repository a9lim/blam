import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra025
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692402096602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))) (.var 0))))
theorem ex_e9692402096602 : ¬ IsSelfInterpreter e9692402096602 := by
  intro he
  have hp := replay_sound (t := e9692402096602) (u := t_e9692402096602) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692402096602) (by decide) (by decide) hj
#print axioms ex_e9692402096602



private def t_e9692402955226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0))))
theorem ex_e9692402955226 : ¬ IsSelfInterpreter e9692402955226 := by
  intro he
  have hp := replay_sound (t := e9692402955226) (u := t_e9692402955226) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692402955226) (by decide) (by decide) hj
#print axioms ex_e9692402955226



private def t_e9692402956778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0))))
theorem ex_e9692402956778 : ¬ IsSelfInterpreter e9692402956778 := by
  intro he
  have hp := replay_sound (t := e9692402956778) (u := t_e9692402956778) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692402956778) (by decide) (by decide) hj
#print axioms ex_e9692402956778


end Blc.Floor45.Extra025
