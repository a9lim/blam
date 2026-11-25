import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14467 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,1,2,1,0]) using bank tags []
certRow g14468 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,1,3,0,0]) using bank tags [57,1,57,1,57,1,57,13,57,13,57,13,57,0] except [Floor44.e4786764149738]
certRow g14469 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,1,3,0,0]) using bank tags []
certRow g14470 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,0,0,2]) using bank tags [57,14,57,15,22,1,22,1,57,1,57,1,57,1,57,1,6,1,6,1,57,1,57,26,57,1,29,0,29,35,29,0,29,0] except [Floor44.e4838381820014,Floor44.e4838381709422,Floor44.e4786842101870]
certRow g14471 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,0,0,2]) using bank tags []
certRow g14472 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,0,1,1]) using bank tags [57,15,57,17,57,1,57,1,57,1,57,1,57,1,57,1,57,30,57,6,57,0,30,31,6,6,6,6,6,6,6,6,29,0,29,0] except [Floor44.e4786764144310,Floor44.e4838381707702,Floor44.e4786842100150]
certRow g14473 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,0,1,1]) using bank tags []
certRow g14474 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,0,2,0]) using bank tags [57,14,57,15,22,1,22,1,57,1,57,1,57,1,57,1,57,1,57,1,57,26,57,31,29,0,29,6,29,0,29,0] except [Floor44.e4838381820026,Floor44.e4838381709434,Floor44.e4786842101882]
certRow g14475 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,0,2,0]) using bank tags []
certRow g14476 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,1,0,1]) using bank tags [57,14,57,15,57,1,57,1,57,1,57,1,57,1,57,32,57,1,57,1,57,1,57,1,57,26,57,30,57,6,16,6,6,6,6,6,6,6,6,6,29,0,29,35,29,0,29,0] except [Floor44.e4838381820982,Floor44.e4838381707734,Floor44.e4786842100182]
certRow g14477 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,1,0,1]) using bank tags []
certRow g14478 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,1,1,0]) using bank tags [57,14,57,1,57,1,57,1,57,1,57,1,57,1,57,1,57,1,57,1,57,26,16,6,16,45,6,6,29,35,29,35]
certRow g14479 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,1,1,0]) using bank tags []
certRow g14480 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,2,2,0,0]) using bank tags [22,1,22,1,57,1]
certRow g14481 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,2,2,0,0]) using bank tags []
certRow g14482 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,3,0,0,1]) using bank tags [57,1,57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,13]
certRow g14483 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,3,0,0,1]) using bank tags []
certRow g14484 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,3,0,1,0]) using bank tags [57,1,57,1,57,13,57,13,57,13,57,13,57,13,57,0,57,0] except [Floor44.e4786764152026,Floor44.e4786764144474]
certRow g14485 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,3,0,1,0]) using bank tags []
certRow g14486 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,3,1,0,0]) using bank tags [57,13,57,13,57,13,57,0] except [Floor44.e4786764152042]
end Blc.SelfintSingleObject.Compact44
