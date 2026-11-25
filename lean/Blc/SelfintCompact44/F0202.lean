import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1093 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,2,0]
certRow f1093s0 on (rf1093 0) using bank tags []
certRow f1093s1 on (rf1093 1) using bank tags [3,3,3,3,3]
certRow f1093s2 on (rf1093 2) using bank tags [3,3]
certRow f1093s3 on (rf1093 3) using bank tags [3,3]
certRow f1093s4 on (rf1093 4) using bank tags [3,3,3,3,3]
certRow f1093s5 on (rf1093 5) using bank tags []
certRow f1093s6 on (rf1093 6) using bank tags [3,3,3,3,3,3,3]
certRow f1093s7 on (rf1093 7) using bank tags [3,3]
certRow f1093s8 on (rf1093 8) using bank tags [3]
certRow f1093s9 on (rf1093 9) using bank tags []
certRow f1093s10 on (rf1093 10) using bank tags [3,3]
certRow f1093s11 on (rf1093 11) using bank tags []
theorem f1093 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,2,0] (.cons (f1093s0) (.cons (f1093s1) (.cons (f1093s2) (.cons (f1093s3) (.cons (f1093s4) (.cons (f1093s5) (.cons (f1093s6) (.cons (f1093s7) (.cons (f1093s8) (.cons (f1093s9) (.cons (f1093s10) (.cons (f1093s11) .nil))))))))))))
certRow f1094 on (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,1,0,1]) using bank tags []
certRow f1095 on (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,1,1,0]) using bank tags []
private abbrev rf1096 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,1,2,0,0]
certRow f1096s0 on (rf1096 0) using bank tags []
certRow f1096s1 on (rf1096 1) using bank tags [3,3,3,3,3]
certRow f1096s2 on (rf1096 2) using bank tags [3,3]
certRow f1096s3 on (rf1096 3) using bank tags []
certRow f1096s4 on (rf1096 4) using bank tags [3,3,3]
certRow f1096s5 on (rf1096 5) using bank tags []
certRow f1096s6 on (rf1096 6) using bank tags [3,3,3,3,3]
certRow f1096s7 on (rf1096 7) using bank tags [3]
certRow f1096s8 on (rf1096 8) using bank tags [3]
certRow f1096s9 on (rf1096 9) using bank tags []
certRow f1096s10 on (rf1096 10) using bank tags [3,3]
certRow f1096s11 on (rf1096 11) using bank tags []
theorem f1096 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,1,2,0,0] (.cons (f1096s0) (.cons (f1096s1) (.cons (f1096s2) (.cons (f1096s3) (.cons (f1096s4) (.cons (f1096s5) (.cons (f1096s6) (.cons (f1096s7) (.cons (f1096s8) (.cons (f1096s9) (.cons (f1096s10) (.cons (f1096s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
