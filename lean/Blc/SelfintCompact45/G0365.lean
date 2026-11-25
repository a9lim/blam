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
certRow g19348 on (row false false k187 7 4 2 4 [2,1,1,0]) using bank tags [2,2,2,2,33,61,2,2,33,2,2,2,2,33,61,2,2,33,2,2,2,2,33,61,2,2,33]
certRow g19349 on (row false true k223 7 4 2 4 [2,1,1,0]) using bank tags [1,1,1,1,1,1]
certRow g19350 on (row false false k187 7 4 2 4 [2,2,0,0]) using bank tags []
certRow g19351 on (row false true k223 7 4 2 4 [2,2,0,0]) using bank tags []
certRow g19352 on (row false false k187 7 4 2 4 [3,0,0,1]) using bank tags []
certRow g19353 on (row false true k223 7 4 2 4 [3,0,0,1]) using bank tags []
certRow g19354 on (row false false k187 7 4 2 4 [3,0,1,0]) using bank tags []
certRow g19355 on (row false true k223 7 4 2 4 [3,0,1,0]) using bank tags []
certRow g19356 on (row false false k187 7 4 2 4 [3,1,0,0]) using bank tags []
certRow g19357 on (row false true k223 7 4 2 4 [3,1,0,0]) using bank tags []
theorem g19358 : BadRow (row false false k187 7 4 2 4 [4,0,0,0]) := sparse_row false false k187 7 4 2 4 [4,0,0,0] (by decide)
theorem g19359 : BadRow (row false true k223 7 4 2 4 [4,0,0,0]) := sparse_row false true k223 7 4 2 4 [4,0,0,0] (by decide)
theorem g19361 : BadRow (row false true k224 7 4 2 5 [0,0,0,0,4]) := sparse_row false true k224 7 4 2 5 [0,0,0,0,4] (by decide)
certRow g19363 on (row false true k224 7 4 2 5 [0,0,0,1,3]) using bank tags []
certRow g19365 on (row false true k224 7 4 2 5 [0,0,0,2,2]) using bank tags []
certRow g19367 on (row false true k224 7 4 2 5 [0,0,0,3,1]) using bank tags []
theorem g19369 : BadRow (row false true k224 7 4 2 5 [0,0,0,4,0]) := sparse_row false true k224 7 4 2 5 [0,0,0,4,0] (by decide)
certRow g19371 on (row false true k224 7 4 2 5 [0,0,1,0,3]) using bank tags []
certRow g19373 on (row false true k224 7 4 2 5 [0,0,1,1,2]) using bank tags []
certRow g19375 on (row false true k224 7 4 2 5 [0,0,1,2,1]) using bank tags [44]
certRow g19377 on (row false true k224 7 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g19379 on (row false true k224 7 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g19381 on (row false true k224 7 4 2 5 [0,0,2,1,1]) using bank tags [44]
certRow g19383 on (row false true k224 7 4 2 5 [0,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
