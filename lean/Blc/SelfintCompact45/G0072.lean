import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data03
import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g9559 on (row false true k80 5 9 2 5 [7,0,0,2,0]) using bank tags []
certRow g9561 on (row false true k80 5 9 2 5 [7,0,1,0,1]) using bank tags []
certRow g9563 on (row false true k80 5 9 2 5 [7,0,1,1,0]) using bank tags []
certRow g9565 on (row false true k80 5 9 2 5 [7,0,2,0,0]) using bank tags []
certRow g9567 on (row false true k80 5 9 2 5 [7,1,0,0,1]) using bank tags []
certRow g9569 on (row false true k80 5 9 2 5 [7,1,0,1,0]) using bank tags []
certRow g9571 on (row false true k80 5 9 2 5 [7,1,1,0,0]) using bank tags []
certRow g9573 on (row false true k80 5 9 2 5 [7,2,0,0,0]) using bank tags []
certRow g9575 on (row false true k80 5 9 2 5 [8,0,0,0,1]) using bank tags []
certRow g9577 on (row false true k80 5 9 2 5 [8,0,0,1,0]) using bank tags []
certRow g9579 on (row false true k80 5 9 2 5 [8,0,1,0,0]) using bank tags []
certRow g9581 on (row false true k80 5 9 2 5 [8,1,0,0,0]) using bank tags []
theorem g9583 : BadRow (row false true k80 5 9 2 5 [9,0,0,0,0]) := sparse_row false true k80 5 9 2 5 [9,0,0,0,0] (by decide)
theorem g10134 : BadRow (row false false k41 5 9 3 5 [0,0,0,0,9]) := sparse_row false false k41 5 9 3 5 [0,0,0,0,9] (by decide)
certRow g10136 on (row false false k41 5 9 3 5 [0,0,0,1,8]) using bank tags []
certRow g10138 on (row false false k41 5 9 3 5 [0,0,0,2,7]) using bank tags []
certRow g10140 on (row false false k41 5 9 3 5 [0,0,0,3,6]) using bank tags []
certRow g10142 on (row false false k41 5 9 3 5 [0,0,0,4,5]) using bank tags []
certRow g10144 on (row false false k41 5 9 3 5 [0,0,0,5,4]) using bank tags []
certRow g10146 on (row false false k41 5 9 3 5 [0,0,0,6,3]) using bank tags []
certRow g10148 on (row false false k41 5 9 3 5 [0,0,0,7,2]) using bank tags []
certRow g10150 on (row false false k41 5 9 3 5 [0,0,0,8,1]) using bank tags []
theorem g10152 : BadRow (row false false k41 5 9 3 5 [0,0,0,9,0]) := sparse_row false false k41 5 9 3 5 [0,0,0,9,0] (by decide)
certRow g10154 on (row false false k41 5 9 3 5 [0,0,1,0,8]) using bank tags []
end Blc.SelfintSingleObject.Compact45
