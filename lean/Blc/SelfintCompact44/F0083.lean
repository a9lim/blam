import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf427 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,3,0,0]
certRow f427s0 on (rf427 0) using bank tags [28,28,28,28,28]
certRow f427s1 on (rf427 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f427s2 on (rf427 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f427s3 on (rf427 3) using bank tags [28,28,28,28,28,28]
certRow f427s4 on (rf427 4) using bank tags [28,28,28,28,28]
certRow f427s5 on (rf427 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f427s6 on (rf427 6) using bank tags []
certRow f427s7 on (rf427 7) using bank tags []
theorem f427 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,3,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,3,0,0] (.cons (f427s0) (.cons (f427s1) (.cons (f427s2) (.cons (f427s3) (.cons (f427s4) (.cons (f427s5) (.cons (f427s6) (.cons (f427s7) .nil))))))))
private abbrev rf428 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,0,2]
certRow f428s0 on (rf428 0) using bank tags [28,28,28]
certRow f428s1 on (rf428 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f428s2 on (rf428 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f428s3 on (rf428 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f428s4 on (rf428 4) using bank tags [3,3,3,3,3]
certRow f428s5 on (rf428 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f428s6 on (rf428 6) using bank tags [28,28,28,28]
certRow f428s7 on (rf428 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f428 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,0,2] (.cons (f428s0) (.cons (f428s1) (.cons (f428s2) (.cons (f428s3) (.cons (f428s4) (.cons (f428s5) (.cons (f428s6) (.cons (f428s7) .nil))))))))
certRow f429 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,1,1]) using bank tags []
private abbrev rf430 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,2,0]
certRow f430s0 on (rf430 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f430s1 on (rf430 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f430s2 on (rf430 2) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f430s3 on (rf430 3) using bank tags [3,3,3,3]
certRow f430s4 on (rf430 4) using bank tags [3,3,3,3,3,28,28,28]
certRow f430s5 on (rf430 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f430s6 on (rf430 6) using bank tags [28,28,28,28,28,28,28]
certRow f430s7 on (rf430 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f430s8 on (rf430 8) using bank tags []
certRow f430s9 on (rf430 9) using bank tags [28,28,28,28,28]
certRow f430s10 on (rf430 10) using bank tags []
certRow f430s11 on (rf430 11) using bank tags [3,3,3,3,3]
theorem f430 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,0,2,0] (.cons (f430s0) (.cons (f430s1) (.cons (f430s2) (.cons (f430s3) (.cons (f430s4) (.cons (f430s5) (.cons (f430s6) (.cons (f430s7) (.cons (f430s8) (.cons (f430s9) (.cons (f430s10) (.cons (f430s11) .nil))))))))))))
certRow f431 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,1,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
