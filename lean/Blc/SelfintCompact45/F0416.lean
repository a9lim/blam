import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1632 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,2,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,2,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,3,3,3,3,9,9,9,9,9],[6,6,6,3,3,3],[6,6,3,3],[6,6,6,3,3,9],[6,6,6,3,3,3],[],[6,6,6,3,9,9]] except []
tagSlices f1633 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,3,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,3,1]) withHints bank eachTags[[6,6,9,9],[6,6,6,6,6,3,3,9,9,9],[6,6,6,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,3,9,9,3],[],[6,6,3,9]] except []
sliceRow f1634 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,4,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,0,4,0]) slices 12 withHints bank tags [6,9] except []
tagSlices f1635 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,0,3]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,0,3]) withHints bank eachTags[[6,6,9,9],[6,6,6,6,3,3,3,3],[6,6,3,9],[6,6,3,3],[6,6,6,6,3,3,3,3],[6,6,6,3,3,9],[],[6,3]] except []
sliceRow f1636 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,1,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,1,2]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1637 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,2,1]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1638 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,3,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,1,3,0]) slices 12 withHints bank tags [6,3,9] except []
end Blc.SelfintSingleObject.Compact45
