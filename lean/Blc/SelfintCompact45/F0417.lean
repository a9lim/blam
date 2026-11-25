import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1639 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,0,2]) withHints bank eachTags[[6,3],[6,6,6,6,6,6,6,3,3,3,3,9,9,9],[6,6,3,3],[6,6,3,3],[6,6,3,3],[6,6,3,3],[6,9],[6,6,3,9]] except []
sliceRow f1640 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,1,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,1,1]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1641 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,2,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,2,2,0]) slices 12 withHints bank tags [6,3,9] except []
tagSlices f1642 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,0,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,0,1]) withHints bank eachTags[[6,3],[6,6,6,3,3,9],[6,6,3,3],[6,6,3,3],[6,6,3,3],[6,6,9,9],[],[]] except []
sliceRow f1643 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,1,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,3,1,0]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1644 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [1,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [1,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [1,4,0,0]) slices 12 withHints bank tags [6,9] except []
sliceRow f1645 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,0,3]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,0,3]) slices 12 withHints bank tags [6,3,9] except []
tagSlices f1646 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [2,0,1,2]) withHints bank eachTags[[6,6,9,9],[6,6,6,6,6,6,6,3,3,3,3,9,9,9],[6,3],[6,6,3,3],[6,9],[6,6,6,3,3,3],[],[6,6,6,6,3,3,9,9]] except []
end Blc.SelfintSingleObject.Compact45
