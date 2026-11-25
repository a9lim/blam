import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1627 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,0,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,0,1]) withHints bank eachTags[[6,9],[6,6,6,9,9,9],[6,6,9,9],[6,6,9,9],[],[6,6,6,6,9,9,33,33],[6,9],[]] except []
sliceRow f1628 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,1,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [0,4,1,0]) slices 12 withHints bank tags [6,9,33] except []
theorem f1629 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [0,5,0,0]) := sparse_four ⟨0,3,0,5,4,5⟩ [0,0,0] [0,5,0,0] (by decide)
tagSlices f1630 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,0,4]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,0,4]) withHints bank eachTags[[],[6,6,6,6,6,6,9,9,9,9,9,9],[6,9],[6,6,9,9],[6,9],[6,6,9,9],[],[6,6,6,9,9,9]] except []
tagSlices f1631 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,1,3]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,1,3]) withHints bank eachTags[[6,6,9,9],[6,6,6,6,6,3,3,3,3,9],[6,6,6,3,9,9],[6,6,3,3],[6,6,3,3],[6,6,6,6,3,3,3,9],[],[6,6,3,3]] except []
end Blc.SelfintSingleObject.Compact45
