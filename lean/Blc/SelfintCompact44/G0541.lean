import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11748 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,3,0,1]
certRow g11748s0 on (rg11748 0) using bank tags [3,3,3]
certRow g11748s1 on (rg11748 1) using bank tags [3,3,3,3,3,3,3]
certRow g11748s2 on (rg11748 2) using bank tags [3,3,3,3,3,3,3,3,3,3,11,11,28,14,1,28,28,27]
certRow g11748s3 on (rg11748 3) using bank tags [3,3,28,28,3]
certRow g11748s4 on (rg11748 4) using bank tags [3,3,3,3,3,13,13,13,13,13,1,1,11,24,19,11,27,27]
certRow g11748s5 on (rg11748 5) using bank tags [28,28,15,1,28,27,22,27,28,28,27]
certRow g11748s6 on (rg11748 6) using bank tags []
certRow g11748s7 on (rg11748 7) using bank tags [3,3,3,3,3,28,28]
theorem g11748 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,3,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,3,0,1] (.cons (g11748s0) (.cons (g11748s1) (.cons (g11748s2) (.cons (g11748s3) (.cons (g11748s4) (.cons (g11748s5) (.cons (g11748s6) (.cons (g11748s7) .nil))))))))
certRow g11749 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,3,0,1]) using bank tags []
private abbrev rg11750 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,3,1,0]
certRow g11750s0 on (rg11750 0) using bank tags [3,3,3]
certRow g11750s1 on (rg11750 1) using bank tags [3,3,3,3,3,3,3,28,1,27]
certRow g11750s2 on (rg11750 2) using bank tags [3,3,3,3,3,3,3,11,11,1,1,28,28,28,27]
certRow g11750s3 on (rg11750 3) using bank tags [3,3,28,28]
certRow g11750s4 on (rg11750 4) using bank tags [3,3,3,3,3,13,13,13,1,19,11,19,11,27,1,6,27]
certRow g11750s5 on (rg11750 5) using bank tags [28,28,28,28]
certRow g11750s6 on (rg11750 6) using bank tags []
certRow g11750s7 on (rg11750 7) using bank tags [3,3,3,3,3,28,28,19]
theorem g11750 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,3,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,3,1,0] (.cons (g11750s0) (.cons (g11750s1) (.cons (g11750s2) (.cons (g11750s3) (.cons (g11750s4) (.cons (g11750s5) (.cons (g11750s6) (.cons (g11750s7) .nil))))))))
certRow g11751 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,3,1,0]) using bank tags []
certRow g11752 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,4,0,0]) using bank tags [28,28,28,28,28,28,28]
certRow g11753 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,4,0,0]) using bank tags []
private abbrev rg11754 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,0,0,3]
certRow g11754s0 on (rg11754 0) using bank tags [3,3,28,28,28,28,28]
certRow g11754s1 on (rg11754 1) using bank tags [3,3,3,3,3,3,3,1,1,27,27]
certRow g11754s2 on (rg11754 2) using bank tags [3,3,3,3,3,3,3,1,1,28,1,20,20,26,1,15,1,1,28,28,1,28,28,1,1,1,1]
certRow g11754s3 on (rg11754 3) using bank tags [3,3,3,3]
certRow g11754s4 on (rg11754 4) using bank tags [3,3,3,3,3,13,13,13,13,13,26,1,1,15,1,1,1,1,1,1,27,27,27,27,27,27,27,27]
certRow g11754s5 on (rg11754 5) using bank tags [3,28,28,27]
certRow g11754s6 on (rg11754 6) using bank tags []
certRow g11754s7 on (rg11754 7) using bank tags [3,3,3,3,3,3,3]
theorem g11754 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,0,0,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,0,0,3] (.cons (g11754s0) (.cons (g11754s1) (.cons (g11754s2) (.cons (g11754s3) (.cons (g11754s4) (.cons (g11754s5) (.cons (g11754s6) (.cons (g11754s7) .nil))))))))
certRow g11755 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
