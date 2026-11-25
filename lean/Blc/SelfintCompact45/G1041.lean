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
tagSlices g26262 on (row true false k331 6 3 3 6 [2,1,0,0,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [2,1,0,0,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [2,1,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26263 on (row true true k343 6 3 3 6 [2,1,0,0,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [2,1,0,0,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [2,1,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26264 : BadRow (row true false k331 6 3 3 6 [3,0,0,0,0,0]) := sparse_row true false k331 6 3 3 6 [3,0,0,0,0,0] (by decide)
theorem g26265 : BadRow (row true true k343 6 3 3 6 [3,0,0,0,0,0]) := sparse_row true true k343 6 3 3 6 [3,0,0,0,0,0] (by decide)
theorem g26326 : BadRow (row true false k334 6 3 4 5 [0,0,0,0,3]) := sparse_row true false k334 6 3 4 5 [0,0,0,0,3] (by decide)
tagSlices g26328 on (row true false k334 6 3 4 5 [0,0,0,1,2]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,0,1,2]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,0,1,2]) withHints bank eachTags[[6,9],[12,1,12,1,21,1,12,1,12,1,12,1,6,1,6,46,44,73,44,83],[12,1],[6,9,6,33,6,33,6,33,6,33,6,33,6,33,12,1,6,33,12,20],[],[],[6,20,6,9],[12,1],[6,20,6,9],[8,8,8,8],[6,9,6,9,6,20,6,9,6,9,6,9],[6,10,24,36,24,36,24,36,24,36,47,20,44,21,44,20,19,20,27,30,6,9]] except []
tagSlices g26330 on (row true false k334 6 3 4 5 [0,0,0,2,1]) byParts (fun j => piece 12 j true false k334 6 3 4 5 [0,0,0,2,1]) byCover (pieces_cover 12 (by decide) true false k334 6 3 4 5 [0,0,0,2,1]) withHints bank eachTags[[6,9],[12,1,12,1,20,1,12,1,12,1,12,1,6,1,6,20,44,20,44,27],[12,1],[6,9,6,33,6,33,6,33,6,33,6,33,6,33,12,1,6,33,12,20],[],[],[6,28,6,9],[12,1],[6,47,6,9],[8,8,8,8],[6,9,6,20,6,9,6,20,6,9,6,9,6,9],[6,10,24,36,24,36,24,36,24,36,47,20,44,28,44,20,19,20,27,30,6,9]] except []
theorem g26332 : BadRow (row true false k334 6 3 4 5 [0,0,0,3,0]) := sparse_row true false k334 6 3 4 5 [0,0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
