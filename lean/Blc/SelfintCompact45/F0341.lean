import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1382 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,2,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,2,3]) withHints bank eachTags[[6,6,2,2,2,2],[6,6,2,12,2,12,1],[2,2,12],[6,6,6],[6,6,2],[6,6,2,2,18,1,23],[6,2,2],[6,6,2,2,2,2]] except []
tagSlices f1383 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,3,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,3,2]) withHints bank eachTags[[6,6,6,2,2],[6,6,6,2,11,1],[],[6,6,6,2,2,2,2,12],[6,6,2,12],[6,2,12,18,10,23],[6,2,2],[2,2,2,2]] except []
sliceRow f1384 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,4,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,4,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,4,1]) slices 12 withHints bank tags [6,2,37,10] except []
sliceRow f1385 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,3,5,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,3,5,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,3,5,0]) slices 12 withHints bank tags [2,37,18] except []
sliceRow f1386 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,4,0,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,4,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,4,0,4]) slices 12 withHints bank tags [6,1,2,10] except []
tagSlices f1387 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,4,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,4,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,4,1,3]) withHints bank eachTags[[],[2,2,1],[6,6,6],[6,2,2,6,6,2,2],[6,6,6,6,2,2],[2,18,10,1,36],[2,1],[2,2,2]] except []
end Blc.SelfintSingleObject.Compact45
