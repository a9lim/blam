import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra045
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692872464630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))))
theorem ex_e9692872464630 : ¬ IsSelfInterpreter e9692872464630 := by
  intro he
  have hp := replay_sound (t := e9692872464630) (u := t_e9692872464630) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872464630) (by decide) (by decide) hj
#print axioms ex_e9692872464630



private def t_e9692872465518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
theorem ex_e9692872465518 : ¬ IsSelfInterpreter e9692872465518 := by
  intro he
  have hp := replay_sound (t := e9692872465518) (u := t_e9692872465518) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872465518) (by decide) (by decide) hj
#print axioms ex_e9692872465518



private def t_e9692872465974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692872465974 : ¬ IsSelfInterpreter e9692872465974 := by
  intro he
  have hp := replay_sound (t := e9692872465974) (u := t_e9692872465974) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872465974) (by decide) (by decide) hj
#print axioms ex_e9692872465974



private def t_e9692872471494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
theorem ex_e9692872471494 : ¬ IsSelfInterpreter e9692872471494 := by
  intro he
  have hp := replay_sound (t := e9692872471494) (u := t_e9692872471494) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872471494) (by decide) (by decide) hj
#print axioms ex_e9692872471494



private def t_e9692872472974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))))
theorem ex_e9692872472974 : ¬ IsSelfInterpreter e9692872472974 := by
  intro he
  have hp := replay_sound (t := e9692872472974) (u := t_e9692872472974) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872472974) (by decide) (by decide) hj
#print axioms ex_e9692872472974



private def t_e9692872473030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692872473030 : ¬ IsSelfInterpreter e9692872473030 := by
  intro he
  have hp := replay_sound (t := e9692872473030) (u := t_e9692872473030) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692872473030) (by decide) (by decide) hj
#print axioms ex_e9692872473030


end Blc.Floor45.Extra045
