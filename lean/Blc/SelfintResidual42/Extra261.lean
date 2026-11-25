import Blc.SelfintCompact42.Base
import Blc.SelfintResidual42.ExtraBase

set_option Elab.async false
namespace Blc.Floor42.Extra261
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
private def t_e1211584974650 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.app (.var 1) (.var 0)))))))))
theorem ex_e1211584974650 : ¬ IsSelfInterpreter e1211584974650 := by
  intro he
  have hp := replay_sound (t := e1211584974650) (u := t_e1211584974650) (ps := [[],[],[],[],[.under,.right],[.under,.right,.under,.left],[.under,.right,.under],[.under,.right,.under,.right]]) (by decide)
  have h := SelfintRound6BoundLiteral.one_lambda_public_occ (reductSI hp he)
  exact (by decide : ¬ 1 ≤ occ 0 (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))) (.app (.var 1) (.var 0))))))))) h
#print axioms ex_e1211584974650
end Blc.Floor42.Extra261
