import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f4505 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,1,3]) using bank tags [6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,33,33]
certRow f4506 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,2,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,33,33]
certRow f4507 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,3,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,33,33]
theorem f4508 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,4,0]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,4,0] (by decide)
certRow f4509 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,1,0,3]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,9,9,9,9,9,33,33,33,33]
certRow f4510 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,1,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,3,3,3,9,9,9,9,9,33]
certRow f4511 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,1,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,3,3,3,9,9,9,9,9,33]
certRow f4512 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,1,3,0]) using bank tags [6,6,6,6,6,6,9,9,9,9,9,33]
certRow f4513 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,2,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,33,33]
certRow f4514 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,2,1,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,3,3,3,9,9,9,9,9,9,9,9,33,33]
certRow f4515 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,2,2,0]) using bank tags [6,6,6,9,9,9]
certRow f4516 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,3,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,33,33]
certRow f4517 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,3,1,0]) using bank tags [6,6,6,6,6,6,6,9,9,9,9,9,9,33]
theorem f4518 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,4,0,0]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,0,1] [0,4,0,0] (by decide)
certRow f4519 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,0,0,3]) using bank tags [6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,9]
certRow f4520 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,0,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,9,9,9]
certRow f4521 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,0,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,9,9,9,9,9]
certRow f4522 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,0,3,0]) using bank tags [6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9]
certRow f4523 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,1,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,9,9]
theorem f4524 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,1,1,1]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,0,1] [1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
