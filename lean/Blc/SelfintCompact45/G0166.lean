import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14552 on (row false false k114 6 6 3 3 [1,1,4]) using bank tags []
certRow g14554 on (row false false k114 6 6 3 3 [1,2,3]) using bank tags []
certRow g14556 on (row false false k114 6 6 3 3 [1,3,2]) using bank tags []
certRow g14558 on (row false false k114 6 6 3 3 [1,4,1]) using bank tags []
certRow g14560 on (row false false k114 6 6 3 3 [1,5,0]) using bank tags []
certRow g14562 on (row false false k114 6 6 3 3 [2,0,4]) using bank tags []
certRow g14564 on (row false false k114 6 6 3 3 [2,1,3]) using bank tags []
certRow g14566 on (row false false k114 6 6 3 3 [2,2,2]) using bank tags []
certRow g14568 on (row false false k114 6 6 3 3 [2,3,1]) using bank tags []
certRow g14570 on (row false false k114 6 6 3 3 [2,4,0]) using bank tags []
certRow g14572 on (row false false k114 6 6 3 3 [3,0,3]) using bank tags []
certRow g14574 on (row false false k114 6 6 3 3 [3,1,2]) using bank tags []
certRow g14576 on (row false false k114 6 6 3 3 [3,2,1]) using bank tags []
certRow g14578 on (row false false k114 6 6 3 3 [3,3,0]) using bank tags []
certRow g14580 on (row false false k114 6 6 3 3 [4,0,2]) using bank tags []
certRow g14582 on (row false false k114 6 6 3 3 [4,1,1]) using bank tags []
certRow g14584 on (row false false k114 6 6 3 3 [4,2,0]) using bank tags []
certRow g14586 on (row false false k114 6 6 3 3 [5,0,1]) using bank tags []
certRow g14588 on (row false false k114 6 6 3 3 [5,1,0]) using bank tags []
theorem g14590 : BadRow (row false false k114 6 6 3 3 [6,0,0]) := sparse_row false false k114 6 6 3 3 [6,0,0] (by decide)
theorem g14592 : BadRow (row false false k115 6 6 3 4 [0,0,0,6]) := sparse_row false false k115 6 6 3 4 [0,0,0,6] (by decide)
theorem g14593 : BadRow (row false true k160 6 6 3 4 [0,0,0,6]) := sparse_row false true k160 6 6 3 4 [0,0,0,6] (by decide)
certRow g14594 on (row false false k115 6 6 3 4 [0,0,1,5]) using bank tags []
certRow g14595 on (row false true k160 6 6 3 4 [0,0,1,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
