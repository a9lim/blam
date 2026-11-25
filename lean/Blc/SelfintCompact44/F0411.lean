import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3429 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,0,2,1]
certRow f3429s0 on (rf3429 0) using bank tags []
certRow f3429s1 on (rf3429 1) using bank tags [3]
certRow f3429s2 on (rf3429 2) using bank tags []
certRow f3429s3 on (rf3429 3) using bank tags [3,3]
certRow f3429s4 on (rf3429 4) using bank tags [3]
certRow f3429s5 on (rf3429 5) using bank tags [3]
certRow f3429s6 on (rf3429 6) using bank tags []
certRow f3429s7 on (rf3429 7) using bank tags []
certRow f3429s8 on (rf3429 8) using bank tags []
certRow f3429s9 on (rf3429 9) using bank tags []
certRow f3429s10 on (rf3429 10) using bank tags []
certRow f3429s11 on (rf3429 11) using bank tags []
theorem f3429 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,0,2,1] (.cons (f3429s0) (.cons (f3429s1) (.cons (f3429s2) (.cons (f3429s3) (.cons (f3429s4) (.cons (f3429s5) (.cons (f3429s6) (.cons (f3429s7) (.cons (f3429s8) (.cons (f3429s9) (.cons (f3429s10) (.cons (f3429s11) .nil))))))))))))
private abbrev rf3430 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,0,3,0]
certRow f3430s0 on (rf3430 0) using bank tags []
certRow f3430s1 on (rf3430 1) using bank tags []
certRow f3430s2 on (rf3430 2) using bank tags []
certRow f3430s3 on (rf3430 3) using bank tags []
certRow f3430s4 on (rf3430 4) using bank tags []
certRow f3430s5 on (rf3430 5) using bank tags []
certRow f3430s6 on (rf3430 6) using bank tags []
certRow f3430s7 on (rf3430 7) using bank tags []
certRow f3430s8 on (rf3430 8) using bank tags []
certRow f3430s9 on (rf3430 9) using bank tags []
certRow f3430s10 on (rf3430 10) using bank tags []
certRow f3430s11 on (rf3430 11) using bank tags []
theorem f3430 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,0,3,0] (.cons (f3430s0) (.cons (f3430s1) (.cons (f3430s2) (.cons (f3430s3) (.cons (f3430s4) (.cons (f3430s5) (.cons (f3430s6) (.cons (f3430s7) (.cons (f3430s8) (.cons (f3430s9) (.cons (f3430s10) (.cons (f3430s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
