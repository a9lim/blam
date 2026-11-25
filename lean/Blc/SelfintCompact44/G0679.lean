import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13394 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,2,0,0]) using bank tags [28,28,57,24,28,28,57,11,13,28,28,13,28,28,57,6,28,28,57,11,13,28,28,13,28,28,57,24,28,28,57,11,13,28,28,13]
private abbrev rg13395 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 4 [1,2,0,0]
certRow g13395s0 on (rg13395 0) using bank tags []
certRow g13395s1 on (rg13395 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,1,13,26,1,1,57,1,13,13,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,6,13,32,1,1,57,1,13,13,1,1,1,57,14,1,1,1]
certRow g13395s2 on (rg13395 2) using bank tags []
certRow g13395s3 on (rg13395 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,1,13,1,1,1,57,1,13,13,18,1,1,57,14,1,1,1]
certRow g13395s4 on (rg13395 4) using bank tags []
certRow g13395s5 on (rg13395 5) using bank tags []
certRow g13395s6 on (rg13395 6) using bank tags []
certRow g13395s7 on (rg13395 7) using bank tags []
certRow g13395s8 on (rg13395 8) using bank tags []
certRow g13395s9 on (rg13395 9) using bank tags []
certRow g13395s10 on (rg13395 10) using bank tags []
certRow g13395s11 on (rg13395 11) using bank tags []
theorem g13395 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 4 [1,2,0,0] (.cons (g13395s0) (.cons (g13395s1) (.cons (g13395s2) (.cons (g13395s3) (.cons (g13395s4) (.cons (g13395s5) (.cons (g13395s6) (.cons (g13395s7) (.cons (g13395s8) (.cons (g13395s9) (.cons (g13395s10) (.cons (g13395s11) .nil))))))))))))
certRow g13396 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [2,0,0,1]) using bank tags [28,28,27,13,28,28,27,13,1,28,28,11,28,28,27,13,28,28,27,13,1,28,28,11,28,28,27,11,28,28,27,11,1,28,28,24,28,28,27,11,28,28,27,11,1,28,28,24,28,28,27,6,28,28,27,6,1,28,28,6]
end Blc.SelfintSingleObject.Compact44
