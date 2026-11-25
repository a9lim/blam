import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24233 on (row false true k318 5 5 2 5 [1,0,0,2,2]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [1,0,0,2,2]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [1,0,0,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[]] except []
certRow g24234 on (row false false k294 5 5 2 5 [1,0,0,3,1]) using bank tags []
certRow g24235 on (row false true k318 5 5 2 5 [1,0,0,3,1]) using bank tags []
certRow g24236 on (row false false k294 5 5 2 5 [1,0,0,4,0]) using bank tags []
certRow g24237 on (row false true k318 5 5 2 5 [1,0,0,4,0]) using bank tags []
certRow g24238 on (row false false k294 5 5 2 5 [1,0,1,0,3]) using bank tags []
certRow g24239 on (row false true k318 5 5 2 5 [1,0,1,0,3]) using bank tags []
certRow g24240 on (row false false k294 5 5 2 5 [1,0,1,1,2]) using bank tags [2,2,2,37,2,2,2,37,2,2,2,1,2,2,2,37,2,2,2,1,2,2,2,21,2,2,2,28,2,2,2,21,2,2,2,0,2,2,2,30,2,2,2,20,2,2,2,0,2,2,2,0,2,2,2,0,20,44,44,20,44,20,44,1,20,44,44,20,44,20,44,1,20,44,44,45,44,20,44,1] except [Floor45.e9557378837742,Floor45.e9557378836334,Floor45.e9557378833262,Floor45.e9557378788206]
end Blc.SelfintSingleObject.Compact45
