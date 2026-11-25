import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13342 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [4,0,0,0,0]
certRow g13342s0 on (rg13342 0) using bank tags []
certRow g13342s1 on (rg13342 1) using bank tags []
certRow g13342s2 on (rg13342 2) using bank tags []
certRow g13342s3 on (rg13342 3) using bank tags []
certRow g13342s4 on (rg13342 4) using bank tags []
certRow g13342s5 on (rg13342 5) using bank tags []
certRow g13342s6 on (rg13342 6) using bank tags []
certRow g13342s7 on (rg13342 7) using bank tags []
certRow g13342s8 on (rg13342 8) using bank tags []
certRow g13342s9 on (rg13342 9) using bank tags []
certRow g13342s10 on (rg13342 10) using bank tags []
certRow g13342s11 on (rg13342 11) using bank tags []
theorem g13342 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [4,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [4,0,0,0,0] (.cons (g13342s0) (.cons (g13342s1) (.cons (g13342s2) (.cons (g13342s3) (.cons (g13342s4) (.cons (g13342s5) (.cons (g13342s6) (.cons (g13342s7) (.cons (g13342s8) (.cons (g13342s9) (.cons (g13342s10) (.cons (g13342s11) .nil))))))))))))
certRow g13343 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [4,0,0,0,0]) using bank tags []
certRow g13344 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [0,0,3]) using bank tags []
certRow g13345 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [0,0,3]) using bank tags []
certRow g13346 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [0,1,2]) using bank tags []
certRow g13347 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [0,1,2]) using bank tags []
certRow g13348 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [0,2,1]) using bank tags []
certRow g13349 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [0,2,1]) using bank tags []
certRow g13350 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [0,3,0]) using bank tags []
certRow g13351 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [0,3,0]) using bank tags []
certRow g13352 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [1,0,2]) using bank tags []
certRow g13353 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [1,0,2]) using bank tags []
certRow g13354 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [1,1,1]) using bank tags []
certRow g13355 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [1,1,1]) using bank tags []
certRow g13356 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [1,2,0]) using bank tags []
certRow g13357 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [1,2,0]) using bank tags []
certRow g13358 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [2,0,1]) using bank tags []
certRow g13359 on (Grammar43.fiveRow 8 5 4 true 3 2 3 [2,0,1]) using bank tags []
certRow g13360 on (Grammar43.fiveRow 8 5 4 false 3 2 3 [2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
