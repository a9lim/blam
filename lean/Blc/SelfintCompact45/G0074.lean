import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g10204 on (row false false k41 5 9 3 5 [0,0,4,1,4]) using bank tags []
certRow g10206 on (row false false k41 5 9 3 5 [0,0,4,2,3]) using bank tags []
certRow g10208 on (row false false k41 5 9 3 5 [0,0,4,3,2]) using bank tags []
certRow g10210 on (row false false k41 5 9 3 5 [0,0,4,4,1]) using bank tags []
certRow g10212 on (row false false k41 5 9 3 5 [0,0,4,5,0]) using bank tags []
certRow g10214 on (row false false k41 5 9 3 5 [0,0,5,0,4]) using bank tags []
certRow g10216 on (row false false k41 5 9 3 5 [0,0,5,1,3]) using bank tags []
certRow g10218 on (row false false k41 5 9 3 5 [0,0,5,2,2]) using bank tags []
certRow g10220 on (row false false k41 5 9 3 5 [0,0,5,3,1]) using bank tags []
certRow g10222 on (row false false k41 5 9 3 5 [0,0,5,4,0]) using bank tags []
certRow g10224 on (row false false k41 5 9 3 5 [0,0,6,0,3]) using bank tags []
certRow g10226 on (row false false k41 5 9 3 5 [0,0,6,1,2]) using bank tags []
certRow g10228 on (row false false k41 5 9 3 5 [0,0,6,2,1]) using bank tags []
certRow g10230 on (row false false k41 5 9 3 5 [0,0,6,3,0]) using bank tags []
certRow g10232 on (row false false k41 5 9 3 5 [0,0,7,0,2]) using bank tags []
certRow g10234 on (row false false k41 5 9 3 5 [0,0,7,1,1]) using bank tags []
certRow g10236 on (row false false k41 5 9 3 5 [0,0,7,2,0]) using bank tags []
certRow g10238 on (row false false k41 5 9 3 5 [0,0,8,0,1]) using bank tags []
certRow g10240 on (row false false k41 5 9 3 5 [0,0,8,1,0]) using bank tags []
theorem g10242 : BadRow (row false false k41 5 9 3 5 [0,0,9,0,0]) := sparse_row false false k41 5 9 3 5 [0,0,9,0,0] (by decide)
certRow g10244 on (row false false k41 5 9 3 5 [0,1,0,0,8]) using bank tags []
certRow g10246 on (row false false k41 5 9 3 5 [0,1,0,1,7]) using bank tags []
certRow g10248 on (row false false k41 5 9 3 5 [0,1,0,2,6]) using bank tags []
certRow g10250 on (row false false k41 5 9 3 5 [0,1,0,3,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
