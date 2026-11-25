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
tagSlices g26129 on (row true true k342 6 3 3 5 [1,0,0,2,0]) byParts (fun j => piece 24 j true true k342 6 3 3 5 [1,0,0,2,0]) byCover (pieces_cover 24 (by decide) true true k342 6 3 3 5 [1,0,0,2,0]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,39,30,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[1,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26130 : BadRow (row true false k330 6 3 3 5 [1,0,1,0,1]) := sparse_row true false k330 6 3 3 5 [1,0,1,0,1] (by decide)
theorem g26131 : BadRow (row true true k342 6 3 3 5 [1,0,1,0,1]) := sparse_row true true k342 6 3 3 5 [1,0,1,0,1] (by decide)
theorem g26132 : BadRow (row true false k330 6 3 3 5 [1,0,1,1,0]) := sparse_row true false k330 6 3 3 5 [1,0,1,1,0] (by decide)
theorem g26133 : BadRow (row true true k342 6 3 3 5 [1,0,1,1,0]) := sparse_row true true k342 6 3 3 5 [1,0,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
