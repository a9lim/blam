import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1612 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,3,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,3,2]) withHints bank eachTags[[6,6,9,9],[6,6,6,6,6,6,6,3,9,9,9,9,9,9],[],[6,6,6,6,6,3,3,3,9,9],[6,6,3,9],[6,6,6,6,9,33,33,33],[],[]] except []
tagSlices f1613 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,4,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,4,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,4,1]) withHints bank eachTags[[],[6,6,6,6,9,9,9,9],[6,6,9,9],[6,6,6,9,9,9],[6,9],[6,6,6,6,6,9,9,33,33,33],[],[]] except []
theorem f1614 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,5,0]) := sparse_four ⟨0,3,0,5,4,5⟩ [0,0,0] [0,0,5,0] (by decide)
tagSlices f1615 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,0,4]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,0,4]) withHints bank eachTags[[],[6,6,6,6,6,6,9,9,9,9,9,9],[6,9],[6,6,6,6,9,9,9,9],[6,6,6,9,9,9],[6,6,6,6,6,6,6,6,6,6,9,9,9,9,33,33,33,33,33,33],[],[6,6,6,9,9,9]] except []
tagSlices f1616 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,1,3]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,1,1,3]) withHints bank eachTags[[6,6,6,9,9,9],[6,6,6,3,3,9],[6,6,6,6,3,9,9,9],[6,6,6,6,3,3,3,9],[6,6,3,9],[6,6,6,6,3,9,33,33],[],[6,6,3,3]] except []
end Blc.SelfintSingleObject.Compact45
