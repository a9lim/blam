import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18780 on (row false false k175 7 3 2 4 [1,0,0,2]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [1,0,0,2]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [1,0,0,2]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[],[],[],[],[],[],[]] except []
certRow g18781 on (row false true k211 7 3 2 4 [1,0,0,2]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
theorem g18782 : BadRow (row false false k175 7 3 2 4 [1,0,1,1]) := sparse_row false false k175 7 3 2 4 [1,0,1,1] (by decide)
theorem g18783 : BadRow (row false true k211 7 3 2 4 [1,0,1,1]) := sparse_row false true k211 7 3 2 4 [1,0,1,1] (by decide)
tagSlices g18784 on (row false false k175 7 3 2 4 [1,0,2,0]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [1,0,2,0]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [1,0,2,0]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[],[],[],[],[],[],[]] except []
certRow g18785 on (row false true k211 7 3 2 4 [1,0,2,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
theorem g18786 : BadRow (row false false k175 7 3 2 4 [1,1,0,1]) := sparse_row false false k175 7 3 2 4 [1,1,0,1] (by decide)
theorem g18787 : BadRow (row false true k211 7 3 2 4 [1,1,0,1]) := sparse_row false true k211 7 3 2 4 [1,1,0,1] (by decide)
end Blc.SelfintSingleObject.Compact45
