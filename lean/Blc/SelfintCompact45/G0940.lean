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
theorem g25783 : BadRow (row true true k336 6 3 2 3 [0,0,3]) := sparse_row true true k336 6 3 2 3 [0,0,3] (by decide)
certRow g25784 on (row true false k324 6 3 2 3 [0,1,2]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
certRow g25785 on (row true true k336 6 3 2 3 [0,1,2]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
certRow g25786 on (row true false k324 6 3 2 3 [0,2,1]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
certRow g25787 on (row true true k336 6 3 2 3 [0,2,1]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
theorem g25788 : BadRow (row true false k324 6 3 2 3 [0,3,0]) := sparse_row true false k324 6 3 2 3 [0,3,0] (by decide)
theorem g25789 : BadRow (row true true k336 6 3 2 3 [0,3,0]) := sparse_row true true k336 6 3 2 3 [0,3,0] (by decide)
certRow g25790 on (row true false k324 6 3 2 3 [1,0,2]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8,61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
certRow g25791 on (row true true k336 6 3 2 3 [1,0,2]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8,61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
theorem g25792 : BadRow (row true false k324 6 3 2 3 [1,1,1]) := sparse_row true false k324 6 3 2 3 [1,1,1] (by decide)
theorem g25793 : BadRow (row true true k336 6 3 2 3 [1,1,1]) := sparse_row true true k336 6 3 2 3 [1,1,1] (by decide)
certRow g25794 on (row true false k324 6 3 2 3 [1,2,0]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
certRow g25795 on (row true true k336 6 3 2 3 [1,2,0]) using bank tags [61,63,2,14,8,1,61,2,63,14,1,1,61,2,1,1,61,63,1,8,1,1,1,8]
certRow g25796 on (row true false k324 6 3 2 3 [2,0,1]) using bank tags [61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8,61,2,8,61,2,61,2,61,2,61,2,61,61,61,61,61,61,2,61,2,61,2,6,6,8,10,8,9,6,6,9,8,6,8]
end Blc.SelfintSingleObject.Compact45
