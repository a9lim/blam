import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26340 on (row true false k334 6 3 4 5 [0,0,2,0,1]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,2,0,1]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,2,0,1]) withHints bank eachTags[[6,9,6,9],[12,1,12,1,12,1,12,1,12,1,12,1,12,1,6,24,6,52,6,95,6,52,44,49,44,52,44,20,44,27],[12,1,12,1],[6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,19,12,1,6,33,6,33,12,20,12,28],[],[],[6,20,6,20,6,9,6,9],[12,11,12,37],[6,9,6,24,6,9,6,24,6,9],[8,8,8,8,8,8,8,8],[6,9,6,9,6,9,6,83,6,9,6,9,6,9,6,9,12,1],[6,10,6,10,24,36,24,36,24,36,24,36,24,36,24,36,24,36,47,20,47,20,44,28,44,20,44,59,44,49,18,72,52,27,18,116,27,27,6,9,6,9]] except []
tagSlices g26342 on (row true false k334 6 3 4 5 [0,0,2,1,0]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,2,1,0]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,2,1,0]) withHints bank eachTags[[6,9,6,9,2,20,2,27],[12,1,6,24,6,52,44,49,44,52],[12,1,12,1],[6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,1,12,1,6,33,12,94],[12,24],[],[6,20,6,9,6,33],[6,9,6,9,6,9,12,11],[6,9,6,24,6,9,12,1,12,1,6,104,44,83,44,83],[6,9,6,9,6,9,8,8,8,8],[6,9,12,1],[12,1,12,1,12,1,6,10,24,36,24,36,24,36,24,36,47,73,44,28,44,158,44,0,44,0,18,72,52,27,6,9]] except [Floor45.e9676763356546,Floor45.e9573684141442]
theorem g26344 : BadRow (row true false k334 6 3 4 5 [0,0,3,0,0]) := sparse_row true false k334 6 3 4 5 [0,0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
