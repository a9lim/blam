import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1162 on (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,0,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6],[6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[6,6,6,6,6]] except []
theorem f1163 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,1,1]) := sparse_four ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,1,1] (by decide)
tagSlices f1164 on (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,0,2,0]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6],[6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]] except []
theorem f1165 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,1,0,1]) := sparse_four ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,1,0,1] (by decide)
theorem f1166 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,1,1,0]) := sparse_four ⟨0,2,0,4,6,3⟩ [0,0] [0,0,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
