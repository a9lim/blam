import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11512 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,1,0,4]
certRow g11512s0 on (rg11512 0) using bank tags [28,28,28,28]
certRow g11512s1 on (rg11512 1) using bank tags []
certRow g11512s2 on (rg11512 2) using bank tags [28,28,28,28,28,28,28]
certRow g11512s3 on (rg11512 3) using bank tags [28,28]
certRow g11512s4 on (rg11512 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11512s5 on (rg11512 5) using bank tags [28,28,28,28,28,28,28,28]
certRow g11512s6 on (rg11512 6) using bank tags [28,28]
certRow g11512s7 on (rg11512 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,14,1,1,1,1,1,1,13,13,13,13,6,6,30,6,24,30,6]
theorem g11512 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,1,0,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,1,0,4] (.cons (g11512s0) (.cons (g11512s1) (.cons (g11512s2) (.cons (g11512s3) (.cons (g11512s4) (.cons (g11512s5) (.cons (g11512s6) (.cons (g11512s7) .nil))))))))
certRow g11513 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,1,0,4]) using bank tags []
certRow g11514 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,1,1,3]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,32,28,1,13,13,13,13,6,6,6,61]
certRow g11515 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,1,1,3]) using bank tags []
certRow g11516 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,1,2,2]) using bank tags [28,28,1,1,6,28,28,1,28,6,1,1,6,28,6,13,1,16]
certRow g11517 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,1,2,2]) using bank tags []
private abbrev rg11518 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,1,3,1]
certRow g11518s0 on (rg11518 0) using bank tags [28,28]
certRow g11518s1 on (rg11518 1) using bank tags [28]
certRow g11518s2 on (rg11518 2) using bank tags [28,28,28,28]
certRow g11518s3 on (rg11518 3) using bank tags []
certRow g11518s4 on (rg11518 4) using bank tags [28,28,28,1]
certRow g11518s5 on (rg11518 5) using bank tags [28,28,28,28]
certRow g11518s6 on (rg11518 6) using bank tags []
certRow g11518s7 on (rg11518 7) using bank tags [28,28,28,28,28,28,28,28,28,28,26,28,1,13,13,13,13,13,6,30,6,30,6,61]
theorem g11518 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,1,3,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,1,3,1] (.cons (g11518s0) (.cons (g11518s1) (.cons (g11518s2) (.cons (g11518s3) (.cons (g11518s4) (.cons (g11518s5) (.cons (g11518s6) (.cons (g11518s7) .nil))))))))
certRow g11519 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,1,3,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
