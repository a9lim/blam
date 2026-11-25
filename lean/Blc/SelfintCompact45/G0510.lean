import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g21702 : BadRow (row false false k209 7 5 5 5 [0,5,0,0,0]) := sparse_row false false k209 7 5 5 5 [0,5,0,0,0] (by decide)
tagSlices g21704 on (row false false k209 7 5 5 5 [1,0,0,0,4]) byParts (fun j => piece 12 j false false k209 7 5 5 5 [1,0,0,0,4]) byCover (pieces_cover 12 (by decide) false false k209 7 5 5 5 [1,0,0,0,4]) withHints bank eachTags[[1,2,2,2,1,2,2,2,2,1,2,2,2],[],[6,6,6,6,6,6,11,2,6,6,1,2,1,2,2,2,11,11,2,1,2,1,2,2,2],[6,6,6,2,6,1,2,1,2,2,2,1,2,2,2,1,2,2,2,2,1,2,2,2],[],[6,6,6,2,6,6,6,6,6,6,11,2],[2,2,2,2,11,11,2],[6,6,2,2],[1,2,2,2,6,6,6,6],[1,2,2,2],[1,2,2,2,1,2,2,2,2,1,2,2,2],[1,2,2,2]] except []
end Blc.SelfintSingleObject.Compact45
