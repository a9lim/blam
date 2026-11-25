import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f1171 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,3,0,0,0]) := sparse_four ⟨0,2,0,4,6,3⟩ [0,0] [0,0,3,0,0,0] (by decide)
tagSlices f1172 on (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,1,0,0,0,2]) byParts (fun j => Split43.four 48 j ⟨0,2,0,4,6,3⟩ [0,0] [0,1,0,0,0,2]) byCover (Split43.four_cover 48 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,1,0,0,0,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[],[]] except []
theorem f1173 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,1,0,0,1,1]) := sparse_four ⟨0,2,0,4,6,3⟩ [0,0] [0,1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
