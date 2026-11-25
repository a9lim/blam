import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14505 on (row false true k158 6 6 2 5 [3,3,0,0,0]) using bank tags []
certRow g14507 on (row false true k158 6 6 2 5 [4,0,0,0,2]) using bank tags []
certRow g14509 on (row false true k158 6 6 2 5 [4,0,0,1,1]) using bank tags []
certRow g14511 on (row false true k158 6 6 2 5 [4,0,0,2,0]) using bank tags []
certRow g14513 on (row false true k158 6 6 2 5 [4,0,1,0,1]) using bank tags []
certRow g14515 on (row false true k158 6 6 2 5 [4,0,1,1,0]) using bank tags []
certRow g14517 on (row false true k158 6 6 2 5 [4,0,2,0,0]) using bank tags []
certRow g14519 on (row false true k158 6 6 2 5 [4,1,0,0,1]) using bank tags []
certRow g14521 on (row false true k158 6 6 2 5 [4,1,0,1,0]) using bank tags []
certRow g14523 on (row false true k158 6 6 2 5 [4,1,1,0,0]) using bank tags []
certRow g14525 on (row false true k158 6 6 2 5 [4,2,0,0,0]) using bank tags []
certRow g14527 on (row false true k158 6 6 2 5 [5,0,0,0,1]) using bank tags []
certRow g14529 on (row false true k158 6 6 2 5 [5,0,0,1,0]) using bank tags []
certRow g14531 on (row false true k158 6 6 2 5 [5,0,1,0,0]) using bank tags []
certRow g14533 on (row false true k158 6 6 2 5 [5,1,0,0,0]) using bank tags []
theorem g14535 : BadRow (row false true k158 6 6 2 5 [6,0,0,0,0]) := sparse_row false true k158 6 6 2 5 [6,0,0,0,0] (by decide)
theorem g14536 : BadRow (row false false k114 6 6 3 3 [0,0,6]) := sparse_row false false k114 6 6 3 3 [0,0,6] (by decide)
certRow g14538 on (row false false k114 6 6 3 3 [0,1,5]) using bank tags []
certRow g14540 on (row false false k114 6 6 3 3 [0,2,4]) using bank tags []
certRow g14542 on (row false false k114 6 6 3 3 [0,3,3]) using bank tags []
certRow g14544 on (row false false k114 6 6 3 3 [0,4,2]) using bank tags []
certRow g14546 on (row false false k114 6 6 3 3 [0,5,1]) using bank tags []
theorem g14548 : BadRow (row false false k114 6 6 3 3 [0,6,0]) := sparse_row false false k114 6 6 3 3 [0,6,0] (by decide)
certRow g14550 on (row false false k114 6 6 3 3 [1,0,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
