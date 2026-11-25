import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg8062 (i : Nat) := Split43.five 12 i 7 6 6 false 4 2 4 [1,1,0,2]
certRow g8062s0 on (rg8062 0) using bank tags []
certRow g8062s1 on (rg8062 1) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28]
certRow g8062s2 on (rg8062 2) using bank tags [48,28,28,28,28,13,28,28]
certRow g8062s3 on (rg8062 3) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28]
certRow g8062s4 on (rg8062 4) using bank tags []
certRow g8062s5 on (rg8062 5) using bank tags [29,6,29,29,29,29,29,48,29,25,29,29,29,29,29,29,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,29,22,29,29,29,29,6,29,29,29,29,29,48,29,1,29,29,29,29,29,29,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,29,6,29,29,29]
certRow g8062s6 on (rg8062 6) using bank tags []
certRow g8062s7 on (rg8062 7) using bank tags []
certRow g8062s8 on (rg8062 8) using bank tags []
certRow g8062s9 on (rg8062 9) using bank tags []
certRow g8062s10 on (rg8062 10) using bank tags []
certRow g8062s11 on (rg8062 11) using bank tags []
theorem g8062 : BadRow (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 4 2 4 [1,1,0,2] (.cons (g8062s0) (.cons (g8062s1) (.cons (g8062s2) (.cons (g8062s3) (.cons (g8062s4) (.cons (g8062s5) (.cons (g8062s6) (.cons (g8062s7) (.cons (g8062s8) (.cons (g8062s9) (.cons (g8062s10) (.cons (g8062s11) .nil))))))))))))
private abbrev rg8063 (i : Nat) := Split43.five 12 i 7 6 6 true 4 2 4 [1,1,0,2]
certRow g8063s0 on (rg8063 0) using bank tags []
certRow g8063s1 on (rg8063 1) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8063s2 on (rg8063 2) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8063s3 on (rg8063 3) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8063s4 on (rg8063 4) using bank tags []
certRow g8063s5 on (rg8063 5) using bank tags [29,12,1,1,1,1,3,3,8,27,8,44,1,1,1,28,21,20,1,1,3,3,21,28,21,56,1,1,1,1,3,3,29,12,1,1,1,1,3,3,8,27,12,44,1,1,1,28,22,20,1,1,3,3,6,28,1,56,1,1,1,1,3,3]
certRow g8063s6 on (rg8063 6) using bank tags []
certRow g8063s7 on (rg8063 7) using bank tags []
certRow g8063s8 on (rg8063 8) using bank tags []
certRow g8063s9 on (rg8063 9) using bank tags []
certRow g8063s10 on (rg8063 10) using bank tags []
certRow g8063s11 on (rg8063 11) using bank tags []
theorem g8063 : BadRow (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 4 2 4 [1,1,0,2] (.cons (g8063s0) (.cons (g8063s1) (.cons (g8063s2) (.cons (g8063s3) (.cons (g8063s4) (.cons (g8063s5) (.cons (g8063s6) (.cons (g8063s7) (.cons (g8063s8) (.cons (g8063s9) (.cons (g8063s10) (.cons (g8063s11) .nil))))))))))))
certRow g8064 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,1,1,1]) using bank tags []
certRow g8065 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,1,1,1]) using bank tags []
certRow g8066 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,1,2,0]) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28,29,6,29,29,29,29,29,48,29,49,29,29,29,29,29,29,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,29,6,29,29,29]
end Blc.SelfintSingleObject.Compact44
