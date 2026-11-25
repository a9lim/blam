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
certRow g19589 on (row false true k226 7 4 3 4 [2,1,1,0]) using bank tags [6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19590 on (row false false k190 7 4 3 4 [2,2,0,0]) using bank tags []
certRow g19591 on (row false true k226 7 4 3 4 [2,2,0,0]) using bank tags []
certRow g19592 on (row false false k190 7 4 3 4 [3,0,0,1]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3]
certRow g19593 on (row false true k226 7 4 3 4 [3,0,0,1]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19594 on (row false false k190 7 4 3 4 [3,0,1,0]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3]
certRow g19595 on (row false true k226 7 4 3 4 [3,0,1,0]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19596 on (row false false k190 7 4 3 4 [3,1,0,0]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3]
certRow g19597 on (row false true k226 7 4 3 4 [3,1,0,0]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
theorem g19598 : BadRow (row false false k190 7 4 3 4 [4,0,0,0]) := sparse_row false false k190 7 4 3 4 [4,0,0,0] (by decide)
theorem g19599 : BadRow (row false true k226 7 4 3 4 [4,0,0,0]) := sparse_row false true k226 7 4 3 4 [4,0,0,0] (by decide)
theorem g19600 : BadRow (row false false k191 7 4 3 5 [0,0,0,0,4]) := sparse_row false false k191 7 4 3 5 [0,0,0,0,4] (by decide)
theorem g19601 : BadRow (row false true k227 7 4 3 5 [0,0,0,0,4]) := sparse_row false true k227 7 4 3 5 [0,0,0,0,4] (by decide)
certRow g19602 on (row false false k191 7 4 3 5 [0,0,0,1,3]) using bank tags [44]
certRow g19603 on (row false true k227 7 4 3 5 [0,0,0,1,3]) using bank tags []
certRow g19604 on (row false false k191 7 4 3 5 [0,0,0,2,2]) using bank tags [44]
certRow g19605 on (row false true k227 7 4 3 5 [0,0,0,2,2]) using bank tags []
certRow g19606 on (row false false k191 7 4 3 5 [0,0,0,3,1]) using bank tags [44,44]
certRow g19607 on (row false true k227 7 4 3 5 [0,0,0,3,1]) using bank tags []
theorem g19608 : BadRow (row false false k191 7 4 3 5 [0,0,0,4,0]) := sparse_row false false k191 7 4 3 5 [0,0,0,4,0] (by decide)
theorem g19609 : BadRow (row false true k227 7 4 3 5 [0,0,0,4,0]) := sparse_row false true k227 7 4 3 5 [0,0,0,4,0] (by decide)
certRow g19610 on (row false false k191 7 4 3 5 [0,0,1,0,3]) using bank tags [44,44,44]
certRow g19611 on (row false true k227 7 4 3 5 [0,0,1,0,3]) using bank tags []
certRow g19612 on (row false false k191 7 4 3 5 [0,0,1,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
