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
certRow g20766 on (row false false k202 7 5 3 4 [3,1,0,1]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3]
certRow g20767 on (row false true k238 7 5 3 4 [3,1,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g20768 on (row false false k202 7 5 3 4 [3,1,1,0]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3]
certRow g20769 on (row false true k238 7 5 3 4 [3,1,1,0]) using bank tags [1,1,1,1,1,1]
certRow g20770 on (row false false k202 7 5 3 4 [3,2,0,0]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9]
certRow g20771 on (row false true k238 7 5 3 4 [3,2,0,0]) using bank tags [1,1,1,1,1,1]
certRow g20772 on (row false false k202 7 5 3 4 [4,0,0,1]) using bank tags []
certRow g20773 on (row false true k238 7 5 3 4 [4,0,0,1]) using bank tags []
certRow g20774 on (row false false k202 7 5 3 4 [4,0,1,0]) using bank tags []
certRow g20775 on (row false true k238 7 5 3 4 [4,0,1,0]) using bank tags []
certRow g20776 on (row false false k202 7 5 3 4 [4,1,0,0]) using bank tags []
certRow g20777 on (row false true k238 7 5 3 4 [4,1,0,0]) using bank tags []
theorem g20778 : BadRow (row false false k202 7 5 3 4 [5,0,0,0]) := sparse_row false false k202 7 5 3 4 [5,0,0,0] (by decide)
theorem g20779 : BadRow (row false true k238 7 5 3 4 [5,0,0,0]) := sparse_row false true k238 7 5 3 4 [5,0,0,0] (by decide)
theorem g20780 : BadRow (row false false k203 7 5 3 5 [0,0,0,0,5]) := sparse_row false false k203 7 5 3 5 [0,0,0,0,5] (by decide)
theorem g20781 : BadRow (row false true k239 7 5 3 5 [0,0,0,0,5]) := sparse_row false true k239 7 5 3 5 [0,0,0,0,5] (by decide)
certRow g20782 on (row false false k203 7 5 3 5 [0,0,0,1,4]) using bank tags []
certRow g20783 on (row false true k239 7 5 3 5 [0,0,0,1,4]) using bank tags []
certRow g20784 on (row false false k203 7 5 3 5 [0,0,0,2,3]) using bank tags [44,44]
certRow g20785 on (row false true k239 7 5 3 5 [0,0,0,2,3]) using bank tags []
certRow g20786 on (row false false k203 7 5 3 5 [0,0,0,3,2]) using bank tags [44,44]
certRow g20787 on (row false true k239 7 5 3 5 [0,0,0,3,2]) using bank tags []
certRow g20788 on (row false false k203 7 5 3 5 [0,0,0,4,1]) using bank tags []
certRow g20789 on (row false true k239 7 5 3 5 [0,0,0,4,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
