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
certRow g19481 on (row false true k224 7 4 2 5 [2,0,2,0,0]) using bank tags []
certRow g19483 on (row false true k224 7 4 2 5 [2,1,0,0,1]) using bank tags []
certRow g19485 on (row false true k224 7 4 2 5 [2,1,0,1,0]) using bank tags []
certRow g19487 on (row false true k224 7 4 2 5 [2,1,1,0,0]) using bank tags []
certRow g19489 on (row false true k224 7 4 2 5 [2,2,0,0,0]) using bank tags []
certRow g19491 on (row false true k224 7 4 2 5 [3,0,0,0,1]) using bank tags []
certRow g19493 on (row false true k224 7 4 2 5 [3,0,0,1,0]) using bank tags []
certRow g19495 on (row false true k224 7 4 2 5 [3,0,1,0,0]) using bank tags []
certRow g19497 on (row false true k224 7 4 2 5 [3,1,0,0,0]) using bank tags []
theorem g19499 : BadRow (row false true k224 7 4 2 5 [4,0,0,0,0]) := sparse_row false true k224 7 4 2 5 [4,0,0,0,0] (by decide)
theorem g19500 : BadRow (row false false k189 7 4 3 3 [0,0,4]) := sparse_row false false k189 7 4 3 3 [0,0,4] (by decide)
certRow g19502 on (row false false k189 7 4 3 3 [0,1,3]) using bank tags [61,2,61,2,33,61,2,61,2,33]
certRow g19504 on (row false false k189 7 4 3 3 [0,2,2]) using bank tags [61,2,61,2,33,61,2,61,2,33]
certRow g19506 on (row false false k189 7 4 3 3 [0,3,1]) using bank tags [61,2,61,2,33,61,2,61,2,33]
theorem g19508 : BadRow (row false false k189 7 4 3 3 [0,4,0]) := sparse_row false false k189 7 4 3 3 [0,4,0] (by decide)
certRow g19510 on (row false false k189 7 4 3 3 [1,0,3]) using bank tags [61,2,61,2,33,61,2,61,2,33,61,2,61,2,33,61,2,61,2,33]
certRow g19512 on (row false false k189 7 4 3 3 [1,1,2]) using bank tags [61,2,61,2,33]
certRow g19514 on (row false false k189 7 4 3 3 [1,2,1]) using bank tags [61,2,61,2,33]
certRow g19516 on (row false false k189 7 4 3 3 [1,3,0]) using bank tags [61,2,61,2,33]
certRow g19518 on (row false false k189 7 4 3 3 [2,0,2]) using bank tags [61,2,61,2,33,61,2,61,2,33]
certRow g19520 on (row false false k189 7 4 3 3 [2,1,1]) using bank tags [61,2,61,2,33,61,2,61,2,33]
certRow g19522 on (row false false k189 7 4 3 3 [2,2,0]) using bank tags []
certRow g19524 on (row false false k189 7 4 3 3 [3,0,1]) using bank tags [61,2,61,2,33,61,2,61,2,33]
certRow g19526 on (row false false k189 7 4 3 3 [3,1,0]) using bank tags [61,2,61,2,33]
end Blc.SelfintSingleObject.Compact45
