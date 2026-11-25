import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g48 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [1,1,1,0]) using bank tags []
certRow g49 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [1,1,1,0]) using bank tags []
certRow g50 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [1,2,0,0]) using bank tags []
certRow g51 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [1,2,0,0]) using bank tags []
certRow g52 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [2,0,0,1]) using bank tags []
certRow g53 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [2,0,0,1]) using bank tags []
certRow g54 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [2,0,1,0]) using bank tags []
certRow g55 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [2,0,1,0]) using bank tags []
certRow g56 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [2,1,0,0]) using bank tags []
certRow g57 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [2,1,0,0]) using bank tags []
certRow g58 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [3,0,0,0]) using bank tags []
certRow g59 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [3,0,0,0]) using bank tags []
certRow g60 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,0,0,3]) using bank tags []
certRow g61 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,0,0,3]) using bank tags []
certRow g62 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,0,1,2]) using bank tags []
certRow g63 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,0,1,2]) using bank tags []
certRow g64 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,0,2,1]) using bank tags []
certRow g65 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,0,2,1]) using bank tags []
certRow g66 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,0,3,0]) using bank tags []
certRow g67 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,0,3,0]) using bank tags []
certRow g68 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,1,0,2]) using bank tags []
certRow g69 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,1,0,2]) using bank tags []
certRow g70 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [0,0,1,1,1]) using bank tags []
certRow g71 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [0,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
