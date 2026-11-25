import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14407 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [2,1,0,1]) using bank tags []
certRow g14408 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [2,1,1,0]) using bank tags []
certRow g14409 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [2,1,1,0]) using bank tags []
certRow g14410 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [2,2,0,0]) using bank tags []
certRow g14411 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [2,2,0,0]) using bank tags []
certRow g14412 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [3,0,0,1]) using bank tags []
certRow g14413 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [3,0,0,1]) using bank tags []
certRow g14414 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [3,0,1,0]) using bank tags []
certRow g14415 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [3,0,1,0]) using bank tags []
certRow g14416 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [3,1,0,0]) using bank tags []
certRow g14417 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [3,1,0,0]) using bank tags []
certRow g14418 on (Grammar43.fiveRow 8 5 4 false 4 3 4 [4,0,0,0]) using bank tags []
certRow g14419 on (Grammar43.fiveRow 8 5 4 true 4 3 4 [4,0,0,0]) using bank tags []
certRow g14420 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,0,0,4]) using bank tags []
certRow g14421 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,0,0,4]) using bank tags []
certRow g14422 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,0,1,3]) using bank tags [57,13,57,13,57,13,57,13,57,15,57,124,29,0,29,0] except [Floor44.e4838382900958,Floor44.e4786843293406]
certRow g14423 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,0,1,3]) using bank tags []
certRow g14424 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,0,2,2]) using bank tags [57,1,6,1,6,1,57,1,57,1,57,1,29,191,29,0] except [Floor44.e4786842076910]
certRow g14425 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,0,2,2]) using bank tags []
certRow g14426 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,0,3,1]) using bank tags [57,1,57,1,57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,1,57,15,57,110,29,192,29,144,29,0,29,152] except [Floor44.e4838382900982]
certRow g14427 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,0,3,1]) using bank tags []
certRow g14428 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,0,4,0]) using bank tags []
certRow g14429 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,0,4,0]) using bank tags []
certRow g14430 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,1,0,3]) using bank tags [57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,13,57,13,57,13,57,1,57,15,57,15,57,22,57,110,29,0,29,146,29,22,29,22,29,197,29,153] except [Floor44.e4838381695198]
end Blc.SelfintSingleObject.Compact44
