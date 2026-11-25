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
certRow g24389 on (row false true k319 5 5 2 6 [0,0,0,1,4,0]) using bank tags []
certRow g24390 on (row false false k295 5 5 2 6 [0,0,0,2,0,3]) using bank tags []
certRow g24391 on (row false true k319 5 5 2 6 [0,0,0,2,0,3]) using bank tags []
certRow g24392 on (row false false k295 5 5 2 6 [0,0,0,2,1,2]) using bank tags []
certRow g24393 on (row false true k319 5 5 2 6 [0,0,0,2,1,2]) using bank tags [2,2,2,2,2,2,8]
certRow g24394 on (row false false k295 5 5 2 6 [0,0,0,2,2,1]) using bank tags []
certRow g24395 on (row false true k319 5 5 2 6 [0,0,0,2,2,1]) using bank tags []
certRow g24396 on (row false false k295 5 5 2 6 [0,0,0,2,3,0]) using bank tags []
certRow g24397 on (row false true k319 5 5 2 6 [0,0,0,2,3,0]) using bank tags []
certRow g24398 on (row false false k295 5 5 2 6 [0,0,0,3,0,2]) using bank tags []
certRow g24399 on (row false true k319 5 5 2 6 [0,0,0,3,0,2]) using bank tags []
certRow g24400 on (row false false k295 5 5 2 6 [0,0,0,3,1,1]) using bank tags []
certRow g24401 on (row false true k319 5 5 2 6 [0,0,0,3,1,1]) using bank tags []
certRow g24402 on (row false false k295 5 5 2 6 [0,0,0,3,2,0]) using bank tags []
certRow g24403 on (row false true k319 5 5 2 6 [0,0,0,3,2,0]) using bank tags []
certRow g24404 on (row false false k295 5 5 2 6 [0,0,0,4,0,1]) using bank tags []
certRow g24405 on (row false true k319 5 5 2 6 [0,0,0,4,0,1]) using bank tags []
certRow g24406 on (row false false k295 5 5 2 6 [0,0,0,4,1,0]) using bank tags []
certRow g24407 on (row false true k319 5 5 2 6 [0,0,0,4,1,0]) using bank tags []
theorem g24408 : BadRow (row false false k295 5 5 2 6 [0,0,0,5,0,0]) := sparse_row false false k295 5 5 2 6 [0,0,0,5,0,0] (by decide)
theorem g24409 : BadRow (row false true k319 5 5 2 6 [0,0,0,5,0,0]) := sparse_row false true k319 5 5 2 6 [0,0,0,5,0,0] (by decide)
certRow g24410 on (row false false k295 5 5 2 6 [0,0,1,0,0,4]) using bank tags []
certRow g24411 on (row false true k319 5 5 2 6 [0,0,1,0,0,4]) using bank tags []
certRow g24412 on (row false false k295 5 5 2 6 [0,0,1,0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
