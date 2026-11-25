import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19062 on (row false false k182 7 3 4 5 [0,0,0,1,2]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [0,0,0,1,2]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [0,0,0,1,2]) withHints bank eachTags[[],[6,6,8,8],[6,6,6,6,6,6,2],[6,2,6],[6,6,6],[2,2,1,2,2,2,44,9],[6,6],[2,6,6,6,6,6,6,2,6,6,33,33,33,33,33,44,21,9,10]] except []
tagSlices g19064 on (row false false k182 7 3 4 5 [0,0,0,2,1]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [0,0,0,2,1]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [0,0,0,2,1]) withHints bank eachTags[[],[6,6,8,8],[6,6,6,6,6,6,6,2],[6,2,6],[6,6,6],[2,2,1,2,2,2,44,9],[6,6],[2,6,6,6,6,6,6,2,6,6,33,33,33,33,33,44,20,9,10]] except []
theorem g19066 : BadRow (row false false k182 7 3 4 5 [0,0,0,3,0]) := sparse_row false false k182 7 3 4 5 [0,0,0,3,0] (by decide)
tagSlices g19068 on (row false false k182 7 3 4 5 [0,0,1,0,2]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [0,0,1,0,2]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [0,0,1,0,2]) withHints bank eachTags[[6],[6,6,6,6,8,8,8,8],[6,6,6,6,6,6,6,2,2,2],[6,6,2,2,6,6],[6,6,6,6,6,6],[2,2,2,2,2,2,2,44,9,44,9],[6,6,6,6],[2,2,6,6,6,6,6,6,6,6,6,6,6,2,2,6,6,6,6,33,33,33,33,33,33,33,33,33,44,21,44,21,9,10,9,10]] except []
theorem g19070 : BadRow (row false false k182 7 3 4 5 [0,0,1,1,1]) := sparse_row false false k182 7 3 4 5 [0,0,1,1,1] (by decide)
tagSlices g19072 on (row false false k182 7 3 4 5 [0,0,1,2,0]) byParts (fun j => piece 8 j false false k182 7 3 4 5 [0,0,1,2,0]) byCover (pieces_cover 8 (by decide) false false k182 7 3 4 5 [0,0,1,2,0]) withHints bank eachTags[[6,2,2,2,44,18],[6,6,6,6,6,8,8],[6,2,2,2,6],[6,6,2,2,2,2,6],[6,6,6,6,6,2,9],[2,44,9],[6,6],[6,6,6,2,6,6,6,6,6,6,6,2,2,6,6,33,33,33,33,33,44,19,44,21,9,10]] except []
end Blc.SelfintSingleObject.Compact45
