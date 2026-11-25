import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4786237830778 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.lam (.var 0)) (.var 0))))))
theorem cert_e4786237830778 : ¬ IsSelfInterpreter e4786237830778 := by
  have hp : replay [[],[.left],[.left,.under,.under,.right],[.right]] e4786237830778 = some te4786237830778 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786237830778

private def te4786254711726 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))))
theorem cert_e4786254711726 : ¬ IsSelfInterpreter e4786254711726 := by
  have hp : replay [[],[.left],[.right]] e4786254711726 = some te4786254711726 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786254711726

private def te4786254711766 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786254711766 : ¬ IsSelfInterpreter e4786254711766 := by
  have hp : replay [] (.app e4786254711766 diag) = some te4786254711766 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786254711766) (by decide) (by decide) h
#print axioms cert_e4786254711766

private def te4786338859894 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
theorem cert_e4786338859894 : ¬ IsSelfInterpreter e4786338859894 := by
  have hp : replay [[],[.left],[.right]] e4786338859894 = some te4786338859894 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786338859894

private def te4786338859990 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
theorem cert_e4786338859990 : ¬ IsSelfInterpreter e4786338859990 := by
  have hp : replay [[],[.left],[.right]] e4786338859990 = some te4786338859990 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786338859990

private def te4786339994910 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))))))
theorem cert_e4786339994910 : ¬ IsSelfInterpreter e4786339994910 := by
  have hp : replay [[],[.left],[.right]] e4786339994910 = some te4786339994910 := by decide
  exact wSource (replay_sound hp) (by decide)
#print axioms cert_e4786339994910

private def te4786340000710 : Term := (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
theorem cert_e4786340000710 : ¬ IsSelfInterpreter e4786340000710 := by
  have hp : replay [[]] e4786340000710 = some te4786340000710 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786340000710) (by decide) (by decide) h
#print axioms cert_e4786340000710

end Blc.Floor44.Additional
