import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf453 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,0,2]
certRow f453s0 on (rf453 0) using bank tags []
certRow f453s1 on (rf453 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f453s2 on (rf453 2) using bank tags []
certRow f453s3 on (rf453 3) using bank tags [28,28,28,28,28]
certRow f453s4 on (rf453 4) using bank tags []
certRow f453s5 on (rf453 5) using bank tags [28,28,28,28]
certRow f453s6 on (rf453 6) using bank tags []
certRow f453s7 on (rf453 7) using bank tags [28,28,28,28,28]
theorem f453 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,0,2] (.cons (f453s0) (.cons (f453s1) (.cons (f453s2) (.cons (f453s3) (.cons (f453s4) (.cons (f453s5) (.cons (f453s6) (.cons (f453s7) .nil))))))))
private abbrev rf454 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,1,1]
certRow f454s0 on (rf454 0) using bank tags []
certRow f454s1 on (rf454 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f454s2 on (rf454 2) using bank tags [3,3,3,3,3]
certRow f454s3 on (rf454 3) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f454s4 on (rf454 4) using bank tags [3,3,3,3,3]
certRow f454s5 on (rf454 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f454s6 on (rf454 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f454s7 on (rf454 7) using bank tags []
certRow f454s8 on (rf454 8) using bank tags []
certRow f454s9 on (rf454 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f454s10 on (rf454 10) using bank tags []
certRow f454s11 on (rf454 11) using bank tags [28,28,28,28,28,28,28,28]
theorem f454 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,1,1] (.cons (f454s0) (.cons (f454s1) (.cons (f454s2) (.cons (f454s3) (.cons (f454s4) (.cons (f454s5) (.cons (f454s6) (.cons (f454s7) (.cons (f454s8) (.cons (f454s9) (.cons (f454s10) (.cons (f454s11) .nil))))))))))))
private abbrev rf455 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,2,0]
certRow f455s0 on (rf455 0) using bank tags []
certRow f455s1 on (rf455 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f455s2 on (rf455 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f455s3 on (rf455 3) using bank tags [28,28,28]
certRow f455s4 on (rf455 4) using bank tags []
certRow f455s5 on (rf455 5) using bank tags [28,28]
certRow f455s6 on (rf455 6) using bank tags []
certRow f455s7 on (rf455 7) using bank tags []
theorem f455 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,0,2,0] (.cons (f455s0) (.cons (f455s1) (.cons (f455s2) (.cons (f455s3) (.cons (f455s4) (.cons (f455s5) (.cons (f455s6) (.cons (f455s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
