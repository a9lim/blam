import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24267 on (row false true k318 5 5 2 5 [1,1,1,0,2]) byParts (fun j => piece 24 j false true k318 5 5 2 5 [1,1,1,0,2]) byCover (pieces_cover 24 (by decide) false true k318 5 5 2 5 [1,1,1,0,2]) withHints bank eachTags[[],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1],[],[],[],[8,22,8,1,1,1,1,1,8,22,8,1,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,1,1,1,1,44,1,44,1,1,1,1,1,1,1,44,1,44,1,1,1],[]] except []
theorem g24268 : BadRow (row false false k294 5 5 2 5 [1,1,1,1,1]) := sparse_row false false k294 5 5 2 5 [1,1,1,1,1] (by decide)
theorem g24269 : BadRow (row false true k318 5 5 2 5 [1,1,1,1,1]) := sparse_row false true k318 5 5 2 5 [1,1,1,1,1] (by decide)
certRow g24270 on (row false false k294 5 5 2 5 [1,1,1,2,0]) using bank tags [2,2,2,37,2,2,2,37,2,2,2,37,2,2,2,37,2,2,2,37,2,2,2,0,2,2,2,20,2,2,2,39,2,2,2,0,20,44,44,20,44,20,44,20,20,44,44,20,44,20,44,23,20,44,44,20,44,20,44,20,44,28,44,44,23,44,28,44,2,8,8,8,44,27,8,8,44,2] except [Floor45.e9557379042938,Floor45.e9557378840186]
end Blc.SelfintSingleObject.Compact45
