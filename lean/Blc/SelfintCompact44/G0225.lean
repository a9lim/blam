import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g5400 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,2,4,0]) using bank tags []
certRow g5401 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,2,4,0]) using bank tags []
certRow g5402 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,3,0,3]) using bank tags []
certRow g5403 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,3,0,3]) using bank tags []
certRow g5404 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,3,1,2]) using bank tags []
certRow g5405 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,3,1,2]) using bank tags [1,1,57,1,57,57,1,57,1]
certRow g5406 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,3,2,1]) using bank tags []
certRow g5407 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,3,2,1]) using bank tags [57,1,57,57,1,57,1,57,1]
certRow g5408 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,3,3,0]) using bank tags []
certRow g5409 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,3,3,0]) using bank tags []
certRow g5410 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,4,0,2]) using bank tags []
certRow g5411 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,4,0,2]) using bank tags []
certRow g5412 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,4,1,1]) using bank tags []
certRow g5413 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,4,1,1]) using bank tags []
certRow g5414 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,4,2,0]) using bank tags []
certRow g5415 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,4,2,0]) using bank tags []
certRow g5416 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,5,0,1]) using bank tags []
certRow g5417 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,5,0,1]) using bank tags []
certRow g5418 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,5,1,0]) using bank tags []
certRow g5419 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,5,1,0]) using bank tags []
certRow g5420 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,2,6,0,0]) using bank tags []
certRow g5421 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,2,6,0,0]) using bank tags []
certRow g5422 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [0,3,0,0,5]) using bank tags []
certRow g5423 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [0,3,0,0,5]) using bank tags []
end Blc.SelfintSingleObject.Compact44
