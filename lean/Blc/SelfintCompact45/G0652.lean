import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22578 on (row false false k278 5 3 2 5 [0,1,0,2,0]) byParts (fun j => piece 24 j false false k278 5 3 2 5 [0,1,0,2,0]) byCover (pieces_cover 24 (by decide) false false k278 5 3 2 5 [0,1,0,2,0]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2],[],[],[],[],[],[],[],[],[],[],[],[],[14,1,2,0,2,2,14,1,2,0,2,2,44,1,44,1,44,1,44,2,44,11,44,0,44,1,44,1,44,1,44,2,44,11,44,0],[],[],[44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,1,44,1,44,1,44,1,44,20],[]] except [Floor45.e8996617206202,Floor45.e8996617203386,Floor45.e8997162727866,Floor45.e8997162725050]
theorem g22580 : BadRow (row false false k278 5 3 2 5 [0,1,1,0,1]) := sparse_row false false k278 5 3 2 5 [0,1,1,0,1] (by decide)
theorem g22582 : BadRow (row false false k278 5 3 2 5 [0,1,1,1,0]) := sparse_row false false k278 5 3 2 5 [0,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
