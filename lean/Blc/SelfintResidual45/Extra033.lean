import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra033
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692713819702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 1))))))
theorem ex_e9692713819702 : ¬ IsSelfInterpreter e9692713819702 := by
  intro he
  have hp := replay_sound (t := e9692713819702) (u := t_e9692713819702) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692713819702) (by decide) (by decide) hj
#print axioms ex_e9692713819702



private def t_e9692713831990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))) (.var 1))))))
theorem ex_e9692713831990 : ¬ IsSelfInterpreter e9692713831990 := by
  intro he
  have hp := replay_sound (t := e9692713831990) (u := t_e9692713831990) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692713831990) (by decide) (by decide) hj
#print axioms ex_e9692713831990



private def t_e9692715798298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 0))))))
theorem ex_e9692715798298 : ¬ IsSelfInterpreter e9692715798298 := by
  intro he
  have hp := replay_sound (t := e9692715798298) (u := t_e9692715798298) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692715798298) (by decide) (by decide) hj
#print axioms ex_e9692715798298

end Blc.Floor45.Extra033
