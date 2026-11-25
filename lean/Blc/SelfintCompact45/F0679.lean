import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f5930 : BadRow (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,0,1,1]) := sparse_four ⟨2,3,4,2,4,3⟩ [0,2,2] [1,0,1,1] (by decide)
certRow f5931 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,0,2,0]) using bank tags [11,12,11,12,12]
theorem f5932 : BadRow (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,1,0,1]) := sparse_four ⟨2,3,4,2,4,3⟩ [0,2,2] [1,1,0,1] (by decide)
theorem f5933 : BadRow (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,1,1,0]) := sparse_four ⟨2,3,4,2,4,3⟩ [0,2,2] [1,1,1,0] (by decide)
certRow f5934 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [1,2,0,0]) using bank tags [11,37,11]
certRow f5935 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [2,0,0,1]) using bank tags [10,10,25,25,36]
certRow f5936 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [2,0,1,0]) using bank tags [10,10,25,25,36]
certRow f5937 on (Grammar43.fourRow ⟨2,3,4,2,4,3⟩ [0,2,2] [2,1,0,0]) using bank tags [10,10,25]
certRow f6146 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,1,3,3]) using bank tags [12,1,1,12]
certRow f6147 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,2,2,3]) using bank tags [2,2,2,20]
certRow f6148 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,2,3,2]) using bank tags [2,2,2,20,1]
certRow f6149 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,3,1,3]) using bank tags [1,1,1]
certRow f6150 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,3,2,2]) using bank tags [2,2,2,20]
certRow f6151 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [0,3,3,1]) using bank tags [1,12,1,12]
certRow f6152 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,0,3,3]) using bank tags [12,1,12,1,1,12,12]
certRow f6153 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,1,2,3]) using bank tags [2,2,2,2,2,3]
certRow f6154 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,1,3,2]) using bank tags [2,2,2,2,2,1,3]
certRow f6155 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,2,1,3]) using bank tags [2,2,2,2,2,2,2,5,1,3,3]
certRow f6156 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,2,2,2]) using bank tags []
certRow f6157 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,2,3,1]) using bank tags [2,2,2,2,2,5,1,3]
certRow f6158 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,3,0,3]) using bank tags [5,35,1,1,1]
certRow f6159 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,3,1,2]) using bank tags [2,2,2,2,2,2,2,1,3,3]
certRow f6160 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,3,2,1]) using bank tags [2,2,2,2,2,3]
certRow f6161 on (Grammar43.fourRow ⟨2,2,2,3,4,7⟩ [0,2] [1,3,3,0]) using bank tags [5,12,1]
end Blc.SelfintSingleObject.Compact45
