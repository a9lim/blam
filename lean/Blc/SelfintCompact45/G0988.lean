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
tagSlices g26060 on (row true false k329 6 3 3 4 [0,2,1,0]) byParts (fun j => piece 12 j true false k329 6 3 3 4 [0,2,1,0]) byCover (pieces_cover 12 (by decide) true false k329 6 3 3 4 [0,2,1,0]) withHints bank eachTags[[],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,26,8,61,2,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,1,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,1,8],[6,33,6,21,6,6,6,6,6,21,21,6,33,33,33,9,24,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,25,25,8],[],[],[],[],[61,2,8],[61,2,8]] except []
tagSlices g26061 on (row true true k341 6 3 3 4 [0,2,1,0]) byParts (fun j => piece 12 j true true k341 6 3 3 4 [0,2,1,0]) byCover (pieces_cover 12 (by decide) true true k341 6 3 3 4 [0,2,1,0]) withHints bank eachTags[[],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,33,35,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[]] except []
theorem g26062 : BadRow (row true false k329 6 3 3 4 [0,3,0,0]) := sparse_row true false k329 6 3 3 4 [0,3,0,0] (by decide)
theorem g26063 : BadRow (row true true k341 6 3 3 4 [0,3,0,0]) := sparse_row true true k341 6 3 3 4 [0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
