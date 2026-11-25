import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24289 on (row false true k318 5 5 2 5 [1,2,2,0,0]) using bank tags [19,37,1,1,1,1,1,39,1,1,1,1,1,1,1,1,1,1,40,19,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,20,1,1,1,1,1,19,37,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g24290 on (row false false k294 5 5 2 5 [1,3,0,0,1]) using bank tags []
certRow g24291 on (row false true k318 5 5 2 5 [1,3,0,0,1]) using bank tags []
certRow g24292 on (row false false k294 5 5 2 5 [1,3,0,1,0]) using bank tags []
certRow g24293 on (row false true k318 5 5 2 5 [1,3,0,1,0]) using bank tags []
certRow g24294 on (row false false k294 5 5 2 5 [1,3,1,0,0]) using bank tags []
certRow g24295 on (row false true k318 5 5 2 5 [1,3,1,0,0]) using bank tags []
certRow g24296 on (row false false k294 5 5 2 5 [1,4,0,0,0]) using bank tags []
certRow g24297 on (row false true k318 5 5 2 5 [1,4,0,0,0]) using bank tags []
certRow g24298 on (row false false k294 5 5 2 5 [2,0,0,0,3]) using bank tags []
certRow g24299 on (row false true k318 5 5 2 5 [2,0,0,0,3]) using bank tags []
tagSlices g24300 on (row false false k294 5 5 2 5 [2,0,0,1,2]) byParts (fun j => piece 12 j false false k294 5 5 2 5 [2,0,0,1,2]) byCover (pieces_cover 12 (by decide) false false k294 5 5 2 5 [2,0,0,1,2]) withHints bank eachTags[[],[1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9],[36,44,44,54,44,36,44,9,36,44,44,54,44,36,44,9],[36,44,44,54,44,36,44,9,20,44,44,36,44,20,44,9],[36,44,44,27,44,36,44,9,36,44,44,27,44,36,44,9,20,44,44,36,44,20,44,9,20,44,44,36,44,20,44,9,18,44,44,36,44,18,44,9],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
