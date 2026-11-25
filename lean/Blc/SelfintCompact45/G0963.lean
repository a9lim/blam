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
tagSlices g25838 on (row true false k325 6 3 2 4 [2,1,0,0]) byParts (fun j => piece 12 j true false k325 6 3 2 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) true false k325 6 3 2 4 [2,1,0,0]) withHints bank eachTags[[],[2,2,2,9,10,36,33,2,3,2,9,9,2,10,33,2,10,9,33,10,36,2,2,9,33,9,36,24,47,25,6,61,61,61,2,2,2,9,10,36,33,2,3,2,9,9,2,10,33,2,10,9,33,10,36,2,2,9,33,9,36,18,47,25,6,61,61,61],[],[2,2,2,9,10,36,33,2,3,2,9,9,2,10,33,2,10,9,33,10,36,2,2,9,33,9,36,47,47,25,6,61,61,61],[],[],[],[],[],[],[],[]] except []
tagSlices g25839 on (row true true k337 6 3 2 4 [2,1,0,0]) byParts (fun j => piece 12 j true true k337 6 3 2 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) true true k337 6 3 2 4 [2,1,0,0]) withHints bank eachTags[[],[2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1,2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1],[],[2,14,1,1,2,14,2,14,9,12,1,1,2,14,1,1,1,1,1,2,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,61,1,1,1],[],[],[],[],[],[],[],[]] except []
theorem g25840 : BadRow (row true false k325 6 3 2 4 [3,0,0,0]) := sparse_row true false k325 6 3 2 4 [3,0,0,0] (by decide)
theorem g25841 : BadRow (row true true k337 6 3 2 4 [3,0,0,0]) := sparse_row true true k337 6 3 2 4 [3,0,0,0] (by decide)
theorem g25842 : BadRow (row true false k326 6 3 2 5 [0,0,0,0,3]) := sparse_row true false k326 6 3 2 5 [0,0,0,0,3] (by decide)
theorem g25843 : BadRow (row true true k338 6 3 2 5 [0,0,0,0,3]) := sparse_row true true k338 6 3 2 5 [0,0,0,0,3] (by decide)
end Blc.SelfintSingleObject.Compact45
