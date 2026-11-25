import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f6872 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [0,3,0,0]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,0,2] [0,3,0,0] (by decide)
certRow f6873 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,0,0,2]) using bank tags [6,6,6,6,6,9,9,9,9,9]
theorem f6874 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,0,1,1]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,0,2] [1,0,1,1] (by decide)
certRow f6875 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,0,2,0]) using bank tags [6,6,6,6,6,9,9,9,9,9]
theorem f6876 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,1,0,1]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,0,2] [1,1,0,1] (by decide)
theorem f6877 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,1,1,0]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,0,2] [1,1,1,0] (by decide)
certRow f6878 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [1,2,0,0]) using bank tags [6,6,6,9,9,9]
certRow f6879 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [2,0,0,1]) using bank tags [6,6,6,6,6,9,9,9,9,9]
certRow f6880 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [2,0,1,0]) using bank tags [6,6,6,6,6,9,9,9,9,9]
certRow f6881 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [2,1,0,0]) using bank tags [6,6,6,9,9,9]
theorem f6882 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,0,2] [3,0,0,0]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,0,2] [3,0,0,0] (by decide)
theorem f6883 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,0,3]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,0,3] (by decide)
certRow f6884 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,1,2]) using bank tags [3,3,3,3,33]
certRow f6885 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,2,1]) using bank tags [3,3,3,3,33]
theorem f6886 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,3,0]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,1,1] [0,0,3,0] (by decide)
certRow f6887 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,1,0,2]) using bank tags [3,3,3,3,3,3,3,33,33]
theorem f6888 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,1,1,1]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,1,1] [0,1,1,1] (by decide)
certRow f6889 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,1,2,0]) using bank tags [3,3,3,3,33]
certRow f6890 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,2,0,1]) using bank tags [3,3,3,3,3,3,3,33,33]
certRow f6891 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,2,1,0]) using bank tags [3,3,3,3,33]
theorem f6892 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [0,3,0,0]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,1,1] [0,3,0,0] (by decide)
certRow f6893 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [1,0,0,2]) using bank tags [3,3,3,3,3]
theorem f6894 : BadRow (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [1,0,1,1]) := sparse_four ⟨2,3,2,3,4,3⟩ [0,1,1] [1,0,1,1] (by decide)
certRow f6895 on (Grammar43.fourRow ⟨2,3,2,3,4,3⟩ [0,1,1] [1,0,2,0]) using bank tags [3,3,3,3,3]
end Blc.SelfintSingleObject.Compact45
