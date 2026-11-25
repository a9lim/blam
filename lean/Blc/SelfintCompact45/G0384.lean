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
certRow g19685 on (row false true k227 7 4 3 5 [1,0,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6]
certRow g19686 on (row false false k191 7 4 3 5 [1,0,2,1,0]) using bank tags [44,44,44,44]
certRow g19687 on (row false true k227 7 4 3 5 [1,0,2,1,0]) using bank tags [6,6,6,6,6]
certRow g19688 on (row false false k191 7 4 3 5 [1,0,3,0,0]) using bank tags []
certRow g19689 on (row false true k227 7 4 3 5 [1,0,3,0,0]) using bank tags []
certRow g19690 on (row false false k191 7 4 3 5 [1,1,0,0,2]) using bank tags [44,44,44,44,44]
certRow g19691 on (row false true k227 7 4 3 5 [1,1,0,0,2]) using bank tags [6,6,6,6,6]
theorem g19692 : BadRow (row false false k191 7 4 3 5 [1,1,0,1,1]) := sparse_row false false k191 7 4 3 5 [1,1,0,1,1] (by decide)
theorem g19693 : BadRow (row false true k227 7 4 3 5 [1,1,0,1,1]) := sparse_row false true k227 7 4 3 5 [1,1,0,1,1] (by decide)
certRow g19694 on (row false false k191 7 4 3 5 [1,1,0,2,0]) using bank tags [44,44,44,44,44,44,44,44]
certRow g19695 on (row false true k227 7 4 3 5 [1,1,0,2,0]) using bank tags [6,6,6,6,6]
theorem g19696 : BadRow (row false false k191 7 4 3 5 [1,1,1,0,1]) := sparse_row false false k191 7 4 3 5 [1,1,1,0,1] (by decide)
theorem g19697 : BadRow (row false true k227 7 4 3 5 [1,1,1,0,1]) := sparse_row false true k227 7 4 3 5 [1,1,1,0,1] (by decide)
theorem g19698 : BadRow (row false false k191 7 4 3 5 [1,1,1,1,0]) := sparse_row false false k191 7 4 3 5 [1,1,1,1,0] (by decide)
theorem g19699 : BadRow (row false true k227 7 4 3 5 [1,1,1,1,0]) := sparse_row false true k227 7 4 3 5 [1,1,1,1,0] (by decide)
certRow g19700 on (row false false k191 7 4 3 5 [1,1,2,0,0]) using bank tags [44,44,44,44,44]
certRow g19701 on (row false true k227 7 4 3 5 [1,1,2,0,0]) using bank tags [6,6,6]
certRow g19702 on (row false false k191 7 4 3 5 [1,2,0,0,1]) using bank tags [44,44,44,44,44]
certRow g19703 on (row false true k227 7 4 3 5 [1,2,0,0,1]) using bank tags [6,6,6,6,6]
certRow g19704 on (row false false k191 7 4 3 5 [1,2,0,1,0]) using bank tags [44,44,44,44,44,44,44,44]
certRow g19705 on (row false true k227 7 4 3 5 [1,2,0,1,0]) using bank tags [6,6,6,6,6]
certRow g19706 on (row false false k191 7 4 3 5 [1,2,1,0,0]) using bank tags [44,44,44,44,44]
certRow g19707 on (row false true k227 7 4 3 5 [1,2,1,0,0]) using bank tags [6,6,6]
certRow g19708 on (row false false k191 7 4 3 5 [1,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
