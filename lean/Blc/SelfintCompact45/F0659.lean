import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f5104 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [0,0,4,0]) := sparse_four ⟨1,2,1,6,4,4⟩ [0,1] [0,0,4,0] (by decide)
tagSlices f5105 on (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [0,1,0,3]) byParts (fun j => Split43.four 12 j ⟨1,2,1,6,4,4⟩ [0,1] [0,1,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,4⟩ [0,1] [0,1,0,3]) withHints bank eachTags[[],[6,6,6,6],[6],[6,6],[6,6],[6,6],[],[6,6,6,6],[],[6,6],[],[6]] except []
end Blc.SelfintSingleObject.Compact45
