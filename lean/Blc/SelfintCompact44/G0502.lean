import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11484 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,0,3,2,1]
certRow g11484s0 on (rg11484 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11484s1 on (rg11484 1) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,6,1,28]
certRow g11484s2 on (rg11484 2) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow g11484s3 on (rg11484 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g11484s4 on (rg11484 4) using bank tags [3,3,3,3,3]
certRow g11484s5 on (rg11484 5) using bank tags [28]
certRow g11484s6 on (rg11484 6) using bank tags [3,3,3,3,28,13,28]
certRow g11484s7 on (rg11484 7) using bank tags [3,3,28]
certRow g11484s8 on (rg11484 8) using bank tags [3,28,1]
certRow g11484s9 on (rg11484 9) using bank tags [28,28,1,28,28,28,19,19]
certRow g11484s10 on (rg11484 10) using bank tags [3,3,3,28,28,57]
certRow g11484s11 on (rg11484 11) using bank tags [3,3,3,3,28,13,15,13,6,13,1,1,6,16,27,13,6,27]
theorem g11484 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,3,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,0,3,2,1] (.cons (g11484s0) (.cons (g11484s1) (.cons (g11484s2) (.cons (g11484s3) (.cons (g11484s4) (.cons (g11484s5) (.cons (g11484s6) (.cons (g11484s7) (.cons (g11484s8) (.cons (g11484s9) (.cons (g11484s10) (.cons (g11484s11) .nil))))))))))))
certRow g11485 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,3,2,1]) using bank tags []
certRow g11486 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,3,3,0]) using bank tags [28,28,28,11,11,28,28,28,28,28,28,28,28,28,28,28,28,28,6]
certRow g11487 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,3,3,0]) using bank tags []
private abbrev rg11488 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,4,0,2]
certRow g11488s0 on (rg11488 0) using bank tags [28]
certRow g11488s1 on (rg11488 1) using bank tags []
certRow g11488s2 on (rg11488 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11488s3 on (rg11488 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g11488s4 on (rg11488 4) using bank tags [28,28,28,28,28,28]
certRow g11488s5 on (rg11488 5) using bank tags [28,28]
certRow g11488s6 on (rg11488 6) using bank tags [28,28,28,28,28,28,28]
certRow g11488s7 on (rg11488 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,13,13,13,13,6,22,18]
theorem g11488 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,4,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,4,0,2] (.cons (g11488s0) (.cons (g11488s1) (.cons (g11488s2) (.cons (g11488s3) (.cons (g11488s4) (.cons (g11488s5) (.cons (g11488s6) (.cons (g11488s7) .nil))))))))
certRow g11489 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,4,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
