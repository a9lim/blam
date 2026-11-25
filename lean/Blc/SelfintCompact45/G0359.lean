import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19104 on (row false false k182 7 3 4 5 [1,0,0,2,0]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [1,0,0,2,0]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [1,0,0,2,0]) withHints bank eachTags[[6,6,6,6,2,2],[6,6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,2,1,2,2,2],[6,6,6,6,6,6,6,6,2,2,2,2,2],[],[6,6,2,2,2,2,2,2,2],[6,6],[6,6,2,2]] except []
theorem g19106 : BadRow (row false false k182 7 3 4 5 [1,0,1,0,1]) := sparse_row false false k182 7 3 4 5 [1,0,1,0,1] (by decide)
theorem g19108 : BadRow (row false false k182 7 3 4 5 [1,0,1,1,0]) := sparse_row false false k182 7 3 4 5 [1,0,1,1,0] (by decide)
tagSlices g19110 on (row false false k182 7 3 4 5 [1,0,2,0,0]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [1,0,2,0,0]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [1,0,2,0,0]) withHints bank eachTags[[1,2,1,2],[6,6,6,6,6],[6,6,6,6,6,6,64,2,2,2,1,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,2,2,2,2,2],[],[6,6,6,6,64,2,2,2,2,2,2,2,2,2],[6,6],[6,6,6,6,2,2]] except []
theorem g19112 : BadRow (row false false k182 7 3 4 5 [1,1,0,0,1]) := sparse_row false false k182 7 3 4 5 [1,1,0,0,1] (by decide)
theorem g19114 : BadRow (row false false k182 7 3 4 5 [1,1,0,1,0]) := sparse_row false false k182 7 3 4 5 [1,1,0,1,0] (by decide)
theorem g19116 : BadRow (row false false k182 7 3 4 5 [1,1,1,0,0]) := sparse_row false false k182 7 3 4 5 [1,1,1,0,0] (by decide)
tagSlices g19118 on (row false false k182 7 3 4 5 [1,2,0,0,0]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [1,2,0,0,0]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [1,2,0,0,0]) withHints bank eachTags[[1,2],[6,6,6],[6,6,6,6,1,2,2,2,35,2,2,2,2,64,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2],[],[2,2,2,2],[],[6,6]] except []
end Blc.SelfintSingleObject.Compact45
