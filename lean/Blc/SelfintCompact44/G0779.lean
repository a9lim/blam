import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14487 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,3,1,0,0]) using bank tags []
certRow g14488 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,4,0,0,0]) using bank tags []
certRow g14489 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,4,0,0,0]) using bank tags []
certRow g14490 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,0,0,3]) using bank tags [57,13,57,13,57,13,57,13,57,22,57,22,57,11,57,11,57,6]
certRow g14491 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,0,0,3]) using bank tags []
certRow g14492 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,0,1,2]) using bank tags [57,15,57,13,57,1,57,6,57,6,57,22,57,16,57,32,1,6,1,68,57,11,57,6,57,45,57,6,57,0,57,45,57,6,6,22,6,22,6,22,19,19,29,35,29,6,27,11,27,129,29,6,29,6] except [Floor44.e4786746765678]
certRow g14493 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,0,1,2]) using bank tags []
certRow g14494 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,0,2,1]) using bank tags [57,15,57,1,57,6,57,6,57,22,57,16,57,32,57,6,57,6,57,6,57,45,57,6,6,22,6,22,6,22,22,6,29,22,29,6,27,11,27,130,29,35,29,6]
certRow g14495 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,0,2,1]) using bank tags []
certRow g14496 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,0,3,0]) using bank tags [57,13,57,13,57,13,57,13,57,13,57,22,57,22,57,11,57,11,57,6,57,13,57,11]
certRow g14497 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,0,3,0]) using bank tags []
certRow g14498 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,1,0,2]) using bank tags [57,32,57,13,57,1,57,1,57,35,57,35,57,22,57,11,57,0,1,6,1,6,57,11,57,6,57,6,57,6,57,35,57,35,57,45,57,0,57,6,57,0,32,26,31,35,6,22,6,22,6,22,22,6,19,19,29,6,29,6,29,6,29,6,27,11,27,11,27,22,27,130,29,6,29,6,29,6,29,45] except [Floor44.e4786746758766,Floor44.e4786746676782,Floor44.e4786746672558]
certRow g14499 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,1,0,2]) using bank tags []
certRow g14500 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,0,1,1,1]) using bank tags []
certRow g14501 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
