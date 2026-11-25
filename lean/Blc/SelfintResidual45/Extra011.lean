import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra011
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9570823010934 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))) (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0)) (.app (.var 1) (.var 1))))) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0)) (.app (.var 1) (.var 1))))) (.var 0)) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
theorem ex_e9570823010934 : ¬ IsSelfInterpreter e9570823010934 := by
  intro he
  have hp := replay_sound (t := (.app e9570823010934 diag)) (u := t_e9570823010934) (ps := [[.left],[.left,.left],[.left,.left],[.left,.left],[.left]]) (by decide)
  obtain ⟨n, hc⟩ := deltaCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9570823010934) (by decide) (by decide) hj
#print axioms ex_e9570823010934



private def t_e9573528302570 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))) (.var 0)))))
theorem ex_e9573528302570 : ¬ IsSelfInterpreter e9573528302570 := by
  intro he
  have hp := replay_sound (t := e9573528302570) (u := t_e9573528302570) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9573528302570) (by decide) (by decide) hj
#print axioms ex_e9573528302570

end Blc.Floor45.Extra011
