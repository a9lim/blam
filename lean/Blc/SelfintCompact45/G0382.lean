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
certRow g19637 on (row false true k227 7 4 3 5 [0,1,0,3,0]) using bank tags []
certRow g19638 on (row false false k191 7 4 3 5 [0,1,1,0,2]) using bank tags [44,6,6]
certRow g19639 on (row false true k227 7 4 3 5 [0,1,1,0,2]) using bank tags []
theorem g19640 : BadRow (row false false k191 7 4 3 5 [0,1,1,1,1]) := sparse_row false false k191 7 4 3 5 [0,1,1,1,1] (by decide)
theorem g19641 : BadRow (row false true k227 7 4 3 5 [0,1,1,1,1]) := sparse_row false true k227 7 4 3 5 [0,1,1,1,1] (by decide)
certRow g19642 on (row false false k191 7 4 3 5 [0,1,1,2,0]) using bank tags [6]
certRow g19643 on (row false true k227 7 4 3 5 [0,1,1,2,0]) using bank tags []
certRow g19644 on (row false false k191 7 4 3 5 [0,1,2,0,1]) using bank tags [44,6,6]
certRow g19645 on (row false true k227 7 4 3 5 [0,1,2,0,1]) using bank tags []
certRow g19646 on (row false false k191 7 4 3 5 [0,1,2,1,0]) using bank tags [44,6]
certRow g19647 on (row false true k227 7 4 3 5 [0,1,2,1,0]) using bank tags []
certRow g19648 on (row false false k191 7 4 3 5 [0,1,3,0,0]) using bank tags []
certRow g19649 on (row false true k227 7 4 3 5 [0,1,3,0,0]) using bank tags []
certRow g19650 on (row false false k191 7 4 3 5 [0,2,0,0,2]) using bank tags [44,44]
certRow g19651 on (row false true k227 7 4 3 5 [0,2,0,0,2]) using bank tags []
certRow g19652 on (row false false k191 7 4 3 5 [0,2,0,1,1]) using bank tags [44]
certRow g19653 on (row false true k227 7 4 3 5 [0,2,0,1,1]) using bank tags []
certRow g19654 on (row false false k191 7 4 3 5 [0,2,0,2,0]) using bank tags [44,44]
certRow g19655 on (row false true k227 7 4 3 5 [0,2,0,2,0]) using bank tags []
certRow g19656 on (row false false k191 7 4 3 5 [0,2,1,0,1]) using bank tags [44,44]
certRow g19657 on (row false true k227 7 4 3 5 [0,2,1,0,1]) using bank tags []
certRow g19658 on (row false false k191 7 4 3 5 [0,2,1,1,0]) using bank tags [44]
certRow g19659 on (row false true k227 7 4 3 5 [0,2,1,1,0]) using bank tags []
certRow g19660 on (row false false k191 7 4 3 5 [0,2,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
