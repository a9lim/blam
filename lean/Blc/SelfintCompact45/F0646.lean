import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f4525 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,1,2,0]) using bank tags [6,6,6,6,6,6,3,3,3,3,9,9]
certRow f4526 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,9,9,9]
certRow f4527 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,2,1,0]) using bank tags [6,6,6,6,6,6,3,3,3,3,9,9]
certRow f4528 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [1,3,0,0]) using bank tags [6,6,6,9,9,9]
certRow f4529 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,0,0,2]) using bank tags [6,6,6,6,6,9,9,9,9,9]
certRow f4530 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,0,1,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,9,9,9,9,9,9,9,9]
certRow f4531 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,0,2,0]) using bank tags [6,6,6,9,9,9]
certRow f4532 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,1,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,9,9,9,9,9]
certRow f4533 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,1,1,0]) using bank tags [6,6,6,6,6,6,6,3,3,3,9,9,9,9]
certRow f4534 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [2,2,0,0]) using bank tags []
certRow f4535 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [3,0,0,1]) using bank tags [6,6,6,6,6,9,9,9,9,9]
certRow f4536 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [3,0,1,0]) using bank tags [6,6,6,6,6,9,9,9,9,9]
certRow f4537 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [3,1,0,0]) using bank tags [6,6,6,9,9,9]
theorem f4538 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [4,0,0,0]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,0,1] [4,0,0,0] (by decide)
theorem f4539 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,0,4]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,0,4] (by decide)
certRow f4540 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,1,3]) using bank tags [9,9,9,9,9,9,9,9,33,33]
certRow f4541 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,2,2]) using bank tags [9,9,9,9,9,9,9,9,33,33]
certRow f4542 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,3,1]) using bank tags [9,9,9,9,9,9,9,9,33,33]
theorem f4543 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,4,0]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,1,0] [0,0,4,0] (by decide)
certRow f4544 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,1,0,3]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,33,33,33,33]
certRow f4545 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,1,1,2]) using bank tags [3,3,3,9,9,9,9,9,33]
certRow f4546 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,1,2,1]) using bank tags [3,3,3,9,9,9,9,9,33]
certRow f4547 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,1,3,0]) using bank tags [9,9,9,9,9,33]
certRow f4548 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [0,2,0,2]) using bank tags [9,9,9,9,9,9,9,9,9,33,33]
end Blc.SelfintSingleObject.Compact45
