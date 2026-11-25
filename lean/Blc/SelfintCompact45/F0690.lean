import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f9101 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,1,0,2]) using bank tags [2,2,2,2,2,2,2,3,3]
theorem f9102 : BadRow (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,1,1,1]) := sparse_four ⟨4,2,4,2,4,3⟩ [0,4] [0,1,1,1] (by decide)
certRow f9103 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,1,2,0]) using bank tags [2,2,2,2,3]
certRow f9104 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,2,0,1]) using bank tags [2,2,2,2,2,2,2,3,3]
certRow f9105 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,2,1,0]) using bank tags [2,2,2,2,3]
certRow f9106 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,0,0,2]) using bank tags [2,2,2,2,2]
theorem f9107 : BadRow (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,0,1,1]) := sparse_four ⟨4,2,4,2,4,3⟩ [0,4] [1,0,1,1] (by decide)
certRow f9108 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,0,2,0]) using bank tags [2,2,2,2,2]
theorem f9109 : BadRow (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,1,0,1]) := sparse_four ⟨4,2,4,2,4,3⟩ [0,4] [1,1,0,1] (by decide)
theorem f9110 : BadRow (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,1,1,0]) := sparse_four ⟨4,2,4,2,4,3⟩ [0,4] [1,1,1,0] (by decide)
certRow f9111 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [1,2,0,0]) using bank tags [2,2,2]
certRow f9112 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [2,0,0,1]) using bank tags [2,2,2,2,2]
certRow f9113 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [2,0,1,0]) using bank tags [2,2,2,2,2]
certRow f9114 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [2,1,0,0]) using bank tags [2,2,2]
end Blc.SelfintSingleObject.Compact45
