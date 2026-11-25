import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8270 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,0,3,1]) using bank tags [59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,13,28,28,29,14,29,1,29,1,29,28,29,27,29,13,29,1,29,1,29,1,29,28,29,27,29,1]
certRow g8271 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,0,3,1]) using bank tags []
certRow g8272 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,0,4,0]) using bank tags []
certRow g8273 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,0,4,0]) using bank tags []
private abbrev rg8274 (i : Nat) := Split43.five 12 i 7 6 6 false 4 3 4 [0,1,0,3]
certRow g8274s0 on (rg8274 0) using bank tags []
certRow g8274s1 on (rg8274 1) using bank tags [59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,27,28,28,59,1,28,27,28,28]
certRow g8274s2 on (rg8274 2) using bank tags [59,1,28,48,28,28]
certRow g8274s3 on (rg8274 3) using bank tags [59,1,28,48,28,28,59,1,28,48,28,28]
certRow g8274s4 on (rg8274 4) using bank tags [59,1,28,13,28,28,59,1,28,13,28,28]
certRow g8274s5 on (rg8274 5) using bank tags [59,1,28,48,28,28,59,1,28,48,28,28]
certRow g8274s6 on (rg8274 6) using bank tags []
certRow g8274s7 on (rg8274 7) using bank tags []
certRow g8274s8 on (rg8274 8) using bank tags []
certRow g8274s9 on (rg8274 9) using bank tags [59,1,28,27,28,28,59,1,28,27,28,28]
certRow g8274s10 on (rg8274 10) using bank tags [29,14,29,1,29,1,29,28,29,27,29,13,29,14,29,1,29,1,29,28,29,27,29,13,29,1,29,1,29,1,29,28,29,27,29,6,29,1,29,1,29,1,29,28,29,27,29,6]
certRow g8274s11 on (rg8274 11) using bank tags [59,1,28,27,28,28]
theorem g8274 : BadRow (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 4 3 4 [0,1,0,3] (.cons (g8274s0) (.cons (g8274s1) (.cons (g8274s2) (.cons (g8274s3) (.cons (g8274s4) (.cons (g8274s5) (.cons (g8274s6) (.cons (g8274s7) (.cons (g8274s8) (.cons (g8274s9) (.cons (g8274s10) (.cons (g8274s11) .nil))))))))))))
certRow g8275 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,1,0,3]) using bank tags []
certRow g8276 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,1,1,2]) using bank tags [4,1,3,27,3,3,4,1,3,27,3,3,4,1,3,27,3,3,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,13,28,28,29,32,29,1,29,1,29,28,29,27,29,16]
certRow g8277 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,1,1,2]) using bank tags []
certRow g8278 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,1,2,1]) using bank tags [4,1,3,27,3,3,4,1,3,27,3,3,4,1,3,27,3,3,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,13,28,28,29,26,29,1,29,1,29,28,29,27,29,18]
end Blc.SelfintSingleObject.Compact44
