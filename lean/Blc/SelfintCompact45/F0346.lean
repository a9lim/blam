import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f1425 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,0,4,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,0,4,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,0,4,2]) slices 12 withHints bank tags [6,2,1,8,9] except []
sliceRow f1426 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,0,5,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,0,5,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,0,5,1]) slices 12 withHints bank tags [1,2,18,9] except []
sliceRow f1427 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,0,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,0,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,0,5]) slices 12 withHints bank tags [1,9,19] except []
sliceRow f1428 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,1,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,1,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,1,4]) slices 12 withHints bank tags [2,6,9,1] except []
tagSlices f1429 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,2,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,2,3]) withHints bank eachTags[[6,2],[2,2,2,2,2,1,9,9,9],[6,6,6,6,2],[6,6,6,6],[6,6,2],[6,6,2,2,2],[2,2],[6,6,2,2,2]] except []
tagSlices f1430 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,3,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,3,2]) withHints bank eachTags[[6,6,6,9],[2,2,2,2,2,11,1,2],[6,6,6,6],[6,6,6],[6,6,2,9],[6,9],[2,2],[2,2,2,2]] except []
sliceRow f1431 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,4,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,4,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,4,1]) slices 12 withHints bank tags [6,2,19,1,9] except []
sliceRow f1432 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,1,5,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,1,5,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,1,5,0]) slices 12 withHints bank tags [2,18,1] except []
sliceRow f1433 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,2,0,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,2,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,2,0,4]) slices 12 withHints bank tags [6,2,9] except []
tagSlices f1434 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,2,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [3,2,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,2,1,3]) withHints bank eachTags[[2,2],[2,2,2,9,9],[6,6,6,6,6],[6,6,6,2],[6,6],[6,6,6,2],[9,2],[6,6,6,2,2]] except []
end Blc.SelfintSingleObject.Compact45
