import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem f1608 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [5,0,0,0,0]) := sparse_four ⟨0,2,0,5,5,5⟩ [0,0] [5,0,0,0,0] (by decide)
theorem f1609 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,0,5]) := sparse_four ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,0,5] (by decide)
tagSlices f1610 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,1,4]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,1,4]) withHints bank eachTags[[],[6,6,6,6,9,9,9,9],[],[6,6,6,9,9,9],[6,9],[6,6,6,6,6,9,9,33,33,33],[],[6,6,9,9]] except []
tagSlices f1611 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,2,3]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,2,3]) withHints bank eachTags[[6,6,9,9],[6,6,6,3,9,9],[6,6,9,9],[6,6,6,6,6,3,3,3,9,9],[6,6,3,9],[6,6,6,6,9,33,33,33],[],[6,6,9,9]] except []
end Blc.SelfintSingleObject.Compact45
