import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26334 on (row true false k334 6 3 4 5 [0,0,1,0,2]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,1,0,2]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,1,0,2]) withHints bank eachTags[[6,9,6,9],[12,1,12,1,12,1,12,1,12,1,12,1,12,1,6,20,6,71,6,20,6,21,44,21,44,48,44,21,44,58],[12,1,12,1],[6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,1,12,1,6,33,6,33,12,0,12,21],[],[],[6,1,6,1,6,9,6,9],[12,11,12,37],[6,9,6,56,6,9,6,1,6,9],[8,8,8,8,8,8,8,8],[6,9,6,9,6,9,6,9,6,9,6,9,6,9,12,1],[6,10,6,10,24,36,24,36,24,36,24,36,24,36,24,36,24,36,47,52,47,21,44,28,44,28,44,73,44,73,19,93,27,39,19,220,27,27,6,9,6,9]] except [Floor45.e9573528309358]
theorem g26336 : BadRow (row true false k334 6 3 4 5 [0,0,1,1,1]) := sparse_row true false k334 6 3 4 5 [0,0,1,1,1] (by decide)
tagSlices g26338 on (row true false k334 6 3 4 5 [0,0,1,2,0]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,1,2,0]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,1,2,0]) withHints bank eachTags[[6,9,6,9,2,20,2,48],[12,1,6,89,6,74,44,93,44,74],[12,1,12,1],[6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,19,12,1,6,33,12,0],[12,24],[],[6,1,6,9,6,33],[6,9,6,9,6,9,12,11],[6,9,6,43,6,9,12,1,12,1,6,104,44,95,44,27],[6,9,6,9,6,9,8,8,8,8],[6,9,12,1],[12,1,12,1,12,1,6,10,24,36,24,36,24,36,24,36,47,52,44,20,44,20,44,0,44,0,19,93,27,48,6,9]] except [Floor45.e9573528309370,Floor45.e9676763356034,Floor45.e9573684140930]
end Blc.SelfintSingleObject.Compact45
