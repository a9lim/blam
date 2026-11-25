import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22590 on (row false false k278 5 3 2 5 [0,2,1,0,0]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [0,2,1,0,0]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [0,2,1,0,0]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2],[14,1,2,0,2,2,44,1,44,1,44,1,44,2,44,11,44,0],[],[],[44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20],[]] except [Floor45.e8996617207018,Floor45.e8997162728682]
theorem g22592 : BadRow (row false false k278 5 3 2 5 [0,3,0,0,0]) := sparse_row false false k278 5 3 2 5 [0,3,0,0,0] (by decide)
tagSlices g22594 on (row false false k278 5 3 2 5 [1,0,0,0,2]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [1,0,0,0,2]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [1,0,0,0,2]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[],[],[],[],[],[]] except []
theorem g22596 : BadRow (row false false k278 5 3 2 5 [1,0,0,1,1]) := sparse_row false false k278 5 3 2 5 [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
