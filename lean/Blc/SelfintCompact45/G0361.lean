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
certRow g19262 on (row false false k186 7 4 2 3 [0,1,3]) using bank tags []
certRow g19264 on (row false false k186 7 4 2 3 [0,2,2]) using bank tags []
certRow g19266 on (row false false k186 7 4 2 3 [0,3,1]) using bank tags []
theorem g19268 : BadRow (row false false k186 7 4 2 3 [0,4,0]) := sparse_row false false k186 7 4 2 3 [0,4,0] (by decide)
certRow g19270 on (row false false k186 7 4 2 3 [1,0,3]) using bank tags []
certRow g19272 on (row false false k186 7 4 2 3 [1,1,2]) using bank tags []
certRow g19274 on (row false false k186 7 4 2 3 [1,2,1]) using bank tags []
certRow g19276 on (row false false k186 7 4 2 3 [1,3,0]) using bank tags []
certRow g19278 on (row false false k186 7 4 2 3 [2,0,2]) using bank tags []
certRow g19280 on (row false false k186 7 4 2 3 [2,1,1]) using bank tags []
certRow g19282 on (row false false k186 7 4 2 3 [2,2,0]) using bank tags []
certRow g19284 on (row false false k186 7 4 2 3 [3,0,1]) using bank tags []
certRow g19286 on (row false false k186 7 4 2 3 [3,1,0]) using bank tags []
theorem g19288 : BadRow (row false false k186 7 4 2 3 [4,0,0]) := sparse_row false false k186 7 4 2 3 [4,0,0] (by decide)
theorem g19290 : BadRow (row false false k187 7 4 2 4 [0,0,0,4]) := sparse_row false false k187 7 4 2 4 [0,0,0,4] (by decide)
theorem g19291 : BadRow (row false true k223 7 4 2 4 [0,0,0,4]) := sparse_row false true k223 7 4 2 4 [0,0,0,4] (by decide)
certRow g19292 on (row false false k187 7 4 2 4 [0,0,1,3]) using bank tags []
certRow g19293 on (row false true k223 7 4 2 4 [0,0,1,3]) using bank tags []
certRow g19294 on (row false false k187 7 4 2 4 [0,0,2,2]) using bank tags []
certRow g19295 on (row false true k223 7 4 2 4 [0,0,2,2]) using bank tags []
certRow g19296 on (row false false k187 7 4 2 4 [0,0,3,1]) using bank tags []
certRow g19297 on (row false true k223 7 4 2 4 [0,0,3,1]) using bank tags []
theorem g19298 : BadRow (row false false k187 7 4 2 4 [0,0,4,0]) := sparse_row false false k187 7 4 2 4 [0,0,4,0] (by decide)
theorem g19299 : BadRow (row false true k223 7 4 2 4 [0,0,4,0]) := sparse_row false true k223 7 4 2 4 [0,0,4,0] (by decide)
end Blc.SelfintSingleObject.Compact45
