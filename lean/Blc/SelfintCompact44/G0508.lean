import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11525 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,2,1,2]) using bank tags []
private abbrev rg11526 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,2,2,1]
certRow g11526s0 on (rg11526 0) using bank tags [28,57,28,28,57]
certRow g11526s1 on (rg11526 1) using bank tags []
certRow g11526s2 on (rg11526 2) using bank tags [28,57]
certRow g11526s3 on (rg11526 3) using bank tags [1,1,1]
certRow g11526s4 on (rg11526 4) using bank tags []
certRow g11526s5 on (rg11526 5) using bank tags [28,28,14,1,6,28,6]
certRow g11526s6 on (rg11526 6) using bank tags []
certRow g11526s7 on (rg11526 7) using bank tags [28,28,28,13,26,47,13,15,16,24,65]
theorem g11526 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,2,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,2,2,1] (.cons (g11526s0) (.cons (g11526s1) (.cons (g11526s2) (.cons (g11526s3) (.cons (g11526s4) (.cons (g11526s5) (.cons (g11526s6) (.cons (g11526s7) .nil))))))))
certRow g11527 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,2,2,1]) using bank tags []
private abbrev rg11528 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,2,3,0]
certRow g11528s0 on (rg11528 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,14,1,1,28,27]
certRow g11528s1 on (rg11528 1) using bank tags [3,3,3,3,3,3]
certRow g11528s2 on (rg11528 2) using bank tags [3,3,3,3,3,3,28,28]
certRow g11528s3 on (rg11528 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g11528s4 on (rg11528 4) using bank tags [3,3,3,3]
certRow g11528s5 on (rg11528 5) using bank tags [3,3,3,28,28,28,14,15]
certRow g11528s6 on (rg11528 6) using bank tags [3,3,3,3,3,28,28]
certRow g11528s7 on (rg11528 7) using bank tags [3,3]
certRow g11528s8 on (rg11528 8) using bank tags [28,28,57,28,57]
certRow g11528s9 on (rg11528 9) using bank tags [28,28,28]
certRow g11528s10 on (rg11528 10) using bank tags [3,3,6]
certRow g11528s11 on (rg11528 11) using bank tags [3,3,3,3,28,13,32,24,26,1,65]
theorem g11528 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,2,3,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,2,3,0] (.cons (g11528s0) (.cons (g11528s1) (.cons (g11528s2) (.cons (g11528s3) (.cons (g11528s4) (.cons (g11528s5) (.cons (g11528s6) (.cons (g11528s7) (.cons (g11528s8) (.cons (g11528s9) (.cons (g11528s10) (.cons (g11528s11) .nil))))))))))))
certRow g11529 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,2,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
