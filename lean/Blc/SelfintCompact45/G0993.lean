import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26079 on (row true true k341 6 3 3 4 [2,0,1,0]) byParts (fun j => piece 12 j true true k341 6 3 3 4 [2,0,1,0]) byCover (pieces_cover 12 (by decide) true true k341 6 3 3 4 [2,0,1,0]) withHints bank eachTags[[],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g26080 on (row true false k329 6 3 3 4 [2,1,0,0]) using bank tags [6,9,6,24,6,6,6,6,6,9,33,6,9,3,3,33,25,8,6,9,6,24,6,6,6,6,6,9,33,6,9,3,3,33,25,8,6,9,6,24,6,6,6,6,6,9,33,6,9,3,3,33,25,8,61,2,8,61,2,8,61,2,8,61,2,8]
tagSlices g26081 on (row true true k341 6 3 3 4 [2,1,0,0]) byParts (fun j => piece 12 j true true k341 6 3 3 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) true true k341 6 3 3 4 [2,1,0,0]) withHints bank eachTags[[],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
theorem g26082 : BadRow (row true false k329 6 3 3 4 [3,0,0,0]) := sparse_row true false k329 6 3 3 4 [3,0,0,0] (by decide)
theorem g26083 : BadRow (row true true k341 6 3 3 4 [3,0,0,0]) := sparse_row true true k341 6 3 3 4 [3,0,0,0] (by decide)
theorem g26084 : BadRow (row true false k330 6 3 3 5 [0,0,0,0,3]) := sparse_row true false k330 6 3 3 5 [0,0,0,0,3] (by decide)
theorem g26085 : BadRow (row true true k342 6 3 3 5 [0,0,0,0,3]) := sparse_row true true k342 6 3 3 5 [0,0,0,0,3] (by decide)
end Blc.SelfintSingleObject.Compact45
