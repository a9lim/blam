import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11700 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,2,1,0]
certRow g11700s0 on (rg11700 0) using bank tags []
certRow g11700s1 on (rg11700 1) using bank tags [11]
certRow g11700s2 on (rg11700 2) using bank tags [3,3,28,28,14,14,14,25,28,28,26,49,28,28,15,1,16]
certRow g11700s3 on (rg11700 3) using bank tags [3,3,3,3]
certRow g11700s4 on (rg11700 4) using bank tags [3,3,3,3,3,3,3,28,14,25,28,57,28]
certRow g11700s5 on (rg11700 5) using bank tags [3,3,3,28,28,57,57,57,28]
certRow g11700s6 on (rg11700 6) using bank tags [3,3,28]
certRow g11700s7 on (rg11700 7) using bank tags [24,24,19,15,13,1,24,24,18]
theorem g11700 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,2,1,0] (.cons (g11700s0) (.cons (g11700s1) (.cons (g11700s2) (.cons (g11700s3) (.cons (g11700s4) (.cons (g11700s5) (.cons (g11700s6) (.cons (g11700s7) .nil))))))))
certRow g11701 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,2,1,0]) using bank tags []
private abbrev rg11702 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,3,0,0]
certRow g11702s0 on (rg11702 0) using bank tags [3,3]
certRow g11702s1 on (rg11702 1) using bank tags [3,3,3,3,3,3]
certRow g11702s2 on (rg11702 2) using bank tags [3,3,3,3,3,3,3,15,26,28,15,32,11]
certRow g11702s3 on (rg11702 3) using bank tags [3,3,3]
certRow g11702s4 on (rg11702 4) using bank tags [3,3,3,3,28,28,28,28,206,15,28]
certRow g11702s5 on (rg11702 5) using bank tags []
certRow g11702s6 on (rg11702 6) using bank tags [1]
certRow g11702s7 on (rg11702 7) using bank tags [3,3,3,3,3,28,13,13,13,13,13,13,13]
theorem g11702 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,3,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,3,0,0] (.cons (g11702s0) (.cons (g11702s1) (.cons (g11702s2) (.cons (g11702s3) (.cons (g11702s4) (.cons (g11702s5) (.cons (g11702s6) (.cons (g11702s7) .nil))))))))
certRow g11703 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,3,0,0]) using bank tags []
private abbrev rg11704 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,3,0,0,2]
certRow g11704s0 on (rg11704 0) using bank tags [3,3,3]
certRow g11704s1 on (rg11704 1) using bank tags [3,3,3,3,3,3,3,206,1,28,28]
certRow g11704s2 on (rg11704 2) using bank tags [3,3,3,3,3,3,3,3,26,1,28,28,28,28,28,28,57,1]
certRow g11704s3 on (rg11704 3) using bank tags [3,3,28,28]
certRow g11704s4 on (rg11704 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow g11704s5 on (rg11704 5) using bank tags [28,1,1,28,57,1]
certRow g11704s6 on (rg11704 6) using bank tags [28,6]
certRow g11704s7 on (rg11704 7) using bank tags [3,3,3,3,3,28,28,13,13,13,13,13,1,13,11,13,13,13,13]
theorem g11704 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,3,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,3,0,0,2] (.cons (g11704s0) (.cons (g11704s1) (.cons (g11704s2) (.cons (g11704s3) (.cons (g11704s4) (.cons (g11704s5) (.cons (g11704s6) (.cons (g11704s7) .nil))))))))
certRow g11705 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,3,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
