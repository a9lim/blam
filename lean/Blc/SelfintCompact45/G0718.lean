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
certRow g23304 on (row false false k287 5 4 2 6 [0,1,0,2,1,0]) using bank tags []
certRow g23305 on (row false true k311 5 4 2 6 [0,1,0,2,1,0]) using bank tags []
certRow g23306 on (row false false k287 5 4 2 6 [0,1,0,3,0,0]) using bank tags []
certRow g23307 on (row false true k311 5 4 2 6 [0,1,0,3,0,0]) using bank tags []
certRow g23308 on (row false false k287 5 4 2 6 [0,1,1,0,0,2]) using bank tags []
certRow g23309 on (row false true k311 5 4 2 6 [0,1,1,0,0,2]) using bank tags []
theorem g23310 : BadRow (row false false k287 5 4 2 6 [0,1,1,0,1,1]) := sparse_row false false k287 5 4 2 6 [0,1,1,0,1,1] (by decide)
theorem g23311 : BadRow (row false true k311 5 4 2 6 [0,1,1,0,1,1]) := sparse_row false true k311 5 4 2 6 [0,1,1,0,1,1] (by decide)
certRow g23312 on (row false false k287 5 4 2 6 [0,1,1,0,2,0]) using bank tags []
certRow g23313 on (row false true k311 5 4 2 6 [0,1,1,0,2,0]) using bank tags []
theorem g23314 : BadRow (row false false k287 5 4 2 6 [0,1,1,1,0,1]) := sparse_row false false k287 5 4 2 6 [0,1,1,1,0,1] (by decide)
theorem g23315 : BadRow (row false true k311 5 4 2 6 [0,1,1,1,0,1]) := sparse_row false true k311 5 4 2 6 [0,1,1,1,0,1] (by decide)
theorem g23316 : BadRow (row false false k287 5 4 2 6 [0,1,1,1,1,0]) := sparse_row false false k287 5 4 2 6 [0,1,1,1,1,0] (by decide)
theorem g23317 : BadRow (row false true k311 5 4 2 6 [0,1,1,1,1,0]) := sparse_row false true k311 5 4 2 6 [0,1,1,1,1,0] (by decide)
certRow g23318 on (row false false k287 5 4 2 6 [0,1,1,2,0,0]) using bank tags []
certRow g23319 on (row false true k311 5 4 2 6 [0,1,1,2,0,0]) using bank tags []
certRow g23320 on (row false false k287 5 4 2 6 [0,1,2,0,0,1]) using bank tags []
certRow g23321 on (row false true k311 5 4 2 6 [0,1,2,0,0,1]) using bank tags []
certRow g23322 on (row false false k287 5 4 2 6 [0,1,2,0,1,0]) using bank tags []
certRow g23323 on (row false true k311 5 4 2 6 [0,1,2,0,1,0]) using bank tags []
certRow g23324 on (row false false k287 5 4 2 6 [0,1,2,1,0,0]) using bank tags []
certRow g23325 on (row false true k311 5 4 2 6 [0,1,2,1,0,0]) using bank tags []
certRow g23326 on (row false false k287 5 4 2 6 [0,1,3,0,0,0]) using bank tags []
certRow g23327 on (row false true k311 5 4 2 6 [0,1,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
