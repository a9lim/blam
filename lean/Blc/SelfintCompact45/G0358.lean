import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19094 on (row false false k182 7 3 4 5 [0,2,0,1,0]) byParts (fun j => piece 12 j false false k182 7 3 4 5 [0,2,0,1,0]) byCover (pieces_cover 12 (by decide) false false k182 7 3 4 5 [0,2,0,1,0]) withHints bank eachTags[[6,6,6,6,6,6,2,9,2,9],[2,2],[2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2],[2,2],[6,6,2,2],[6,6],[6,6,6,6],[6,6,2,2,6,6,44,23,44,18],[6,6,6,6,6],[6,6,2,2],[2,2,2,2,2,33,33,33,33,33,44,66,44,21,44,36,44,36,44,39,44,36]] except []
tagSlices g19096 on (row false false k182 7 3 4 5 [0,2,1,0,0]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [0,2,1,0,0]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [0,2,1,0,0]) withHints bank eachTags[[1,2,2,44,49],[6,6,6],[6,6,2,2,2,2,6],[6,6,6,6,2,2,2],[6,6,6,6,6,2,9],[6,6,6,6,1,2,2,2,2,2],[],[6,6,6,6,6,6,6,6,6,6,2,2,2,2,33,33,33,44,20,44,66,44,66,44,66]] except []
theorem g19098 : BadRow (row false false k182 7 3 4 5 [0,3,0,0,0]) := sparse_row false false k182 7 3 4 5 [0,3,0,0,0] (by decide)
tagSlices g19100 on (row false false k182 7 3 4 5 [1,0,0,0,2]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [1,0,0,0,2]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [1,0,0,0,2]) withHints bank eachTags[[6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,1,2,2,2,1,2,2,2],[6,6,6,6,6,6,6],[],[6,2,1,2,2,2,1,2,2,2,2,1,2,2,2],[6,6],[2,2]] except []
theorem g19102 : BadRow (row false false k182 7 3 4 5 [1,0,0,1,1]) := sparse_row false false k182 7 3 4 5 [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
