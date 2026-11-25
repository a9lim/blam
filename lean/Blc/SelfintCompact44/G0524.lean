import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11634 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [1,0,2,0,3]
certRow g11634s0 on (rg11634 0) using bank tags [3,3,3,3,3,3,28,28,28,28,28,57,1,28,57,57,1,1,28,1]
certRow g11634s1 on (rg11634 1) using bank tags [3,3,3,3,3,3,3,27,27]
certRow g11634s2 on (rg11634 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,57,28,28,28,28,57,1]
certRow g11634s3 on (rg11634 3) using bank tags [3,3,3,3,3,3,28,13,13,13,13,13,1,13,13,44,44,19,19,6,6,28,28]
certRow g11634s4 on (rg11634 4) using bank tags [3,3,3,3,3]
certRow g11634s5 on (rg11634 5) using bank tags [3,3,3,28,28,28,57]
certRow g11634s6 on (rg11634 6) using bank tags [3,3,1,57]
certRow g11634s7 on (rg11634 7) using bank tags [3,3]
certRow g11634s8 on (rg11634 8) using bank tags [28,28,28,28,28,28,28]
certRow g11634s9 on (rg11634 9) using bank tags [28,28,28,1]
certRow g11634s10 on (rg11634 10) using bank tags [3,3,28,28,28]
certRow g11634s11 on (rg11634 11) using bank tags [3,3,3,3,3,28,28]
theorem g11634 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,2,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [1,0,2,0,3] (.cons (g11634s0) (.cons (g11634s1) (.cons (g11634s2) (.cons (g11634s3) (.cons (g11634s4) (.cons (g11634s5) (.cons (g11634s6) (.cons (g11634s7) (.cons (g11634s8) (.cons (g11634s9) (.cons (g11634s10) (.cons (g11634s11) .nil))))))))))))
certRow g11635 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,2,0,3]) using bank tags []
private abbrev rg11636 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,2,1,2]
certRow g11636s0 on (rg11636 0) using bank tags [28,28]
certRow g11636s1 on (rg11636 1) using bank tags [28,27]
certRow g11636s2 on (rg11636 2) using bank tags [3,3,28,57,28,28,28,57,1,28,28,27]
certRow g11636s3 on (rg11636 3) using bank tags [3,3]
certRow g11636s4 on (rg11636 4) using bank tags [3,3,3]
certRow g11636s5 on (rg11636 5) using bank tags [28,57,1,28,28,28,57,1,28,28,57,28,57,1,1,28,1,28,28]
certRow g11636s6 on (rg11636 6) using bank tags [28,57]
certRow g11636s7 on (rg11636 7) using bank tags [1,15,1,13,13,26,15,1,1,13,1,6,6,28,28]
theorem g11636 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,2,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,2,1,2] (.cons (g11636s0) (.cons (g11636s1) (.cons (g11636s2) (.cons (g11636s3) (.cons (g11636s4) (.cons (g11636s5) (.cons (g11636s6) (.cons (g11636s7) .nil))))))))
certRow g11637 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,2,1,2]) using bank tags []
private abbrev rg11638 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,2,2,1]
certRow g11638s0 on (rg11638 0) using bank tags [28,28,57,28,28,57]
certRow g11638s1 on (rg11638 1) using bank tags [28,28,57,27]
certRow g11638s2 on (rg11638 2) using bank tags [28,28,14,1,28,28,57,1,1,28,28]
certRow g11638s3 on (rg11638 3) using bank tags [1,1,1,1,1]
certRow g11638s4 on (rg11638 4) using bank tags [3,3,3,27,27]
certRow g11638s5 on (rg11638 5) using bank tags [28,28,14,49,28,28]
certRow g11638s6 on (rg11638 6) using bank tags [28,14,1]
certRow g11638s7 on (rg11638 7) using bank tags [15,1,1,13,13,1,1,1,1,6,19,28,28]
theorem g11638 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,2,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,2,2,1] (.cons (g11638s0) (.cons (g11638s1) (.cons (g11638s2) (.cons (g11638s3) (.cons (g11638s4) (.cons (g11638s5) (.cons (g11638s6) (.cons (g11638s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
