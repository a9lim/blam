import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g11590 : BadRow (row false false k85 6 3 2 4 [0,0,3,0]) := sparse_row false false k85 6 3 2 4 [0,0,3,0] (by decide)
theorem g11591 : BadRow (row false true k130 6 3 2 4 [0,0,3,0]) := sparse_row false true k130 6 3 2 4 [0,0,3,0] (by decide)
tagSlices g11592 on (row false false k85 6 3 2 4 [0,1,0,2]) byParts (fun j => piece 12 j false false k85 6 3 2 4 [0,1,0,2]) byCover (pieces_cover 12 (by decide) false false k85 6 3 2 4 [0,1,0,2]) withHints bank eachTags[[],[14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2],[14,20,14,2,2,2,3,2,2],[14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2],[],[14,21,14,2,2,2,10,2,2,14,20,14,2,2,2,10,2,2,44,20,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,20,44,21,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,20],[],[],[],[],[],[]] except []
certRow g11593 on (row false true k130 6 3 2 4 [0,1,0,2]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,2,2,2,10,14,1,16,9,32,20,1,1,29,2,1,1,1,1,16,9,32,20,1,1,1,2,29,1,1,1]
theorem g11594 : BadRow (row false false k85 6 3 2 4 [0,1,1,1]) := sparse_row false false k85 6 3 2 4 [0,1,1,1] (by decide)
theorem g11595 : BadRow (row false true k130 6 3 2 4 [0,1,1,1]) := sparse_row false true k130 6 3 2 4 [0,1,1,1] (by decide)
certRow g11596 on (row false false k85 6 3 2 4 [0,1,2,0]) using bank tags [14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,66,14,2,2,2,3,2,2,14,21,14,2,2,2,10,2,2,44,19,44,20,44,19,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,23]
certRow g11597 on (row false true k130 6 3 2 4 [0,1,2,0]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,16,9,32,23,37,1,1,2,37,19,1,1]
end Blc.SelfintSingleObject.Compact45
