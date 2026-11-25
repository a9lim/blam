import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19906 on (row false false k194 7 4 4 5 [0,3,1,0,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [0,3,1,0,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [0,3,1,0,0]) withHints bank eachTags[[],[2,2,2,6,20,2],[2,2,44,3],[2,2,2,2],[6,6,6,2,2,2,2,2,2,2,4],[1,2,2,2,2,2],[20,2,2,2],[1,2,2,3,3,3,44,3,44,3,44,3,44,3]] except []
theorem g19908 : BadRow (row false false k194 7 4 4 5 [0,4,0,0,0]) := sparse_row false false k194 7 4 4 5 [0,4,0,0,0] (by decide)
tagSlices g19910 on (row false false k194 7 4 4 5 [1,0,0,0,3]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [1,0,0,0,3]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [1,0,0,0,3]) withHints bank eachTags[[1,2,2,2],[1,2,2,2],[1,2,2,2,1,2,2,2,2,1,2,2,2,2,1,2,1,2,2,2],[6,6,6,2,6,1,2,1,2,2,2],[1,2,2,2,1,2,2,2,2,1,2,2,2],[6,6,6,2,2],[2,2,2,2],[6,6]] except []
tagSlices g19912 on (row false false k194 7 4 4 5 [1,0,0,1,2]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [1,0,0,1,2]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [1,0,0,1,2]) withHints bank eachTags[[6,6,6],[],[6,6,6,6,6,6,6,6,6,6,2,2,1,2,2,2,2,2,2,2],[6,6,6,44,52],[6,6,6,6,6,6,6],[2,1,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2],[6,6,2],[2,2,3,3,3,3,3,44,3]] except []
tagSlices g19914 on (row false false k194 7 4 4 5 [1,0,0,2,1]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [1,0,0,2,1]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [1,0,0,2,1]) withHints bank eachTags[[6,6,6,2,2],[1,2,2,2],[6,6,6,6,6,6,2,2,2,1,2,2,2,2,2,2,2,2,2],[6,6,2,2,2,2,2,44,18],[6,6,6,6,6,6,6,2,2,2,2,2],[2,2,2,2,2,2,2],[6,6,2,2],[2,2,3,3,3,3,3,44,3]] except []
end Blc.SelfintSingleObject.Compact45
