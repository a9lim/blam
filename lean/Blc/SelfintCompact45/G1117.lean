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
tagSlices g26505 on (row true true k347 6 3 4 6 [2,1,0,0,0,0]) byParts (fun j => piece 12 j true true k347 6 3 4 6 [2,1,0,0,0,0]) byCover (pieces_cover 12 (by decide) true true k347 6 3 4 6 [2,1,0,0,0,0]) withHints bank eachTags[[22,22,22,22,22,22,22,22,22],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26506 : BadRow (row true false k335 6 3 4 6 [3,0,0,0,0,0]) := sparse_row true false k335 6 3 4 6 [3,0,0,0,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
