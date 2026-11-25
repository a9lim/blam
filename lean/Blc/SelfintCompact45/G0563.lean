import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data20
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g22085 on (row false true k266 8 3 3 5 [1,0,2,0,0]) using bank tags []
theorem g22086 : BadRow (row false false k251 8 3 3 5 [1,1,0,0,1]) := sparse_row false false k251 8 3 3 5 [1,1,0,0,1] (by decide)
theorem g22087 : BadRow (row false true k266 8 3 3 5 [1,1,0,0,1]) := sparse_row false true k266 8 3 3 5 [1,1,0,0,1] (by decide)
theorem g22088 : BadRow (row false false k251 8 3 3 5 [1,1,0,1,0]) := sparse_row false false k251 8 3 3 5 [1,1,0,1,0] (by decide)
theorem g22089 : BadRow (row false true k266 8 3 3 5 [1,1,0,1,0]) := sparse_row false true k266 8 3 3 5 [1,1,0,1,0] (by decide)
theorem g22090 : BadRow (row false false k251 8 3 3 5 [1,1,1,0,0]) := sparse_row false false k251 8 3 3 5 [1,1,1,0,0] (by decide)
theorem g22091 : BadRow (row false true k266 8 3 3 5 [1,1,1,0,0]) := sparse_row false true k266 8 3 3 5 [1,1,1,0,0] (by decide)
certRow g22092 on (row false false k251 8 3 3 5 [1,2,0,0,0]) using bank tags []
certRow g22093 on (row false true k266 8 3 3 5 [1,2,0,0,0]) using bank tags []
certRow g22094 on (row false false k251 8 3 3 5 [2,0,0,0,1]) using bank tags []
certRow g22095 on (row false true k266 8 3 3 5 [2,0,0,0,1]) using bank tags []
certRow g22096 on (row false false k251 8 3 3 5 [2,0,0,1,0]) using bank tags []
certRow g22097 on (row false true k266 8 3 3 5 [2,0,0,1,0]) using bank tags []
certRow g22098 on (row false false k251 8 3 3 5 [2,0,1,0,0]) using bank tags []
certRow g22099 on (row false true k266 8 3 3 5 [2,0,1,0,0]) using bank tags []
certRow g22100 on (row false false k251 8 3 3 5 [2,1,0,0,0]) using bank tags []
certRow g22101 on (row false true k266 8 3 3 5 [2,1,0,0,0]) using bank tags []
theorem g22102 : BadRow (row false false k251 8 3 3 5 [3,0,0,0,0]) := sparse_row false false k251 8 3 3 5 [3,0,0,0,0] (by decide)
theorem g22103 : BadRow (row false true k266 8 3 3 5 [3,0,0,0,0]) := sparse_row false true k266 8 3 3 5 [3,0,0,0,0] (by decide)
theorem g22104 : BadRow (row false false k252 8 3 4 3 [0,0,3]) := sparse_row false false k252 8 3 4 3 [0,0,3] (by decide)
certRow g22106 on (row false false k252 8 3 4 3 [0,1,2]) using bank tags [61,6]
certRow g22108 on (row false false k252 8 3 4 3 [0,2,1]) using bank tags [61,6]
theorem g22110 : BadRow (row false false k252 8 3 4 3 [0,3,0]) := sparse_row false false k252 8 3 4 3 [0,3,0] (by decide)
certRow g22112 on (row false false k252 8 3 4 3 [1,0,2]) using bank tags [61,6,61,6]
end Blc.SelfintSingleObject.Compact45
