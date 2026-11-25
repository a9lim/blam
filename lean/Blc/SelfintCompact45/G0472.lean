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
tagSlices g21435 on (row false true k242 7 5 4 5 [4,1,0,0,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [4,1,0,0,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [4,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g21436 : BadRow (row false false k206 7 5 4 5 [5,0,0,0,0]) := sparse_row false false k206 7 5 4 5 [5,0,0,0,0] (by decide)
theorem g21437 : BadRow (row false true k242 7 5 4 5 [5,0,0,0,0]) := sparse_row false true k242 7 5 4 5 [5,0,0,0,0] (by decide)
theorem g21592 : BadRow (row false false k209 7 5 5 5 [0,0,0,0,5]) := sparse_row false false k209 7 5 5 5 [0,0,0,0,5] (by decide)
tagSlices g21594 on (row false false k209 7 5 5 5 [0,0,0,1,4]) byParts (fun j => piece 12 j false false k209 7 5 5 5 [0,0,0,1,4]) byCover (pieces_cover 12 (by decide) false false k209 7 5 5 5 [0,0,0,1,4]) withHints bank eachTags[[6,6,6,6,2,6,2,2,1,2,2,2],[1,21,2,10,9,10,9,1,9],[2,2],[2,6,6,6,6,6,6,6,6,2,6,6,2,2,20,2,2,2],[],[],[1,2,6,1,2],[20,2,6,6,6,2,10,20,1,2],[1,2],[],[2,2,1,2,2,2],[6,6,10,10,10,10,10,10,10,10,10,10,10,10,10,10,1,24,24,20,9,10,9,10,9,10,8,8,8,8,8,8]] except []
end Blc.SelfintSingleObject.Compact45
