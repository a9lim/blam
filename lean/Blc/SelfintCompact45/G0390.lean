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
certRow g19804 on (row false false k193 7 4 4 4 [1,0,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19805 on (row false true k229 7 4 4 4 [1,0,2,1]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19806 on (row false false k193 7 4 4 4 [1,0,3,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19807 on (row false true k229 7 4 4 4 [1,0,3,0]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19808 on (row false false k193 7 4 4 4 [1,1,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19809 on (row false true k229 7 4 4 4 [1,1,0,2]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
theorem g19810 : BadRow (row false false k193 7 4 4 4 [1,1,1,1]) := sparse_row false false k193 7 4 4 4 [1,1,1,1] (by decide)
theorem g19811 : BadRow (row false true k229 7 4 4 4 [1,1,1,1]) := sparse_row false true k229 7 4 4 4 [1,1,1,1] (by decide)
certRow g19812 on (row false false k193 7 4 4 4 [1,1,2,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19813 on (row false true k229 7 4 4 4 [1,1,2,0]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19814 on (row false false k193 7 4 4 4 [1,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19815 on (row false true k229 7 4 4 4 [1,2,0,1]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19816 on (row false false k193 7 4 4 4 [1,2,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19817 on (row false true k229 7 4 4 4 [1,2,1,0]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
certRow g19818 on (row false false k193 7 4 4 4 [1,3,0,0]) using bank tags [6,6,6,6,6,6]
end Blc.SelfintSingleObject.Compact45
