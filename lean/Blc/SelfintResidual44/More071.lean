import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4846434764398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))))
theorem cert_e4846434764398 : ¬ IsSelfInterpreter e4846434764398 := by
  have hp : replay [] e4846434764398 = some te4846434764398 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434764398) (by decide) (by decide) h
#print axioms cert_e4846434764398

private def te4846434764410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))))
theorem cert_e4846434764410 : ¬ IsSelfInterpreter e4846434764410 := by
  have hp : replay [] e4846434764410 = some te4846434764410 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434764410) (by decide) (by decide) h
#print axioms cert_e4846434764410

private def te4846434767814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))))
theorem cert_e4846434767814 : ¬ IsSelfInterpreter e4846434767814 := by
  have hp : replay [] e4846434767814 = some te4846434767814 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434767814) (by decide) (by decide) h
#print axioms cert_e4846434767814

private def te4846434771766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))))
theorem cert_e4846434771766 : ¬ IsSelfInterpreter e4846434771766 := by
  have hp : replay [] e4846434771766 = some te4846434771766 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434771766) (by decide) (by decide) h
#print axioms cert_e4846434771766

private def te4846434771770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))))
theorem cert_e4846434771770 : ¬ IsSelfInterpreter e4846434771770 := by
  have hp : replay [] e4846434771770 = some te4846434771770 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434771770) (by decide) (by decide) h
#print axioms cert_e4846434771770

private def te4846434772762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))))
theorem cert_e4846434772762 : ¬ IsSelfInterpreter e4846434772762 := by
  have hp : replay [] e4846434772762 = some te4846434772762 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434772762) (by decide) (by decide) h
#print axioms cert_e4846434772762

private def te4846434773446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))))
theorem cert_e4846434773446 : ¬ IsSelfInterpreter e4846434773446 := by
  have hp : replay [] e4846434773446 = some te4846434773446 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (rawCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4846434773446) (by decide) (by decide) h
#print axioms cert_e4846434773446
end Blc.Floor44.Additional
