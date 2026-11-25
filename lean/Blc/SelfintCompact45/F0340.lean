import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1376 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,2,2,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,2,2,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,2,2,4]) withHints bank eachTags[[2,2,2,2,2],[6,6,6,2,6],[],[6,6,2,6],[6,6,6,2],[6,6,2,23,1,18],[2,2,2],[6,6,2]] except []
tagSlices f1377 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,2,3,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,2,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,2,3,3]) withHints bank eachTags[[6,6,6,2,2,2,2,2,11],[2,1],[2,2],[6],[6,6,2,12],[6,2,19,1,18],[1,2,1],[6,6,2,2,2,2,2]] except []
tagSlices f1378 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,2,4,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,2,4,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,2,4,2]) withHints bank eachTags[[6,6,6,2,2],[6,6,6,2,2,6,6],[2],[6,6,2,6,2,2],[6,6,6],[6,2,2,18,10],[2],[2,2]] except []
sliceRow f1379 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,2,5,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,2,5,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,2,5,1]) slices 12 withHints bank tags [2,10,18] except []
sliceRow f1380 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,0,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,0,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,0,5]) slices 12 withHints bank tags [2,1,12,10,18] except []
tagSlices f1381 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,1,4]) withHints bank eachTags[[2,12,1,2,2],[6,6,12,12],[6,6,2],[6,6,6,2,2,2],[6,6,6,6],[6,2,2,1,10,10,23,8],[2,2],[6,2,2]] except []
end Blc.SelfintSingleObject.Compact45
