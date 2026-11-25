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
tagSlices g22535 on (row false true k301 5 3 2 4 [1,0,0,2]) byParts (fun j => piece 12 j false true k301 5 3 2 4 [1,0,0,2]) byCover (pieces_cover 12 (by decide) false true k301 5 3 2 4 [1,0,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,37,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,37,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,37,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,1,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[],[],[],[],[],[],[]] except []
theorem g22536 : BadRow (row false false k277 5 3 2 4 [1,0,1,1]) := sparse_row false false k277 5 3 2 4 [1,0,1,1] (by decide)
theorem g22537 : BadRow (row false true k301 5 3 2 4 [1,0,1,1]) := sparse_row false true k301 5 3 2 4 [1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
