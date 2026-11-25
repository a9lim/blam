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
tagSlices g26125 on (row true true k342 6 3 3 5 [1,0,0,0,2]) byParts (fun j => piece 24 j true true k342 6 3 3 5 [1,0,0,0,2]) byCover (pieces_cover 24 (by decide) true true k342 6 3 3 5 [1,0,0,0,2]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[],[20,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[1,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,1,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,1,1,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26126 : BadRow (row true false k330 6 3 3 5 [1,0,0,1,1]) := sparse_row true false k330 6 3 3 5 [1,0,0,1,1] (by decide)
theorem g26127 : BadRow (row true true k342 6 3 3 5 [1,0,0,1,1]) := sparse_row true true k342 6 3 3 5 [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
