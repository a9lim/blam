import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra000
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e2394897451950 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))))
theorem ex_e2394897451950 : ¬ IsSelfInterpreter e2394897451950 := by
  intro he
  have hp := replay_sound (t := (.app e2394897451950 churchTrue)) (u := t_e2394897451950) (ps := [[],[],[.left],[.right]]) (by decide)
  apply specialized_not_so he hp
  exact (SO.app (so_closed_lam (by decide) (SO.app (SO.var 0) (SO.lam (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))) (r := (.var 0)) (SO.app (SO.app (SO.var 1) (SO.var 0)) (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1)))) (SO.var 0) (by decide) (by rfl)))) (so_closed_lam (by decide) (SO.app (SO.var 0) (SO.lam (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))) (r := (.var 0)) (SO.app (SO.app (SO.var 1) (SO.var 0)) (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1)))) (SO.var 0) (by decide) (by rfl)))))
#print axioms ex_e2394897451950


end Blc.Floor45.Extra000
