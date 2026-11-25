import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra009
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9540465257070 : Term := (.app (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))))) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))))))))) (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))))))))
theorem ex_e9540465257070 : ¬ IsSelfInterpreter e9540465257070 := by
  intro he
  have hp := replay_sound (t := e9540465257070) (u := t_e9540465257070) (ps := [[],[.left,.left],[.left],[.left,.under,.left,.left],[.left,.under,.left],[]]) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9540465257070) (by decide) (by decide) hj
#print axioms ex_e9540465257070



private def t_e9540465259830 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))))))) (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9540465259830 : ¬ IsSelfInterpreter e9540465259830 := by
  intro he
  have hp := replay_sound (t := (.app e9540465259830 diag)) (u := t_e9540465259830) (ps := [[.left],[.left,.left,.left],[.left,.left],[.left,.left,.under,.left,.left],[.left,.left,.under,.left],[.left]]) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9540465259830) (by decide) (by decide) hj
#print axioms ex_e9540465259830



private def t_e9540465259930 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))))) (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9540465259930 : ¬ IsSelfInterpreter e9540465259930 := by
  intro he
  have hp := replay_sound (t := (.app e9540465259930 diag)) (u := t_e9540465259930) (ps := [[.left],[.left,.left,.left],[.left,.left],[.left,.left,.under,.left,.left],[.left,.left,.under,.left],[.left]]) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9540465259930) (by decide) (by decide) hj
#print axioms ex_e9540465259930

end Blc.Floor45.Extra009
