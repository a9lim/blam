import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data14
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g17323 on (row false true k170 6 7 3 5 [0,4,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,6,6,6,6,6]
certRow g17324 on (row false false k125 6 7 3 5 [0,4,2,1,0]) using bank tags []
certRow g17325 on (row false true k170 6 7 3 5 [0,4,2,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,6,6,6]
certRow g17326 on (row false false k125 6 7 3 5 [0,4,3,0,0]) using bank tags []
certRow g17327 on (row false true k170 6 7 3 5 [0,4,3,0,0]) using bank tags []
certRow g17328 on (row false false k125 6 7 3 5 [0,5,0,0,2]) using bank tags []
certRow g17329 on (row false true k170 6 7 3 5 [0,5,0,0,2]) using bank tags []
certRow g17330 on (row false false k125 6 7 3 5 [0,5,0,1,1]) using bank tags []
certRow g17331 on (row false true k170 6 7 3 5 [0,5,0,1,1]) using bank tags []
certRow g17332 on (row false false k125 6 7 3 5 [0,5,0,2,0]) using bank tags []
certRow g17333 on (row false true k170 6 7 3 5 [0,5,0,2,0]) using bank tags []
certRow g17334 on (row false false k125 6 7 3 5 [0,5,1,0,1]) using bank tags []
certRow g17335 on (row false true k170 6 7 3 5 [0,5,1,0,1]) using bank tags []
certRow g17336 on (row false false k125 6 7 3 5 [0,5,1,1,0]) using bank tags []
certRow g17337 on (row false true k170 6 7 3 5 [0,5,1,1,0]) using bank tags []
certRow g17338 on (row false false k125 6 7 3 5 [0,5,2,0,0]) using bank tags []
certRow g17339 on (row false true k170 6 7 3 5 [0,5,2,0,0]) using bank tags []
certRow g17340 on (row false false k125 6 7 3 5 [0,6,0,0,1]) using bank tags []
certRow g17341 on (row false true k170 6 7 3 5 [0,6,0,0,1]) using bank tags []
certRow g17342 on (row false false k125 6 7 3 5 [0,6,0,1,0]) using bank tags []
certRow g17343 on (row false true k170 6 7 3 5 [0,6,0,1,0]) using bank tags []
certRow g17344 on (row false false k125 6 7 3 5 [0,6,1,0,0]) using bank tags []
certRow g17345 on (row false true k170 6 7 3 5 [0,6,1,0,0]) using bank tags []
theorem g17346 : BadRow (row false false k125 6 7 3 5 [0,7,0,0,0]) := sparse_row false false k125 6 7 3 5 [0,7,0,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
