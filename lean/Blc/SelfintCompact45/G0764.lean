import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24216 on (row false false k294 5 5 2 5 [0,3,1,1,0]) using bank tags []
certRow g24217 on (row false true k318 5 5 2 5 [0,3,1,1,0]) using bank tags []
certRow g24218 on (row false false k294 5 5 2 5 [0,3,2,0,0]) using bank tags []
certRow g24219 on (row false true k318 5 5 2 5 [0,3,2,0,0]) using bank tags []
certRow g24220 on (row false false k294 5 5 2 5 [0,4,0,0,1]) using bank tags []
certRow g24221 on (row false true k318 5 5 2 5 [0,4,0,0,1]) using bank tags []
certRow g24222 on (row false false k294 5 5 2 5 [0,4,0,1,0]) using bank tags []
certRow g24223 on (row false true k318 5 5 2 5 [0,4,0,1,0]) using bank tags []
certRow g24224 on (row false false k294 5 5 2 5 [0,4,1,0,0]) using bank tags []
certRow g24225 on (row false true k318 5 5 2 5 [0,4,1,0,0]) using bank tags []
certRow g24226 on (row false false k294 5 5 2 5 [0,5,0,0,0]) using bank tags []
certRow g24227 on (row false true k318 5 5 2 5 [0,5,0,0,0]) using bank tags []
certRow g24228 on (row false false k294 5 5 2 5 [1,0,0,0,4]) using bank tags []
certRow g24229 on (row false true k318 5 5 2 5 [1,0,0,0,4]) using bank tags []
certRow g24230 on (row false false k294 5 5 2 5 [1,0,0,1,3]) using bank tags []
certRow g24231 on (row false true k318 5 5 2 5 [1,0,0,1,3]) using bank tags []
tagSlices g24232 on (row false false k294 5 5 2 5 [1,0,0,2,2]) byParts (fun j => piece 12 j false false k294 5 5 2 5 [1,0,0,2,2]) byCover (pieces_cover 12 (by decide) false false k294 5 5 2 5 [1,0,0,2,2]) withHints bank eachTags[[],[1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9],[1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9],[1,44,44,11,44,1,44,9,1,44,44,11,44,1,44,9],[1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
