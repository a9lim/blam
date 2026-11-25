import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g18094 : BadRow (row false false k128 6 7 4 5 [0,0,0,7,0]) := sparse_row false false k128 6 7 4 5 [0,0,0,7,0] (by decide)
tagSlices g18096 on (row false false k128 6 7 4 5 [0,0,1,0,6]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [0,0,1,0,6]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [0,0,1,0,6]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18098 on (row false false k128 6 7 4 5 [0,0,1,1,5]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [0,0,1,1,5]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [0,0,1,1,5]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18100 on (row false false k128 6 7 4 5 [0,0,1,2,4]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [0,0,1,2,4]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [0,0,1,2,4]) withHints bank eachTags[[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2],[2,2,2,2,2,2,2,2],[2,2],[2],[2,2,2,2,2],[2,2],[2,2,2,2,2,10,10,10,10,10,10,10,10,20,19,20,20,20,19,20,20,20]] except []
tagSlices g18102 on (row false false k128 6 7 4 5 [0,0,1,3,3]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [0,0,1,3,3]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [0,0,1,3,3]) withHints bank eachTags[[6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2],[2,2,2,2,2,2,2],[2,2,2,2],[1,2,2],[2,2,2,2,2,20],[2,2,2,2,2,1,2,2,1,2,2],[1,1,1,20,20,20,19,20,20,20,20,20,20,19,20,20,20,20]] except []
end Blc.SelfintSingleObject.Compact45
