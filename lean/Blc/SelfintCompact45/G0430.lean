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
theorem g20790 : BadRow (row false false k203 7 5 3 5 [0,0,0,5,0]) := sparse_row false false k203 7 5 3 5 [0,0,0,5,0] (by decide)
theorem g20791 : BadRow (row false true k239 7 5 3 5 [0,0,0,5,0]) := sparse_row false true k239 7 5 3 5 [0,0,0,5,0] (by decide)
certRow g20792 on (row false false k203 7 5 3 5 [0,0,1,0,4]) using bank tags []
certRow g20793 on (row false true k239 7 5 3 5 [0,0,1,0,4]) using bank tags []
certRow g20794 on (row false false k203 7 5 3 5 [0,0,1,1,3]) using bank tags []
certRow g20795 on (row false true k239 7 5 3 5 [0,0,1,1,3]) using bank tags []
certRow g20796 on (row false false k203 7 5 3 5 [0,0,1,2,2]) using bank tags [44,44,44]
certRow g20797 on (row false true k239 7 5 3 5 [0,0,1,2,2]) using bank tags []
certRow g20798 on (row false false k203 7 5 3 5 [0,0,1,3,1]) using bank tags [44]
certRow g20799 on (row false true k239 7 5 3 5 [0,0,1,3,1]) using bank tags []
certRow g20800 on (row false false k203 7 5 3 5 [0,0,1,4,0]) using bank tags []
certRow g20801 on (row false true k239 7 5 3 5 [0,0,1,4,0]) using bank tags []
certRow g20802 on (row false false k203 7 5 3 5 [0,0,2,0,3]) using bank tags [44,44,44,44]
certRow g20803 on (row false true k239 7 5 3 5 [0,0,2,0,3]) using bank tags []
certRow g20804 on (row false false k203 7 5 3 5 [0,0,2,1,2]) using bank tags [44,44,44]
certRow g20805 on (row false true k239 7 5 3 5 [0,0,2,1,2]) using bank tags []
certRow g20806 on (row false false k203 7 5 3 5 [0,0,2,2,1]) using bank tags [44,44,44]
certRow g20807 on (row false true k239 7 5 3 5 [0,0,2,2,1]) using bank tags []
certRow g20808 on (row false false k203 7 5 3 5 [0,0,2,3,0]) using bank tags [44,44]
certRow g20809 on (row false true k239 7 5 3 5 [0,0,2,3,0]) using bank tags []
certRow g20810 on (row false false k203 7 5 3 5 [0,0,3,0,2]) using bank tags [44,44,44,44]
certRow g20811 on (row false true k239 7 5 3 5 [0,0,3,0,2]) using bank tags []
certRow g20812 on (row false false k203 7 5 3 5 [0,0,3,1,1]) using bank tags [44]
certRow g20813 on (row false true k239 7 5 3 5 [0,0,3,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
