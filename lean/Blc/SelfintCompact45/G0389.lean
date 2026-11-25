import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19790 on (row false false k193 7 4 4 4 [0,2,1,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19791 on (row false true k229 7 4 4 4 [0,2,1,1]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1,6,6,6,33,13,1]
certRow g19792 on (row false false k193 7 4 4 4 [0,2,2,0]) using bank tags [6,6,6,6,6,6]
certRow g19793 on (row false true k229 7 4 4 4 [0,2,2,0]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19794 on (row false false k193 7 4 4 4 [0,3,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19795 on (row false true k229 7 4 4 4 [0,3,0,1]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1,6,6,6,33,13,1]
certRow g19796 on (row false false k193 7 4 4 4 [0,3,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19797 on (row false true k229 7 4 4 4 [0,3,1,0]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1]
theorem g19798 : BadRow (row false false k193 7 4 4 4 [0,4,0,0]) := sparse_row false false k193 7 4 4 4 [0,4,0,0] (by decide)
theorem g19799 : BadRow (row false true k229 7 4 4 4 [0,4,0,0]) := sparse_row false true k229 7 4 4 4 [0,4,0,0] (by decide)
certRow g19800 on (row false false k193 7 4 4 4 [1,0,0,3]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19801 on (row false true k229 7 4 4 4 [1,0,0,3]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19802 on (row false false k193 7 4 4 4 [1,0,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19803 on (row false true k229 7 4 4 4 [1,0,1,2]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
end Blc.SelfintSingleObject.Compact45
