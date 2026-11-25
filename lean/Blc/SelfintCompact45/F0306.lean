import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1103 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,1,2]) withHints bank eachTags[[],[2,2,2,2,2],[2,2],[2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2],[],[2,2,2,2]] except []
sliceRow f1104 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,2,1]) slices 12 withHints bank tags [2] except []
sliceRow f1105 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,3,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,3,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f1106 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,0,2]) slices 12 withHints bank tags [6] except []
sliceRow f1107 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,1,1]) slices 12 withHints bank tags [2] except []
sliceRow f1108 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,2,2,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f1109 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,0,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,0,1]) slices 12 withHints bank tags [6] except []
sliceRow f1110 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,3,1,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f1111 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,4,0,0]) slices 12 withHints bank tags [2] except []
sliceRow f1112 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,0,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,0,3]) slices 12 withHints bank tags [6] except []
sliceRow f1113 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,1,2]) slices 12 withHints bank tags [2] except []
sliceRow f1114 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,2,1]) slices 12 withHints bank tags [2] except []
sliceRow f1115 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,3,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,1,0,3,0]) slices 12 withHints bank tags [6] except []
sliceRow f1116 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,1,1,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,1,1,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,1,1,0,2]) slices 12 withHints bank tags [2] except []
end Blc.SelfintSingleObject.Compact45
