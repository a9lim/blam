import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14794 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,1,0,1,0,0]
certRow g14794s0 on (rg14794 0) using bank tags []
certRow g14794s1 on (rg14794 1) using bank tags [25,25,1,28,28,28,23,28,28,28]
certRow g14794s2 on (rg14794 2) using bank tags [28,28,28,28,28,28]
certRow g14794s3 on (rg14794 3) using bank tags [9,28,9,28,7,28,23,28,23,28]
certRow g14794s4 on (rg14794 4) using bank tags [28,28]
certRow g14794s5 on (rg14794 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14794s6 on (rg14794 6) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14794s7 on (rg14794 7) using bank tags []
certRow g14794s8 on (rg14794 8) using bank tags []
certRow g14794s9 on (rg14794 9) using bank tags [1,1,1,1,1,1,1,1,28,28,28,1,28,28,28,28,28,28,1,1,1,28,28,28,28,28,1,28,1,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14794s10 on (rg14794 10) using bank tags []
certRow g14794s11 on (rg14794 11) using bank tags [1,28,28,28,1,28,28,28,28,28]
theorem g14794 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,1,0,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,1,0,1,0,0] (.cons (g14794s0) (.cons (g14794s1) (.cons (g14794s2) (.cons (g14794s3) (.cons (g14794s4) (.cons (g14794s5) (.cons (g14794s6) (.cons (g14794s7) (.cons (g14794s8) (.cons (g14794s9) (.cons (g14794s10) (.cons (g14794s11) .nil))))))))))))
certRow g14795 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,1,0,1,0,0]) using bank tags []
private abbrev rg14796 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,1,1,0,0,0]
certRow g14796s0 on (rg14796 0) using bank tags []
certRow g14796s1 on (rg14796 1) using bank tags []
certRow g14796s2 on (rg14796 2) using bank tags []
certRow g14796s3 on (rg14796 3) using bank tags [9,28,9,28,7,28]
certRow g14796s4 on (rg14796 4) using bank tags [28]
certRow g14796s5 on (rg14796 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14796s6 on (rg14796 6) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14796s7 on (rg14796 7) using bank tags []
certRow g14796s8 on (rg14796 8) using bank tags []
certRow g14796s9 on (rg14796 9) using bank tags [1,1,1,1,1,1,28,28,28,1,28,28,28,28,1,28,28,28,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,1,1,1,28,28,28,1,28,28,28,28,28,28]
certRow g14796s10 on (rg14796 10) using bank tags []
certRow g14796s11 on (rg14796 11) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28]
theorem g14796 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,1,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,1,1,0,0,0] (.cons (g14796s0) (.cons (g14796s1) (.cons (g14796s2) (.cons (g14796s3) (.cons (g14796s4) (.cons (g14796s5) (.cons (g14796s6) (.cons (g14796s7) (.cons (g14796s8) (.cons (g14796s9) (.cons (g14796s10) (.cons (g14796s11) .nil))))))))))))
certRow g14797 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,1,1,0,0,0]) using bank tags []
certRow g14798 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,2,0,0,0,0]) using bank tags []
certRow g14799 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,2,0,0,0,0]) using bank tags []
certRow g14800 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [3,0,0,0,0,1]) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14801 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [3,0,0,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
