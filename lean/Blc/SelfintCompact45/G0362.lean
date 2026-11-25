import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19300 on (row false false k187 7 4 2 4 [0,1,0,3]) using bank tags []
certRow g19301 on (row false true k223 7 4 2 4 [0,1,0,3]) using bank tags []
certRow g19302 on (row false false k187 7 4 2 4 [0,1,1,2]) using bank tags [2,2,2,2,1,61,2,2,1,2,2,2,2,35,61,2,2,11,2,2,2,2,1,61,2,2,1]
certRow g19303 on (row false true k223 7 4 2 4 [0,1,1,2]) using bank tags [1,1,1,1,1,1]
certRow g19304 on (row false false k187 7 4 2 4 [0,1,2,1]) using bank tags [2,2,2,2,35,61,2,2,35,2,2,2,2,1,61,2,2,1,2,2,2,2,1,61,2,2,1]
certRow g19305 on (row false true k223 7 4 2 4 [0,1,2,1]) using bank tags [1,1,1,1,1,1]
certRow g19306 on (row false false k187 7 4 2 4 [0,1,3,0]) using bank tags []
certRow g19307 on (row false true k223 7 4 2 4 [0,1,3,0]) using bank tags []
certRow g19308 on (row false false k187 7 4 2 4 [0,2,0,2]) using bank tags []
certRow g19309 on (row false true k223 7 4 2 4 [0,2,0,2]) using bank tags []
certRow g19310 on (row false false k187 7 4 2 4 [0,2,1,1]) using bank tags [2,2,2,2,35,61,2,2,11,2,2,2,2,35,61,2,2,35,2,2,2,2,1,61,2,2,1]
certRow g19311 on (row false true k223 7 4 2 4 [0,2,1,1]) using bank tags [1,1,1,1,1,1]
certRow g19312 on (row false false k187 7 4 2 4 [0,2,2,0]) using bank tags []
certRow g19313 on (row false true k223 7 4 2 4 [0,2,2,0]) using bank tags []
certRow g19314 on (row false false k187 7 4 2 4 [0,3,0,1]) using bank tags []
certRow g19315 on (row false true k223 7 4 2 4 [0,3,0,1]) using bank tags []
certRow g19316 on (row false false k187 7 4 2 4 [0,3,1,0]) using bank tags []
certRow g19317 on (row false true k223 7 4 2 4 [0,3,1,0]) using bank tags []
theorem g19318 : BadRow (row false false k187 7 4 2 4 [0,4,0,0]) := sparse_row false false k187 7 4 2 4 [0,4,0,0] (by decide)
theorem g19319 : BadRow (row false true k223 7 4 2 4 [0,4,0,0]) := sparse_row false true k223 7 4 2 4 [0,4,0,0] (by decide)
certRow g19320 on (row false false k187 7 4 2 4 [1,0,0,3]) using bank tags []
certRow g19321 on (row false true k223 7 4 2 4 [1,0,0,3]) using bank tags []
certRow g19322 on (row false false k187 7 4 2 4 [1,0,1,2]) using bank tags [2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10,2,2,2,2,36,61,2,2,23,2,2,2,2,33,61,2,2,10,2,2,2,2,36,61,2,2,46,44,44,33,74,44,44,44,44,44,44,44,44,44,9,44,74,44,2,44,61,44,44,44,44,44,44,44,3,44,33,44,2,44,44,44,44]
certRow g19323 on (row false true k223 7 4 2 4 [1,0,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,6]
end Blc.SelfintSingleObject.Compact45
