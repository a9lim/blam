import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8046 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [0,2,2,0]) using bank tags []
certRow g8047 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [0,2,2,0]) using bank tags []
certRow g8048 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [0,3,0,1]) using bank tags []
certRow g8049 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [0,3,0,1]) using bank tags []
certRow g8050 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [0,3,1,0]) using bank tags []
certRow g8051 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [0,3,1,0]) using bank tags []
certRow g8052 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [0,4,0,0]) using bank tags []
certRow g8053 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [0,4,0,0]) using bank tags []
certRow g8054 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,0,0,3]) using bank tags []
certRow g8055 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,0,0,3]) using bank tags []
certRow g8056 on (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,0,1,2]) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28,48,28,28,28,28,18,28,28,48,28,28,28,28,13,28,28,48,28,28,28,28,40,28,28,29,6,29,29,29,29,29,48,29,6,29,29,29,29,29,29,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,29,22,29,29,29]
private abbrev rg8057 (i : Nat) := Split43.five 12 i 7 6 6 true 4 2 4 [1,0,1,2]
certRow g8057s0 on (rg8057 0) using bank tags []
certRow g8057s1 on (rg8057 1) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8057s2 on (rg8057 2) using bank tags [27,59,1,1,28,28,28,11,28,1,18,59,1,1]
certRow g8057s3 on (rg8057 3) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,11,28,1,40,59,1,1]
certRow g8057s4 on (rg8057 4) using bank tags []
certRow g8057s5 on (rg8057 5) using bank tags [29,12,1,1,1,1,3,3,9,27,9,6,1,1,1,28,7,20,1,1,3,3,1,28,10,56,1,1,1,1,3,3]
certRow g8057s6 on (rg8057 6) using bank tags []
certRow g8057s7 on (rg8057 7) using bank tags []
certRow g8057s8 on (rg8057 8) using bank tags []
certRow g8057s9 on (rg8057 9) using bank tags []
certRow g8057s10 on (rg8057 10) using bank tags []
certRow g8057s11 on (rg8057 11) using bank tags []
theorem g8057 : BadRow (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 4 2 4 [1,0,1,2] (.cons (g8057s0) (.cons (g8057s1) (.cons (g8057s2) (.cons (g8057s3) (.cons (g8057s4) (.cons (g8057s5) (.cons (g8057s6) (.cons (g8057s7) (.cons (g8057s8) (.cons (g8057s9) (.cons (g8057s10) (.cons (g8057s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
