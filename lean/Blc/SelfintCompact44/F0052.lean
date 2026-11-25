import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf369 (i : Nat) := Split43.four 24 i ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,1,0,2]
certRow f369s0 on (rf369 0) using bank tags []
certRow f369s1 on (rf369 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f369s2 on (rf369 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0] except [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734]
certRow f369s3 on (rf369 3) using bank tags [3,3,3,3]
certRow f369s4 on (rf369 4) using bank tags [3,3,3,3,3]
certRow f369s5 on (rf369 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f369s6 on (rf369 6) using bank tags []
certRow f369s7 on (rf369 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f369s8 on (rf369 8) using bank tags []
certRow f369s9 on (rf369 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f369s10 on (rf369 10) using bank tags [28,28,28,28,19,19]
certRow f369s11 on (rf369 11) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f369s12 on (rf369 12) using bank tags []
certRow f369s13 on (rf369 13) using bank tags []
certRow f369s14 on (rf369 14) using bank tags [28,28,28,28]
certRow f369s15 on (rf369 15) using bank tags [3,3,3,3]
certRow f369s16 on (rf369 16) using bank tags [28,28,28,28,28,28,28,28]
certRow f369s17 on (rf369 17) using bank tags []
certRow f369s18 on (rf369 18) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f369s19 on (rf369 19) using bank tags []
certRow f369s20 on (rf369 20) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,3,3,3,3,3,3,3,28,28,28,28,35,19,198,19]
certRow f369s21 on (rf369 21) using bank tags []
certRow f369s22 on (rf369 22) using bank tags []
certRow f369s23 on (rf369 23) using bank tags []
theorem f369 (hard : BadRow [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,1,0,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,1,0,2] (.cons (f369s0) (.cons (f369s1) (.cons (f369s2 (.cons (hard.get (by decide : Floor44.e4846359266926 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846359245230 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846356991598 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846356990894 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846434764398 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846434742702 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846426787438 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) (.cons (hard.get (by decide : Floor44.e4846426786734 ∈ [Floor44.e4846359266926,Floor44.e4846359245230,Floor44.e4846356991598,Floor44.e4846356990894,Floor44.e4846434764398,Floor44.e4846434742702,Floor44.e4846426787438,Floor44.e4846426786734])) .nil))))))))) (.cons (f369s3) (.cons (f369s4) (.cons (f369s5) (.cons (f369s6) (.cons (f369s7) (.cons (f369s8) (.cons (f369s9) (.cons (f369s10) (.cons (f369s11) (.cons (f369s12) (.cons (f369s13) (.cons (f369s14) (.cons (f369s15) (.cons (f369s16) (.cons (f369s17) (.cons (f369s18) (.cons (f369s19) (.cons (f369s20) (.cons (f369s21) (.cons (f369s22) (.cons (f369s23) .nil))))))))))))))))))))))))
certRow f370 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
