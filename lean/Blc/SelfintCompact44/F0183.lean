import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1052 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,1,2]
certRow f1052s0 on (rf1052 0) using bank tags [3,3,3,3,3,3,3,3]
certRow f1052s1 on (rf1052 1) using bank tags [3,3,3]
certRow f1052s2 on (rf1052 2) using bank tags []
certRow f1052s3 on (rf1052 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1052s4 on (rf1052 4) using bank tags [3,3,3,3,3]
certRow f1052s5 on (rf1052 5) using bank tags [3]
certRow f1052s6 on (rf1052 6) using bank tags [3,3,3,3]
certRow f1052s7 on (rf1052 7) using bank tags []
certRow f1052s8 on (rf1052 8) using bank tags []
certRow f1052s9 on (rf1052 9) using bank tags []
certRow f1052s10 on (rf1052 10) using bank tags [3,3,3,3,3,3,3,3]
certRow f1052s11 on (rf1052 11) using bank tags [3]
theorem f1052 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,1,2] (.cons (f1052s0) (.cons (f1052s1) (.cons (f1052s2) (.cons (f1052s3) (.cons (f1052s4) (.cons (f1052s5) (.cons (f1052s6) (.cons (f1052s7) (.cons (f1052s8) (.cons (f1052s9) (.cons (f1052s10) (.cons (f1052s11) .nil))))))))))))
private abbrev rf1053 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,2,1]
certRow f1053s0 on (rf1053 0) using bank tags [3,3,3,3,3,3,3,3]
certRow f1053s1 on (rf1053 1) using bank tags [3,3,3]
certRow f1053s2 on (rf1053 2) using bank tags []
certRow f1053s3 on (rf1053 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1053s4 on (rf1053 4) using bank tags [3,3,3,3,3]
certRow f1053s5 on (rf1053 5) using bank tags [3]
certRow f1053s6 on (rf1053 6) using bank tags [3,3,3,3,3]
certRow f1053s7 on (rf1053 7) using bank tags [3,3,3,3]
certRow f1053s8 on (rf1053 8) using bank tags []
certRow f1053s9 on (rf1053 9) using bank tags [3,3,3]
certRow f1053s10 on (rf1053 10) using bank tags [3,3,3]
certRow f1053s11 on (rf1053 11) using bank tags [3]
theorem f1053 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,2,1] (.cons (f1053s0) (.cons (f1053s1) (.cons (f1053s2) (.cons (f1053s3) (.cons (f1053s4) (.cons (f1053s5) (.cons (f1053s6) (.cons (f1053s7) (.cons (f1053s8) (.cons (f1053s9) (.cons (f1053s10) (.cons (f1053s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
