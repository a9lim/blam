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
tagSlices g18775 on (row false true k211 7 3 2 4 [0,2,0,1]) byParts (fun j => piece 12 j false true k211 7 3 2 4 [0,2,0,1]) byCover (pieces_cover 12 (by decide) false true k211 7 3 2 4 [0,2,0,1]) withHints bank eachTags[[],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1],[2,14,2,2,1,1,1,1,61,1],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1],[],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,44,22,3,5,44,22,44,3,23,61,2,1,1,1,1,1,2,61,1,1,6,6,44,22,3,5,44,22,44,3,18,61,2,1,1,1,1,1,2,61,1,1,6,6],[],[],[],[],[],[]] except []
tagSlices g18776 on (row false false k175 7 3 2 4 [0,2,1,0]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [0,2,1,0]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [0,2,1,0]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[2,3,2,2,2,2,33,61,2,2,33,2,2,10,10,2,2,44,3,44,44,20,44,3,83,61,2,44,44,44,44,44,44,44,44,9,44,83,44,44,2,44,61,44,44,44,44,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,44,44,2,44,44,44,44,44,44,9,44,59,44,44,44],[],[],[],[],[],[]] except []
certRow g18777 on (row false true k211 7 3 2 4 [0,2,1,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,44,22,3,5,44,22,44,3,59,61,2,1,1,1,1,1,2,61,1,1,6,6]
theorem g18778 : BadRow (row false false k175 7 3 2 4 [0,3,0,0]) := sparse_row false false k175 7 3 2 4 [0,3,0,0] (by decide)
theorem g18779 : BadRow (row false true k211 7 3 2 4 [0,3,0,0]) := sparse_row false true k211 7 3 2 4 [0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
