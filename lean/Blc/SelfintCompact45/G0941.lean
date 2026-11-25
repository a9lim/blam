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
certRow g25797 on (row true true k336 6 3 2 3 [2,0,1]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8,61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
certRow g25798 on (row true false k324 6 3 2 3 [2,1,0]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
certRow g25799 on (row true true k336 6 3 2 3 [2,1,0]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
theorem g25800 : BadRow (row true false k324 6 3 2 3 [3,0,0]) := sparse_row true false k324 6 3 2 3 [3,0,0] (by decide)
theorem g25801 : BadRow (row true true k336 6 3 2 3 [3,0,0]) := sparse_row true true k336 6 3 2 3 [3,0,0] (by decide)
theorem g25802 : BadRow (row true false k325 6 3 2 4 [0,0,0,3]) := sparse_row true false k325 6 3 2 4 [0,0,0,3] (by decide)
theorem g25803 : BadRow (row true true k337 6 3 2 4 [0,0,0,3]) := sparse_row true true k337 6 3 2 4 [0,0,0,3] (by decide)
end Blc.SelfintSingleObject.Compact45
