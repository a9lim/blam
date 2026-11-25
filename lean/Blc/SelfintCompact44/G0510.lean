import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11534 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,3,2,0]
certRow g11534s0 on (rg11534 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,1,1,28,27]
certRow g11534s1 on (rg11534 1) using bank tags [3,3,3,3,3,3,28]
certRow g11534s2 on (rg11534 2) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow g11534s3 on (rg11534 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g11534s4 on (rg11534 4) using bank tags [3,3,3,3]
certRow g11534s5 on (rg11534 5) using bank tags [3,3,28,28,28,28,28]
certRow g11534s6 on (rg11534 6) using bank tags [3,3,3,3,3,28,28,28]
certRow g11534s7 on (rg11534 7) using bank tags [28,28]
certRow g11534s8 on (rg11534 8) using bank tags [28]
certRow g11534s9 on (rg11534 9) using bank tags [28,28,57,28,57]
certRow g11534s10 on (rg11534 10) using bank tags [3,3,11,28,6]
certRow g11534s11 on (rg11534 11) using bank tags [3,3,3,3,28,13,15,24,18,6,1,24,18,119]
theorem g11534 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,3,2,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,3,2,0] (.cons (g11534s0) (.cons (g11534s1) (.cons (g11534s2) (.cons (g11534s3) (.cons (g11534s4) (.cons (g11534s5) (.cons (g11534s6) (.cons (g11534s7) (.cons (g11534s8) (.cons (g11534s9) (.cons (g11534s10) (.cons (g11534s11) .nil))))))))))))
certRow g11535 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,3,2,0]) using bank tags []
private abbrev rg11536 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,4,0,1]
certRow g11536s0 on (rg11536 0) using bank tags []
certRow g11536s1 on (rg11536 1) using bank tags [28]
certRow g11536s2 on (rg11536 2) using bank tags [28,28,28,28,28,28,28]
certRow g11536s3 on (rg11536 3) using bank tags [28,28,28,28]
certRow g11536s4 on (rg11536 4) using bank tags [28,28,28,28,28,28,28,28,28,1]
certRow g11536s5 on (rg11536 5) using bank tags [28,28,28,28,28,28,28]
certRow g11536s6 on (rg11536 6) using bank tags [28,28]
certRow g11536s7 on (rg11536 7) using bank tags [28,28,28,28,28,28,28,28,28,14,14,1,1,13,13,13,13,6,18]
theorem g11536 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,4,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,4,0,1] (.cons (g11536s0) (.cons (g11536s1) (.cons (g11536s2) (.cons (g11536s3) (.cons (g11536s4) (.cons (g11536s5) (.cons (g11536s6) (.cons (g11536s7) .nil))))))))
certRow g11537 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,4,0,1]) using bank tags []
private abbrev rg11538 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,4,1,0]
certRow g11538s0 on (rg11538 0) using bank tags []
certRow g11538s1 on (rg11538 1) using bank tags []
certRow g11538s2 on (rg11538 2) using bank tags [28,28,28]
certRow g11538s3 on (rg11538 3) using bank tags [28,28]
certRow g11538s4 on (rg11538 4) using bank tags [28,28,28,28,28,28,28,28]
certRow g11538s5 on (rg11538 5) using bank tags [28,28,28,28]
certRow g11538s6 on (rg11538 6) using bank tags [28,28]
certRow g11538s7 on (rg11538 7) using bank tags [28,28,28,28,28,28,14,1,13,13,13,13,6]
theorem g11538 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,4,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,4,1,0] (.cons (g11538s0) (.cons (g11538s1) (.cons (g11538s2) (.cons (g11538s3) (.cons (g11538s4) (.cons (g11538s5) (.cons (g11538s6) (.cons (g11538s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
