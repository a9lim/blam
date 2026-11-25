import Blc.SelfintCompact45.TreeF1793
import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f1794 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,1,1,0,1]) := sparse_four ⟨0,2,0,6,5,3⟩ [0,0] [0,1,1,0,1] (by decide)
theorem f1795 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,1,1,1,0]) := sparse_four ⟨0,2,0,6,5,3⟩ [0,0] [0,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
