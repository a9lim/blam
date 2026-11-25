import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g21030 : BadRow (row false false k203 7 5 3 5 [5,0,0,0,0]) := sparse_row false false k203 7 5 3 5 [5,0,0,0,0] (by decide)
theorem g21031 : BadRow (row false true k239 7 5 3 5 [5,0,0,0,0]) := sparse_row false true k239 7 5 3 5 [5,0,0,0,0] (by decide)
theorem g21032 : BadRow (row false false k204 7 5 4 3 [0,0,5]) := sparse_row false false k204 7 5 4 3 [0,0,5] (by decide)
certRow g21034 on (row false false k204 7 5 4 3 [0,1,4]) using bank tags [61,2,8,61,2,8,61,2,8]
certRow g21036 on (row false false k204 7 5 4 3 [0,2,3]) using bank tags [61,2,8,61,2,8,61,2,8,61,2,8]
certRow g21038 on (row false false k204 7 5 4 3 [0,3,2]) using bank tags [61,2,8,61,2,8,61,2,8,61,2,8]
certRow g21040 on (row false false k204 7 5 4 3 [0,4,1]) using bank tags [61,2,8,61,2,8,61,2,8]
theorem g21042 : BadRow (row false false k204 7 5 4 3 [0,5,0]) := sparse_row false false k204 7 5 4 3 [0,5,0] (by decide)
certRow g21044 on (row false false k204 7 5 4 3 [1,0,4]) using bank tags [61,2,8,61,2,8,61,2,8,61,2,8,61,2,8,61,2,8]
certRow g21046 on (row false false k204 7 5 4 3 [1,1,3]) using bank tags [61,2,8,61,2,8,61,2,8]
certRow g21048 on (row false false k204 7 5 4 3 [1,2,2]) using bank tags [61,2,8,61,2,8]
certRow g21050 on (row false false k204 7 5 4 3 [1,3,1]) using bank tags [61,2,8,61,2,8]
certRow g21052 on (row false false k204 7 5 4 3 [1,4,0]) using bank tags [61,2,8]
certRow g21054 on (row false false k204 7 5 4 3 [2,0,3]) using bank tags [61,2,8,61,2,8,61,2,8,61,2,8]
certRow g21056 on (row false false k204 7 5 4 3 [2,1,2]) using bank tags [61,2,8,61,2,8,61,2,8]
certRow g21058 on (row false false k204 7 5 4 3 [2,2,1]) using bank tags [61,2,8,61,2,8]
certRow g21060 on (row false false k204 7 5 4 3 [2,3,0]) using bank tags [61,2,8]
certRow g21062 on (row false false k204 7 5 4 3 [3,0,2]) using bank tags [61,2,8,61,2,8,61,2,8,61,2,8]
certRow g21064 on (row false false k204 7 5 4 3 [3,1,1]) using bank tags [61,2,8,61,2,8]
certRow g21066 on (row false false k204 7 5 4 3 [3,2,0]) using bank tags [61,2,8]
certRow g21068 on (row false false k204 7 5 4 3 [4,0,1]) using bank tags [61,2,8,61,2,8]
certRow g21070 on (row false false k204 7 5 4 3 [4,1,0]) using bank tags [61,2,8]
theorem g21072 : BadRow (row false false k204 7 5 4 3 [5,0,0]) := sparse_row false false k204 7 5 4 3 [5,0,0] (by decide)
theorem g21074 : BadRow (row false false k205 7 5 4 4 [0,0,0,5]) := sparse_row false false k205 7 5 4 4 [0,0,0,5] (by decide)
end Blc.SelfintSingleObject.Compact45
