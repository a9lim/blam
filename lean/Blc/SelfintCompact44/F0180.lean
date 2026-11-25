import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1041 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [5,1,1,1]) using bank tags []
certRow f1042 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [5,1,2,0]) using bank tags []
certRow f1043 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [5,2,0,1]) using bank tags []
certRow f1044 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [5,2,1,0]) using bank tags []
certRow f1045 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [5,3,0,0]) using bank tags [28,28,28]
private abbrev rf1046 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,0,4]
certRow f1046s0 on (rf1046 0) using bank tags []
certRow f1046s1 on (rf1046 1) using bank tags []
certRow f1046s2 on (rf1046 2) using bank tags []
certRow f1046s3 on (rf1046 3) using bank tags []
certRow f1046s4 on (rf1046 4) using bank tags []
certRow f1046s5 on (rf1046 5) using bank tags []
certRow f1046s6 on (rf1046 6) using bank tags []
certRow f1046s7 on (rf1046 7) using bank tags []
certRow f1046s8 on (rf1046 8) using bank tags []
certRow f1046s9 on (rf1046 9) using bank tags []
certRow f1046s10 on (rf1046 10) using bank tags []
certRow f1046s11 on (rf1046 11) using bank tags []
theorem f1046 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,0,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,0,4] (.cons (f1046s0) (.cons (f1046s1) (.cons (f1046s2) (.cons (f1046s3) (.cons (f1046s4) (.cons (f1046s5) (.cons (f1046s6) (.cons (f1046s7) (.cons (f1046s8) (.cons (f1046s9) (.cons (f1046s10) (.cons (f1046s11) .nil))))))))))))
private abbrev rf1047 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,1,3]
certRow f1047s0 on (rf1047 0) using bank tags [3,3,3,3]
certRow f1047s1 on (rf1047 1) using bank tags [3,3,3]
certRow f1047s2 on (rf1047 2) using bank tags [3]
certRow f1047s3 on (rf1047 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1047s4 on (rf1047 4) using bank tags [3,3,3,3,3]
certRow f1047s5 on (rf1047 5) using bank tags [3]
certRow f1047s6 on (rf1047 6) using bank tags [3,3,3,3,3]
certRow f1047s7 on (rf1047 7) using bank tags []
certRow f1047s8 on (rf1047 8) using bank tags []
certRow f1047s9 on (rf1047 9) using bank tags [3,3,3,3,3]
certRow f1047s10 on (rf1047 10) using bank tags [3]
certRow f1047s11 on (rf1047 11) using bank tags [3,3]
theorem f1047 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,1,3] (.cons (f1047s0) (.cons (f1047s1) (.cons (f1047s2) (.cons (f1047s3) (.cons (f1047s4) (.cons (f1047s5) (.cons (f1047s6) (.cons (f1047s7) (.cons (f1047s8) (.cons (f1047s9) (.cons (f1047s10) (.cons (f1047s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
