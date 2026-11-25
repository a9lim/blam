import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24509 on (row false true k319 5 5 2 6 [0,1,0,4,0,0]) using bank tags []
certRow g24510 on (row false false k295 5 5 2 6 [0,1,1,0,0,3]) using bank tags []
certRow g24511 on (row false true k319 5 5 2 6 [0,1,1,0,0,3]) using bank tags []
certRow g24512 on (row false false k295 5 5 2 6 [0,1,1,0,1,2]) using bank tags []
certRow g24513 on (row false true k319 5 5 2 6 [0,1,1,0,1,2]) using bank tags [1,1,1,1,1,44,1,1,1,1,1,1,1,1,44,1,9,9,9]
certRow g24514 on (row false false k295 5 5 2 6 [0,1,1,0,2,1]) using bank tags []
certRow g24515 on (row false true k319 5 5 2 6 [0,1,1,0,2,1]) using bank tags [1,1,1,1,1,44,1,1,1,1,1,1,1,1,1,1,44,1,9,9,9,20,20,8,20,8,8,8,8,8,1,1,9,9]
certRow g24516 on (row false false k295 5 5 2 6 [0,1,1,0,3,0]) using bank tags []
certRow g24517 on (row false true k319 5 5 2 6 [0,1,1,0,3,0]) using bank tags []
certRow g24518 on (row false false k295 5 5 2 6 [0,1,1,1,0,2]) using bank tags []
certRow g24519 on (row false true k319 5 5 2 6 [0,1,1,1,0,2]) using bank tags [1,1,1,1,1,44,1,44,1,1,1,1,1,1,1,1,1,1,44,1,44,1,9,9,9,9,9,9]
theorem g24520 : BadRow (row false false k295 5 5 2 6 [0,1,1,1,1,1]) := sparse_row false false k295 5 5 2 6 [0,1,1,1,1,1] (by decide)
theorem g24521 : BadRow (row false true k319 5 5 2 6 [0,1,1,1,1,1]) := sparse_row false true k319 5 5 2 6 [0,1,1,1,1,1] (by decide)
certRow g24522 on (row false false k295 5 5 2 6 [0,1,1,1,2,0]) using bank tags []
certRow g24523 on (row false true k319 5 5 2 6 [0,1,1,1,2,0]) using bank tags [1,1,1,44,1,1,1,1,1,1,44,1,9,9,9]
certRow g24524 on (row false false k295 5 5 2 6 [0,1,1,2,0,1]) using bank tags []
certRow g24525 on (row false true k319 5 5 2 6 [0,1,1,2,0,1]) using bank tags [1,1,1,1,1,44,1,44,1,1,1,1,1,1,1,1,1,1,1,44,1,44,1,9,9,9,9,9,9,40,30,40,20,8,8,8,8,1,9]
certRow g24526 on (row false false k295 5 5 2 6 [0,1,1,2,1,0]) using bank tags []
certRow g24527 on (row false true k319 5 5 2 6 [0,1,1,2,1,0]) using bank tags [1,1,1,44,1,1,1,1,1,1,44,1,9,9,9,1,1,1]
certRow g24528 on (row false false k295 5 5 2 6 [0,1,1,3,0,0]) using bank tags []
certRow g24529 on (row false true k319 5 5 2 6 [0,1,1,3,0,0]) using bank tags []
certRow g24530 on (row false false k295 5 5 2 6 [0,1,2,0,0,2]) using bank tags []
certRow g24531 on (row false true k319 5 5 2 6 [0,1,2,0,0,2]) using bank tags [2,2,2,2,2]
certRow g24532 on (row false false k295 5 5 2 6 [0,1,2,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
