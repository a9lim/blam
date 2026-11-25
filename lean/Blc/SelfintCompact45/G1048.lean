import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26362 on (row true false k334 6 3 4 5 [0,2,1,0,0]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,2,1,0,0]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,2,1,0,0]) withHints bank eachTags[[6,9,6,9,6,9,6,9,2,49,2,52],[12,1,12,1],[12,11,12,11,12,11,12,11],[6,9,6,9,6,9,6,9,6,33,6,33,6,33,6,33,6,33,6,33,6,33,12,19,12,19,12,19,12,19],[12,24],[6,20,6,9,6,9,6,9,21,1,12,1,12,19,12,1],[6,33],[6,21,6,9,6,9],[21,1,12,1,6,104,44,197,44,89],[6,9,6,9,6,9],[6,9,6,9],[12,11,12,1,12,1,24,36,24,36,24,36,44,28,44,163,44,28,44,94,44,0,44,28,44,28,44,28]] except [Floor45.e9676763639306]
theorem g26364 : BadRow (row true false k334 6 3 4 5 [0,3,0,0,0]) := sparse_row true false k334 6 3 4 5 [0,3,0,0,0] (by decide)
tagSlices g26366 on (row true false k334 6 3 4 5 [1,0,0,0,2]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [1,0,0,0,2]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [1,0,0,0,2]) withHints bank eachTags[[],[1,20,12,36,12,36,12,36,1,47,12,20,12,40,12,47,12,18,1,20,12,20,12,18,12,18],[12,10,12,10,1,1,12,10,12,10,12,10],[6,9,6,1,6,9,6,1,6,9,6,9,6,9],[],[6,9,12,36],[6,9,6,9],[12,36,12,36],[6,20,6,9,6,9,6,9],[],[6,1,6,9,6,9,6,9,6,1,6,9,6,9,6,9,6,9,6,1,6,9,6,9,6,9,20,20,12,36,12,23,12,20],[]] except []
theorem g26368 : BadRow (row true false k334 6 3 4 5 [1,0,0,1,1]) := sparse_row true false k334 6 3 4 5 [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
