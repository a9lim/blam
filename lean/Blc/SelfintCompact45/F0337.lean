import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1350 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,2,4,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [0,2,4,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,2,4,3]) withHints bank eachTags[[2,2,2,2],[2,2,6,2,2,2,1],[6,6,6,1],[6,18,18],[6,2],[2,6,2,2],[],[6,2]] except []
sliceRow f1351 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,2,5,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,2,5,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,2,5,2]) slices 12 withHints bank tags [2,1,10,18] except []
sliceRow f1352 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,3,1,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,3,1,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,3,1,5]) slices 12 withHints bank tags [2,1,10,18,12] except []
tagSlices f1353 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,3,2,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [0,3,2,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,3,2,4]) withHints bank eachTags[[2,12,1,2,2],[6,6,6,6,2,2,12],[2],[6,6,18,18,18],[2,2],[2,20,6,6,2,2,2],[],[6,6,2,2]] except []
tagSlices f1354 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,3,3,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [0,3,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,3,3,3]) withHints bank eachTags[[6,2,2,2,2],[6,6,2,12,1,2,1,20],[6,6,6,6,2,12],[18],[2,12],[2,2,12,2],[1,20],[6,6,1,1]] except []
end Blc.SelfintSingleObject.Compact45
