import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1090 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,2,0]) withHints bank eachTags[[],[6,6,6,6,6,59,8],[6,6,23],[6,6],[6,6,6,6,6,1,1,8],[18,10,18,23],[6,6,6,6,6,36],[10,10]] except []
tagSlices f1091 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,0,1]) withHints bank eachTags[[6,6],[],[6,6,6,18,2],[],[1,1,23,1,27,18],[2,18,2],[6,6,6,6,6,6,6,36,36],[1,2,2]] except []
sliceRow f1092 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,1,1,0]) slices 12 withHints bank tags [6,2,1,18,23,27,48,36] except []
sliceRow f1093 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,2,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,2,0,0]) slices 12 withHints bank tags [6,10,2] except []
sliceRow f1094 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,0,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,0,1]) slices 12 withHints bank tags [18,1,36,24,47] except []
sliceRow f1095 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,4,0,1,0]) slices 12 withHints bank tags [1,18,24,36] except []
sliceRow f1096 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,4,1,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,4,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,4,1,0,0]) slices 12 withHints bank tags [1,2,36,18] except []
sliceRow f1097 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,0,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,0,4]) slices 12 withHints bank tags [2] except []
sliceRow f1098 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,1,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,1,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,1,3]) slices 12 withHints bank tags [6,2] except []
sliceRow f1099 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,2,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f1100 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,3,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,3,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f1101 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,4,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,0,4,0]) slices 12 withHints bank tags [2] except []
sliceRow f1102 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,0,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [3,0,1,0,3]) slices 12 withHints bank tags [6] except []
end Blc.SelfintSingleObject.Compact45
