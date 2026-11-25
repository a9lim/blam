import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19433 on (row false true k224 7 4 2 5 [1,0,0,1,2]) using bank tags [44,44]
certRow g19435 on (row false true k224 7 4 2 5 [1,0,0,2,1]) using bank tags [44,44]
certRow g19437 on (row false true k224 7 4 2 5 [1,0,0,3,0]) using bank tags []
certRow g19439 on (row false true k224 7 4 2 5 [1,0,1,0,2]) using bank tags [44,44,44,44]
theorem g19441 : BadRow (row false true k224 7 4 2 5 [1,0,1,1,1]) := sparse_row false true k224 7 4 2 5 [1,0,1,1,1] (by decide)
certRow g19443 on (row false true k224 7 4 2 5 [1,0,1,2,0]) using bank tags [44,44,44]
certRow g19445 on (row false true k224 7 4 2 5 [1,0,2,0,1]) using bank tags [44,44,44,44]
certRow g19447 on (row false true k224 7 4 2 5 [1,0,2,1,0]) using bank tags [44,44,44]
certRow g19449 on (row false true k224 7 4 2 5 [1,0,3,0,0]) using bank tags []
certRow g19451 on (row false true k224 7 4 2 5 [1,1,0,0,2]) using bank tags []
theorem g19453 : BadRow (row false true k224 7 4 2 5 [1,1,0,1,1]) := sparse_row false true k224 7 4 2 5 [1,1,0,1,1] (by decide)
certRow g19455 on (row false true k224 7 4 2 5 [1,1,0,2,0]) using bank tags [44,44]
theorem g19457 : BadRow (row false true k224 7 4 2 5 [1,1,1,0,1]) := sparse_row false true k224 7 4 2 5 [1,1,1,0,1] (by decide)
theorem g19459 : BadRow (row false true k224 7 4 2 5 [1,1,1,1,0]) := sparse_row false true k224 7 4 2 5 [1,1,1,1,0] (by decide)
certRow g19461 on (row false true k224 7 4 2 5 [1,1,2,0,0]) using bank tags [44]
certRow g19463 on (row false true k224 7 4 2 5 [1,2,0,0,1]) using bank tags []
certRow g19465 on (row false true k224 7 4 2 5 [1,2,0,1,0]) using bank tags [44,44]
certRow g19467 on (row false true k224 7 4 2 5 [1,2,1,0,0]) using bank tags [44]
certRow g19469 on (row false true k224 7 4 2 5 [1,3,0,0,0]) using bank tags []
certRow g19471 on (row false true k224 7 4 2 5 [2,0,0,0,2]) using bank tags []
certRow g19473 on (row false true k224 7 4 2 5 [2,0,0,1,1]) using bank tags []
certRow g19475 on (row false true k224 7 4 2 5 [2,0,0,2,0]) using bank tags []
certRow g19477 on (row false true k224 7 4 2 5 [2,0,1,0,1]) using bank tags []
certRow g19479 on (row false true k224 7 4 2 5 [2,0,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
