import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf425 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,0,1]
certRow f425s0 on (rf425 0) using bank tags []
certRow f425s1 on (rf425 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f425s2 on (rf425 2) using bank tags [3,3,3,3,3]
certRow f425s3 on (rf425 3) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f425s4 on (rf425 4) using bank tags [3,3,3,3,3]
certRow f425s5 on (rf425 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f425s6 on (rf425 6) using bank tags []
certRow f425s7 on (rf425 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f425s8 on (rf425 8) using bank tags []
certRow f425s9 on (rf425 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f425s10 on (rf425 10) using bank tags []
certRow f425s11 on (rf425 11) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
theorem f425 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,0,1] (.cons (f425s0) (.cons (f425s1) (.cons (f425s2) (.cons (f425s3) (.cons (f425s4) (.cons (f425s5) (.cons (f425s6) (.cons (f425s7) (.cons (f425s8) (.cons (f425s9) (.cons (f425s10) (.cons (f425s11) .nil))))))))))))
private abbrev rf426 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,1,0]
certRow f426s0 on (rf426 0) using bank tags [3,3,3,3,3]
certRow f426s1 on (rf426 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f426s2 on (rf426 2) using bank tags [3,3,3,3,3]
certRow f426s3 on (rf426 3) using bank tags [3,3,3,3,3,3]
certRow f426s4 on (rf426 4) using bank tags [3,3,3,3,3]
certRow f426s5 on (rf426 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f426s6 on (rf426 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f426s7 on (rf426 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f426s8 on (rf426 8) using bank tags []
certRow f426s9 on (rf426 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f426s10 on (rf426 10) using bank tags []
certRow f426s11 on (rf426 11) using bank tags [3,3,3,3,28,28,28]
theorem f426 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,2,1,0] (.cons (f426s0) (.cons (f426s1) (.cons (f426s2) (.cons (f426s3) (.cons (f426s4) (.cons (f426s5) (.cons (f426s6) (.cons (f426s7) (.cons (f426s8) (.cons (f426s9) (.cons (f426s10) (.cons (f426s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
