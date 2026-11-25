import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23232 on (row false false k287 5 4 2 6 [0,0,0,1,2,1]) using bank tags []
certRow g23233 on (row false true k311 5 4 2 6 [0,0,0,1,2,1]) using bank tags []
certRow g23234 on (row false false k287 5 4 2 6 [0,0,0,1,3,0]) using bank tags []
certRow g23235 on (row false true k311 5 4 2 6 [0,0,0,1,3,0]) using bank tags []
certRow g23236 on (row false false k287 5 4 2 6 [0,0,0,2,0,2]) using bank tags []
certRow g23237 on (row false true k311 5 4 2 6 [0,0,0,2,0,2]) using bank tags []
certRow g23238 on (row false false k287 5 4 2 6 [0,0,0,2,1,1]) using bank tags []
certRow g23239 on (row false true k311 5 4 2 6 [0,0,0,2,1,1]) using bank tags []
certRow g23240 on (row false false k287 5 4 2 6 [0,0,0,2,2,0]) using bank tags []
certRow g23241 on (row false true k311 5 4 2 6 [0,0,0,2,2,0]) using bank tags []
certRow g23242 on (row false false k287 5 4 2 6 [0,0,0,3,0,1]) using bank tags []
certRow g23243 on (row false true k311 5 4 2 6 [0,0,0,3,0,1]) using bank tags []
certRow g23244 on (row false false k287 5 4 2 6 [0,0,0,3,1,0]) using bank tags []
certRow g23245 on (row false true k311 5 4 2 6 [0,0,0,3,1,0]) using bank tags []
theorem g23246 : BadRow (row false false k287 5 4 2 6 [0,0,0,4,0,0]) := sparse_row false false k287 5 4 2 6 [0,0,0,4,0,0] (by decide)
theorem g23247 : BadRow (row false true k311 5 4 2 6 [0,0,0,4,0,0]) := sparse_row false true k311 5 4 2 6 [0,0,0,4,0,0] (by decide)
certRow g23248 on (row false false k287 5 4 2 6 [0,0,1,0,0,3]) using bank tags []
certRow g23249 on (row false true k311 5 4 2 6 [0,0,1,0,0,3]) using bank tags []
certRow g23250 on (row false false k287 5 4 2 6 [0,0,1,0,1,2]) using bank tags []
certRow g23251 on (row false true k311 5 4 2 6 [0,0,1,0,1,2]) using bank tags []
certRow g23252 on (row false false k287 5 4 2 6 [0,0,1,0,2,1]) using bank tags []
certRow g23253 on (row false true k311 5 4 2 6 [0,0,1,0,2,1]) using bank tags []
certRow g23254 on (row false false k287 5 4 2 6 [0,0,1,0,3,0]) using bank tags []
certRow g23255 on (row false true k311 5 4 2 6 [0,0,1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
