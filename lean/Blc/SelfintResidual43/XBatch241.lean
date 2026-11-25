import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000



private def te2393382325882 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def ve2393382325882 : Term := (.var 0)
theorem ex_e2393382325882 : ¬ IsSelfInterpreter e2393382325882 := by
  intro he
  have hj := probeJoin (e := e2393382325882) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := te2393382325882) (v := ve2393382325882) (ps := [[.left,.left],[.left,.left,.left],[.left,.left],[.left,.left,.left],[.left,.left,.right,.under,.under,.right]]) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  exact probeW (by decide) (by decide) hj
#print axioms ex_e2393382325882

end Blc.Floor43
