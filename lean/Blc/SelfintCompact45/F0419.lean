import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1656 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,1,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,1,1]) withHints bank eachTags[[],[6,6,6,6,3,3,9,9],[6,6,6,3,9,9],[6,6,3,3],[],[6,6,6,9,9,9],[],[6,9]] except []
sliceRow f1657 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [3,0,2,0]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1658 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,0,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,0,1]) slices 12 withHints bank tags [6,3,9] except []
sliceRow f1659 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,1,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [3,1,1,0]) slices 12 withHints bank tags [6,9,3] except []
sliceRow f1660 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [3,2,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [3,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [3,2,0,0]) slices 12 withHints bank tags [6,3] except []
sliceRow f1661 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,0,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,0,1]) slices 12 withHints bank tags [6,9] except []
sliceRow f1662 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,1,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [4,0,1,0]) slices 12 withHints bank tags [6,9] except []
sliceRow f1663 on (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [4,1,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,5,4,5⟩ [0,0,0] [4,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,5⟩ [0,0,0] [4,1,0,0]) slices 12 withHints bank tags [6,9] except []
theorem f1664 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,5⟩ [0,0,0] [5,0,0,0]) := sparse_four ⟨0,3,0,5,4,5⟩ [0,0,0] [5,0,0,0] (by decide)
tagSlices f1665 on (Grammar43.fourRow ⟨0,2,0,6,4,7⟩ [0,0] [0,0,1,6]) byParts (fun j => Split43.four 12 j ⟨0,2,0,6,4,7⟩ [0,0] [0,0,1,6]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,7⟩ [0,0] [0,0,1,6]) withHints bank eachTags[[2,2],[2,2,2,2,10,10,10,10,1],[],[2,2,2,2],[2,2],[2,2],[],[2,2,2],[],[2,2,2],[],[]] except []
end Blc.SelfintSingleObject.Compact45
