import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g21840 on (row false false k209 7 5 5 5 [4,1,0,0,0]) byParts (fun j => piece 12 j false false k209 7 5 5 5 [4,1,0,0,0]) byCover (pieces_cover 12 (by decide) false false k209 7 5 5 5 [4,1,0,0,0]) withHints bank eachTags[[],[],[],[1,2,2,2,1,2,2,2,2,1,2,2,2],[],[],[],[10,2],[],[2,2,2],[2,2,2,2],[]] except []
theorem g21842 : BadRow (row false false k209 7 5 5 5 [5,0,0,0,0]) := sparse_row false false k209 7 5 5 5 [5,0,0,0,0] (by decide)
theorem g21844 : BadRow (row false false k246 8 3 2 3 [0,0,3]) := sparse_row false false k246 8 3 2 3 [0,0,3] (by decide)
certRow g21846 on (row false false k246 8 3 2 3 [0,1,2]) using bank tags [61,6]
certRow g21848 on (row false false k246 8 3 2 3 [0,2,1]) using bank tags [61,6]
theorem g21850 : BadRow (row false false k246 8 3 2 3 [0,3,0]) := sparse_row false false k246 8 3 2 3 [0,3,0] (by decide)
certRow g21852 on (row false false k246 8 3 2 3 [1,0,2]) using bank tags [61,6,61,6]
theorem g21854 : BadRow (row false false k246 8 3 2 3 [1,1,1]) := sparse_row false false k246 8 3 2 3 [1,1,1] (by decide)
certRow g21856 on (row false false k246 8 3 2 3 [1,2,0]) using bank tags [61,6]
certRow g21858 on (row false false k246 8 3 2 3 [2,0,1]) using bank tags [61,6,61,6]
certRow g21860 on (row false false k246 8 3 2 3 [2,1,0]) using bank tags [61,6]
theorem g21862 : BadRow (row false false k246 8 3 2 3 [3,0,0]) := sparse_row false false k246 8 3 2 3 [3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
