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
tagSlices g26068 on (row true false k329 6 3 3 4 [1,0,2,0]) byParts (fun j => piece 12 j true false k329 6 3 3 4 [1,0,2,0]) byCover (pieces_cover 12 (by decide) true false k329 6 3 3 4 [1,0,2,0]) withHints bank eachTags[[61,2,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,61,2,8,61,2,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,18,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,18,8],[],[],[],[],[],[61,2,8,61,2,8],[],[61,2,8]] except []
tagSlices g26069 on (row true true k341 6 3 3 4 [1,0,2,0]) byParts (fun j => piece 12 j true true k341 6 3 3 4 [1,0,2,0]) byCover (pieces_cover 12 (by decide) true true k341 6 3 3 4 [1,0,2,0]) withHints bank eachTags[[],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,13,13,13,1,1,1,1,6,13,9,12,1,1,6,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
theorem g26070 : BadRow (row true false k329 6 3 3 4 [1,1,0,1]) := sparse_row true false k329 6 3 3 4 [1,1,0,1] (by decide)
theorem g26071 : BadRow (row true true k341 6 3 3 4 [1,1,0,1]) := sparse_row true true k341 6 3 3 4 [1,1,0,1] (by decide)
theorem g26072 : BadRow (row true false k329 6 3 3 4 [1,1,1,0]) := sparse_row true false k329 6 3 3 4 [1,1,1,0] (by decide)
theorem g26073 : BadRow (row true true k341 6 3 3 4 [1,1,1,0]) := sparse_row true true k341 6 3 3 4 [1,1,1,0] (by decide)
certRow g26074 on (row true false k329 6 3 3 4 [1,2,0,0]) using bank tags [6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,25,8,61,2,8,61,2,8,61,2,8,61,2,8]
end Blc.SelfintSingleObject.Compact45
