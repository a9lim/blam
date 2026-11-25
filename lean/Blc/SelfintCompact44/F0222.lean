import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1166 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,2,2,2]
certRow f1166s0 on (rf1166 0) using bank tags [3,3]
certRow f1166s1 on (rf1166 1) using bank tags [3,3,3,3,3,3]
certRow f1166s2 on (rf1166 2) using bank tags [3,3,3,3,3,3,3]
certRow f1166s3 on (rf1166 3) using bank tags [3,3]
certRow f1166s4 on (rf1166 4) using bank tags [3,3,3,3]
certRow f1166s5 on (rf1166 5) using bank tags [3,3,3,3]
certRow f1166s6 on (rf1166 6) using bank tags []
certRow f1166s7 on (rf1166 7) using bank tags [3]
certRow f1166s8 on (rf1166 8) using bank tags []
certRow f1166s9 on (rf1166 9) using bank tags [3,3]
certRow f1166s10 on (rf1166 10) using bank tags []
certRow f1166s11 on (rf1166 11) using bank tags [3,3]
theorem f1166 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,2,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,2,2,2] (.cons (f1166s0) (.cons (f1166s1) (.cons (f1166s2) (.cons (f1166s3) (.cons (f1166s4) (.cons (f1166s5) (.cons (f1166s6) (.cons (f1166s7) (.cons (f1166s8) (.cons (f1166s9) (.cons (f1166s10) (.cons (f1166s11) .nil))))))))))))
private abbrev rf1167 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,2,3,1]
certRow f1167s0 on (rf1167 0) using bank tags [3]
certRow f1167s1 on (rf1167 1) using bank tags [3,3,3,3]
certRow f1167s2 on (rf1167 2) using bank tags [3,3,3,3,3,3]
certRow f1167s3 on (rf1167 3) using bank tags [3,3,3]
certRow f1167s4 on (rf1167 4) using bank tags [3,3,3]
certRow f1167s5 on (rf1167 5) using bank tags [3,3,3,3,3,3]
certRow f1167s6 on (rf1167 6) using bank tags []
certRow f1167s7 on (rf1167 7) using bank tags [3,3]
certRow f1167s8 on (rf1167 8) using bank tags []
certRow f1167s9 on (rf1167 9) using bank tags [3,3]
certRow f1167s10 on (rf1167 10) using bank tags []
certRow f1167s11 on (rf1167 11) using bank tags [3]
theorem f1167 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,2,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,2,3,1] (.cons (f1167s0) (.cons (f1167s1) (.cons (f1167s2) (.cons (f1167s3) (.cons (f1167s4) (.cons (f1167s5) (.cons (f1167s6) (.cons (f1167s7) (.cons (f1167s8) (.cons (f1167s9) (.cons (f1167s10) (.cons (f1167s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
