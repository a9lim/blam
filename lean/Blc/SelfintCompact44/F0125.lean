import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf697 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,1,2]
certRow f697s0 on (rf697 0) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f697s1 on (rf697 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f697s2 on (rf697 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f697s3 on (rf697 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,1,47]
certRow f697s4 on (rf697 4) using bank tags [3,3,3,3,3]
certRow f697s5 on (rf697 5) using bank tags [3,3,3,3,28,28,28,28]
certRow f697s6 on (rf697 6) using bank tags [3,28,1]
certRow f697s7 on (rf697 7) using bank tags [3,3,3,3]
certRow f697s8 on (rf697 8) using bank tags [3,3,3,3,28,28,28]
certRow f697s9 on (rf697 9) using bank tags [3,3,3,3,3,28,28]
certRow f697s10 on (rf697 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow f697s11 on (rf697 11) using bank tags [28,28,28,1,15,18,77,19,6,19,18,6,19,6,6,0,244,35] except [Floor44.e4846363332110]
theorem f697 (hard : BadRow [Floor44.e4846363332110]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,1,2] (.cons (f697s0) (.cons (f697s1) (.cons (f697s2) (.cons (f697s3) (.cons (f697s4) (.cons (f697s5) (.cons (f697s6) (.cons (f697s7) (.cons (f697s8) (.cons (f697s9) (.cons (f697s10) (.cons (f697s11 (.cons (hard.get (by decide : Floor44.e4846363332110 ∈ [Floor44.e4846363332110])) .nil)) .nil))))))))))))
private abbrev rf698 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,2,1]
certRow f698s0 on (rf698 0) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28]
certRow f698s1 on (rf698 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f698s2 on (rf698 2) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f698s3 on (rf698 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,32]
certRow f698s4 on (rf698 4) using bank tags [3,3,3,3,3]
certRow f698s5 on (rf698 5) using bank tags [3,3,3,3,28,28]
certRow f698s6 on (rf698 6) using bank tags [3,28]
certRow f698s7 on (rf698 7) using bank tags [3,3,3,3]
certRow f698s8 on (rf698 8) using bank tags [3,3,3,3,1,1]
certRow f698s9 on (rf698 9) using bank tags [3,3,3,28,28,28,28]
certRow f698s10 on (rf698 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow f698s11 on (rf698 11) using bank tags [1,77,6,22,18,45,19,16,243,22]
theorem f698 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,2,1] (.cons (f698s0) (.cons (f698s1) (.cons (f698s2) (.cons (f698s3) (.cons (f698s4) (.cons (f698s5) (.cons (f698s6) (.cons (f698s7) (.cons (f698s8) (.cons (f698s9) (.cons (f698s10) (.cons (f698s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
