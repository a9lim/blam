import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
private def te2389346892266 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
theorem ex_e2389346892266 : ¬ IsSelfInterpreter e2389346892266 := by
  have hp : replay [[],[.left],[.left,.under,.left,.right,.under,.right]] e2389346892266 = some te2389346892266 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te2389346892266) (by decide) (by decide) hc
#print axioms ex_e2389346892266
private def te2389346893034 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))))
theorem ex_e2389346893034 : ¬ IsSelfInterpreter e2389346893034 := by
  have hp : replay [[],[.left],[.left,.under,.left,.right,.under]] e2389346893034 = some te2389346893034 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te2389346893034) (by decide) (by decide) hc
#print axioms ex_e2389346893034

private def te2389346946874 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 0))))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 0))))))))
theorem ex_e2389346946874 : ¬ IsSelfInterpreter e2389346946874 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under],[],[.left],[.left,.under,.right,.under],[.right,.under],[],[.left],[.left,.under,.right,.under],[.right,.under,.under,.right,.under,.left]] e2389346946874 = some te2389346946874 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te2389346946874) (by decide) (by decide) hc
#print axioms ex_e2389346946874
end Blc.Floor43
