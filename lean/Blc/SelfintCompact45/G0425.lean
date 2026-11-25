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
certRow g20702 on (row false false k202 7 5 3 4 [0,3,2,0]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,10,27,44,44,44,44,44,44,9,44,27,44,2]
certRow g20703 on (row false true k238 7 5 3 4 [0,3,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1]
certRow g20704 on (row false false k202 7 5 3 4 [0,4,0,1]) using bank tags []
certRow g20705 on (row false true k238 7 5 3 4 [0,4,0,1]) using bank tags []
certRow g20706 on (row false false k202 7 5 3 4 [0,4,1,0]) using bank tags []
certRow g20707 on (row false true k238 7 5 3 4 [0,4,1,0]) using bank tags []
theorem g20708 : BadRow (row false false k202 7 5 3 4 [0,5,0,0]) := sparse_row false false k202 7 5 3 4 [0,5,0,0] (by decide)
theorem g20709 : BadRow (row false true k238 7 5 3 4 [0,5,0,0]) := sparse_row false true k238 7 5 3 4 [0,5,0,0] (by decide)
certRow g20710 on (row false false k202 7 5 3 4 [1,0,0,4]) using bank tags []
certRow g20711 on (row false true k238 7 5 3 4 [1,0,0,4]) using bank tags []
certRow g20712 on (row false false k202 7 5 3 4 [1,0,1,3]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,10,2,2,2,10,2,2,2,9,2,2,2,23,2,2,2,10,2,2,2,0,20,44,44,44,44,44,44,9,44,20,44,2,48,44,44,44,44,44,44,9,44,48,44,2] except [Floor45.e9553350159134]
certRow g20713 on (row false true k238 7 5 3 4 [1,0,1,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20714 on (row false false k202 7 5 3 4 [1,0,2,2]) using bank tags [6,6,6,35,6,6,6,1,6,6,6,35,6,6,6,1,6,6,6,1,2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,18,2,2,2,23,2,2,2,36,2,2,2,10,2,2,2,27,8,44,44,44,44,44,44,9,8,8,44,2,52,44,44,44,44,44,44,9,44,52,44,2]
certRow g20715 on (row false true k238 7 5 3 4 [1,0,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20716 on (row false false k202 7 5 3 4 [1,0,3,1]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,10,2,2,2,9,2,2,2,20,2,2,2,36,20,44,44,44,44,44,44,9,44,20,44,2,47,44,44,44,44,44,44,9,44,47,44,2]
certRow g20717 on (row false true k238 7 5 3 4 [1,0,3,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20718 on (row false false k202 7 5 3 4 [1,0,4,0]) using bank tags []
certRow g20719 on (row false true k238 7 5 3 4 [1,0,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
