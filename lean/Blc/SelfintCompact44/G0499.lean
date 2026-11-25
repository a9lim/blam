import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11470 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,2,0,4]
certRow g11470s0 on (rg11470 0) using bank tags []
certRow g11470s1 on (rg11470 1) using bank tags []
certRow g11470s2 on (rg11470 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11470s3 on (rg11470 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g11470s4 on (rg11470 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11470s5 on (rg11470 5) using bank tags [28,28,28,28]
certRow g11470s6 on (rg11470 6) using bank tags [28,28,28,28,28,28,28]
certRow g11470s7 on (rg11470 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,13,13,6,1,47,1,47,6,16]
theorem g11470 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,2,0,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,2,0,4] (.cons (g11470s0) (.cons (g11470s1) (.cons (g11470s2) (.cons (g11470s3) (.cons (g11470s4) (.cons (g11470s5) (.cons (g11470s6) (.cons (g11470s7) .nil))))))))
certRow g11471 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,2,0,4]) using bank tags []
private abbrev rg11472 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,0,2,1,3]
certRow g11472s0 on (rg11472 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,57,28,6]
certRow g11472s1 on (rg11472 1) using bank tags [3,3,3,3,3,3,3,27,1,28,1,28]
certRow g11472s2 on (rg11472 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11472s3 on (rg11472 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11472s4 on (rg11472 4) using bank tags [3,3,3,3,3]
certRow g11472s5 on (rg11472 5) using bank tags [28]
certRow g11472s6 on (rg11472 6) using bank tags [3,3,3,3,3,28,13,13,28,28]
certRow g11472s7 on (rg11472 7) using bank tags [28,28,28,28]
certRow g11472s8 on (rg11472 8) using bank tags [28,28,28]
certRow g11472s9 on (rg11472 9) using bank tags [1,1,20,13,28,28,6,19,19,19,19]
certRow g11472s10 on (rg11472 10) using bank tags [28,28,28]
certRow g11472s11 on (rg11472 11) using bank tags [3,3,3,3,3,13,13,6,15,6,13,13,31,31,1,6,6,27,13,27,13,1,27,6,27]
theorem g11472 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,2,1,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,0,2,1,3] (.cons (g11472s0) (.cons (g11472s1) (.cons (g11472s2) (.cons (g11472s3) (.cons (g11472s4) (.cons (g11472s5) (.cons (g11472s6) (.cons (g11472s7) (.cons (g11472s8) (.cons (g11472s9) (.cons (g11472s10) (.cons (g11472s11) .nil))))))))))))
certRow g11473 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,2,1,3]) using bank tags []
private abbrev rg11474 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,2,2,2]
certRow g11474s0 on (rg11474 0) using bank tags [3]
certRow g11474s1 on (rg11474 1) using bank tags [28,28,28,28,28,57]
certRow g11474s2 on (rg11474 2) using bank tags [3,3,3,22]
certRow g11474s3 on (rg11474 3) using bank tags []
certRow g11474s4 on (rg11474 4) using bank tags [6,28,6]
certRow g11474s5 on (rg11474 5) using bank tags [28,28,28,28,57,28,6,22]
certRow g11474s6 on (rg11474 6) using bank tags []
certRow g11474s7 on (rg11474 7) using bank tags [13,15,6,22,22,13,15,6,6]
theorem g11474 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,2,2,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,2,2,2] (.cons (g11474s0) (.cons (g11474s1) (.cons (g11474s2) (.cons (g11474s3) (.cons (g11474s4) (.cons (g11474s5) (.cons (g11474s6) (.cons (g11474s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
