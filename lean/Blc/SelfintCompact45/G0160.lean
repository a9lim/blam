import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14265 on (row false true k158 6 6 2 5 [0,4,0,0,2]) using bank tags []
certRow g14267 on (row false true k158 6 6 2 5 [0,4,0,1,1]) using bank tags []
certRow g14269 on (row false true k158 6 6 2 5 [0,4,0,2,0]) using bank tags []
certRow g14271 on (row false true k158 6 6 2 5 [0,4,1,0,1]) using bank tags []
certRow g14273 on (row false true k158 6 6 2 5 [0,4,1,1,0]) using bank tags []
certRow g14275 on (row false true k158 6 6 2 5 [0,4,2,0,0]) using bank tags []
certRow g14277 on (row false true k158 6 6 2 5 [0,5,0,0,1]) using bank tags []
certRow g14279 on (row false true k158 6 6 2 5 [0,5,0,1,0]) using bank tags []
certRow g14281 on (row false true k158 6 6 2 5 [0,5,1,0,0]) using bank tags []
theorem g14283 : BadRow (row false true k158 6 6 2 5 [0,6,0,0,0]) := sparse_row false true k158 6 6 2 5 [0,6,0,0,0] (by decide)
certRow g14285 on (row false true k158 6 6 2 5 [1,0,0,0,5]) using bank tags []
certRow g14287 on (row false true k158 6 6 2 5 [1,0,0,1,4]) using bank tags []
certRow g14289 on (row false true k158 6 6 2 5 [1,0,0,2,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g14291 on (row false true k158 6 6 2 5 [1,0,0,3,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g14293 on (row false true k158 6 6 2 5 [1,0,0,4,1]) using bank tags []
certRow g14295 on (row false true k158 6 6 2 5 [1,0,0,5,0]) using bank tags []
certRow g14297 on (row false true k158 6 6 2 5 [1,0,1,0,4]) using bank tags []
certRow g14299 on (row false true k158 6 6 2 5 [1,0,1,1,3]) using bank tags []
certRow g14301 on (row false true k158 6 6 2 5 [1,0,1,2,2]) using bank tags [3,12,1,1]
certRow g14303 on (row false true k158 6 6 2 5 [1,0,1,3,1]) using bank tags []
certRow g14305 on (row false true k158 6 6 2 5 [1,0,1,4,0]) using bank tags []
certRow g14307 on (row false true k158 6 6 2 5 [1,0,2,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g14309 on (row false true k158 6 6 2 5 [1,0,2,1,2]) using bank tags [3,1,1,1]
certRow g14311 on (row false true k158 6 6 2 5 [1,0,2,2,1]) using bank tags [1,12,1]
end Blc.SelfintSingleObject.Compact45
