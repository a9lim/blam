import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f8519 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,2,2,0]) using bank tags [2,2,2]
certRow f8520 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,3,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,3,3]
certRow f8521 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,3,1,0]) using bank tags [2,2,2,2,2,2,3]
certRow f8522 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,0,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2]
certRow f8523 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,0,1,2]) using bank tags [6,6,6,6,6,6,2,2,2]
certRow f8524 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,0,2,1]) using bank tags [6,6,6,6,6,6,2,2,2,2,2]
certRow f8525 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,0,3,0]) using bank tags [2,2,2,2,2,2,2,2]
certRow f8526 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,1,0,2]) using bank tags [6,6,6,6,6,6,6,2,2]
theorem f8527 : BadRow (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,1,1,1]) := sparse_four ⟨3,2,3,3,4,4⟩ [0,3] [1,1,1,1] (by decide)
certRow f8528 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,1,2,0]) using bank tags [6,6,6,6,2,2]
certRow f8529 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,2,0,1]) using bank tags [6,6,6,6,6,6,6,2,2,2]
certRow f8530 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,2,1,0]) using bank tags [6,6,6,6,2,2]
certRow f8531 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [1,3,0,0]) using bank tags [2,2,2]
certRow f8532 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,0,0,2]) using bank tags [2,2,2,2,2]
certRow f8533 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,0,1,1]) using bank tags [6,6,6,6,6,2,2,2,2,2,2,2,2]
certRow f8534 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,0,2,0]) using bank tags [2,2,2]
certRow f8535 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,1,0,1]) using bank tags [6,6,6,6,6,2,2,2,2,2]
certRow f8536 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,1,1,0]) using bank tags [6,6,6,2,2,2,2]
certRow f8537 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [2,2,0,0]) using bank tags []
certRow f8538 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [3,0,0,1]) using bank tags [2,2,2,2,2]
certRow f8539 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [3,0,1,0]) using bank tags [2,2,2,2,2]
certRow f8540 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [3,1,0,0]) using bank tags [2,2,2]
certRow f9099 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,0,1,2]) using bank tags [2,2,2,2,3]
certRow f9100 on (Grammar43.fourRow ⟨4,2,4,2,4,3⟩ [0,4] [0,0,2,1]) using bank tags [2,2,2,2,3]
end Blc.SelfintSingleObject.Compact45
