import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Extra037
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000

private def t_e9692718771766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692718771766 : ¬ IsSelfInterpreter e9692718771766 := by
  intro he
  have hp := replay_sound (t := e9692718771766) (u := t_e9692718771766) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718771766) (by decide) (by decide) hj
#print axioms ex_e9692718771766



private def t_e9692718774726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))))))
theorem ex_e9692718774726 : ¬ IsSelfInterpreter e9692718774726 := by
  intro he
  have hp := replay_sound (t := e9692718774726) (u := t_e9692718774726) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692718774726) (by decide) (by decide) hj
#print axioms ex_e9692718774726



private def t_e9692721470574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
theorem ex_e9692721470574 : ¬ IsSelfInterpreter e9692721470574 := by
  intro he
  have hp := replay_sound (t := e9692721470574) (u := t_e9692721470574) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692721470574) (by decide) (by decide) hj
#print axioms ex_e9692721470574



private def t_e9692721471030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
theorem ex_e9692721471030 : ¬ IsSelfInterpreter e9692721471030 := by
  intro he
  have hp := replay_sound (t := e9692721471030) (u := t_e9692721471030) (ps := []) (by decide)
  obtain ⟨n, hc⟩ := rawCount he
  obtain ⟨j, _, hj⟩ := WeakHeadClock.count_reduct n hc hp
  exact Weighted.no_clock 1 (by decide : Closed t_e9692721471030) (by decide) (by decide) hj
#print axioms ex_e9692721471030


end Blc.Floor45.Extra037
