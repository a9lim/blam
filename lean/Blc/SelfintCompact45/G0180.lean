import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14764 on (row false false k116 6 6 3 5 [0,0,0,2,4]) using bank tags []
certRow g14766 on (row false false k116 6 6 3 5 [0,0,0,3,3]) using bank tags []
certRow g14768 on (row false false k116 6 6 3 5 [0,0,0,4,2]) using bank tags []
certRow g14770 on (row false false k116 6 6 3 5 [0,0,0,5,1]) using bank tags []
theorem g14772 : BadRow (row false false k116 6 6 3 5 [0,0,0,6,0]) := sparse_row false false k116 6 6 3 5 [0,0,0,6,0] (by decide)
certRow g14774 on (row false false k116 6 6 3 5 [0,0,1,0,5]) using bank tags []
certRow g14776 on (row false false k116 6 6 3 5 [0,0,1,1,4]) using bank tags []
certRow g14778 on (row false false k116 6 6 3 5 [0,0,1,2,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,3,11,3,44,3,1,3,44,3,11,3,44,3,1,3]
certRow g14780 on (row false false k116 6 6 3 5 [0,0,1,3,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,3,37,3,1,3,1,3,44,3,37,3,1,3,1,3]
certRow g14782 on (row false false k116 6 6 3 5 [0,0,1,4,1]) using bank tags []
certRow g14784 on (row false false k116 6 6 3 5 [0,0,1,5,0]) using bank tags []
certRow g14786 on (row false false k116 6 6 3 5 [0,0,2,0,4]) using bank tags []
certRow g14788 on (row false false k116 6 6 3 5 [0,0,2,1,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,3,44,3,20,3,44,3,21,3,44,3,44,3,20,3,44,3,21,3]
certRow g14790 on (row false false k116 6 6 3 5 [0,0,2,2,2]) using bank tags [12,2,2,20]
certRow g14792 on (row false false k116 6 6 3 5 [0,0,2,3,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,3,37,3,11,3,20,3,44,3,37,3,11,3,20,3]
certRow g14794 on (row false false k116 6 6 3 5 [0,0,2,4,0]) using bank tags []
certRow g14796 on (row false false k116 6 6 3 5 [0,0,3,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
