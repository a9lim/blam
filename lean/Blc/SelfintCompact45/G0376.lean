import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19556 on (row false false k190 7 4 3 4 [0,3,1,0]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,44,3,10,44,44,44,44,44,9,44,10,44,2,44,44,44,44,3,44,3,44,2,44,44,44]
certRow g19557 on (row false true k226 7 4 3 4 [0,3,1,0]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,44,22,3,5,10,1,1,1,1,6]
theorem g19558 : BadRow (row false false k190 7 4 3 4 [0,4,0,0]) := sparse_row false false k190 7 4 3 4 [0,4,0,0] (by decide)
theorem g19559 : BadRow (row false true k226 7 4 3 4 [0,4,0,0]) := sparse_row false true k226 7 4 3 4 [0,4,0,0] (by decide)
certRow g19560 on (row false false k190 7 4 3 4 [1,0,0,3]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9]
certRow g19561 on (row false true k226 7 4 3 4 [1,0,0,3]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19562 on (row false false k190 7 4 3 4 [1,0,1,2]) using bank tags [6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,33,6,6,33,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9]
certRow g19563 on (row false true k226 7 4 3 4 [1,0,1,2]) using bank tags [6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
end Blc.SelfintSingleObject.Compact45
