import Blc.SelfintCompact42.Base
import Blc.SelfintResidual42.ExtraBase

set_option Elab.async false
namespace Blc.Floor42.Extra250
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
private def t_e1211298978414 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))
theorem ex_e1211298978414 : ¬ IsSelfInterpreter e1211298978414 := by
  intro he
  have hp := replay_sound (t := (.app e1211298978414 churchTrue)) (u := t_e1211298978414) (ps := [[.left],[.left],[],[.right,.under,.left],[.right,.under],[]]) (by decide)
  apply specialized_not_so he hp
  exact (so_closed_lam (by decide) (SO.app (so_closed_lam (by decide) (SO.app (SO.var 0) (SO.var 0))) (SO.lam (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (r := (.var 0)) (SO.app (SO.app (SO.var 1) (SO.app (SO.var 0) (SO.var 0))) (SO.app (SO.var 0) (so_closed_lam (by decide) (SO.app (SO.var 0) (SO.var 0))))) (SO.var 0) (by decide) (by rfl))))
#print axioms ex_e1211298978414
end Blc.Floor42.Extra250
