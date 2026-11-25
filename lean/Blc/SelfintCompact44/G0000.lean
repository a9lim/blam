import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g0 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [0,0,3]) using bank tags []
certRow g1 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [0,0,3]) using bank tags []
certRow g2 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [0,1,2]) using bank tags []
certRow g3 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [0,1,2]) using bank tags []
certRow g4 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [0,2,1]) using bank tags []
certRow g5 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [0,2,1]) using bank tags []
certRow g6 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [0,3,0]) using bank tags []
certRow g7 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [0,3,0]) using bank tags []
certRow g8 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [1,0,2]) using bank tags []
certRow g9 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [1,0,2]) using bank tags []
certRow g10 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [1,1,1]) using bank tags []
certRow g11 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [1,1,1]) using bank tags []
certRow g12 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [1,2,0]) using bank tags []
certRow g13 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [1,2,0]) using bank tags []
certRow g14 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [2,0,1]) using bank tags []
certRow g15 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [2,0,1]) using bank tags []
certRow g16 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [2,1,0]) using bank tags []
certRow g17 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [2,1,0]) using bank tags []
certRow g18 on (Grammar43.fiveRow 7 5 8 false 3 2 3 [3,0,0]) using bank tags []
certRow g19 on (Grammar43.fiveRow 7 5 8 true 3 2 3 [3,0,0]) using bank tags []
certRow g20 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [0,0,0,3]) using bank tags []
certRow g21 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [0,0,0,3]) using bank tags []
certRow g22 on (Grammar43.fiveRow 7 5 8 false 3 2 4 [0,0,1,2]) using bank tags []
certRow g23 on (Grammar43.fiveRow 7 5 8 true 3 2 4 [0,0,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
