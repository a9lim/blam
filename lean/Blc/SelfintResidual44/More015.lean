import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4786764238618 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 0)))))
theorem cert_e4786764238618 : ¬ IsSelfInterpreter e4786764238618 := by
  have hp : replay [] e4786764238618 = some te4786764238618 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4786764238618) (by decide) (by decide) h
#print axioms cert_e4786764238618

private def te4786764244762 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))) (.var 0)))))
theorem cert_e4786764244762 : ¬ IsSelfInterpreter e4786764244762 := by
  have hp : replay [] e4786764244762 = some te4786764244762 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 2 (by decide : Closed te4786764244762) (by decide) (by decide) h
#print axioms cert_e4786764244762

private def te4786764651770 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))) (.var 0))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))))
theorem cert_e4786764651770 : ¬ IsSelfInterpreter e4786764651770 := by
  have hp : replay [[],[.left],[.left,.under,.right,.under,.under,.right],[],[.left]] e4786764651770 = some te4786764651770 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786764651770

end Blc.Floor44.Additional
