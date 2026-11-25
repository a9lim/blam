import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26350 on (row true false k334 6 3 4 5 [0,1,0,2,0]) byParts (fun j => piece 24 j true false k334 6 3 4 5 [0,1,0,2,0]) byCover (pieces_cover 24 (by decide) true false k334 6 3 4 5 [0,1,0,2,0]) withHints bank eachTags[[],[],[12,11,12,11,12,37,12,37,12,11,12,37],[6,9,6,9,6,9,6,9,6,9,6,9],[],[6,9,6,9,12,1,12,1],[],[6,9,6,9,6,9,6,9],[6,9,6,9,12,1,12,1,44,116,44,71,44,83,44,95],[6,9,6,9,6,9,6,9,6,9],[6,9,6,9,12,37,12,1],[12,11,12,37,12,1,12,1,12,1],[6,9,6,9,6,9,6,9,6,9,6,9,2,21,2,48,2,116,2,48],[12,1,12,1],[],[6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,19,12,37,12,1,12,1,12,37,12,40],[12,24,12,24],[],[6,33,6,33],[],[6,104,6,104],[],[],[24,36,24,36,24,36,24,36,24,36,44,20,44,21,44,83,44,87,44,80,44,88,44,28,44,21,44,0,44,88,44,0,44,0]] except [Floor45.e9676763405186,Floor45.e9676763360130,Floor45.e9573684145026]
theorem g26352 : BadRow (row true false k334 6 3 4 5 [0,1,1,0,1]) := sparse_row true false k334 6 3 4 5 [0,1,1,0,1] (by decide)
theorem g26354 : BadRow (row true false k334 6 3 4 5 [0,1,1,1,0]) := sparse_row true false k334 6 3 4 5 [0,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
