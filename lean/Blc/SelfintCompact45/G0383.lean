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
certRow g19661 on (row false true k227 7 4 3 5 [0,2,2,0,0]) using bank tags []
certRow g19662 on (row false false k191 7 4 3 5 [0,3,0,0,1]) using bank tags []
certRow g19663 on (row false true k227 7 4 3 5 [0,3,0,0,1]) using bank tags []
certRow g19664 on (row false false k191 7 4 3 5 [0,3,0,1,0]) using bank tags []
certRow g19665 on (row false true k227 7 4 3 5 [0,3,0,1,0]) using bank tags []
certRow g19666 on (row false false k191 7 4 3 5 [0,3,1,0,0]) using bank tags []
certRow g19667 on (row false true k227 7 4 3 5 [0,3,1,0,0]) using bank tags []
theorem g19668 : BadRow (row false false k191 7 4 3 5 [0,4,0,0,0]) := sparse_row false false k191 7 4 3 5 [0,4,0,0,0] (by decide)
theorem g19669 : BadRow (row false true k227 7 4 3 5 [0,4,0,0,0]) := sparse_row false true k227 7 4 3 5 [0,4,0,0,0] (by decide)
certRow g19670 on (row false false k191 7 4 3 5 [1,0,0,0,3]) using bank tags []
certRow g19671 on (row false true k227 7 4 3 5 [1,0,0,0,3]) using bank tags []
certRow g19672 on (row false false k191 7 4 3 5 [1,0,0,1,2]) using bank tags [44,44]
certRow g19673 on (row false true k227 7 4 3 5 [1,0,0,1,2]) using bank tags [6,6,6,6,6]
certRow g19674 on (row false false k191 7 4 3 5 [1,0,0,2,1]) using bank tags [44,44]
certRow g19675 on (row false true k227 7 4 3 5 [1,0,0,2,1]) using bank tags [6,6,6,6,6]
certRow g19676 on (row false false k191 7 4 3 5 [1,0,0,3,0]) using bank tags []
certRow g19677 on (row false true k227 7 4 3 5 [1,0,0,3,0]) using bank tags []
certRow g19678 on (row false false k191 7 4 3 5 [1,0,1,0,2]) using bank tags [44,44,44,44]
certRow g19679 on (row false true k227 7 4 3 5 [1,0,1,0,2]) using bank tags [6,6,6,6,6,6,6,6,6]
theorem g19680 : BadRow (row false false k191 7 4 3 5 [1,0,1,1,1]) := sparse_row false false k191 7 4 3 5 [1,0,1,1,1] (by decide)
theorem g19681 : BadRow (row false true k227 7 4 3 5 [1,0,1,1,1]) := sparse_row false true k227 7 4 3 5 [1,0,1,1,1] (by decide)
certRow g19682 on (row false false k191 7 4 3 5 [1,0,1,2,0]) using bank tags [44,44,44,44]
certRow g19683 on (row false true k227 7 4 3 5 [1,0,1,2,0]) using bank tags [6,6,6,6,6]
certRow g19684 on (row false false k191 7 4 3 5 [1,0,2,0,1]) using bank tags [44,44,44,44]
end Blc.SelfintSingleObject.Compact45
