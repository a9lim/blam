import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g20517 on (row false true k236 7 5 2 5 [1,1,0,0,3]) using bank tags []
certRow g20519 on (row false true k236 7 5 2 5 [1,1,0,1,2]) using bank tags [44]
certRow g20521 on (row false true k236 7 5 2 5 [1,1,0,2,1]) using bank tags [44]
certRow g20523 on (row false true k236 7 5 2 5 [1,1,0,3,0]) using bank tags []
certRow g20525 on (row false true k236 7 5 2 5 [1,1,1,0,2]) using bank tags [44,44]
theorem g20527 : BadRow (row false true k236 7 5 2 5 [1,1,1,1,1]) := sparse_row false true k236 7 5 2 5 [1,1,1,1,1] (by decide)
certRow g20529 on (row false true k236 7 5 2 5 [1,1,1,2,0]) using bank tags [44]
certRow g20531 on (row false true k236 7 5 2 5 [1,1,2,0,1]) using bank tags [44,44]
certRow g20533 on (row false true k236 7 5 2 5 [1,1,2,1,0]) using bank tags [44]
certRow g20535 on (row false true k236 7 5 2 5 [1,1,3,0,0]) using bank tags []
certRow g20537 on (row false true k236 7 5 2 5 [1,2,0,0,2]) using bank tags []
certRow g20539 on (row false true k236 7 5 2 5 [1,2,0,1,1]) using bank tags []
certRow g20541 on (row false true k236 7 5 2 5 [1,2,0,2,0]) using bank tags []
certRow g20543 on (row false true k236 7 5 2 5 [1,2,1,0,1]) using bank tags []
certRow g20545 on (row false true k236 7 5 2 5 [1,2,1,1,0]) using bank tags []
certRow g20547 on (row false true k236 7 5 2 5 [1,2,2,0,0]) using bank tags []
certRow g20549 on (row false true k236 7 5 2 5 [1,3,0,0,1]) using bank tags []
certRow g20551 on (row false true k236 7 5 2 5 [1,3,0,1,0]) using bank tags []
certRow g20553 on (row false true k236 7 5 2 5 [1,3,1,0,0]) using bank tags []
certRow g20555 on (row false true k236 7 5 2 5 [1,4,0,0,0]) using bank tags []
certRow g20557 on (row false true k236 7 5 2 5 [2,0,0,0,3]) using bank tags []
certRow g20559 on (row false true k236 7 5 2 5 [2,0,0,1,2]) using bank tags []
certRow g20561 on (row false true k236 7 5 2 5 [2,0,0,2,1]) using bank tags []
certRow g20563 on (row false true k236 7 5 2 5 [2,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
