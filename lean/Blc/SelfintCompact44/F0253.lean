import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1228 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,1,0,1]
certRow f1228s0 on (rf1228 0) using bank tags [3]
certRow f1228s1 on (rf1228 1) using bank tags [3,3,3]
certRow f1228s2 on (rf1228 2) using bank tags [3,3]
certRow f1228s3 on (rf1228 3) using bank tags [3,3]
certRow f1228s4 on (rf1228 4) using bank tags []
certRow f1228s5 on (rf1228 5) using bank tags []
certRow f1228s6 on (rf1228 6) using bank tags []
certRow f1228s7 on (rf1228 7) using bank tags []
certRow f1228s8 on (rf1228 8) using bank tags []
certRow f1228s9 on (rf1228 9) using bank tags [3,3]
certRow f1228s10 on (rf1228 10) using bank tags []
certRow f1228s11 on (rf1228 11) using bank tags []
theorem f1228 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,1,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,1,0,1] (.cons (f1228s0) (.cons (f1228s1) (.cons (f1228s2) (.cons (f1228s3) (.cons (f1228s4) (.cons (f1228s5) (.cons (f1228s6) (.cons (f1228s7) (.cons (f1228s8) (.cons (f1228s9) (.cons (f1228s10) (.cons (f1228s11) .nil))))))))))))
private abbrev rf1229 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,1,1,0]
certRow f1229s0 on (rf1229 0) using bank tags [3]
certRow f1229s1 on (rf1229 1) using bank tags [3,3]
certRow f1229s2 on (rf1229 2) using bank tags [3,3,3]
certRow f1229s3 on (rf1229 3) using bank tags []
certRow f1229s4 on (rf1229 4) using bank tags []
certRow f1229s5 on (rf1229 5) using bank tags []
certRow f1229s6 on (rf1229 6) using bank tags []
certRow f1229s7 on (rf1229 7) using bank tags []
certRow f1229s8 on (rf1229 8) using bank tags []
certRow f1229s9 on (rf1229 9) using bank tags [3]
certRow f1229s10 on (rf1229 10) using bank tags []
certRow f1229s11 on (rf1229 11) using bank tags []
theorem f1229 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,1,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,1,1,0] (.cons (f1229s0) (.cons (f1229s1) (.cons (f1229s2) (.cons (f1229s3) (.cons (f1229s4) (.cons (f1229s5) (.cons (f1229s6) (.cons (f1229s7) (.cons (f1229s8) (.cons (f1229s9) (.cons (f1229s10) (.cons (f1229s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
