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
tagSlices g11598 on (row false false k85 6 3 2 4 [0,2,0,1]) byParts (fun j => piece 12 j false false k85 6 3 2 4 [0,2,0,1]) byCover (pieces_cover 12 (by decide) false false k85 6 3 2 4 [0,2,0,1]) withHints bank eachTags[[],[14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2],[14,20,14,2,2,2,3,2,2],[14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2],[],[14,20,14,2,2,2,10,2,2,14,20,14,2,2,2,10,2,2,44,20,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,66,44,37,44,20,44,37,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,18],[],[],[],[],[],[]] except []
certRow g11599 on (row false true k130 6 3 2 4 [0,2,0,1]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,2,2,2,10,14,1,53,9,1,20,1,1,27,2,1,1,1,1,10,9,36,18,10,1,55,2,11,37,31,1]
certRow g11600 on (row false false k85 6 3 2 4 [0,2,1,0]) using bank tags [14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,66,14,2,2,2,3,2,2,14,20,14,2,2,2,10,2,2,44,21,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,20]
certRow g11601 on (row false true k130 6 3 2 4 [0,2,1,0]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,23,9,1,20,1,1,1,2,1,1,1,1]
theorem g11602 : BadRow (row false false k85 6 3 2 4 [0,3,0,0]) := sparse_row false false k85 6 3 2 4 [0,3,0,0] (by decide)
theorem g11603 : BadRow (row false true k130 6 3 2 4 [0,3,0,0]) := sparse_row false true k130 6 3 2 4 [0,3,0,0] (by decide)
certRow g11604 on (row false false k85 6 3 2 4 [1,0,0,2]) using bank tags [14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,21,14,2,2,2,3,2,2,14,21,14,2,2,2,3,2,2,14,21,14,2,2,2,3,2,2]
certRow g11605 on (row false true k130 6 3 2 4 [1,0,0,2]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1]
theorem g11606 : BadRow (row false false k85 6 3 2 4 [1,0,1,1]) := sparse_row false false k85 6 3 2 4 [1,0,1,1] (by decide)
theorem g11607 : BadRow (row false true k130 6 3 2 4 [1,0,1,1]) := sparse_row false true k130 6 3 2 4 [1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
