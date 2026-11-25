import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
private def te2389293861806 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def ve2389293861806 : Term := (.var 0)
theorem ex_e2389293861806 : ¬ IsSelfInterpreter e2389293861806 := by
  intro he
  have hj := probeJoin (e := e2389293861806) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := te2389293861806) (v := ve2389293861806) (ps := [[.left,.left],[.left,.left,.left],[.left,.left,.right]]) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  exact probeW (by decide) (by decide) hj
#print axioms ex_e2389293861806
private def te2389293861846 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
theorem ex_e2389293861846 : ¬ IsSelfInterpreter e2389293861846 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under,.left]] e2389293861846 = some te2389293861846 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te2389293861846) (by decide) (by decide) hc
#print axioms ex_e2389293861846
private def te2389293862522 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem ex_e2389293862522 : ¬ IsSelfInterpreter e2389293862522 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under,.right]] e2389293862522 = some te2389293862522 := by decide
  intro he
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te2389293862522) (by decide) (by decide) hc
#print axioms ex_e2389293862522
end Blc.Floor43
