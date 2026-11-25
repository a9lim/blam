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
certRow g23280 on (row false false k287 5 4 2 6 [0,0,3,0,0,1]) using bank tags []
certRow g23281 on (row false true k311 5 4 2 6 [0,0,3,0,0,1]) using bank tags []
certRow g23282 on (row false false k287 5 4 2 6 [0,0,3,0,1,0]) using bank tags []
certRow g23283 on (row false true k311 5 4 2 6 [0,0,3,0,1,0]) using bank tags []
certRow g23284 on (row false false k287 5 4 2 6 [0,0,3,1,0,0]) using bank tags []
certRow g23285 on (row false true k311 5 4 2 6 [0,0,3,1,0,0]) using bank tags []
theorem g23286 : BadRow (row false false k287 5 4 2 6 [0,0,4,0,0,0]) := sparse_row false false k287 5 4 2 6 [0,0,4,0,0,0] (by decide)
theorem g23287 : BadRow (row false true k311 5 4 2 6 [0,0,4,0,0,0]) := sparse_row false true k311 5 4 2 6 [0,0,4,0,0,0] (by decide)
certRow g23288 on (row false false k287 5 4 2 6 [0,1,0,0,0,3]) using bank tags []
certRow g23289 on (row false true k311 5 4 2 6 [0,1,0,0,0,3]) using bank tags []
certRow g23290 on (row false false k287 5 4 2 6 [0,1,0,0,1,2]) using bank tags []
certRow g23291 on (row false true k311 5 4 2 6 [0,1,0,0,1,2]) using bank tags []
certRow g23292 on (row false false k287 5 4 2 6 [0,1,0,0,2,1]) using bank tags []
certRow g23293 on (row false true k311 5 4 2 6 [0,1,0,0,2,1]) using bank tags []
certRow g23294 on (row false false k287 5 4 2 6 [0,1,0,0,3,0]) using bank tags []
certRow g23295 on (row false true k311 5 4 2 6 [0,1,0,0,3,0]) using bank tags []
certRow g23296 on (row false false k287 5 4 2 6 [0,1,0,1,0,2]) using bank tags []
certRow g23297 on (row false true k311 5 4 2 6 [0,1,0,1,0,2]) using bank tags []
theorem g23298 : BadRow (row false false k287 5 4 2 6 [0,1,0,1,1,1]) := sparse_row false false k287 5 4 2 6 [0,1,0,1,1,1] (by decide)
theorem g23299 : BadRow (row false true k311 5 4 2 6 [0,1,0,1,1,1]) := sparse_row false true k311 5 4 2 6 [0,1,0,1,1,1] (by decide)
certRow g23300 on (row false false k287 5 4 2 6 [0,1,0,1,2,0]) using bank tags []
certRow g23301 on (row false true k311 5 4 2 6 [0,1,0,1,2,0]) using bank tags []
certRow g23302 on (row false false k287 5 4 2 6 [0,1,0,2,0,1]) using bank tags []
certRow g23303 on (row false true k311 5 4 2 6 [0,1,0,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
