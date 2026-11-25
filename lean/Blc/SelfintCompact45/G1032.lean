import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26156 on (row true false k331 6 3 3 6 [0,0,0,0,1,2]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,0,0,0,1,2]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,0,0,0,1,2]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,6,6,6,6,44,6,6,6,44,44,6,6,6,6,44,6,6,6,6],[],[44,44,44,44,44,44,44,44,44,44],[],[],[]] except []
sliceRow g26157 on (row true true k343 6 3 3 6 [0,0,0,0,1,2]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,0,0,0,1,2]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,0,0,0,1,2]) slices 12 withHints bank tags [14,11,1] except []
tagSlices g26158 on (row true false k331 6 3 3 6 [0,0,0,0,2,1]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,0,0,0,2,1]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,0,0,0,2,1]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,6,6,6,6,44,6,6,6,44,44,6,6,6,6,44,6,6,6,6],[],[44,44,44,44,44,44,44,44,44,44],[],[],[]] except []
sliceRow g26159 on (row true true k343 6 3 3 6 [0,0,0,0,2,1]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,0,0,0,2,1]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,0,0,0,2,1]) slices 12 withHints bank tags [14,11,1] except []
theorem g26160 : BadRow (row true false k331 6 3 3 6 [0,0,0,0,3,0]) := sparse_row true false k331 6 3 3 6 [0,0,0,0,3,0] (by decide)
theorem g26161 : BadRow (row true true k343 6 3 3 6 [0,0,0,0,3,0]) := sparse_row true true k343 6 3 3 6 [0,0,0,0,3,0] (by decide)
tagSlices g26162 on (row true false k331 6 3 3 6 [0,0,0,1,0,2]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,0,0,1,0,2]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,0,0,1,0,2]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,6,6,6,6,6,6,6,44,44,6,6,6,6,6,6,44,44,44,44,6,6,6,6,6,6,6,44,44,6,6,6,6,6,6,6,6],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
