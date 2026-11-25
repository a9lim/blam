import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data20
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g22037 on (row false true k266 8 3 3 5 [0,0,0,1,2]) using bank tags []
certRow g22038 on (row false false k251 8 3 3 5 [0,0,0,2,1]) using bank tags [44,6,6,44]
certRow g22039 on (row false true k266 8 3 3 5 [0,0,0,2,1]) using bank tags []
theorem g22040 : BadRow (row false false k251 8 3 3 5 [0,0,0,3,0]) := sparse_row false false k251 8 3 3 5 [0,0,0,3,0] (by decide)
theorem g22041 : BadRow (row false true k266 8 3 3 5 [0,0,0,3,0]) := sparse_row false true k266 8 3 3 5 [0,0,0,3,0] (by decide)
certRow g22042 on (row false false k251 8 3 3 5 [0,0,1,0,2]) using bank tags [44,44,6,6,6,6,44,44]
certRow g22043 on (row false true k266 8 3 3 5 [0,0,1,0,2]) using bank tags []
theorem g22044 : BadRow (row false false k251 8 3 3 5 [0,0,1,1,1]) := sparse_row false false k251 8 3 3 5 [0,0,1,1,1] (by decide)
theorem g22045 : BadRow (row false true k266 8 3 3 5 [0,0,1,1,1]) := sparse_row false true k266 8 3 3 5 [0,0,1,1,1] (by decide)
certRow g22046 on (row false false k251 8 3 3 5 [0,0,1,2,0]) using bank tags [44,44,6,6,44,44,6]
certRow g22047 on (row false true k266 8 3 3 5 [0,0,1,2,0]) using bank tags []
certRow g22048 on (row false false k251 8 3 3 5 [0,0,2,0,1]) using bank tags [44,44,6,6,6,6,44,44]
certRow g22049 on (row false true k266 8 3 3 5 [0,0,2,0,1]) using bank tags []
certRow g22050 on (row false false k251 8 3 3 5 [0,0,2,1,0]) using bank tags [44,44,6,6,44,44,6]
certRow g22051 on (row false true k266 8 3 3 5 [0,0,2,1,0]) using bank tags []
theorem g22052 : BadRow (row false false k251 8 3 3 5 [0,0,3,0,0]) := sparse_row false false k251 8 3 3 5 [0,0,3,0,0] (by decide)
theorem g22053 : BadRow (row false true k266 8 3 3 5 [0,0,3,0,0]) := sparse_row false true k266 8 3 3 5 [0,0,3,0,0] (by decide)
certRow g22054 on (row false false k251 8 3 3 5 [0,1,0,0,2]) using bank tags [44,44,44,44,44]
certRow g22055 on (row false true k266 8 3 3 5 [0,1,0,0,2]) using bank tags []
theorem g22056 : BadRow (row false false k251 8 3 3 5 [0,1,0,1,1]) := sparse_row false false k251 8 3 3 5 [0,1,0,1,1] (by decide)
theorem g22057 : BadRow (row false true k266 8 3 3 5 [0,1,0,1,1]) := sparse_row false true k266 8 3 3 5 [0,1,0,1,1] (by decide)
certRow g22058 on (row false false k251 8 3 3 5 [0,1,0,2,0]) using bank tags [44,44,44,44,44,44,44,44,6,6]
certRow g22059 on (row false true k266 8 3 3 5 [0,1,0,2,0]) using bank tags []
theorem g22060 : BadRow (row false false k251 8 3 3 5 [0,1,1,0,1]) := sparse_row false false k251 8 3 3 5 [0,1,1,0,1] (by decide)
end Blc.SelfintSingleObject.Compact45
