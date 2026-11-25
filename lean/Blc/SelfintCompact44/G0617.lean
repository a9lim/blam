import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12904 on (Grammar43.fiveRow 7 7 4 false 4 4 4 [0,1,0,3]) using bank tags [3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,20,3,3,3,20,3,3,3,20,3,3,3,20]
private abbrev rg12905 (i : Nat) := Split43.five 12 i 7 7 4 true 4 4 4 [0,1,0,3]
certRow g12905s0 on (rg12905 0) using bank tags []
certRow g12905s1 on (rg12905 1) using bank tags [3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1]
certRow g12905s2 on (rg12905 2) using bank tags [3,4,1,1,1]
certRow g12905s3 on (rg12905 3) using bank tags [3,4,1,1,1,3,4,1,1,1]
certRow g12905s4 on (rg12905 4) using bank tags [3,4,1,1,1,3,4,1,1,1]
certRow g12905s5 on (rg12905 5) using bank tags [3,4,1,1,1,3,4,1,1,1]
certRow g12905s6 on (rg12905 6) using bank tags []
certRow g12905s7 on (rg12905 7) using bank tags [3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1]
certRow g12905s8 on (rg12905 8) using bank tags []
certRow g12905s9 on (rg12905 9) using bank tags [3,4,1,1,1,3,4,1,1,1]
certRow g12905s10 on (rg12905 10) using bank tags []
certRow g12905s11 on (rg12905 11) using bank tags [3,4,1,1,1]
theorem g12905 : BadRow (Grammar43.fiveRow 7 7 4 true 4 4 4 [0,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 true 4 4 4 [0,1,0,3] (.cons (g12905s0) (.cons (g12905s1) (.cons (g12905s2) (.cons (g12905s3) (.cons (g12905s4) (.cons (g12905s5) (.cons (g12905s6) (.cons (g12905s7) (.cons (g12905s8) (.cons (g12905s9) (.cons (g12905s10) (.cons (g12905s11) .nil))))))))))))
certRow g12906 on (Grammar43.fiveRow 7 7 4 false 4 4 4 [0,1,1,2]) using bank tags [3,3,3,48,3,3,3,48,3,3,3,48,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,20]
certRow g12907 on (Grammar43.fiveRow 7 7 4 true 4 4 4 [0,1,1,2]) using bank tags [3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1]
certRow g12908 on (Grammar43.fiveRow 7 7 4 false 4 4 4 [0,1,2,1]) using bank tags [3,3,3,48,3,3,3,48,3,3,3,48,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,27,3,3,3,20]
certRow g12909 on (Grammar43.fiveRow 7 7 4 true 4 4 4 [0,1,2,1]) using bank tags [3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1,3,4,1,1,1]
end Blc.SelfintSingleObject.Compact44
