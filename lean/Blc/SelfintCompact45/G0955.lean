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
tagSlices g25823 on (row true true k337 6 3 2 4 [1,0,0,2]) byParts (fun j => piece 24 j true true k337 6 3 2 4 [1,0,0,2]) byCover (pieces_cover 24 (by decide) true true k337 6 3 2 4 [1,0,0,2]) withHints bank eachTags[[],[2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1,2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1],[2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1],[2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1,2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25824 : BadRow (row true false k325 6 3 2 4 [1,0,1,1]) := sparse_row true false k325 6 3 2 4 [1,0,1,1] (by decide)
theorem g25825 : BadRow (row true true k337 6 3 2 4 [1,0,1,1]) := sparse_row true true k337 6 3 2 4 [1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
