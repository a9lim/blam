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
tagSlices g22551 on (row false true k301 5 3 2 4 [2,1,0,0]) byParts (fun j => piece 12 j false true k301 5 3 2 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) false true k301 5 3 2 4 [2,1,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,37,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[],[],[],[],[],[],[]] except []
theorem g22552 : BadRow (row false false k277 5 3 2 4 [3,0,0,0]) := sparse_row false false k277 5 3 2 4 [3,0,0,0] (by decide)
theorem g22553 : BadRow (row false true k301 5 3 2 4 [3,0,0,0]) := sparse_row false true k301 5 3 2 4 [3,0,0,0] (by decide)
theorem g22554 : BadRow (row false false k278 5 3 2 5 [0,0,0,0,3]) := sparse_row false false k278 5 3 2 5 [0,0,0,0,3] (by decide)
tagSlices g22556 on (row false false k278 5 3 2 5 [0,0,0,1,2]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [0,0,0,1,2]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [0,0,0,1,2]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2],[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,44,1,44,1,44,1,44,2,44,11,8,8],[],[14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,37,2,2],[],[],[],[14,1,2,20,2,2,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,8,8,44,1,44,1,44,1,44,2,44,11,44,0],[]] except [Floor45.e8997164551022]
end Blc.SelfintSingleObject.Compact45
