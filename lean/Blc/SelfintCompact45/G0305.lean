import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18464 on (row false false k128 6 7 4 5 [1,3,2,1,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,3,2,1,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,3,2,1,0]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,2,2,2,2,2,2],[6,6,6,6,6,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,2,2,2,2,2,1,1,1,1,10,30,1,1],[6,6,6],[2,2,2],[6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,12,20],[],[2,2,2,2,2,2,27],[2,2],[2,2,2,2,2,2,2],[6,6,6,6,6]] except []
tagSlices g18466 on (row false false k128 6 7 4 5 [1,3,3,0,0]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [1,3,3,0,0]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [1,3,3,0,0]) withHints bank eachTags[[2,2],[11,1,12,2,2,2,2],[2,2,2,2,2,2],[11,11,11,1,2,37,1,37,1,2],[1,1],[12,12,12,2,2],[2,2],[2,2]] except []
tagSlices g18468 on (row false false k128 6 7 4 5 [1,4,0,0,2]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [1,4,0,0,2]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [1,4,0,0,2]) withHints bank eachTags[[2,2,2],[2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,20],[2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,1],[2,2],[2,2,2,2,2,2]] except []
sliceRow g18470 on (row false false k128 6 7 4 5 [1,4,0,1,1]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,4,0,1,1]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,4,0,1,1]) slices 12 withHints bank tags [2] except []
end Blc.SelfintSingleObject.Compact45
