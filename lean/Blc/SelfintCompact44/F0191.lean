import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1069 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,1,0]
certRow f1069s0 on (rf1069 0) using bank tags [3,3,3,3,3,3]
certRow f1069s1 on (rf1069 1) using bank tags [3,3,3,3]
certRow f1069s2 on (rf1069 2) using bank tags [3,3]
certRow f1069s3 on (rf1069 3) using bank tags [3,3,3,3,3,3]
certRow f1069s4 on (rf1069 4) using bank tags [3,3,3]
certRow f1069s5 on (rf1069 5) using bank tags [3]
certRow f1069s6 on (rf1069 6) using bank tags [3,3,3,3,3]
certRow f1069s7 on (rf1069 7) using bank tags []
certRow f1069s8 on (rf1069 8) using bank tags [3,3,3]
certRow f1069s9 on (rf1069 9) using bank tags [3]
certRow f1069s10 on (rf1069 10) using bank tags [3,3,3,3,3]
certRow f1069s11 on (rf1069 11) using bank tags []
theorem f1069 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,1,0] (.cons (f1069s0) (.cons (f1069s1) (.cons (f1069s2) (.cons (f1069s3) (.cons (f1069s4) (.cons (f1069s5) (.cons (f1069s6) (.cons (f1069s7) (.cons (f1069s8) (.cons (f1069s9) (.cons (f1069s10) (.cons (f1069s11) .nil))))))))))))
private abbrev rf1070 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,3,0,0]
certRow f1070s0 on (rf1070 0) using bank tags []
certRow f1070s1 on (rf1070 1) using bank tags [3,3,3]
certRow f1070s2 on (rf1070 2) using bank tags [3,3]
certRow f1070s3 on (rf1070 3) using bank tags [3,3,3,3]
certRow f1070s4 on (rf1070 4) using bank tags [3,3,3]
certRow f1070s5 on (rf1070 5) using bank tags []
certRow f1070s6 on (rf1070 6) using bank tags [3,3,3]
certRow f1070s7 on (rf1070 7) using bank tags [3]
certRow f1070s8 on (rf1070 8) using bank tags [3,3]
certRow f1070s9 on (rf1070 9) using bank tags []
certRow f1070s10 on (rf1070 10) using bank tags [3]
certRow f1070s11 on (rf1070 11) using bank tags []
theorem f1070 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,3,0,0] (.cons (f1070s0) (.cons (f1070s1) (.cons (f1070s2) (.cons (f1070s3) (.cons (f1070s4) (.cons (f1070s5) (.cons (f1070s6) (.cons (f1070s7) (.cons (f1070s8) (.cons (f1070s9) (.cons (f1070s10) (.cons (f1070s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
