import Blc.SelfintCompact44.Base
import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Additional
open Term SelfintSharp SelfintSingleObject SelfintLowerBound Round3Floor38 WeakHeadClock
set_option maxRecDepth 12000
set_option maxHeartbeats 1800000
private def te4786842095386 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842095386 : ¬ IsSelfInterpreter e4786842095386 := by
  have hp : replay [] (.app e4786842095386 diag) = some te4786842095386 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842095386) (by decide) (by decide) h
#print axioms cert_e4786842095386

private def te4786842096582 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842096582 : ¬ IsSelfInterpreter e4786842096582 := by
  have hp : replay [] (.app e4786842096582 diag) = some te4786842096582 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842096582) (by decide) (by decide) h
#print axioms cert_e4786842096582

private def te4786842100534 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842100534 : ¬ IsSelfInterpreter e4786842100534 := by
  have hp : replay [] (.app e4786842100534 diag) = some te4786842100534 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842100534) (by decide) (by decide) h
#print axioms cert_e4786842100534

private def te4786842100538 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842100538 : ¬ IsSelfInterpreter e4786842100538 := by
  have hp : replay [] (.app e4786842100538 diag) = some te4786842100538 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842100538) (by decide) (by decide) h
#print axioms cert_e4786842100538

private def te4786842101530 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842101530 : ¬ IsSelfInterpreter e4786842101530 := by
  have hp : replay [] (.app e4786842101530 diag) = some te4786842101530 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842101530) (by decide) (by decide) h
#print axioms cert_e4786842101530

private def te4786842102214 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
theorem cert_e4786842102214 : ¬ IsSelfInterpreter e4786842102214 := by
  have hp : replay [] (.app e4786842102214 diag) = some te4786842102214 := by decide
  intro he
  obtain ⟨_,h⟩ := clocks_replay (deltaCount he) hp
  exact Weighted.no_clock 1 (by decide : Closed te4786842102214) (by decide) (by decide) h
#print axioms cert_e4786842102214

end Blc.Floor44.Additional
