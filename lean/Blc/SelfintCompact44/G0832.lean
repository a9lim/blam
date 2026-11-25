import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14784 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,1,0,1,0]
certRow g14784s0 on (rg14784 0) using bank tags [28,28,28,28,28]
certRow g14784s1 on (rg14784 1) using bank tags [1,1,28,28,28,7,7,28,28,28]
certRow g14784s2 on (rg14784 2) using bank tags [28,28,28,28]
certRow g14784s3 on (rg14784 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14784s4 on (rg14784 4) using bank tags [1,24,28,28,28,28,28,28,28,28,28,28]
certRow g14784s5 on (rg14784 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14784s6 on (rg14784 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,23,23,28,28,28,28,28,28,28,28,28,28]
certRow g14784s7 on (rg14784 7) using bank tags []
certRow g14784s8 on (rg14784 8) using bank tags []
certRow g14784s9 on (rg14784 9) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14784s10 on (rg14784 10) using bank tags []
certRow g14784s11 on (rg14784 11) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28]
theorem g14784 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,1,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,1,0,1,0] (.cons (g14784s0) (.cons (g14784s1) (.cons (g14784s2) (.cons (g14784s3) (.cons (g14784s4) (.cons (g14784s5) (.cons (g14784s6) (.cons (g14784s7) (.cons (g14784s8) (.cons (g14784s9) (.cons (g14784s10) (.cons (g14784s11) .nil))))))))))))
certRow g14785 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,1,0,1,0]) using bank tags []
private abbrev rg14786 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,1,1,0,0]
certRow g14786s0 on (rg14786 0) using bank tags [28,28,28,28,28]
certRow g14786s1 on (rg14786 1) using bank tags [1,1,1,28,28,28,7,7,23,28,28,28]
certRow g14786s2 on (rg14786 2) using bank tags [28,28,28,28]
certRow g14786s3 on (rg14786 3) using bank tags [9,28,9,28,7,28,23,28,23,28]
certRow g14786s4 on (rg14786 4) using bank tags [28]
certRow g14786s5 on (rg14786 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14786s6 on (rg14786 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14786s7 on (rg14786 7) using bank tags []
certRow g14786s8 on (rg14786 8) using bank tags []
certRow g14786s9 on (rg14786 9) using bank tags [1,1,1,28,28,28,1,28,28,28,28,28,28,1,1,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14786s10 on (rg14786 10) using bank tags []
certRow g14786s11 on (rg14786 11) using bank tags [1,1,1,28,28,28,1,28,28,28,28,28,28]
theorem g14786 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,1,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,1,1,0,0] (.cons (g14786s0) (.cons (g14786s1) (.cons (g14786s2) (.cons (g14786s3) (.cons (g14786s4) (.cons (g14786s5) (.cons (g14786s6) (.cons (g14786s7) (.cons (g14786s8) (.cons (g14786s9) (.cons (g14786s10) (.cons (g14786s11) .nil))))))))))))
certRow g14787 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,1,1,0,0]) using bank tags []
certRow g14788 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,2,0,0,0]) using bank tags [1,1,1,1,1,28,1,1,28,13,13,13,13,13,28,28,1,1,28,13,13,28,28]
certRow g14789 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
