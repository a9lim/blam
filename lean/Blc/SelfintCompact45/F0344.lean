import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1405 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,2,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [2,2,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,2,1,4]) withHints bank eachTags[[2,2,2,2,2,10],[6,6,2,9],[6,6,2,2],[6,6,6,10,1,2],[6,6,6,6,6,8],[6,2,6,9],[2,2],[6,6,6]] except []
tagSlices f1406 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,2,2,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [2,2,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,2,2,3]) withHints bank eachTags[[6,6,6,6,2,2,2,2,10],[6,6,6,6,6,2,2,2,2,2],[9],[6,1],[6,8],[2],[6,2,9],[2]] except []
tagSlices f1407 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,2,3,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [2,2,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,2,3,2]) withHints bank eachTags[[6,2,2],[6,6,6,6,6,6,2,2,6,2],[2],[6,6,19,2,9],[6,2],[6,2,9],[6,2,2,9],[]] except []
sliceRow f1408 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,2,4,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,2,4,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,2,4,1]) slices 12 withHints bank tags [6,2,10] except []
sliceRow f1409 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,2,5,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,2,5,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,2,5,0]) slices 12 withHints bank tags [2,18] except []
sliceRow f1410 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,3,0,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,3,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,3,0,4]) slices 12 withHints bank tags [6,2,27,8] except []
end Blc.SelfintSingleObject.Compact45
