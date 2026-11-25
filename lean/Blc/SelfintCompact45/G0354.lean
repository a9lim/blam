import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19028 on (row false false k181 7 3 4 4 [0,1,0,2]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19030 : BadRow (row false false k181 7 3 4 4 [0,1,1,1]) := sparse_row false false k181 7 3 4 4 [0,1,1,1] (by decide)
certRow g19032 on (row false false k181 7 3 4 4 [0,1,2,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19034 on (row false false k181 7 3 4 4 [0,2,0,1]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19036 on (row false false k181 7 3 4 4 [0,2,1,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19038 : BadRow (row false false k181 7 3 4 4 [0,3,0,0]) := sparse_row false false k181 7 3 4 4 [0,3,0,0] (by decide)
certRow g19040 on (row false false k181 7 3 4 4 [1,0,0,2]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19042 : BadRow (row false false k181 7 3 4 4 [1,0,1,1]) := sparse_row false false k181 7 3 4 4 [1,0,1,1] (by decide)
certRow g19044 on (row false false k181 7 3 4 4 [1,0,2,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19046 : BadRow (row false false k181 7 3 4 4 [1,1,0,1]) := sparse_row false false k181 7 3 4 4 [1,1,0,1] (by decide)
theorem g19048 : BadRow (row false false k181 7 3 4 4 [1,1,1,0]) := sparse_row false false k181 7 3 4 4 [1,1,1,0] (by decide)
certRow g19050 on (row false false k181 7 3 4 4 [1,2,0,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19052 on (row false false k181 7 3 4 4 [2,0,0,1]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19054 on (row false false k181 7 3 4 4 [2,0,1,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19056 on (row false false k181 7 3 4 4 [2,1,0,0]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19058 : BadRow (row false false k181 7 3 4 4 [3,0,0,0]) := sparse_row false false k181 7 3 4 4 [3,0,0,0] (by decide)
theorem g19060 : BadRow (row false false k182 7 3 4 5 [0,0,0,0,3]) := sparse_row false false k182 7 3 4 5 [0,0,0,0,3] (by decide)
end Blc.SelfintSingleObject.Compact45
