import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11780 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,2,1,0,1]
certRow g11780s0 on (rg11780 0) using bank tags []
certRow g11780s1 on (rg11780 1) using bank tags [28]
certRow g11780s2 on (rg11780 2) using bank tags [3,3,3,3,26,1,28,26,15,1,1,28,28,1,13,13,13,13,13,13,13,13,13,13,13,13,28,28,11,19]
certRow g11780s3 on (rg11780 3) using bank tags [3,3,3,3,3,3,3,3,3,3,11,11,19]
certRow g11780s4 on (rg11780 4) using bank tags [1,15,1,15,1,26,1,26,15,1,1,1,28,28]
certRow g11780s5 on (rg11780 5) using bank tags [3,19,19,19,28,28,11,11,11,19,28,28,24,19,28,28,24,19]
certRow g11780s6 on (rg11780 6) using bank tags [3,3,3,3,3,28]
certRow g11780s7 on (rg11780 7) using bank tags [28,28]
theorem g11780 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,1,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,2,1,0,1] (.cons (g11780s0) (.cons (g11780s1) (.cons (g11780s2) (.cons (g11780s3) (.cons (g11780s4) (.cons (g11780s5) (.cons (g11780s6) (.cons (g11780s7) .nil))))))))
certRow g11781 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,1,0,1]) using bank tags []
private abbrev rg11782 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,2,1,1,0]
certRow g11782s0 on (rg11782 0) using bank tags []
certRow g11782s1 on (rg11782 1) using bank tags [28,28,28,28,28,11,19]
certRow g11782s2 on (rg11782 2) using bank tags [28,28,1,28,1,28,28,1,1,1,13,13,13,13,13,13,13,13,13,13,13,13,28,28,11,19]
certRow g11782s3 on (rg11782 3) using bank tags [3,3,3,3,3,3,3]
certRow g11782s4 on (rg11782 4) using bank tags [26,1,15,1,1,1,1,1,28,28,11,11,11,19,28,24,19]
certRow g11782s5 on (rg11782 5) using bank tags [3,19,19,19,28,28,28,28]
certRow g11782s6 on (rg11782 6) using bank tags [3,3,3,3,3,28]
certRow g11782s7 on (rg11782 7) using bank tags []
theorem g11782 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,1,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,2,1,1,0] (.cons (g11782s0) (.cons (g11782s1) (.cons (g11782s2) (.cons (g11782s3) (.cons (g11782s4) (.cons (g11782s5) (.cons (g11782s6) (.cons (g11782s7) .nil))))))))
certRow g11783 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,1,1,0]) using bank tags []
certRow g11784 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,2,0,0]) using bank tags [3,1,1,28,20,20,1,1,13,13,13,13,27,27,27,11,27,28,28]
certRow g11785 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,2,0,0]) using bank tags []
private abbrev rg11786 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,3,0,0,1]
certRow g11786s0 on (rg11786 0) using bank tags [3,3,3]
certRow g11786s1 on (rg11786 1) using bank tags [3,3,3,3,3,3,3]
certRow g11786s2 on (rg11786 2) using bank tags [3,3,3,3,3,3,3,3,206,28,11,24]
certRow g11786s3 on (rg11786 3) using bank tags [3,3,26,1,28,28]
certRow g11786s4 on (rg11786 4) using bank tags [3,3,3,3,3,13,13,13,13,13,16,11,45,19,11]
certRow g11786s5 on (rg11786 5) using bank tags [24,24,28,24,24]
certRow g11786s6 on (rg11786 6) using bank tags [11]
certRow g11786s7 on (rg11786 7) using bank tags [3,3,3,3,3,28]
theorem g11786 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,3,0,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,3,0,0,1] (.cons (g11786s0) (.cons (g11786s1) (.cons (g11786s2) (.cons (g11786s3) (.cons (g11786s4) (.cons (g11786s5) (.cons (g11786s6) (.cons (g11786s7) .nil))))))))
certRow g11787 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,3,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
