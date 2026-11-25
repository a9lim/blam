import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra021
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9690391563222 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))))) (.var 0)) (.var 1))))))
theorem ex_e9690391563222 : ¬ IsSelfInterpreter e9690391563222 := by
  intro he
  have hp := replay_sound (t := (.app e9690391563222 churchTrue)) (u := t_e9690391563222) (ps := [[.left],[.left],[],[.right,.under,.right,.left],[.right,.under,.right],[]]) (by decide)
  apply specialized_not_so he hp
  exact (so_closed_lam (by decide) (SO.app (so_closed_lam (by decide) (SO.app (SO.app (SO.var 0) (so_dead (by decide) (SO.var 1))) (SO.app (SO.var 0) (SO.lam (g := (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))) (r := (.var 0)) (SO.app (SO.app (SO.var 0) (so_dead (by decide) (SO.var 1))) (SO.app (SO.app (SO.var 1) (SO.var 0)) (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1))))) (SO.var 0) (by decide) (by rfl))))) (SO.lam (g := (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))))))) (.var 0)) (.var 1)))) (r := (.var 0)) (SO.app (SO.app (SO.var 0) (so_dead (by decide) (SO.var 1))) (SO.app (SO.app (so_closed_lam (by decide) (SO.app (SO.app (SO.var 0) (so_dead (by decide) (SO.var 1))) (SO.app (SO.var 0) (SO.lam (g := (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))) (r := (.var 0)) (SO.app (SO.app (SO.var 0) (so_dead (by decide) (SO.var 1))) (SO.app (SO.app (SO.var 1) (SO.var 0)) (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1))))) (SO.var 0) (by decide) (by rfl))))) (SO.var 0)) (SO.var 1))) (SO.var 0) (by decide) (by rfl))))
#print axioms ex_e9690391563222


end Blc.Floor45.Extra021
