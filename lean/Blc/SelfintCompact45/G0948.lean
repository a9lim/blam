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
theorem g25812 : BadRow (row true false k325 6 3 2 4 [0,1,1,1]) := sparse_row true false k325 6 3 2 4 [0,1,1,1] (by decide)
theorem g25813 : BadRow (row true true k337 6 3 2 4 [0,1,1,1]) := sparse_row true true k337 6 3 2 4 [0,1,1,1] (by decide)
tagSlices g25814 on (row true false k325 6 3 2 4 [0,1,2,0]) byParts (fun j => piece 24 j true false k325 6 3 2 4 [0,1,2,0]) byCover (pieces_cover 24 (by decide) true false k325 6 3 2 4 [0,1,2,0]) withHints bank eachTags[[],[2,2,2,9,35,25,35,2,5,2,12,12,2,11,35,2,37,9,11,35,25,2,2,9,35,9,11,43,36,19,6,61,61,61],[2,2,2,9,11,25,35,2,5,2,12,12,2,11,35,2,37,9,11,11,25,2,2,9,35,9,19,40,18,56,6,61,61,61],[2,2,2,9,11,25,1,2,5,2,12,12,2,11,1,2,1,9,11,11,25,2,2,9,1,9,1,38,42,38,6,61,61,61],[],[2,2,2,10,33,24,33,2,5,2,12,12,2,37,33,2,119,0,73,33,24,2,2,10,19,10,19,33,9,30,6,61,61,61],[],[],[],[],[],[],[],[],[],[],[],[27,44,44,44,44,9,44,27,44,2,44,28,44,80,44,42,61,2,20,23,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,20,44,9,44,20,44,21,44,9,44,21,44,20,44,23,44,21,65,44,44,44,2,44,48,44,28,44,80,44,44,9,44,27,44,2,44,3,44,2,44,27,44,83,44,2,44,48,44,6,44,61,44,61,44,61],[],[],[],[],[],[]] except [Floor45.e9557124517498]
end Blc.SelfintSingleObject.Compact45
