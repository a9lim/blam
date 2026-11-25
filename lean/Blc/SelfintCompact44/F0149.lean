import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf770 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,1,2]
certRow f770s0 on (rf770 0) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow f770s1 on (rf770 1) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f770s2 on (rf770 2) using bank tags [3,28,28,28,28,28,28,28,28,28,28]
certRow f770s3 on (rf770 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,1,1,1,19,6,19,0,19,11] except [Floor44.e4845195964814]
certRow f770s4 on (rf770 4) using bank tags [3,3,3,3,3,6,19]
certRow f770s5 on (rf770 5) using bank tags [3,3,3,3,28,28,28]
certRow f770s6 on (rf770 6) using bank tags [3,3,3,3,3,3,3,28]
certRow f770s7 on (rf770 7) using bank tags [3,3,3,3,3,3,28,28]
certRow f770s8 on (rf770 8) using bank tags [3,3,28,28,28]
certRow f770s9 on (rf770 9) using bank tags [3,3,3,3,3]
certRow f770s10 on (rf770 10) using bank tags [3,3,3,3,3,3,3,28]
certRow f770s11 on (rf770 11) using bank tags [28,28,28,28,28]
theorem f770 (hard : BadRow [Floor44.e4845195964814]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,1,2] (.cons (f770s0) (.cons (f770s1) (.cons (f770s2) (.cons (f770s3 (.cons (hard.get (by decide : Floor44.e4845195964814 ∈ [Floor44.e4845195964814])) .nil)) (.cons (f770s4) (.cons (f770s5) (.cons (f770s6) (.cons (f770s7) (.cons (f770s8) (.cons (f770s9) (.cons (f770s10) (.cons (f770s11) .nil))))))))))))
private abbrev rf771 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,2,1]
certRow f771s0 on (rf771 0) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f771s1 on (rf771 1) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f771s2 on (rf771 2) using bank tags [3,3,28,28,28,28,28,28]
certRow f771s3 on (rf771 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,1,1,6,19,0,19,11] except [Floor44.e4845195964534]
certRow f771s4 on (rf771 4) using bank tags [3,3,3,3,3]
certRow f771s5 on (rf771 5) using bank tags [3,3,3,3,28,28]
certRow f771s6 on (rf771 6) using bank tags [3,3,3,3,3,3,3,28,28,6,19]
certRow f771s7 on (rf771 7) using bank tags [3,3,3,3,28,28]
certRow f771s8 on (rf771 8) using bank tags [3,3]
certRow f771s9 on (rf771 9) using bank tags [3,3,3,3,3,3,3,28]
certRow f771s10 on (rf771 10) using bank tags [3,3,3,3,3,3,3,28]
certRow f771s11 on (rf771 11) using bank tags []
theorem f771 (hard : BadRow [Floor44.e4845195964534]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,2,1] (.cons (f771s0) (.cons (f771s1) (.cons (f771s2) (.cons (f771s3 (.cons (hard.get (by decide : Floor44.e4845195964534 ∈ [Floor44.e4845195964534])) .nil)) (.cons (f771s4) (.cons (f771s5) (.cons (f771s6) (.cons (f771s7) (.cons (f771s8) (.cons (f771s9) (.cons (f771s10) (.cons (f771s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
