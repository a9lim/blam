import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000





private def te2411718538182 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def ve2411718538182 : Term := (.var 0)
theorem ex_e2411718538182 : ¬ IsSelfInterpreter e2411718538182 := by
  intro he
  have hj := probeJoin (e := e2411718538182) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := te2411718538182) (v := ve2411718538182) (ps := [[.left,.left],[.left,.left],[.left,.left,.left],[.left,.left,.right,.under,.under,.right]]) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  exact probeW (by decide) (by decide) hj
#print axioms ex_e2411718538182
end Blc.Floor43
