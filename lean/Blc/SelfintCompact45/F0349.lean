import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f1477 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,2,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,2,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,2,0,2]) slices 12 withHints bank tags [2] except []
sliceRow f1478 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,2,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,2,1,1]) slices 12 withHints bank tags [2] except []
sliceRow f1479 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,2,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,2,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,2,2,0]) slices 12 withHints bank tags [2] except []
tagSlices f1480 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,3,0,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,3,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,3,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices f1481 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,3,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,3,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,3,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow f1482 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [5,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [5,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [5,4,0,0]) slices 12 withHints bank tags [2] except []
tagSlices f1483 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,0,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,0,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,0,5]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices f1484 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,1,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,1,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [0,0,0,1,4]) withHints bank eachTags[[6,6,6,6],[6,6,6],[6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6],[6],[6,6,6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
