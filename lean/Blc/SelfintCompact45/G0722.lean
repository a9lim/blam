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
theorem g23400 : BadRow (row false false k287 5 4 2 6 [1,1,0,0,1,1]) := sparse_row false false k287 5 4 2 6 [1,1,0,0,1,1] (by decide)
theorem g23401 : BadRow (row false true k311 5 4 2 6 [1,1,0,0,1,1]) := sparse_row false true k311 5 4 2 6 [1,1,0,0,1,1] (by decide)
certRow g23402 on (row false false k287 5 4 2 6 [1,1,0,0,2,0]) using bank tags []
certRow g23403 on (row false true k311 5 4 2 6 [1,1,0,0,2,0]) using bank tags []
theorem g23404 : BadRow (row false false k287 5 4 2 6 [1,1,0,1,0,1]) := sparse_row false false k287 5 4 2 6 [1,1,0,1,0,1] (by decide)
theorem g23405 : BadRow (row false true k311 5 4 2 6 [1,1,0,1,0,1]) := sparse_row false true k311 5 4 2 6 [1,1,0,1,0,1] (by decide)
theorem g23406 : BadRow (row false false k287 5 4 2 6 [1,1,0,1,1,0]) := sparse_row false false k287 5 4 2 6 [1,1,0,1,1,0] (by decide)
theorem g23407 : BadRow (row false true k311 5 4 2 6 [1,1,0,1,1,0]) := sparse_row false true k311 5 4 2 6 [1,1,0,1,1,0] (by decide)
certRow g23408 on (row false false k287 5 4 2 6 [1,1,0,2,0,0]) using bank tags []
certRow g23409 on (row false true k311 5 4 2 6 [1,1,0,2,0,0]) using bank tags []
theorem g23410 : BadRow (row false false k287 5 4 2 6 [1,1,1,0,0,1]) := sparse_row false false k287 5 4 2 6 [1,1,1,0,0,1] (by decide)
theorem g23411 : BadRow (row false true k311 5 4 2 6 [1,1,1,0,0,1]) := sparse_row false true k311 5 4 2 6 [1,1,1,0,0,1] (by decide)
theorem g23412 : BadRow (row false false k287 5 4 2 6 [1,1,1,0,1,0]) := sparse_row false false k287 5 4 2 6 [1,1,1,0,1,0] (by decide)
theorem g23413 : BadRow (row false true k311 5 4 2 6 [1,1,1,0,1,0]) := sparse_row false true k311 5 4 2 6 [1,1,1,0,1,0] (by decide)
theorem g23414 : BadRow (row false false k287 5 4 2 6 [1,1,1,1,0,0]) := sparse_row false false k287 5 4 2 6 [1,1,1,1,0,0] (by decide)
theorem g23415 : BadRow (row false true k311 5 4 2 6 [1,1,1,1,0,0]) := sparse_row false true k311 5 4 2 6 [1,1,1,1,0,0] (by decide)
certRow g23416 on (row false false k287 5 4 2 6 [1,1,2,0,0,0]) using bank tags []
certRow g23417 on (row false true k311 5 4 2 6 [1,1,2,0,0,0]) using bank tags []
certRow g23418 on (row false false k287 5 4 2 6 [1,2,0,0,0,1]) using bank tags []
certRow g23419 on (row false true k311 5 4 2 6 [1,2,0,0,0,1]) using bank tags []
certRow g23420 on (row false false k287 5 4 2 6 [1,2,0,0,1,0]) using bank tags []
certRow g23421 on (row false true k311 5 4 2 6 [1,2,0,0,1,0]) using bank tags []
certRow g23422 on (row false false k287 5 4 2 6 [1,2,0,1,0,0]) using bank tags []
certRow g23423 on (row false true k311 5 4 2 6 [1,2,0,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
