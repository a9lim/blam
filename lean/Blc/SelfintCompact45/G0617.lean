import Blc.SelfintCompact45.TreeG22474
import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g22476 : BadRow (row false false k260 8 3 6 5 [1,1,0,0,1]) := sparse_row false false k260 8 3 6 5 [1,1,0,0,1] (by decide)
theorem g22478 : BadRow (row false false k260 8 3 6 5 [1,1,0,1,0]) := sparse_row false false k260 8 3 6 5 [1,1,0,1,0] (by decide)
theorem g22480 : BadRow (row false false k260 8 3 6 5 [1,1,1,0,0]) := sparse_row false false k260 8 3 6 5 [1,1,1,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
