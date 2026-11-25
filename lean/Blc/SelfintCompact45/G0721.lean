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
certRow g23376 on (row false false k287 5 4 2 6 [1,0,0,3,0,0]) using bank tags []
certRow g23377 on (row false true k311 5 4 2 6 [1,0,0,3,0,0]) using bank tags []
certRow g23378 on (row false false k287 5 4 2 6 [1,0,1,0,0,2]) using bank tags []
certRow g23379 on (row false true k311 5 4 2 6 [1,0,1,0,0,2]) using bank tags []
theorem g23380 : BadRow (row false false k287 5 4 2 6 [1,0,1,0,1,1]) := sparse_row false false k287 5 4 2 6 [1,0,1,0,1,1] (by decide)
theorem g23381 : BadRow (row false true k311 5 4 2 6 [1,0,1,0,1,1]) := sparse_row false true k311 5 4 2 6 [1,0,1,0,1,1] (by decide)
certRow g23382 on (row false false k287 5 4 2 6 [1,0,1,0,2,0]) using bank tags []
certRow g23383 on (row false true k311 5 4 2 6 [1,0,1,0,2,0]) using bank tags []
theorem g23384 : BadRow (row false false k287 5 4 2 6 [1,0,1,1,0,1]) := sparse_row false false k287 5 4 2 6 [1,0,1,1,0,1] (by decide)
theorem g23385 : BadRow (row false true k311 5 4 2 6 [1,0,1,1,0,1]) := sparse_row false true k311 5 4 2 6 [1,0,1,1,0,1] (by decide)
theorem g23386 : BadRow (row false false k287 5 4 2 6 [1,0,1,1,1,0]) := sparse_row false false k287 5 4 2 6 [1,0,1,1,1,0] (by decide)
theorem g23387 : BadRow (row false true k311 5 4 2 6 [1,0,1,1,1,0]) := sparse_row false true k311 5 4 2 6 [1,0,1,1,1,0] (by decide)
certRow g23388 on (row false false k287 5 4 2 6 [1,0,1,2,0,0]) using bank tags []
certRow g23389 on (row false true k311 5 4 2 6 [1,0,1,2,0,0]) using bank tags []
certRow g23390 on (row false false k287 5 4 2 6 [1,0,2,0,0,1]) using bank tags []
certRow g23391 on (row false true k311 5 4 2 6 [1,0,2,0,0,1]) using bank tags []
certRow g23392 on (row false false k287 5 4 2 6 [1,0,2,0,1,0]) using bank tags []
certRow g23393 on (row false true k311 5 4 2 6 [1,0,2,0,1,0]) using bank tags []
certRow g23394 on (row false false k287 5 4 2 6 [1,0,2,1,0,0]) using bank tags []
certRow g23395 on (row false true k311 5 4 2 6 [1,0,2,1,0,0]) using bank tags []
certRow g23396 on (row false false k287 5 4 2 6 [1,0,3,0,0,0]) using bank tags []
certRow g23397 on (row false true k311 5 4 2 6 [1,0,3,0,0,0]) using bank tags []
certRow g23398 on (row false false k287 5 4 2 6 [1,1,0,0,0,2]) using bank tags []
certRow g23399 on (row false true k311 5 4 2 6 [1,1,0,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
