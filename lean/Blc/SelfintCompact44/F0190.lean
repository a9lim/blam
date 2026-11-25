import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1067 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,2,0]
certRow f1067s0 on (rf1067 0) using bank tags [3,3,3,3,3,3]
certRow f1067s1 on (rf1067 1) using bank tags [3,3,3,3]
certRow f1067s2 on (rf1067 2) using bank tags [3,3]
certRow f1067s3 on (rf1067 3) using bank tags [3,3,3,3,3,3]
certRow f1067s4 on (rf1067 4) using bank tags [3,3,3]
certRow f1067s5 on (rf1067 5) using bank tags []
certRow f1067s6 on (rf1067 6) using bank tags [3,3,3,3,3]
certRow f1067s7 on (rf1067 7) using bank tags []
certRow f1067s8 on (rf1067 8) using bank tags [3,3,3,3,3]
certRow f1067s9 on (rf1067 9) using bank tags [3]
certRow f1067s10 on (rf1067 10) using bank tags [3,3,3,3,3]
certRow f1067s11 on (rf1067 11) using bank tags []
theorem f1067 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,1,2,0] (.cons (f1067s0) (.cons (f1067s1) (.cons (f1067s2) (.cons (f1067s3) (.cons (f1067s4) (.cons (f1067s5) (.cons (f1067s6) (.cons (f1067s7) (.cons (f1067s8) (.cons (f1067s9) (.cons (f1067s10) (.cons (f1067s11) .nil))))))))))))
private abbrev rf1068 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,0,1]
certRow f1068s0 on (rf1068 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1068s1 on (rf1068 1) using bank tags [3,3,3,3,3,3,3]
certRow f1068s2 on (rf1068 2) using bank tags [3,3]
certRow f1068s3 on (rf1068 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f1068s4 on (rf1068 4) using bank tags [3,3,3,3,3]
certRow f1068s5 on (rf1068 5) using bank tags [3,3]
certRow f1068s6 on (rf1068 6) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1068s7 on (rf1068 7) using bank tags [3,3,3]
certRow f1068s8 on (rf1068 8) using bank tags [3,3,3]
certRow f1068s9 on (rf1068 9) using bank tags [3,3,3]
certRow f1068s10 on (rf1068 10) using bank tags [3,3,3,3]
certRow f1068s11 on (rf1068 11) using bank tags []
theorem f1068 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,2,0,1] (.cons (f1068s0) (.cons (f1068s1) (.cons (f1068s2) (.cons (f1068s3) (.cons (f1068s4) (.cons (f1068s5) (.cons (f1068s6) (.cons (f1068s7) (.cons (f1068s8) (.cons (f1068s9) (.cons (f1068s10) (.cons (f1068s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
