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
certRow g24461 on (row false true k319 5 5 2 6 [0,0,3,0,0,2]) using bank tags []
certRow g24462 on (row false false k295 5 5 2 6 [0,0,3,0,1,1]) using bank tags []
certRow g24463 on (row false true k319 5 5 2 6 [0,0,3,0,1,1]) using bank tags []
certRow g24464 on (row false false k295 5 5 2 6 [0,0,3,0,2,0]) using bank tags []
certRow g24465 on (row false true k319 5 5 2 6 [0,0,3,0,2,0]) using bank tags []
certRow g24466 on (row false false k295 5 5 2 6 [0,0,3,1,0,1]) using bank tags []
certRow g24467 on (row false true k319 5 5 2 6 [0,0,3,1,0,1]) using bank tags []
certRow g24468 on (row false false k295 5 5 2 6 [0,0,3,1,1,0]) using bank tags []
certRow g24469 on (row false true k319 5 5 2 6 [0,0,3,1,1,0]) using bank tags []
certRow g24470 on (row false false k295 5 5 2 6 [0,0,3,2,0,0]) using bank tags []
certRow g24471 on (row false true k319 5 5 2 6 [0,0,3,2,0,0]) using bank tags []
certRow g24472 on (row false false k295 5 5 2 6 [0,0,4,0,0,1]) using bank tags []
certRow g24473 on (row false true k319 5 5 2 6 [0,0,4,0,0,1]) using bank tags []
certRow g24474 on (row false false k295 5 5 2 6 [0,0,4,0,1,0]) using bank tags []
certRow g24475 on (row false true k319 5 5 2 6 [0,0,4,0,1,0]) using bank tags []
certRow g24476 on (row false false k295 5 5 2 6 [0,0,4,1,0,0]) using bank tags []
certRow g24477 on (row false true k319 5 5 2 6 [0,0,4,1,0,0]) using bank tags []
theorem g24478 : BadRow (row false false k295 5 5 2 6 [0,0,5,0,0,0]) := sparse_row false false k295 5 5 2 6 [0,0,5,0,0,0] (by decide)
theorem g24479 : BadRow (row false true k319 5 5 2 6 [0,0,5,0,0,0]) := sparse_row false true k319 5 5 2 6 [0,0,5,0,0,0] (by decide)
certRow g24480 on (row false false k295 5 5 2 6 [0,1,0,0,0,4]) using bank tags []
certRow g24481 on (row false true k319 5 5 2 6 [0,1,0,0,0,4]) using bank tags []
certRow g24482 on (row false false k295 5 5 2 6 [0,1,0,0,1,3]) using bank tags []
certRow g24483 on (row false true k319 5 5 2 6 [0,1,0,0,1,3]) using bank tags []
certRow g24484 on (row false false k295 5 5 2 6 [0,1,0,0,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
