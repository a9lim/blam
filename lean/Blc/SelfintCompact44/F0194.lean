import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1075 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,1,0]
certRow f1075s0 on (rf1075 0) using bank tags [3,3,3,3,3,3,3]
certRow f1075s1 on (rf1075 1) using bank tags [3,3,3]
certRow f1075s2 on (rf1075 2) using bank tags [3,3]
certRow f1075s3 on (rf1075 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1075s4 on (rf1075 4) using bank tags [3,3,3]
certRow f1075s5 on (rf1075 5) using bank tags [3]
certRow f1075s6 on (rf1075 6) using bank tags [3,3,3]
certRow f1075s7 on (rf1075 7) using bank tags []
certRow f1075s8 on (rf1075 8) using bank tags [3,3,3,3]
certRow f1075s9 on (rf1075 9) using bank tags [3,3]
certRow f1075s10 on (rf1075 10) using bank tags [3,3,3,3,3,3]
certRow f1075s11 on (rf1075 11) using bank tags []
theorem f1075 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,1,0] (.cons (f1075s0) (.cons (f1075s1) (.cons (f1075s2) (.cons (f1075s3) (.cons (f1075s4) (.cons (f1075s5) (.cons (f1075s6) (.cons (f1075s7) (.cons (f1075s8) (.cons (f1075s9) (.cons (f1075s10) (.cons (f1075s11) .nil))))))))))))
private abbrev rf1076 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,2,0,0]
certRow f1076s0 on (rf1076 0) using bank tags []
certRow f1076s1 on (rf1076 1) using bank tags []
certRow f1076s2 on (rf1076 2) using bank tags []
certRow f1076s3 on (rf1076 3) using bank tags []
certRow f1076s4 on (rf1076 4) using bank tags []
certRow f1076s5 on (rf1076 5) using bank tags []
certRow f1076s6 on (rf1076 6) using bank tags [3,3]
certRow f1076s7 on (rf1076 7) using bank tags []
certRow f1076s8 on (rf1076 8) using bank tags [3,3]
certRow f1076s9 on (rf1076 9) using bank tags []
certRow f1076s10 on (rf1076 10) using bank tags [3,3,3]
certRow f1076s11 on (rf1076 11) using bank tags []
theorem f1076 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,2,0,0] (.cons (f1076s0) (.cons (f1076s1) (.cons (f1076s2) (.cons (f1076s3) (.cons (f1076s4) (.cons (f1076s5) (.cons (f1076s6) (.cons (f1076s7) (.cons (f1076s8) (.cons (f1076s9) (.cons (f1076s10) (.cons (f1076s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
