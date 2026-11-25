import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra018
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9676762839510 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))) (.app (.var 1) (.var 0))) (.var 1)))))))
theorem ex_e9676762839510 : ¬ IsSelfInterpreter e9676762839510 := by
  intro he
  have hp := replay_sound (t := e9676762839510) (u := t_e9676762839510) (ps := [[],[],[.left],[.left],[.left],[],[.under,.left,.right]]) (by decide)
  have h := SelfintRound6BoundLiteral.one_lambda_public_occ (reductSI hp he)
  exact (by decide : ¬ 1 ≤ occ 0 (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))) (.app (.var 1) (.var 0))) (.var 1))))))) h
#print axioms ex_e9676762839510



private def t_e9676762899926 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
theorem ex_e9676762899926 : ¬ IsSelfInterpreter e9676762899926 := by
  intro he
  have hp := replay_sound (t := e9676762899926) (u := t_e9676762899926) (ps := [[],[],[.left],[.left],[.left],[],[.under,.right,.left]]) (by decide)
  have h := SelfintRound6BoundLiteral.one_lambda_public_occ (reductSI hp he)
  exact (by decide : ¬ 1 ≤ occ 0 (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) (.app (.app (.var 1) (.var 0)) (.var 1))))))))) h
#print axioms ex_e9676762899926



private def t_e9676762900282 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0))))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0)))))))))) (.app (.var 1) (.app (.var 1) (.var 0))))))))
theorem ex_e9676762900282 : ¬ IsSelfInterpreter e9676762900282 := by
  intro he
  have hp := replay_sound (t := e9676762900282) (u := t_e9676762900282) (ps := [[],[],[.left],[.left],[.left],[],[.under,.right]]) (by decide)
  have h := SelfintRound6BoundLiteral.one_lambda_public_occ (reductSI hp he)
  exact (by decide : ¬ 1 ≤ occ 0 (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0))))))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0))))))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0)))))))))) (.app (.var 1) (.app (.var 1) (.var 0)))))))) h
#print axioms ex_e9676762900282



private def t_e9676766337262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
theorem ex_e9676766337262 : ¬ IsSelfInterpreter e9676766337262 := by
  intro he
  have hp := replay_sound (t := e9676766337262) (u := t_e9676766337262) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9676766337262) (by decide) (by decide) hj
#print axioms ex_e9676766337262


end Blc.Floor45.Extra018
