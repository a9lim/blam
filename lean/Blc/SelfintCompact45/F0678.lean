import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f5792 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [0,2,0,2]) using bank tags []
certRow f5793 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [0,2,1,1]) using bank tags [12,11,12]
certRow f5794 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [0,2,2,0]) using bank tags []
certRow f5795 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,0,1,2]) using bank tags [12,12,12,12,12,25]
certRow f5796 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,0,2,1]) using bank tags [11,12,11,12,12,25]
certRow f5797 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,1,0,2]) using bank tags [12,12,12,12,12,25,25]
theorem f5798 : BadRow (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,1,1,1]) := sparse_four ⟨2,3,3,2,4,4⟩ [0,1,2] [1,1,1,1] (by decide)
certRow f5799 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,1,2,0]) using bank tags [11,12,11,25]
certRow f5800 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,2,0,1]) using bank tags [11,11,12,11,12,25,25]
certRow f5801 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [1,2,1,0]) using bank tags [11,11,12,25]
certRow f5802 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,0,0,2]) using bank tags []
certRow f5803 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,0,1,1]) using bank tags [10,10,10,10,10]
certRow f5804 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,0,2,0]) using bank tags []
certRow f5805 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,1,0,1]) using bank tags [10,10,10,10,10]
certRow f5806 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,1,1,0]) using bank tags [10,10,10]
certRow f5807 on (Grammar43.fourRow ⟨2,3,3,2,4,4⟩ [0,1,2] [2,2,0,0]) using bank tags []
certRow f5922 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,0,1,2]) using bank tags [12,12,12,12,21]
certRow f5923 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,0,2,1]) using bank tags [12,12,12,12,20]
certRow f5924 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,1,0,2]) using bank tags [12,12,12,12,12,12,12,20,20]
theorem f5925 : BadRow (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,1,1,1]) := sparse_four ⟨2,3,4,2,4,3⟩ [0,2,2] [0,1,1,1] (by decide)
certRow f5926 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,1,2,0]) using bank tags [11,11,12,11,27]
certRow f5927 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,2,0,1]) using bank tags [11,37,12,11,12,11,37,114,23]
certRow f5928 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [0,2,1,0]) using bank tags [11,12,12,11,20]
certRow f5929 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,0,0,2]) using bank tags [12,12,12,12,12]
end Blc.SelfintSingleObject.Compact45
