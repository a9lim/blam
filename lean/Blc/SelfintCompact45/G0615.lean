import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22464 on (row false false k260 8 3 6 5 [1,0,0,0,2]) byParts (fun j => piece 24 j false false k260 8 3 6 5 [1,0,0,0,2]) byCover (pieces_cover 24 (by decide) false false k260 8 3 6 5 [1,0,0,0,2]) withHints bank eachTags[[],[],[6,6,6,6,6,6,6,6,6,6,6,6,1,2,2,2,1,2,2,2,2,1,2,2,2],[6,6,6,6,6,6,6],[],[6,6],[6,6,6],[6,6,2,2,1,2,2,2],[6,6,6,6],[6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[],[20,2,2,2],[],[]] except []
theorem g22466 : BadRow (row false false k260 8 3 6 5 [1,0,0,1,1]) := sparse_row false false k260 8 3 6 5 [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
