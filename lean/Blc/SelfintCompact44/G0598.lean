import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12500 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g12501 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g12502 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g12503 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g12504 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,2,1,1]) using bank tags []
certRow g12505 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,2,1,1]) using bank tags [29]
certRow g12506 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g12507 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g12508 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g12509 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g12510 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,3,1,0]) using bank tags []
certRow g12511 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,3,1,0]) using bank tags []
certRow g12512 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,0,4,0,0]) using bank tags []
certRow g12513 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,0,4,0,0]) using bank tags []
certRow g12514 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,1,0,0,3]) using bank tags []
certRow g12515 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,1,0,0,3]) using bank tags []
certRow g12516 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,1,0,1,2]) using bank tags []
certRow g12517 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,1,0,1,2]) using bank tags [29,29]
certRow g12518 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,1,0,2,1]) using bank tags []
certRow g12519 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,1,0,2,1]) using bank tags [29,29,29,29]
certRow g12520 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,1,0,3,0]) using bank tags []
certRow g12521 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,1,0,3,0]) using bank tags []
certRow g12522 on (Grammar43.fiveRow 7 7 4 false 4 2 5 [0,1,1,0,2]) using bank tags []
certRow g12523 on (Grammar43.fiveRow 7 7 4 true 4 2 5 [0,1,1,0,2]) using bank tags [29,29,29,29]
end Blc.SelfintSingleObject.Compact44
