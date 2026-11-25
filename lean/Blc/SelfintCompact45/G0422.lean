import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g20613 on (row false true k236 7 5 2 5 [3,1,1,0,0]) using bank tags []
certRow g20615 on (row false true k236 7 5 2 5 [3,2,0,0,0]) using bank tags []
certRow g20617 on (row false true k236 7 5 2 5 [4,0,0,0,1]) using bank tags []
certRow g20619 on (row false true k236 7 5 2 5 [4,0,0,1,0]) using bank tags []
certRow g20621 on (row false true k236 7 5 2 5 [4,0,1,0,0]) using bank tags []
certRow g20623 on (row false true k236 7 5 2 5 [4,1,0,0,0]) using bank tags []
theorem g20625 : BadRow (row false true k236 7 5 2 5 [5,0,0,0,0]) := sparse_row false true k236 7 5 2 5 [5,0,0,0,0] (by decide)
theorem g20626 : BadRow (row false false k201 7 5 3 3 [0,0,5]) := sparse_row false false k201 7 5 3 3 [0,0,5] (by decide)
certRow g20628 on (row false false k201 7 5 3 3 [0,1,4]) using bank tags []
certRow g20630 on (row false false k201 7 5 3 3 [0,2,3]) using bank tags [61,6]
certRow g20632 on (row false false k201 7 5 3 3 [0,3,2]) using bank tags [61,6]
certRow g20634 on (row false false k201 7 5 3 3 [0,4,1]) using bank tags []
theorem g20636 : BadRow (row false false k201 7 5 3 3 [0,5,0]) := sparse_row false false k201 7 5 3 3 [0,5,0] (by decide)
certRow g20638 on (row false false k201 7 5 3 3 [1,0,4]) using bank tags []
certRow g20640 on (row false false k201 7 5 3 3 [1,1,3]) using bank tags [61,6]
certRow g20642 on (row false false k201 7 5 3 3 [1,2,2]) using bank tags []
certRow g20644 on (row false false k201 7 5 3 3 [1,3,1]) using bank tags [61,6]
certRow g20646 on (row false false k201 7 5 3 3 [1,4,0]) using bank tags []
certRow g20648 on (row false false k201 7 5 3 3 [2,0,3]) using bank tags [61,6,61,6]
certRow g20650 on (row false false k201 7 5 3 3 [2,1,2]) using bank tags [61,6]
certRow g20652 on (row false false k201 7 5 3 3 [2,2,1]) using bank tags [61,6]
certRow g20654 on (row false false k201 7 5 3 3 [2,3,0]) using bank tags [61,6]
certRow g20656 on (row false false k201 7 5 3 3 [3,0,2]) using bank tags [61,6,61,6]
certRow g20658 on (row false false k201 7 5 3 3 [3,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
