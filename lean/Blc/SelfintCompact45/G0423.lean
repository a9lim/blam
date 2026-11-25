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
certRow g20660 on (row false false k201 7 5 3 3 [3,2,0]) using bank tags [61,6]
certRow g20662 on (row false false k201 7 5 3 3 [4,0,1]) using bank tags []
certRow g20664 on (row false false k201 7 5 3 3 [4,1,0]) using bank tags []
theorem g20666 : BadRow (row false false k201 7 5 3 3 [5,0,0]) := sparse_row false false k201 7 5 3 3 [5,0,0] (by decide)
theorem g20668 : BadRow (row false false k202 7 5 3 4 [0,0,0,5]) := sparse_row false false k202 7 5 3 4 [0,0,0,5] (by decide)
theorem g20669 : BadRow (row false true k238 7 5 3 4 [0,0,0,5]) := sparse_row false true k238 7 5 3 4 [0,0,0,5] (by decide)
certRow g20670 on (row false false k202 7 5 3 4 [0,0,1,4]) using bank tags []
certRow g20671 on (row false true k238 7 5 3 4 [0,0,1,4]) using bank tags []
certRow g20672 on (row false false k202 7 5 3 4 [0,0,2,3]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,10,1,44,44,44,44,44,44,9,44,1,44,2]
certRow g20673 on (row false true k238 7 5 3 4 [0,0,2,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1]
certRow g20674 on (row false false k202 7 5 3 4 [0,0,3,2]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,10,1,44,44,44,44,44,44,9,44,1,44,2]
certRow g20675 on (row false true k238 7 5 3 4 [0,0,3,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1]
certRow g20676 on (row false false k202 7 5 3 4 [0,0,4,1]) using bank tags []
certRow g20677 on (row false true k238 7 5 3 4 [0,0,4,1]) using bank tags []
theorem g20678 : BadRow (row false false k202 7 5 3 4 [0,0,5,0]) := sparse_row false false k202 7 5 3 4 [0,0,5,0] (by decide)
theorem g20679 : BadRow (row false true k238 7 5 3 4 [0,0,5,0]) := sparse_row false true k238 7 5 3 4 [0,0,5,0] (by decide)
certRow g20680 on (row false false k202 7 5 3 4 [0,1,0,4]) using bank tags []
certRow g20681 on (row false true k238 7 5 3 4 [0,1,0,4]) using bank tags []
certRow g20682 on (row false false k202 7 5 3 4 [0,1,1,3]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,2,2,2,1,2,2,2,11,2,2,2,1,2,2,2,10,47,44,44,44,44,44,44,9,44,47,44,2]
certRow g20683 on (row false true k238 7 5 3 4 [0,1,1,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20684 on (row false false k202 7 5 3 4 [0,1,2,2]) using bank tags [6,6,6,35,6,6,6,1,6,6,6,1,2,2,2,35,2,2,2,1,2,2,2,1,2,2,2,9,2,2,2,11,2,2,2,1]
certRow g20685 on (row false true k238 7 5 3 4 [0,1,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20686 on (row false false k202 7 5 3 4 [0,1,3,1]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,1,2,2,2,1,2,2,2,10,47,44,44,44,44,44,44,9,44,47,44,2]
end Blc.SelfintSingleObject.Compact45
