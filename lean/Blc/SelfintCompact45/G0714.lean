import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23208 on (row false false k286 5 4 2 5 [3,0,0,0,1]) using bank tags []
certRow g23209 on (row false true k310 5 4 2 5 [3,0,0,0,1]) using bank tags []
certRow g23210 on (row false false k286 5 4 2 5 [3,0,0,1,0]) using bank tags []
certRow g23211 on (row false true k310 5 4 2 5 [3,0,0,1,0]) using bank tags []
certRow g23212 on (row false false k286 5 4 2 5 [3,0,1,0,0]) using bank tags []
certRow g23213 on (row false true k310 5 4 2 5 [3,0,1,0,0]) using bank tags []
certRow g23214 on (row false false k286 5 4 2 5 [3,1,0,0,0]) using bank tags []
certRow g23215 on (row false true k310 5 4 2 5 [3,1,0,0,0]) using bank tags []
theorem g23216 : BadRow (row false false k286 5 4 2 5 [4,0,0,0,0]) := sparse_row false false k286 5 4 2 5 [4,0,0,0,0] (by decide)
theorem g23217 : BadRow (row false true k310 5 4 2 5 [4,0,0,0,0]) := sparse_row false true k310 5 4 2 5 [4,0,0,0,0] (by decide)
theorem g23218 : BadRow (row false false k287 5 4 2 6 [0,0,0,0,0,4]) := sparse_row false false k287 5 4 2 6 [0,0,0,0,0,4] (by decide)
theorem g23219 : BadRow (row false true k311 5 4 2 6 [0,0,0,0,0,4]) := sparse_row false true k311 5 4 2 6 [0,0,0,0,0,4] (by decide)
certRow g23220 on (row false false k287 5 4 2 6 [0,0,0,0,1,3]) using bank tags []
certRow g23221 on (row false true k311 5 4 2 6 [0,0,0,0,1,3]) using bank tags []
certRow g23222 on (row false false k287 5 4 2 6 [0,0,0,0,2,2]) using bank tags []
certRow g23223 on (row false true k311 5 4 2 6 [0,0,0,0,2,2]) using bank tags []
certRow g23224 on (row false false k287 5 4 2 6 [0,0,0,0,3,1]) using bank tags []
certRow g23225 on (row false true k311 5 4 2 6 [0,0,0,0,3,1]) using bank tags []
theorem g23226 : BadRow (row false false k287 5 4 2 6 [0,0,0,0,4,0]) := sparse_row false false k287 5 4 2 6 [0,0,0,0,4,0] (by decide)
theorem g23227 : BadRow (row false true k311 5 4 2 6 [0,0,0,0,4,0]) := sparse_row false true k311 5 4 2 6 [0,0,0,0,4,0] (by decide)
certRow g23228 on (row false false k287 5 4 2 6 [0,0,0,1,0,3]) using bank tags []
certRow g23229 on (row false true k311 5 4 2 6 [0,0,0,1,0,3]) using bank tags []
certRow g23230 on (row false false k287 5 4 2 6 [0,0,0,1,1,2]) using bank tags []
certRow g23231 on (row false true k311 5 4 2 6 [0,0,0,1,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
