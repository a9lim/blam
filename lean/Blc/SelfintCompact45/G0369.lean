import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g19528 : BadRow (row false false k189 7 4 3 3 [4,0,0]) := sparse_row false false k189 7 4 3 3 [4,0,0] (by decide)
theorem g19530 : BadRow (row false false k190 7 4 3 4 [0,0,0,4]) := sparse_row false false k190 7 4 3 4 [0,0,0,4] (by decide)
theorem g19531 : BadRow (row false true k226 7 4 3 4 [0,0,0,4]) := sparse_row false true k226 7 4 3 4 [0,0,0,4] (by decide)
tagSlices g19532 on (row false false k190 7 4 3 4 [0,0,1,3]) byParts (fun j => piece 12 j false false k190 7 4 3 4 [0,0,1,3]) byCover (pieces_cover 12 (by decide) false false k190 7 4 3 4 [0,0,1,3]) withHints bank eachTags[[],[2,2,2,2,3,2,2,3,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[],[2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3],[2,2,2,2,33,2,2,10],[2,2,2,2,3,2,2,3],[],[],[],[2,2,2,2,9,2,2,9],[44,3,10,44,44,44,44,44,9,44,10,44,2,44,44,44,44,3,44,3,44,2,44,44,44,44,3,23,44,44,44,44,44,9,44,23,44,2,44,44,44,44,3,44,3,44,2,44,44,44],[]] except []
certRow g19533 on (row false true k226 7 4 3 4 [0,0,1,3]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,44,22,3,5,10,1,1,1,1,6,44,22,3,5,24,1,1,1,1,6]
tagSlices g19534 on (row false false k190 7 4 3 4 [0,0,2,2]) byParts (fun j => piece 12 j false false k190 7 4 3 4 [0,0,2,2]) byCover (pieces_cover 12 (by decide) false false k190 7 4 3 4 [0,0,2,2]) withHints bank eachTags[[],[2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[],[2,2,2,2,33,2,2,10,2,2,2,2,33,2,2,10],[],[],[],[],[2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[44,3,47,44,44,44,44,44,9,44,47,44,2,44,44,44,44,3,44,3,44,2,44,44,44,44,3,23,44,44,44,44,44,9,44,23,44,2,44,44,44,44,3,44,3,44,2,44,44,44],[]] except []
end Blc.SelfintSingleObject.Compact45
