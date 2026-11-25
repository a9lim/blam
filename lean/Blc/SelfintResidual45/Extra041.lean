import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra041
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692727762030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
theorem ex_e9692727762030 : ¬ IsSelfInterpreter e9692727762030 := by
  intro he
  have hp := replay_sound (t := e9692727762030) (u := t_e9692727762030) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692727762030) (by decide) (by decide) hj
#print axioms ex_e9692727762030



private def t_e9692727762486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692727762486 : ¬ IsSelfInterpreter e9692727762486 := by
  intro he
  have hp := replay_sound (t := e9692727762486) (u := t_e9692727762486) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692727762486) (by decide) (by decide) hj
#print axioms ex_e9692727762486



private def t_e9692727768006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
theorem ex_e9692727768006 : ¬ IsSelfInterpreter e9692727768006 := by
  intro he
  have hp := replay_sound (t := e9692727768006) (u := t_e9692727768006) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692727768006) (by decide) (by decide) hj
#print axioms ex_e9692727768006



private def t_e9692727769542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692727769542 : ¬ IsSelfInterpreter e9692727769542 := by
  intro he
  have hp := replay_sound (t := e9692727769542) (u := t_e9692727769542) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692727769542) (by decide) (by decide) hj
#print axioms ex_e9692727769542


end Blc.Floor45.Extra041
