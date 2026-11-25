import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1411 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,3,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [2,3,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,3,1,3]) withHints bank eachTags[[6,2,2],[6,6,2,2,36],[6,6,6,6,6],[6,6,6,18,23],[6,6,6,2],[6,6,6,2,36],[6,9],[6,6,6,2,2,2]] except []
tagSlices f1412 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,3,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [2,3,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,3,2,2]) withHints bank eachTags[[6,6],[6,6,6,6,6,2,2,2,2,6,2,2],[2,36],[6,6,6,6,18,1,23],[2],[6,36],[2],[2]] except []
sliceRow f1413 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,3,3,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,3,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,3,3,1]) slices 12 withHints bank tags [6,2,9,36] except []
sliceRow f1414 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,3,4,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,3,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,3,4,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f1415 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,4,0,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,4,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,4,0,3]) slices 12 withHints bank tags [2,6,10] except []
sliceRow f1416 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,4,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,4,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,4,1,2]) slices 12 withHints bank tags [6,2,18,10,36] except []
sliceRow f1417 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,4,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,4,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,4,2,1]) slices 12 withHints bank tags [6,2,18,10,36] except []
sliceRow f1418 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,4,3,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,4,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,4,3,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f1419 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,5,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,5,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,5,0,2]) slices 12 withHints bank tags [2,1,36] except []
sliceRow f1420 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,5,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,5,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,5,1,1]) slices 12 withHints bank tags [2] except []
sliceRow f1421 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [2,5,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [2,5,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [2,5,2,0]) slices 12 withHints bank tags [2,23] except []
sliceRow f1422 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,0,1,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,0,1,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,0,1,5]) slices 12 withHints bank tags [1,9,2] except []
sliceRow f1423 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,0,2,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,0,2,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,0,2,4]) slices 12 withHints bank tags [6,2,1,9] except []
sliceRow f1424 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [3,0,3,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [3,0,3,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [3,0,3,3]) slices 12 withHints bank tags [6,2,9,1,11] except []
end Blc.SelfintSingleObject.Compact45
