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
theorem g26030 : BadRow (row true false k328 6 3 3 3 [0,3,0]) := sparse_row true false k328 6 3 3 3 [0,3,0] (by decide)
certRow g26032 on (row true false k328 6 3 3 3 [1,0,2]) using bank tags [61,2,61,2,61,37,61,18,8,8,8,8,61,2,61,2,61,37,61,18,8,8,8,8]
theorem g26034 : BadRow (row true false k328 6 3 3 3 [1,1,1]) := sparse_row true false k328 6 3 3 3 [1,1,1] (by decide)
certRow g26036 on (row true false k328 6 3 3 3 [1,2,0]) using bank tags [61,2,61,2,61,37,61,18,8,8,8,8]
certRow g26038 on (row true false k328 6 3 3 3 [2,0,1]) using bank tags [61,2,61,2,61,36,61,18,8,8,8,8,61,2,61,2,61,36,61,18,8,8,8,8]
certRow g26040 on (row true false k328 6 3 3 3 [2,1,0]) using bank tags [61,2,61,2,61,36,61,18,8,8,8,8]
theorem g26042 : BadRow (row true false k328 6 3 3 3 [3,0,0]) := sparse_row true false k328 6 3 3 3 [3,0,0] (by decide)
theorem g26044 : BadRow (row true false k329 6 3 3 4 [0,0,0,3]) := sparse_row true false k329 6 3 3 4 [0,0,0,3] (by decide)
theorem g26045 : BadRow (row true true k341 6 3 3 4 [0,0,0,3]) := sparse_row true true k341 6 3 3 4 [0,0,0,3] (by decide)
tagSlices g26046 on (row true false k329 6 3 3 4 [0,0,1,2]) byParts (fun j => piece 12 j true false k329 6 3 3 4 [0,0,1,2]) byCover (pieces_cover 12 (by decide) true false k329 6 3 3 4 [0,0,1,2]) withHints bank eachTags[[],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,1,8],[61,2,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,1,8,6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,33,1,8],[6,33,6,20,6,6,6,6,6,20,20,6,33,33,33,9,24,8],[6,9,6,43,6,6,6,6,6,9,35,6,9,3,3,25,25,8],[],[],[],[],[61,2,8],[]] except []
end Blc.SelfintSingleObject.Compact45
