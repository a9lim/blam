import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22539 on (row false true k301 5 3 2 4 [1,0,2,0]) byParts (fun j => piece 12 j false true k301 5 3 2 4 [1,0,2,0]) byCover (pieces_cover 12 (by decide) false true k301 5 3 2 4 [1,0,2,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,37,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,43,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[],[],[],[],[],[],[]] except []
theorem g22540 : BadRow (row false false k277 5 3 2 4 [1,1,0,1]) := sparse_row false false k277 5 3 2 4 [1,1,0,1] (by decide)
theorem g22541 : BadRow (row false true k301 5 3 2 4 [1,1,0,1]) := sparse_row false true k301 5 3 2 4 [1,1,0,1] (by decide)
theorem g22542 : BadRow (row false false k277 5 3 2 4 [1,1,1,0]) := sparse_row false false k277 5 3 2 4 [1,1,1,0] (by decide)
theorem g22543 : BadRow (row false true k301 5 3 2 4 [1,1,1,0]) := sparse_row false true k301 5 3 2 4 [1,1,1,0] (by decide)
tagSlices g22544 on (row false false k277 5 3 2 4 [1,2,0,0]) byParts (fun j => piece 12 j false false k277 5 3 2 4 [1,2,0,0]) byCover (pieces_cover 12 (by decide) false false k277 5 3 2 4 [1,2,0,0]) withHints bank eachTags[[],[14,1,14,1,1,11,1,14,5,1,1,1,11,37,14,14,1,14,1,11,11,2,2,9,9,37,2,2,9,2,3,2,2,2,2,2,14,1,14,1,1,11,1,14,5,1,1,1,11,37,14,14,1,14,1,11,11,2,2,9,9,1,2,2,9,2,3,2,2,2,2,2],[],[14,1,14,1,1,11,1,14,5,1,1,1,11,37,14,14,1,14,1,11,11,2,2,9,9,1,2,2,9,2,3,2,2,2,2,2],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
