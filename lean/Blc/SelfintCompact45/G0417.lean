import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g20373 : BadRow (row false true k235 7 5 2 4 [5,0,0,0]) := sparse_row false true k235 7 5 2 4 [5,0,0,0] (by decide)
theorem g20375 : BadRow (row false true k236 7 5 2 5 [0,0,0,0,5]) := sparse_row false true k236 7 5 2 5 [0,0,0,0,5] (by decide)
certRow g20377 on (row false true k236 7 5 2 5 [0,0,0,1,4]) using bank tags []
certRow g20379 on (row false true k236 7 5 2 5 [0,0,0,2,3]) using bank tags []
certRow g20381 on (row false true k236 7 5 2 5 [0,0,0,3,2]) using bank tags []
certRow g20383 on (row false true k236 7 5 2 5 [0,0,0,4,1]) using bank tags []
theorem g20385 : BadRow (row false true k236 7 5 2 5 [0,0,0,5,0]) := sparse_row false true k236 7 5 2 5 [0,0,0,5,0] (by decide)
certRow g20387 on (row false true k236 7 5 2 5 [0,0,1,0,4]) using bank tags []
certRow g20389 on (row false true k236 7 5 2 5 [0,0,1,1,3]) using bank tags []
certRow g20391 on (row false true k236 7 5 2 5 [0,0,1,2,2]) using bank tags []
certRow g20393 on (row false true k236 7 5 2 5 [0,0,1,3,1]) using bank tags []
certRow g20395 on (row false true k236 7 5 2 5 [0,0,1,4,0]) using bank tags []
certRow g20397 on (row false true k236 7 5 2 5 [0,0,2,0,3]) using bank tags []
certRow g20399 on (row false true k236 7 5 2 5 [0,0,2,1,2]) using bank tags []
certRow g20401 on (row false true k236 7 5 2 5 [0,0,2,2,1]) using bank tags []
certRow g20403 on (row false true k236 7 5 2 5 [0,0,2,3,0]) using bank tags []
certRow g20405 on (row false true k236 7 5 2 5 [0,0,3,0,2]) using bank tags []
certRow g20407 on (row false true k236 7 5 2 5 [0,0,3,1,1]) using bank tags []
certRow g20409 on (row false true k236 7 5 2 5 [0,0,3,2,0]) using bank tags []
certRow g20411 on (row false true k236 7 5 2 5 [0,0,4,0,1]) using bank tags []
certRow g20413 on (row false true k236 7 5 2 5 [0,0,4,1,0]) using bank tags []
theorem g20415 : BadRow (row false true k236 7 5 2 5 [0,0,5,0,0]) := sparse_row false true k236 7 5 2 5 [0,0,5,0,0] (by decide)
certRow g20417 on (row false true k236 7 5 2 5 [0,1,0,0,4]) using bank tags []
certRow g20419 on (row false true k236 7 5 2 5 [0,1,0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
