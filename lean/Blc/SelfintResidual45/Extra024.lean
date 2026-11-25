import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra024
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692399790522 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 0))))
theorem ex_e9692399790522 : ¬ IsSelfInterpreter e9692399790522 := by
  intro he
  have hp := replay_sound (t := e9692399790522) (u := t_e9692399790522) (ps := [[]]) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9692399790522) (by decide) (by decide) hj
#print axioms ex_e9692399790522



private def t_e9692399790554 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0))))
theorem ex_e9692399790554 : ¬ IsSelfInterpreter e9692399790554 := by
  intro he
  have hp := replay_sound (t := e9692399790554) (u := t_e9692399790554) (ps := [[]]) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 2 (by decide : Closed t_e9692399790554) (by decide) (by decide) hj
#print axioms ex_e9692399790554



private def t_e9692402037690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))) (.var 0))))
theorem ex_e9692402037690 : ¬ IsSelfInterpreter e9692402037690 := by
  intro he
  have hp := replay_sound (t := e9692402037690) (u := t_e9692402037690) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692402037690) (by decide) (by decide) hj
#print axioms ex_e9692402037690


end Blc.Floor45.Extra024
