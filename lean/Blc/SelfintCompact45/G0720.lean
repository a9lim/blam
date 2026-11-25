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
certRow g23352 on (row false false k287 5 4 2 6 [0,3,0,1,0,0]) using bank tags []
certRow g23353 on (row false true k311 5 4 2 6 [0,3,0,1,0,0]) using bank tags []
certRow g23354 on (row false false k287 5 4 2 6 [0,3,1,0,0,0]) using bank tags []
certRow g23355 on (row false true k311 5 4 2 6 [0,3,1,0,0,0]) using bank tags []
theorem g23356 : BadRow (row false false k287 5 4 2 6 [0,4,0,0,0,0]) := sparse_row false false k287 5 4 2 6 [0,4,0,0,0,0] (by decide)
theorem g23357 : BadRow (row false true k311 5 4 2 6 [0,4,0,0,0,0]) := sparse_row false true k311 5 4 2 6 [0,4,0,0,0,0] (by decide)
certRow g23358 on (row false false k287 5 4 2 6 [1,0,0,0,0,3]) using bank tags []
certRow g23359 on (row false true k311 5 4 2 6 [1,0,0,0,0,3]) using bank tags []
certRow g23360 on (row false false k287 5 4 2 6 [1,0,0,0,1,2]) using bank tags []
certRow g23361 on (row false true k311 5 4 2 6 [1,0,0,0,1,2]) using bank tags []
certRow g23362 on (row false false k287 5 4 2 6 [1,0,0,0,2,1]) using bank tags []
certRow g23363 on (row false true k311 5 4 2 6 [1,0,0,0,2,1]) using bank tags []
certRow g23364 on (row false false k287 5 4 2 6 [1,0,0,0,3,0]) using bank tags []
certRow g23365 on (row false true k311 5 4 2 6 [1,0,0,0,3,0]) using bank tags []
certRow g23366 on (row false false k287 5 4 2 6 [1,0,0,1,0,2]) using bank tags []
certRow g23367 on (row false true k311 5 4 2 6 [1,0,0,1,0,2]) using bank tags []
theorem g23368 : BadRow (row false false k287 5 4 2 6 [1,0,0,1,1,1]) := sparse_row false false k287 5 4 2 6 [1,0,0,1,1,1] (by decide)
theorem g23369 : BadRow (row false true k311 5 4 2 6 [1,0,0,1,1,1]) := sparse_row false true k311 5 4 2 6 [1,0,0,1,1,1] (by decide)
certRow g23370 on (row false false k287 5 4 2 6 [1,0,0,1,2,0]) using bank tags []
certRow g23371 on (row false true k311 5 4 2 6 [1,0,0,1,2,0]) using bank tags []
certRow g23372 on (row false false k287 5 4 2 6 [1,0,0,2,0,1]) using bank tags []
certRow g23373 on (row false true k311 5 4 2 6 [1,0,0,2,0,1]) using bank tags []
certRow g23374 on (row false false k287 5 4 2 6 [1,0,0,2,1,0]) using bank tags []
certRow g23375 on (row false true k311 5 4 2 6 [1,0,0,2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
