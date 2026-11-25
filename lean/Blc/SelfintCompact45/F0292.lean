import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1034 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,1,1]) withHints bank eachTags[[6,2,2],[2,2,2],[6,6,2,2,2,2,2,2,2,2,6,2,2,2],[6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,177,59],[2,2,2,2,2,2,2,2,2],[2,2,2,2],[2,2,1,1,8,1,8,24,18,83,8,23]] except []
tagSlices f1035 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,2,0]) withHints bank eachTags[[6,6],[6,6],[6,6,2,2,6,1,2],[2,2,2,2,24],[2,2,36],[2,2,2,2,2,1],[6,6,2],[2,2,1,10,23,10]] except []
tagSlices f1036 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,0,1]) withHints bank eachTags[[6,2,2,6],[6],[2,6,6,2,2,6,2,2,2,36],[6,2,2,24,24],[2,2,2,1],[2,2,2,2],[6,6,1,1],[2,2,10,10,23,10,1]] except []
tagSlices f1037 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,2,1,0]) withHints bank eachTags[[6,2,2,6],[6],[6,6,2,2,2,2,2],[2,2,2,24],[2,2,36],[2,2,11,2],[6,6,37],[2,2,10,23,23,10]] except []
sliceRow f1038 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,3,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,3,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,3,0,0]) slices 12 withHints bank tags [6] except []
sliceRow f1039 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,0,2]) slices 12 withHints bank tags [1,2,20,24,18] except []
end Blc.SelfintSingleObject.Compact45
