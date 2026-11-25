import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g18946 on (row false false k179 7 3 3 5 [0,0,2,1,0]) using bank tags [2,2,25,2,2,2,2,2,2,2,2,2,2,25,2,2,3,3,3,3,44,3,44,44,3,44,3,9,3,6,33,9,6,25,44,33,44,44,3,44,2,33,6]
certRow g18947 on (row false true k215 7 3 3 5 [0,0,2,1,0]) using bank tags []
theorem g18948 : BadRow (row false false k179 7 3 3 5 [0,0,3,0,0]) := sparse_row false false k179 7 3 3 5 [0,0,3,0,0] (by decide)
theorem g18949 : BadRow (row false true k215 7 3 3 5 [0,0,3,0,0]) := sparse_row false true k215 7 3 3 5 [0,0,3,0,0] (by decide)
certRow g18950 on (row false false k179 7 3 3 5 [0,1,0,0,2]) using bank tags [2,2,2,2,2,2,2,2,1,2,2,2,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44]
certRow g18951 on (row false true k215 7 3 3 5 [0,1,0,0,2]) using bank tags []
theorem g18952 : BadRow (row false false k179 7 3 3 5 [0,1,0,1,1]) := sparse_row false false k179 7 3 3 5 [0,1,0,1,1] (by decide)
theorem g18953 : BadRow (row false true k215 7 3 3 5 [0,1,0,1,1]) := sparse_row false true k215 7 3 3 5 [0,1,0,1,1] (by decide)
certRow g18954 on (row false false k179 7 3 3 5 [0,1,0,2,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,2,33,6,2,33,6]
certRow g18955 on (row false true k215 7 3 3 5 [0,1,0,2,0]) using bank tags []
theorem g18956 : BadRow (row false false k179 7 3 3 5 [0,1,1,0,1]) := sparse_row false false k179 7 3 3 5 [0,1,1,0,1] (by decide)
theorem g18957 : BadRow (row false true k215 7 3 3 5 [0,1,1,0,1]) := sparse_row false true k215 7 3 3 5 [0,1,1,0,1] (by decide)
theorem g18958 : BadRow (row false false k179 7 3 3 5 [0,1,1,1,0]) := sparse_row false false k179 7 3 3 5 [0,1,1,1,0] (by decide)
theorem g18959 : BadRow (row false true k215 7 3 3 5 [0,1,1,1,0]) := sparse_row false true k215 7 3 3 5 [0,1,1,1,0] (by decide)
certRow g18960 on (row false false k179 7 3 3 5 [0,1,2,0,0]) using bank tags [2,2,2,2,5,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,2,33,6]
certRow g18961 on (row false true k215 7 3 3 5 [0,1,2,0,0]) using bank tags []
certRow g18962 on (row false false k179 7 3 3 5 [0,2,0,0,1]) using bank tags [2,2,2,2,2,2,2,2,5,2,2,2,20,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44]
certRow g18963 on (row false true k215 7 3 3 5 [0,2,0,0,1]) using bank tags []
certRow g18964 on (row false false k179 7 3 3 5 [0,2,0,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,44,3,44,2,33,6,2,33,6]
certRow g18965 on (row false true k215 7 3 3 5 [0,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
