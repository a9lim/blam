import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8279 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,1,2,1]) using bank tags []
certRow g8280 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,1,3,0]) using bank tags [59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,48,28,28,59,1,28,27,28,28,29,14,29,1,29,1,29,28,29,27,29,13]
certRow g8281 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,1,3,0]) using bank tags []
certRow g8282 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,2,0,2]) using bank tags [59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,13,28,28,59,1,28,13,28,28,29,1,29,1,29,1,29,28,29,27,29,6,29,15,29,1,29,1,29,28,29,27,29,24]
certRow g8283 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,2,0,2]) using bank tags []
private abbrev rg8284 (i : Nat) := Split43.five 12 i 7 6 6 false 4 3 4 [0,2,1,1]
certRow g8284s0 on (rg8284 0) using bank tags []
certRow g8284s1 on (rg8284 1) using bank tags [59,1,28,27,28,28]
certRow g8284s2 on (rg8284 2) using bank tags [4,1,3,27,3,3,59,1,28,27,28,28,59,1,28,27,28,28]
certRow g8284s3 on (rg8284 3) using bank tags [4,1,3,27,3,3,4,1,3,27,3,3]
certRow g8284s4 on (rg8284 4) using bank tags [59,1,28,13,28,28,59,1,28,13,28,28]
certRow g8284s5 on (rg8284 5) using bank tags []
certRow g8284s6 on (rg8284 6) using bank tags []
certRow g8284s7 on (rg8284 7) using bank tags []
certRow g8284s8 on (rg8284 8) using bank tags []
certRow g8284s9 on (rg8284 9) using bank tags [59,1,28,27,28,28,59,1,28,27,28,28]
certRow g8284s10 on (rg8284 10) using bank tags [29,1,29,1,29,1,29,28,29,27,29,62,29,15,29,1,29,1,29,28,29,27,29,24]
certRow g8284s11 on (rg8284 11) using bank tags [59,1,28,27,28,28]
theorem g8284 : BadRow (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 4 3 4 [0,2,1,1] (.cons (g8284s0) (.cons (g8284s1) (.cons (g8284s2) (.cons (g8284s3) (.cons (g8284s4) (.cons (g8284s5) (.cons (g8284s6) (.cons (g8284s7) (.cons (g8284s8) (.cons (g8284s9) (.cons (g8284s10) (.cons (g8284s11) .nil))))))))))))
certRow g8285 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,2,1,1]) using bank tags []
certRow g8286 on (Grammar43.fiveRow 7 6 6 false 4 3 4 [0,2,2,0]) using bank tags [59,1,28,27,28,28,59,1,28,27,28,28,59,1,28,27,28,28]
certRow g8287 on (Grammar43.fiveRow 7 6 6 true 4 3 4 [0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
