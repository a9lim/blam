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
certRow g17110 on (row false false k125 6 7 3 5 [0,0,0,1,6]) using bank tags []
certRow g17111 on (row false true k170 6 7 3 5 [0,0,0,1,6]) using bank tags []
certRow g17112 on (row false false k125 6 7 3 5 [0,0,0,2,5]) using bank tags []
certRow g17113 on (row false true k170 6 7 3 5 [0,0,0,2,5]) using bank tags []
certRow g17114 on (row false false k125 6 7 3 5 [0,0,0,3,4]) using bank tags []
certRow g17115 on (row false true k170 6 7 3 5 [0,0,0,3,4]) using bank tags []
certRow g17116 on (row false false k125 6 7 3 5 [0,0,0,4,3]) using bank tags []
certRow g17117 on (row false true k170 6 7 3 5 [0,0,0,4,3]) using bank tags []
certRow g17118 on (row false false k125 6 7 3 5 [0,0,0,5,2]) using bank tags []
certRow g17119 on (row false true k170 6 7 3 5 [0,0,0,5,2]) using bank tags []
certRow g17120 on (row false false k125 6 7 3 5 [0,0,0,6,1]) using bank tags []
certRow g17121 on (row false true k170 6 7 3 5 [0,0,0,6,1]) using bank tags []
theorem g17122 : BadRow (row false false k125 6 7 3 5 [0,0,0,7,0]) := sparse_row false false k125 6 7 3 5 [0,0,0,7,0] (by decide)
theorem g17123 : BadRow (row false true k170 6 7 3 5 [0,0,0,7,0]) := sparse_row false true k170 6 7 3 5 [0,0,0,7,0] (by decide)
certRow g17124 on (row false false k125 6 7 3 5 [0,0,1,0,6]) using bank tags []
certRow g17125 on (row false true k170 6 7 3 5 [0,0,1,0,6]) using bank tags []
certRow g17126 on (row false false k125 6 7 3 5 [0,0,1,1,5]) using bank tags []
certRow g17127 on (row false true k170 6 7 3 5 [0,0,1,1,5]) using bank tags []
certRow g17128 on (row false false k125 6 7 3 5 [0,0,1,2,4]) using bank tags []
certRow g17129 on (row false true k170 6 7 3 5 [0,0,1,2,4]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,6,6,6,2,2,2,19,28,21]
certRow g17130 on (row false false k125 6 7 3 5 [0,0,1,3,3]) using bank tags []
certRow g17131 on (row false true k170 6 7 3 5 [0,0,1,3,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,20,19,21]
certRow g17132 on (row false false k125 6 7 3 5 [0,0,1,4,2]) using bank tags []
certRow g17133 on (row false true k170 6 7 3 5 [0,0,1,4,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,6,6,6,2,2,20,21]
end Blc.SelfintSingleObject.Compact45
