import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
private def te2422407476654 : Term := (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.var 2))))))
private def ve2422407476654 : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e2422407476654 : ¬ IsSelfInterpreter e2422407476654 := by
  intro he
  have hj := probeJoin (e := e2422407476654) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := te2422407476654) (v := ve2422407476654) (ps := [[.left,.left],[.left,.left],[.left],[],[.left,.left,.right,.left],[.left,.left,.right,.left,.left],[.left,.left,.right,.left,.left,.left],[.left,.left,.right,.left,.left],[.left,.left,.right,.left],[.left,.left,.right]]) (qs := []) (by decide) (by decide) (by decide) he
  exact absentNF 1 (by decide) (by decide) (by decide) hj
#print axioms ex_e2422407476654
end Blc.Floor43
