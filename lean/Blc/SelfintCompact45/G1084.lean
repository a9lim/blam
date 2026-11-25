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
tagSlices g26441 on (row true true k347 6 3 4 6 [0,1,0,0,2,0]) byParts (fun j => piece 12 j true true k347 6 3 4 6 [0,1,0,0,2,0]) byCover (pieces_cover 12 (by decide) true true k347 6 3 4 6 [0,1,0,0,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26442 : BadRow (row true false k335 6 3 4 6 [0,1,0,1,0,1]) := sparse_row true false k335 6 3 4 6 [0,1,0,1,0,1] (by decide)
theorem g26443 : BadRow (row true true k347 6 3 4 6 [0,1,0,1,0,1]) := sparse_row true true k347 6 3 4 6 [0,1,0,1,0,1] (by decide)
theorem g26444 : BadRow (row true false k335 6 3 4 6 [0,1,0,1,1,0]) := sparse_row true false k335 6 3 4 6 [0,1,0,1,1,0] (by decide)
theorem g26445 : BadRow (row true true k347 6 3 4 6 [0,1,0,1,1,0]) := sparse_row true true k347 6 3 4 6 [0,1,0,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
