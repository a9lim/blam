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
certRow g20280 on (row false false k199 7 5 2 4 [0,1,3,1]) using bank tags []
certRow g20281 on (row false true k235 7 5 2 4 [0,1,3,1]) using bank tags []
certRow g20282 on (row false false k199 7 5 2 4 [0,1,4,0]) using bank tags []
certRow g20283 on (row false true k235 7 5 2 4 [0,1,4,0]) using bank tags []
certRow g20284 on (row false false k199 7 5 2 4 [0,2,0,3]) using bank tags []
certRow g20285 on (row false true k235 7 5 2 4 [0,2,0,3]) using bank tags []
certRow g20286 on (row false false k199 7 5 2 4 [0,2,1,2]) using bank tags [44,35,44,44,44,44,44,44,44,44,44,44,12,44,35,44,2,44,61,44,11,44,44,44,44,44,44,44,44,44,44,12,44,11,44,2,44,61,44,1,44,44,44,44,44,44,44,44,44,44,12,44,1,44,2,44,61]
certRow g20287 on (row false true k235 7 5 2 4 [0,2,1,2]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20288 on (row false false k199 7 5 2 4 [0,2,2,1]) using bank tags [44,11,44,44,44,44,44,44,44,44,44,44,12,44,11,44,2,44,61,44,1,44,44,44,44,44,44,44,44,44,44,12,44,1,44,2,44,61,44,1,44,44,44,44,44,44,44,44,44,44,12,44,1,44,2,44,61]
certRow g20289 on (row false true k235 7 5 2 4 [0,2,2,1]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20290 on (row false false k199 7 5 2 4 [0,2,3,0]) using bank tags []
certRow g20291 on (row false true k235 7 5 2 4 [0,2,3,0]) using bank tags []
certRow g20292 on (row false false k199 7 5 2 4 [0,3,0,2]) using bank tags []
certRow g20293 on (row false true k235 7 5 2 4 [0,3,0,2]) using bank tags []
certRow g20294 on (row false false k199 7 5 2 4 [0,3,1,1]) using bank tags []
certRow g20295 on (row false true k235 7 5 2 4 [0,3,1,1]) using bank tags []
certRow g20296 on (row false false k199 7 5 2 4 [0,3,2,0]) using bank tags []
certRow g20297 on (row false true k235 7 5 2 4 [0,3,2,0]) using bank tags []
certRow g20298 on (row false false k199 7 5 2 4 [0,4,0,1]) using bank tags []
certRow g20299 on (row false true k235 7 5 2 4 [0,4,0,1]) using bank tags []
certRow g20300 on (row false false k199 7 5 2 4 [0,4,1,0]) using bank tags []
certRow g20301 on (row false true k235 7 5 2 4 [0,4,1,0]) using bank tags []
theorem g20302 : BadRow (row false false k199 7 5 2 4 [0,5,0,0]) := sparse_row false false k199 7 5 2 4 [0,5,0,0] (by decide)
theorem g20303 : BadRow (row false true k235 7 5 2 4 [0,5,0,0]) := sparse_row false true k235 7 5 2 4 [0,5,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
