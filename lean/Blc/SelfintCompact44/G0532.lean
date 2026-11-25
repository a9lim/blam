import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11686 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,0,1,2]
certRow g11686s0 on (rg11686 0) using bank tags [28]
certRow g11686s1 on (rg11686 1) using bank tags [28,28,11]
certRow g11686s2 on (rg11686 2) using bank tags [3,3,3,3,3,3,49,28,28,28,1,28,28,28,57,57,57,28,27,27]
certRow g11686s3 on (rg11686 3) using bank tags [3,3,3,3,3]
certRow g11686s4 on (rg11686 4) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow g11686s5 on (rg11686 5) using bank tags [3,3,6,28,57,57,57,1,28,57,1,28,57,1,28]
certRow g11686s6 on (rg11686 6) using bank tags [3,3]
certRow g11686s7 on (rg11686 7) using bank tags [1,1,11,11,11,13,26,1,13,26,1,1,1,11,19]
theorem g11686 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,0,1,2] (.cons (g11686s0) (.cons (g11686s1) (.cons (g11686s2) (.cons (g11686s3) (.cons (g11686s4) (.cons (g11686s5) (.cons (g11686s6) (.cons (g11686s7) .nil))))))))
certRow g11687 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,0,1,2]) using bank tags []
private abbrev rg11688 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,0,2,1]
certRow g11688s0 on (rg11688 0) using bank tags [28,28,57,28,57]
certRow g11688s1 on (rg11688 1) using bank tags [28,28,57,28,57,11]
certRow g11688s2 on (rg11688 2) using bank tags [3,3,49,28,28,28,14,1,28,28,57,28,57,1,57,28,57,28,28,28]
certRow g11688s3 on (rg11688 3) using bank tags [3,3,1,57,1,57,1]
certRow g11688s4 on (rg11688 4) using bank tags [3,3,3,3,3,3,3,3,3,27,27]
certRow g11688s5 on (rg11688 5) using bank tags [3,3,28,57,6,28,28,28,28,28]
certRow g11688s6 on (rg11688 6) using bank tags [3,3]
certRow g11688s7 on (rg11688 7) using bank tags [26,1,11,1,11,13,1,13,1,1,1,16,19,11,18,62]
theorem g11688 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,0,2,1] (.cons (g11688s0) (.cons (g11688s1) (.cons (g11688s2) (.cons (g11688s3) (.cons (g11688s4) (.cons (g11688s5) (.cons (g11688s6) (.cons (g11688s7) .nil))))))))
certRow g11689 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,0,2,1]) using bank tags []
private abbrev rg11690 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,0,3,0]
certRow g11690s0 on (rg11690 0) using bank tags [3,3,28,28,57,28,57]
certRow g11690s1 on (rg11690 1) using bank tags [3,3,3,3,3,3,3,28]
certRow g11690s2 on (rg11690 2) using bank tags [3,3,3,3,3,3,3,3,3,28,14,1,28,57,1,57,28,28,57,11,11]
certRow g11690s3 on (rg11690 3) using bank tags [3,3,3,3,3,3,3]
certRow g11690s4 on (rg11690 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,1,57,1,57,1,28,28]
certRow g11690s5 on (rg11690 5) using bank tags [3,28,57,6]
certRow g11690s6 on (rg11690 6) using bank tags [28]
certRow g11690s7 on (rg11690 7) using bank tags [3,3,3,3,3,3,3,28,28,13,13,13,13,13,13,13,13,13,13,13,16,19]
theorem g11690 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,0,3,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,0,3,0] (.cons (g11690s0) (.cons (g11690s1) (.cons (g11690s2) (.cons (g11690s3) (.cons (g11690s4) (.cons (g11690s5) (.cons (g11690s6) (.cons (g11690s7) .nil))))))))
certRow g11691 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
