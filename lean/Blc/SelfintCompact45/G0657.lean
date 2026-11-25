import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22598 on (row false false k278 5 3 2 5 [1,0,0,2,0]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [1,0,0,2,0]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [1,0,0,2,0]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[],[],[],[],[],[]] except []
theorem g22600 : BadRow (row false false k278 5 3 2 5 [1,0,1,0,1]) := sparse_row false false k278 5 3 2 5 [1,0,1,0,1] (by decide)
theorem g22602 : BadRow (row false false k278 5 3 2 5 [1,0,1,1,0]) := sparse_row false false k278 5 3 2 5 [1,0,1,1,0] (by decide)
tagSlices g22604 on (row false false k278 5 3 2 5 [1,0,2,0,0]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [1,0,2,0,0]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [1,0,2,0,0]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[],[],[],[],[],[]] except []
theorem g22606 : BadRow (row false false k278 5 3 2 5 [1,1,0,0,1]) := sparse_row false false k278 5 3 2 5 [1,1,0,0,1] (by decide)
theorem g22608 : BadRow (row false false k278 5 3 2 5 [1,1,0,1,0]) := sparse_row false false k278 5 3 2 5 [1,1,0,1,0] (by decide)
theorem g22610 : BadRow (row false false k278 5 3 2 5 [1,1,1,0,0]) := sparse_row false false k278 5 3 2 5 [1,1,1,0,0] (by decide)
certRow g22612 on (row false false k278 5 3 2 5 [1,2,0,0,0]) using bank tags [14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2]
end Blc.SelfintSingleObject.Compact45
