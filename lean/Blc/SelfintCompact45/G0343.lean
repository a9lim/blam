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
theorem g18788 : BadRow (row false false k175 7 3 2 4 [1,1,1,0]) := sparse_row false false k175 7 3 2 4 [1,1,1,0] (by decide)
theorem g18789 : BadRow (row false true k211 7 3 2 4 [1,1,1,0]) := sparse_row false true k211 7 3 2 4 [1,1,1,0] (by decide)
certRow g18790 on (row false false k175 7 3 2 4 [1,2,0,0]) using bank tags [2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2]
certRow g18791 on (row false true k211 7 3 2 4 [1,2,0,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
tagSlices g18792 on (row false false k175 7 3 2 4 [2,0,0,1]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [2,0,0,1]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [2,0,0,1]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[],[],[],[],[],[],[]] except []
certRow g18793 on (row false true k211 7 3 2 4 [2,0,0,1]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
end Blc.SelfintSingleObject.Compact45
