import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra042
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692869485422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))))))
theorem ex_e9692869485422 : ¬ IsSelfInterpreter e9692869485422 := by
  intro he
  have hp := replay_sound (t := e9692869485422) (u := t_e9692869485422) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869485422) (by decide) (by decide) hj
#print axioms ex_e9692869485422



private def t_e9692869528814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))))
theorem ex_e9692869528814 : ¬ IsSelfInterpreter e9692869528814 := by
  intro he
  have hp := replay_sound (t := e9692869528814) (u := t_e9692869528814) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869528814) (by decide) (by decide) hj
#print axioms ex_e9692869528814



private def t_e9692869528822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))))
theorem ex_e9692869528822 : ¬ IsSelfInterpreter e9692869528822 := by
  intro he
  have hp := replay_sound (t := e9692869528822) (u := t_e9692869528822) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692869528822) (by decide) (by decide) hj
#print axioms ex_e9692869528822


end Blc.Floor45.Extra042
