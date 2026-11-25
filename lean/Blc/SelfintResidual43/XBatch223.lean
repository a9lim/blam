import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
private def te2393119067054 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def ve2393119067054 : Term := (.var 0)
theorem ex_e2393119067054 : ¬ IsSelfInterpreter e2393119067054 := by
  intro he
  have hj := probeJoin (e := e2393119067054) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := te2393119067054) (v := ve2393119067054) (ps := [[.left,.left],[.left,.left,.left],[.left,.left,.right]]) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  exact probeW (by decide) (by decide) hj
#print axioms ex_e2393119067054
private def te2393119067094 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
theorem ex_e2393119067094 : ¬ IsSelfInterpreter e2393119067094 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under,.left],[.left,.under,.right,.under],[.right],[.right,.under,.right,.under,.left]] e2393119067094 = some te2393119067094 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te2393119067094) (by decide) (by decide) hc
#print axioms ex_e2393119067094
private def te2393119067770 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem ex_e2393119067770 : ¬ IsSelfInterpreter e2393119067770 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under,.right],[.right],[.right,.under,.right,.under,.right]] e2393119067770 = some te2393119067770 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te2393119067770) (by decide) (by decide) hc
#print axioms ex_e2393119067770
end Blc.Floor43
