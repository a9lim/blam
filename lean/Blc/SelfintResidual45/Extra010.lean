import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra010
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9553352341994 : Term := (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
theorem ex_e9553352341994 : ¬ IsSelfInterpreter e9553352341994 := by
  intro he
  have hp := replay_sound (t := e9553352341994) (u := t_e9553352341994) (ps := [[],[.left],[],[.left,.right,.under],[.left,.right,.under,.under,.left,.right,.under,.right,.left],[.left,.right,.under,.under,.left,.right,.under,.right]]) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9553352341994) (by decide) (by decide) hj
#print axioms ex_e9553352341994



private def t_e9557387775610 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
theorem ex_e9557387775610 : ¬ IsSelfInterpreter e9557387775610 := by
  intro he
  have hp := replay_sound (t := e9557387775610) (u := t_e9557387775610) (ps := [[],[.left],[],[.left],[.right,.under,.under,.right],[],[.left],[],[]]) (by decide)
  have h := SelfintRound6BoundLiteral.one_lambda_public_occ (reductSI hp he)
  exact (by decide : ¬ 1 ≤ occ 0 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))) h
#print axioms ex_e9557387775610



private def t_e9558988020202 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.lam (.lam (.var 1))) (.var 0))) (.var 0))))) (.lam (.lam (.var 1))))
theorem ex_e9558988020202 : ¬ IsSelfInterpreter e9558988020202 := by
  intro he
  have hp := replay_sound (t := (.app e9558988020202 churchTrue)) (u := t_e9558988020202) (ps := [[.left],[.left,.left],[.left,.left,.under,.under,.left,.right],[.left],[],[.left,.left],[.left,.left,.under,.under,.left,.right],[.left],[.left,.under,.left,.left],[.left,.under,.left,.left,.under,.under,.left,.right],[],[.left,.right,.under,.under,.left,.right],[.left],[]]) (by decide)
  apply specialized_not_so he hp
  exact (SO.app (SO.app (SO.app (so_closed_lam (by decide) (SO.lam (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (r := (.app (.var 0) (.var 0))) (SO.app (SO.app (SO.app (SO.var 1) (SO.var 1)) (so_dead (by decide) (SO.var 1))) (SO.var 0)) (SO.app (SO.var 0) (SO.var 0)) (by decide) (by rfl))) (so_closed_lam (by decide) (SO.lam (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (r := (.app (.var 0) (.var 0))) (SO.app (SO.app (SO.app (SO.var 1) (SO.var 1)) (so_dead (by decide) (SO.var 1))) (SO.var 0)) (SO.app (SO.var 0) (SO.var 0)) (by decide) (by rfl)))) (so_closed_lam (by decide) (SO.lam (g := (.app (.app (.var 1) (.app (.lam (.lam (.var 1))) (.var 0))) (.var 0))) (r := (.app (.var 0) (.var 0))) (SO.app (SO.app (SO.app (SO.var 1) (SO.var 1)) (SO.app (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1))) (SO.var 0))) (SO.var 0)) (SO.app (SO.var 0) (SO.var 0)) (by decide) (by rfl)))) (so_closed_lam (by decide) (so_dead (by decide) (SO.var 1))))
#print axioms ex_e9558988020202


end Blc.Floor45.Extra010
