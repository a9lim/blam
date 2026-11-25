import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26346 on (row true false k334 6 3 4 5 [0,1,0,0,2]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,1,0,0,2]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,1,0,0,2]) withHints bank eachTags[[6,9,6,9,6,9,6,9,6,9],[1,1,12,1,12,19,12,1,1,1,12,1,12,1,12,1,12,1,12,1],[12,11,12,37,12,37,12,40,12,40],[6,9,6,9,6,9,6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,37,12,1,12,40,12,19,12,19],[],[6,9,12,1],[],[],[6,9,6,9],[],[6,1,6,9,6,9,6,9,6,1,6,9,6,9,6,9,6,9,6,9,12,1,12,1],[24,36,24,36,24,36,24,36,24,36,44,58,44,20,44,28,44,28,44,28,44,59,44,80,44,73,44,201,44,117]] except []
theorem g26348 : BadRow (row true false k334 6 3 4 5 [0,1,0,1,1]) := sparse_row true false k334 6 3 4 5 [0,1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
