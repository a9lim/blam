import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8058 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,0,2,1]) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28,48,28,28,28,28,1,28,28,48,28,28,28,28,1,28,28,48,28,28,28,28,11,28,28,19,19,29,29,29,29,29,48,29,23,29,29,29,29,29,19,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,19,19,29,29,29]
private abbrev rg8059 (i : Nat) := Split43.five 12 i 7 6 6 true 4 2 4 [1,0,2,1]
certRow g8059s0 on (rg8059 0) using bank tags []
certRow g8059s1 on (rg8059 1) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8059s2 on (rg8059 2) using bank tags [27,59,1,1,28,28,28,11,28,1,24,59,1,1]
certRow g8059s3 on (rg8059 3) using bank tags [27,59,1,1,28,28,28,11,28,1,1,59,1,1,27,59,1,1,28,28,28,6,28,1,11,59,1,1]
certRow g8059s4 on (rg8059 4) using bank tags []
certRow g8059s5 on (rg8059 5) using bank tags [19,12,19,1,1,1,3,3,9,27,19,19,1,1,1,28,20,20,1,1,3,3,20,28,21,56,1,1,1,1,3,3]
certRow g8059s6 on (rg8059 6) using bank tags []
certRow g8059s7 on (rg8059 7) using bank tags []
certRow g8059s8 on (rg8059 8) using bank tags []
certRow g8059s9 on (rg8059 9) using bank tags []
certRow g8059s10 on (rg8059 10) using bank tags []
certRow g8059s11 on (rg8059 11) using bank tags []
theorem g8059 : BadRow (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 4 2 4 [1,0,2,1] (.cons (g8059s0) (.cons (g8059s1) (.cons (g8059s2) (.cons (g8059s3) (.cons (g8059s4) (.cons (g8059s5) (.cons (g8059s6) (.cons (g8059s7) (.cons (g8059s8) (.cons (g8059s9) (.cons (g8059s10) (.cons (g8059s11) .nil))))))))))))
certRow g8060 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,0,3,0]) using bank tags []
certRow g8061 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
