import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19916 on (row false false k194 7 4 4 5 [1,0,0,3,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [1,0,0,3,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [1,0,0,3,0]) withHints bank eachTags[[1,2,2,2,2,2],[2,2,2,2,2],[6,2,6,2,2,2,2,2,2,2,2,2,2],[6,6,6,2,2,6,2,39,2,2,2,6,2],[2,2,2,2,2],[6,6,6,2,2,2,2,2,2,2,2,2],[2,2,2],[6,2,6,2]] except []
tagSlices g19918 on (row false false k194 7 4 4 5 [1,0,1,0,2]) byParts (fun j => piece 12 j false false k194 7 4 4 5 [1,0,1,0,2]) byCover (pieces_cover 12 (by decide) false false k194 7 4 4 5 [1,0,1,0,2]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2],[2,1,2,2,2,2,2,2],[6,6,6,6,3,3,3,3,3,3,3,3,3,44,3,44,3,44,19,44,20],[],[6,2],[6,6,6,6],[2,2],[6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,1,2,2,2,2],[]] except []
theorem g19920 : BadRow (row false false k194 7 4 4 5 [1,0,1,1,1]) := sparse_row false false k194 7 4 4 5 [1,0,1,1,1] (by decide)
tagSlices g19922 on (row false false k194 7 4 4 5 [1,0,1,2,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [1,0,1,2,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [1,0,1,2,0]) withHints bank eachTags[[6,6,2,2,44,3],[6,6,6,6,6,6,2,2],[6,6,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2],[6,6,6,6,6,2,2,2,2,2,44,20],[6,6,6,6,6,6,6,6,2,2,2],[6,6,2,2,2,2,2,2],[6,6],[6,6,6,2,2,3,3,3,3,3,44,3,44,3]] except []
end Blc.SelfintSingleObject.Compact45
