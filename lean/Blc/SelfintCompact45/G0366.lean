import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19385 on (row false true k224 7 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g19387 on (row false true k224 7 4 2 5 [0,0,3,1,0]) using bank tags []
theorem g19389 : BadRow (row false true k224 7 4 2 5 [0,0,4,0,0]) := sparse_row false true k224 7 4 2 5 [0,0,4,0,0] (by decide)
certRow g19391 on (row false true k224 7 4 2 5 [0,1,0,0,3]) using bank tags []
certRow g19393 on (row false true k224 7 4 2 5 [0,1,0,1,2]) using bank tags [44,44]
certRow g19395 on (row false true k224 7 4 2 5 [0,1,0,2,1]) using bank tags [44,44,44,44]
certRow g19397 on (row false true k224 7 4 2 5 [0,1,0,3,0]) using bank tags []
certRow g19399 on (row false true k224 7 4 2 5 [0,1,1,0,2]) using bank tags [44,44,44,44]
theorem g19401 : BadRow (row false true k224 7 4 2 5 [0,1,1,1,1]) := sparse_row false true k224 7 4 2 5 [0,1,1,1,1] (by decide)
certRow g19403 on (row false true k224 7 4 2 5 [0,1,1,2,0]) using bank tags [44,44]
certRow g19405 on (row false true k224 7 4 2 5 [0,1,2,0,1]) using bank tags [44,44,44,44,44]
certRow g19407 on (row false true k224 7 4 2 5 [0,1,2,1,0]) using bank tags [44,44]
certRow g19409 on (row false true k224 7 4 2 5 [0,1,3,0,0]) using bank tags []
certRow g19411 on (row false true k224 7 4 2 5 [0,2,0,0,2]) using bank tags []
certRow g19413 on (row false true k224 7 4 2 5 [0,2,0,1,1]) using bank tags [44,44]
certRow g19415 on (row false true k224 7 4 2 5 [0,2,0,2,0]) using bank tags []
certRow g19417 on (row false true k224 7 4 2 5 [0,2,1,0,1]) using bank tags [44]
certRow g19419 on (row false true k224 7 4 2 5 [0,2,1,1,0]) using bank tags []
certRow g19421 on (row false true k224 7 4 2 5 [0,2,2,0,0]) using bank tags []
certRow g19423 on (row false true k224 7 4 2 5 [0,3,0,0,1]) using bank tags []
certRow g19425 on (row false true k224 7 4 2 5 [0,3,0,1,0]) using bank tags []
certRow g19427 on (row false true k224 7 4 2 5 [0,3,1,0,0]) using bank tags []
theorem g19429 : BadRow (row false true k224 7 4 2 5 [0,4,0,0,0]) := sparse_row false true k224 7 4 2 5 [0,4,0,0,0] (by decide)
certRow g19431 on (row false true k224 7 4 2 5 [1,0,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
