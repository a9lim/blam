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
theorem g22061 : BadRow (row false true k266 8 3 3 5 [0,1,1,0,1]) := sparse_row false true k266 8 3 3 5 [0,1,1,0,1] (by decide)
theorem g22062 : BadRow (row false false k251 8 3 3 5 [0,1,1,1,0]) := sparse_row false false k251 8 3 3 5 [0,1,1,1,0] (by decide)
theorem g22063 : BadRow (row false true k266 8 3 3 5 [0,1,1,1,0]) := sparse_row false true k266 8 3 3 5 [0,1,1,1,0] (by decide)
certRow g22064 on (row false false k251 8 3 3 5 [0,1,2,0,0]) using bank tags [44,44,44,44,44,6]
certRow g22065 on (row false true k266 8 3 3 5 [0,1,2,0,0]) using bank tags []
certRow g22066 on (row false false k251 8 3 3 5 [0,2,0,0,1]) using bank tags [44,44,44,44,44]
certRow g22067 on (row false true k266 8 3 3 5 [0,2,0,0,1]) using bank tags []
certRow g22068 on (row false false k251 8 3 3 5 [0,2,0,1,0]) using bank tags [44,44,44,44,44,44,44,44,6,6]
certRow g22069 on (row false true k266 8 3 3 5 [0,2,0,1,0]) using bank tags []
certRow g22070 on (row false false k251 8 3 3 5 [0,2,1,0,0]) using bank tags [44,44,44,44,44,6]
certRow g22071 on (row false true k266 8 3 3 5 [0,2,1,0,0]) using bank tags []
theorem g22072 : BadRow (row false false k251 8 3 3 5 [0,3,0,0,0]) := sparse_row false false k251 8 3 3 5 [0,3,0,0,0] (by decide)
theorem g22073 : BadRow (row false true k266 8 3 3 5 [0,3,0,0,0]) := sparse_row false true k266 8 3 3 5 [0,3,0,0,0] (by decide)
certRow g22074 on (row false false k251 8 3 3 5 [1,0,0,0,2]) using bank tags []
certRow g22075 on (row false true k266 8 3 3 5 [1,0,0,0,2]) using bank tags []
theorem g22076 : BadRow (row false false k251 8 3 3 5 [1,0,0,1,1]) := sparse_row false false k251 8 3 3 5 [1,0,0,1,1] (by decide)
theorem g22077 : BadRow (row false true k266 8 3 3 5 [1,0,0,1,1]) := sparse_row false true k266 8 3 3 5 [1,0,0,1,1] (by decide)
certRow g22078 on (row false false k251 8 3 3 5 [1,0,0,2,0]) using bank tags []
certRow g22079 on (row false true k266 8 3 3 5 [1,0,0,2,0]) using bank tags []
theorem g22080 : BadRow (row false false k251 8 3 3 5 [1,0,1,0,1]) := sparse_row false false k251 8 3 3 5 [1,0,1,0,1] (by decide)
theorem g22081 : BadRow (row false true k266 8 3 3 5 [1,0,1,0,1]) := sparse_row false true k266 8 3 3 5 [1,0,1,0,1] (by decide)
theorem g22082 : BadRow (row false false k251 8 3 3 5 [1,0,1,1,0]) := sparse_row false false k251 8 3 3 5 [1,0,1,1,0] (by decide)
theorem g22083 : BadRow (row false true k266 8 3 3 5 [1,0,1,1,0]) := sparse_row false true k266 8 3 3 5 [1,0,1,1,0] (by decide)
certRow g22084 on (row false false k251 8 3 3 5 [1,0,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
