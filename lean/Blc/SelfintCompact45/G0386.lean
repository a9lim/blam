import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data18
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19733 on (row false true k227 7 4 3 5 [3,0,0,1,0]) using bank tags []
certRow g19734 on (row false false k191 7 4 3 5 [3,0,1,0,0]) using bank tags []
certRow g19735 on (row false true k227 7 4 3 5 [3,0,1,0,0]) using bank tags []
certRow g19736 on (row false false k191 7 4 3 5 [3,1,0,0,0]) using bank tags []
certRow g19737 on (row false true k227 7 4 3 5 [3,1,0,0,0]) using bank tags []
theorem g19738 : BadRow (row false false k191 7 4 3 5 [4,0,0,0,0]) := sparse_row false false k191 7 4 3 5 [4,0,0,0,0] (by decide)
theorem g19739 : BadRow (row false true k227 7 4 3 5 [4,0,0,0,0]) := sparse_row false true k227 7 4 3 5 [4,0,0,0,0] (by decide)
theorem g19740 : BadRow (row false false k192 7 4 4 3 [0,0,4]) := sparse_row false false k192 7 4 4 3 [0,0,4] (by decide)
certRow g19742 on (row false false k192 7 4 4 3 [0,1,3]) using bank tags []
certRow g19744 on (row false false k192 7 4 4 3 [0,2,2]) using bank tags []
certRow g19746 on (row false false k192 7 4 4 3 [0,3,1]) using bank tags []
theorem g19748 : BadRow (row false false k192 7 4 4 3 [0,4,0]) := sparse_row false false k192 7 4 4 3 [0,4,0] (by decide)
certRow g19750 on (row false false k192 7 4 4 3 [1,0,3]) using bank tags []
certRow g19752 on (row false false k192 7 4 4 3 [1,1,2]) using bank tags []
certRow g19754 on (row false false k192 7 4 4 3 [1,2,1]) using bank tags []
certRow g19756 on (row false false k192 7 4 4 3 [1,3,0]) using bank tags []
certRow g19758 on (row false false k192 7 4 4 3 [2,0,2]) using bank tags []
certRow g19760 on (row false false k192 7 4 4 3 [2,1,1]) using bank tags []
certRow g19762 on (row false false k192 7 4 4 3 [2,2,0]) using bank tags []
certRow g19764 on (row false false k192 7 4 4 3 [3,0,1]) using bank tags []
certRow g19766 on (row false false k192 7 4 4 3 [3,1,0]) using bank tags []
theorem g19768 : BadRow (row false false k192 7 4 4 3 [4,0,0]) := sparse_row false false k192 7 4 4 3 [4,0,0] (by decide)
theorem g19770 : BadRow (row false false k193 7 4 4 4 [0,0,0,4]) := sparse_row false false k193 7 4 4 4 [0,0,0,4] (by decide)
theorem g19771 : BadRow (row false true k229 7 4 4 4 [0,0,0,4]) := sparse_row false true k229 7 4 4 4 [0,0,0,4] (by decide)
end Blc.SelfintSingleObject.Compact45
