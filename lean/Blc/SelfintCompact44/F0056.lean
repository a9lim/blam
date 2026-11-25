import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf375 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,0,2,0,0,2]
certRow f375s0 on (rf375 0) using bank tags []
certRow f375s1 on (rf375 1) using bank tags [28,28,28,28]
certRow f375s2 on (rf375 2) using bank tags [28,28,28,28,28,28,28,28,28,1,1,1,30,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,19,19,19,19,0,0,0,0,0] except [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974]
certRow f375s3 on (rf375 3) using bank tags [28,28,28,28,28]
certRow f375s4 on (rf375 4) using bank tags [28,28,28]
certRow f375s5 on (rf375 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f375s6 on (rf375 6) using bank tags [28,28,28,28,28,28,28]
certRow f375s7 on (rf375 7) using bank tags []
certRow f375s8 on (rf375 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f375s9 on (rf375 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f375s10 on (rf375 10) using bank tags [19,19,19,19,19]
certRow f375s11 on (rf375 11) using bank tags [28,28,28,28,28]
theorem f375 (hard : BadRow [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,0,2,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,0,2,0,0,2] (.cons (f375s0) (.cons (f375s1) (.cons (f375s2 (.cons (hard.get (by decide : Floor44.e4846359386510 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) (.cons (hard.get (by decide : Floor44.e4846434883982 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) (.cons (hard.get (by decide : Floor44.e4846434883214 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) (.cons (hard.get (by decide : Floor44.e4846434773390 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) (.cons (hard.get (by decide : Floor44.e4846434772622 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) (.cons (hard.get (by decide : Floor44.e4846434744974 ∈ [Floor44.e4846359386510,Floor44.e4846434883982,Floor44.e4846434883214,Floor44.e4846434773390,Floor44.e4846434772622,Floor44.e4846434744974])) .nil))))))) (.cons (f375s3) (.cons (f375s4) (.cons (f375s5) (.cons (f375s6) (.cons (f375s7) (.cons (f375s8) (.cons (f375s9) (.cons (f375s10) (.cons (f375s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
