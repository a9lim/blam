import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra038
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692721476550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
theorem ex_e9692721476550 : ¬ IsSelfInterpreter e9692721476550 := by
  intro he
  have hp := replay_sound (t := e9692721476550) (u := t_e9692721476550) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692721476550) (by decide) (by decide) hj
#print axioms ex_e9692721476550



private def t_e9692721478086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692721478086 : ¬ IsSelfInterpreter e9692721478086 := by
  intro he
  have hp := replay_sound (t := e9692721478086) (u := t_e9692721478086) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692721478086) (by decide) (by decide) hj
#print axioms ex_e9692721478086



private def t_e9692726529646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))))
theorem ex_e9692726529646 : ¬ IsSelfInterpreter e9692726529646 := by
  intro he
  have hp := replay_sound (t := e9692726529646) (u := t_e9692726529646) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726529646) (by decide) (by decide) hj
#print axioms ex_e9692726529646



private def t_e9692726529658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))))
theorem ex_e9692726529658 : ¬ IsSelfInterpreter e9692726529658 := by
  intro he
  have hp := replay_sound (t := e9692726529658) (u := t_e9692726529658) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726529658) (by decide) (by decide) hj
#print axioms ex_e9692726529658



private def t_e9692726529846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))))
theorem ex_e9692726529846 : ¬ IsSelfInterpreter e9692726529846 := by
  intro he
  have hp := replay_sound (t := e9692726529846) (u := t_e9692726529846) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726529846) (by decide) (by decide) hj
#print axioms ex_e9692726529846



private def t_e9692726532334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))))
theorem ex_e9692726532334 : ¬ IsSelfInterpreter e9692726532334 := by
  intro he
  have hp := replay_sound (t := e9692726532334) (u := t_e9692726532334) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726532334) (by decide) (by decide) hj
#print axioms ex_e9692726532334



private def t_e9692726532342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))))
theorem ex_e9692726532342 : ¬ IsSelfInterpreter e9692726532342 := by
  intro he
  have hp := replay_sound (t := e9692726532342) (u := t_e9692726532342) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726532342) (by decide) (by decide) hj
#print axioms ex_e9692726532342



private def t_e9692726533686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))))
theorem ex_e9692726533686 : ¬ IsSelfInterpreter e9692726533686 := by
  intro he
  have hp := replay_sound (t := e9692726533686) (u := t_e9692726533686) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726533686) (by decide) (by decide) hj
#print axioms ex_e9692726533686



private def t_e9692726543982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))))
theorem ex_e9692726543982 : ¬ IsSelfInterpreter e9692726543982 := by
  intro he
  have hp := replay_sound (t := e9692726543982) (u := t_e9692726543982) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692726543982) (by decide) (by decide) hj
#print axioms ex_e9692726543982

end Blc.Floor45.Extra038
