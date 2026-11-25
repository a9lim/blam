import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data23
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g22492 : BadRow (row false false k260 8 3 6 5 [3,0,0,0,0]) := sparse_row false false k260 8 3 6 5 [3,0,0,0,0] (by decide)
theorem g22494 : BadRow (row false false k276 5 3 2 3 [0,0,3]) := sparse_row false false k276 5 3 2 3 [0,0,3] (by decide)
certRow g22496 on (row false false k276 5 3 2 3 [0,1,2]) using bank tags []
certRow g22498 on (row false false k276 5 3 2 3 [0,2,1]) using bank tags []
theorem g22500 : BadRow (row false false k276 5 3 2 3 [0,3,0]) := sparse_row false false k276 5 3 2 3 [0,3,0] (by decide)
certRow g22502 on (row false false k276 5 3 2 3 [1,0,2]) using bank tags []
theorem g22504 : BadRow (row false false k276 5 3 2 3 [1,1,1]) := sparse_row false false k276 5 3 2 3 [1,1,1] (by decide)
certRow g22506 on (row false false k276 5 3 2 3 [1,2,0]) using bank tags []
certRow g22508 on (row false false k276 5 3 2 3 [2,0,1]) using bank tags []
certRow g22510 on (row false false k276 5 3 2 3 [2,1,0]) using bank tags []
theorem g22512 : BadRow (row false false k276 5 3 2 3 [3,0,0]) := sparse_row false false k276 5 3 2 3 [3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
